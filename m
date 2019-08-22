Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8BB9A35E
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 01:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=osGWkGUkFNE8fTN2A4XIiWnQ3ZfQHJaTRPPTee8PdIg=; b=HXL
	xlH0hgPSlJ95ZMnXMXDefYeNu9l7OfDqra0w30iwsvSz9DdG4Z4i176RPyka4p5atqhZiH1WsBP4U
	xt6iwow55TKEQ2PGYTdfHH0WrXaE5wggpZJ5QNp6Hc+H1qvHzkPIa6L4j7hBN4nrrPsl+oBfFYi4A
	YLUVkXZmP2URCLZdYs9F50MqHEe0hnMmifMLN03IuMF1nJ3X5ECtrSPkH0JQNNjxutyNylVWGaRt8
	fNfVJsrPw3x34lTmzSX9vvamCPjYSvbvYfatIIaHKBFx1Sn65SZ8gachPNOpVVUYAKuxO+6jGX1lv
	zcMz2/CQWz36mj8uD4BfHTDZJY97aBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0w47-0006wW-Hq; Thu, 22 Aug 2019 23:00:23 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0w3U-0005G0-Er; Thu, 22 Aug 2019 22:59:44 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v7 0/6] nvme controller reset and namespace scan work race
 conditions
Date: Thu, 22 Aug 2019 15:59:37 -0700
Message-Id: <20190822225943.20072-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
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

Sagi Grimberg (5):
  nvme: fail cancelled commands with NVME_SC_HOST_PATH_ERROR
  nvme: make nvme_identify_ns propagate errors back
  nvme: make nvme_report_ns_ids propagate error back
  nvme-tcp: fail command with NVME_SC_HOST_PATH_ERROR send failed
  nvme: fix ns removal hang when failing to revalidate due to a
    transient error

 drivers/nvme/host/core.c | 71 +++++++++++++++++++++++++---------------
 drivers/nvme/host/fc.c   | 37 +++++++++++++++++----
 drivers/nvme/host/tcp.c  |  2 +-
 3 files changed, 76 insertions(+), 34 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
