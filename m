Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1BF8040C
	for <lists+linux-nvme@lfdr.de>; Sat,  3 Aug 2019 04:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6XyHFbH/JDO7R4CWDWUu/uGVYhDvkUtcgy0WE0MrJ/g=; b=GMS
	577qPbWNUkmN2++VssDn73cxOTwH2NV0vH8tVrrFfAd9g4ba2tmIbALgKcvCqdR/FYDgKuh/zsIiR
	mWFNrf80ff4m82V5tzDFt4a7i9DHWMXvjYtp5Tb+zogBr+sznrMJ3KmkvfVpN+h1OGlwG1vdnYB5n
	WJqXfZdTMNci+ou6S0Vlq44jYLq0izIzRR9lkiPNnJ7GrZQTro6Ls3+1Z30B213r8Gv+F6wcKE25C
	Zv9N80QYX3fP5uDLwD/ajLVH13tzJVB7totq2imuErjsJunLcX1mGWs8D+ClOj6+zwTDMxPDW6M4l
	it86V0ZtpHQY4eN24s17gx0yiku2gbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htk7o-0007Uu-My; Sat, 03 Aug 2019 02:50:28 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1htk7M-00060U-Md; Sat, 03 Aug 2019 02:50:00 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Hannes Reinecke <hare@suse.de>
Subject: [PATCH rfc v2 0/6] nvme controller reset and namespace scan work race
 conditions
Date: Fri,  2 Aug 2019 19:49:49 -0700
Message-Id: <20190803024955.29508-1-sagi@grimberg.me>
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
Cc: Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey Hannes and Keith,

This is the second attempt to handle the reset and scanning race saga.

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

In the patchset:
- first make sure that transport related errors (such as
  nvme_cancel_request) reflect HOST_PATH_ERROR status.
- make NVME_SC_HOST_PATH_ERROR a BLK_STS_TRANSPORT conversion.
- Make sure that the callers indeed propagate the status back
- Then simply look at the status code when calling revalidate_disk
  in nvme_validate_ns, and only remove it if the status code is
  indeed a transport related status.

Please let me know your thoghts.

Sagi Grimberg (6):
  nvme: fail cancelled commands with NVME_SC_HOST_PATH_ERROR
  nvme: return nvme_error_status for sync commands failure
  nvme: make nvme_identify_ns propagate errors back
  nvme: make nvme_report_ns_ids propagate error back
  nvme-tcp: fail command with NVME_SC_HOST_PATH_ERROR send failed
  nvme: don't remove namespace if revalidate failed because of a
    transport error

 drivers/nvme/host/core.c | 67 ++++++++++++++++++++++++----------------
 drivers/nvme/host/tcp.c  |  2 +-
 2 files changed, 41 insertions(+), 28 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
