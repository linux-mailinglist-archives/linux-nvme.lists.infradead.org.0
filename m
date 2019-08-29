Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF14AA2965
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 00:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VU0Fk81KqNdFaYG4gGY9Z2OlDnZTGTyY7jGwoICwNBY=; b=et8
	pRFkgiPGqi+fWAKNhvk69Z720sPCyb0upU8kN4/5cpnMjmKYR1JrMYIfnMF2dxLATSnQfLdN1gZjR
	X37FclMhxFJ7EAY16+aTtzcSWIyg9LbzRLardxChaMU6gkp67+NTTHxqHPV8rZidTBEhH4td5aPbs
	ccJmqDzd6CZBVVCxI14EdlXA4z/0GOSNO2/GNYtzoXyTuF75tyAZO3SppL0PkD2bHrUfOo6+3ak6Y
	j9AgZX5qDAcZkBHgZ22RY/CBOQJWI/he/Xv+06/GGXdExqr3nVf9M0pFxe3/gRSuox8g0r5reKKN2
	OdozAOykZckMt6451w33/MBstVCRNjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3SZh-00088I-Cd; Thu, 29 Aug 2019 22:07:25 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SZ5-0007dt-Sq; Thu, 29 Aug 2019 22:06:47 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v9 0/9] nvme controller reset and namespace scan work race
 conditions
Date: Thu, 29 Aug 2019 15:06:36 -0700
Message-Id: <20190829220645.5480-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey all,

This series handles the reset and scanning race saga.

The approach is to have the relevant admin commands return a proper
status code that reflects that we had a transport error and
not remove the namepsace if that is indeed the case.

This should be a reliable way to know if the revalidate_disk failed
due to a transport error or not.

I am able to reproduce this race with the following command (using
tcp/rdma):
for j in `seq 50`; do nvme connect-all; for i in `seq 50`; do nvme reset /dev/nvme0; done ; nvme disconnect-all; done

With this patch set (plus two more tcp/rdma transport specific patches
that address a other issues) I was able to pass the test without
reproducing the hang that you hannes reported.

Changes from v8:
- fixed nvme_revalidate_disk to never leak nvme status to the block layer
- used __nvme_revalidate_disk in nvme_validate_ns to also check for nvme
  status if return status is positive
- added patch to rename __nvme_revalidate_disk to nvme_revalidate_ns
- added patch that makes nvme_status_error get status instead of request struct
- added review tags

Changes from v7:
- added patch to split out revalidate_disk to ->revalidate_disk()
  and check_disk_size
- split nvme_validate_ns to call nvme_revalidate_disk and the new
  check_disk_size callout (only if nvme_revalidate_disk succeeded)

Changes from v6:
- dropped patch for nvme_submit_sync_cmd returning blk_status_t, it
  is now returning nvme status or negative errno again
- made nvme_identify_ns return status code and get id struct by reference
- made nvme_validate_ns check for -ENOMEM or NVME_SC_HOST_PATH_ERROR
  to decide if it should/should'nt to remove the namespace.
- added review tags

Changes from v5:
- don't return blk_status_t from nvme_submit_user_cmd

Changes from v4:
- return nvme_error_status in __nvme_submit_sync_cmd and cast to
  errno in nvme_identify_ns
- modified status print in nvme_report_ns_ids

Changes from v3:
- return blk_status_to_errno instead of blk_status_t in sync cmds
- check for normal return errno from revalidate_disk, this covers
  transport errors, but also spurious allocation errors and any
  type of transient errors.

Changes from v2:
- added fc patch from James (can you test please?)
- made nvme_identify_ns return id or PTR_ERR (Hannes)

Changes from v1:
- different approach

*** SUBJECT HERE ***

*** BLURB HERE ***

James Smart (1):
  nvme-fc: Fail transport errors with NVME_SC_HOST_PATH

Sagi Grimberg (8):
  nvme: fail cancelled commands with NVME_SC_HOST_PATH_ERROR
  nvme: make nvme_identify_ns propagate errors back
  nvme: make nvme_report_ns_ids propagate error back
  nvme-tcp: fail command with NVME_SC_HOST_PATH_ERROR send failed
  block_dev: split disk size check out of revalidate_disk
  nvme: pass status to nvme_error_status
  nvme: don't leak nvme status codes to the block layer
  nvme: fix ns removal hang when failing to revalidate due to a
    transient error

 drivers/nvme/host/core.c | 100 +++++++++++++++++++++++++--------------
 drivers/nvme/host/fc.c   |  37 ++++++++++++---
 drivers/nvme/host/tcp.c  |   2 +-
 fs/block_dev.c           |  29 +++++++-----
 include/linux/fs.h       |   1 +
 5 files changed, 113 insertions(+), 56 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
