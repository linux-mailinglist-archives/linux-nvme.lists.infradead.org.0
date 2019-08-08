Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEDB86BEC
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1qsPKpNBcw+BveOWTEaZxn123lgYW+lBd/4c8fF0KEE=; b=rwH
	K09jJOcbQaXpiTVbPZMd2y+wEFipzDZx49ERqzYW/HWJ7CzJM5BZKW8AUevQ0gE/xBMC/SoSom6et
	0MnrK6Xc7I4jiI9QF4Us4YxfacnbqrOyOB8IOQbWnkcaKdsLW4PdDGLR82Y9NDZMCo/oixF+DmQN2
	ZMfWJuSG5mDi5QzJcoHsrVxImk7uTf5M9catyT+DSceF3+x13YZiixIKJI5nSSEKAAJhd/spbBM+I
	EVMlcsAjHwqnJiLRErBFw71iwQkPkSOaI00GRNbN38FgpKn+wcfqk0vnm0GiwchLekKoM9XLvuJP/
	tsMIycuoSsxsb50vXOkQaCBg4aG1GrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpPj-00014N-Oh; Thu, 08 Aug 2019 20:53:35 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpPf-00013b-DR; Thu, 08 Aug 2019 20:53:31 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 0/7] nvme controller reset and namespace scan work race
 conditions
Date: Thu,  8 Aug 2019 13:53:18 -0700
Message-Id: <20190808205325.24036-1-sagi@grimberg.me>
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

Hey Hannes and Keith,

This is the third attempt to handle the reset and scanning race saga.

The approach is to have the relevant admin commands return a proper
status code that reflects that we had a transport error and
not remove the namepsace if that is indeed the case.

This should be a reliable way to know if the revalidate_disk failed
due to a transport error or not.

I am able to reproduce this race with the following command (using
tcp/rdma):
for j in `seq 50`; do for i in `seq 50`; do nvme reset /dev/nvme0; done ; nvme disconnect-all; nvme connect-all; done

With this patch set (plus two more tcp/rdma transport specific patches
that address a other issues) I was able to pass the test without
reproducing the hang that you hannes reported.

Changes from v2:
- added fc patch from James (can you test please?)
- made nvme_identify_ns return id or PTR_ERR (Hannes)

Changes from v1:
- different approach

James Smart (1):
  nvme-fc: Fail transport errors with NVME_SC_HOST_PATH

Sagi Grimberg (6):
  nvme: fail cancelled commands with NVME_SC_HOST_PATH_ERROR
  nvme: return nvme_error_status for sync commands failure
  nvme: make nvme_identify_ns propagate errors back
  nvme: make nvme_report_ns_ids propagate error back
  nvme-tcp: fail command with NVME_SC_HOST_PATH_ERROR send failed
  nvme: don't remove namespace if revalidate failed because of a
    transport error

 drivers/nvme/host/core.c | 49 +++++++++++++++++++++++++++-------------
 drivers/nvme/host/fc.c   | 37 ++++++++++++++++++++++++------
 drivers/nvme/host/tcp.c  |  2 +-
 3 files changed, 64 insertions(+), 24 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
