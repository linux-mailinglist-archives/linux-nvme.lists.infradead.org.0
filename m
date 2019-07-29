Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9ED79CDE
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 01:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fztI+U4Z5/zoVyjsqs2/e9UWyTUbs8W8PklxrbP1sOU=; b=SBg
	W1+Poiti2q00/D64bvP/8jTqzmcUPeFD3/4ruqdkGt/daBuIQ4FBJbJfo1vOOaLIVY55qfXzKhVUq
	RD2ZI1DbLJloPdmLbrwrtUcl6EsjTUbHvL4VL7b/qBXfiehk6PMmglWBQvEIjuJbsPEjv7/8J1T7+
	EDVnQGkd6ClvnEKBkbWJnT85Foq7a+MNnoNudLaPDa115kFEDfGGxAjRnpGw5JxUF4GJAvaFnYU99
	sv/zXdB0xvutx62tKH1vBNuhM3zWbVpq1wEJTrZ7VVRndciK6S4xWoWXnvU8kYthIXI1Zbz11pPPo
	p0BBmdyom9CkPAN8NU+5TRtY5qiIqyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsF8I-0003eV-3i; Mon, 29 Jul 2019 23:32:46 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsF7f-0003BW-6u; Mon, 29 Jul 2019 23:32:07 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: Hannes Reinecke <hare@suse.de>,
	linux-nvme@lists.infradead.org
Subject: [PATCH rfc 0/2] nvme controller reset and namespace scan work race
 conditions
Date: Mon, 29 Jul 2019 16:31:59 -0700
Message-Id: <20190729233201.27993-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey Hannes,

Here is two patches that to my understanding of the issues you describe
in your patchset: "nvme: flush rescan worker before resetting" and your
report of "spurious I/O errors during failover".

Patch #1 avoids removing a namespace if the revalidation I/O failed because
of a racing controller reset (or removal). This should fix any spurious I/O
failures during path failover.

Patch #2 avoids a use-after-free condition in the case where the scan work ends
up actually removing a namespace but is racing with a controller reset (that is
scheduled after the removal) and is accessing the request queue
(nvme_stop_queues) after it was destroyed.

The one trace that you have mentioned in our discussions that is still
not clear to me is:
--
[67088.344034] WARNING: CPU: 4 PID: 25020 at
../lib/percpu-refcount.c:334 percpu_ref_kill_and_confirm+0x7a/0xa0
[...]
[67088.344106] Call Trace:
[67088.344112]  blk_freeze_queue_start+0x2a/0x40
[67088.344114]  blk_freeze_queue+0xe/0x40
[67088.344118]  nvme_update_disk_info+0x36/0x260 [nvme_core]
[67088.344122]  __nvme_revalidate_disk+0xca/0xf0 [nvme_core]
[67088.344125]  nvme_revalidate_disk+0xa6/0x120 [nvme_core]
[67088.344127]  ? blk_mq_get_tag+0xa3/0x220
[67088.344130]  revalidate_disk+0x23/0xc0
[67088.344133]  nvme_validate_ns+0x43/0x830 [nvme_core]
[67088.344137]  ? wake_up_q+0x70/0x70
[67088.344139]  ? blk_mq_free_request+0x12a/0x160
[67088.344142]  ? __nvme_submit_sync_cmd+0x73/0xe0 [nvme_core]
[67088.344145]  nvme_scan_work+0x2b3/0x350 [nvme_core]
[67088.344149]  process_one_work+0x1da/0x400
[67088.344150]  worker_thread+0x2b/0x3f0
[67088.344152]  ? process_one_work+0x400/0x400
--

Which indicates that we are revalidating a namespace that was already
removed. Given that the only namespace removal that is outside of the
scan_work is in nvme_remove_namespaces() which flushes the scan_work
before it actually removes the namespaces. I'm still lost how this can happen.

Can you please apply the following two patches and report if
they address the issues you are seeing? And if not, can you please
report a call trace of the hanged threads?

And, given that your are in a multipath environment, can you apply
these on top of: "nvme: fix controller removal race with scan work"?

Thanks.

Sagi Grimberg (2):
  nvme: don't remove namespace if revalidate failed because of
    controller reset
  nvme: fix possible use-after-free condition when controller reset is
    racing namespace scanning

 drivers/nvme/host/core.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
