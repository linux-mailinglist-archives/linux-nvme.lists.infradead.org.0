Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CA117BD96
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Mar 2020 14:05:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pkJ/dwQeuSMU7HfZQ+f/VPg+XESCbZGwTuekxCKenKs=; b=WAOzyYyZFR+DX5eqxhPzZ9OaHZ
	KhD2eqYizr458iGVIZfGo43k6FdFlo6UH7qi18tdOYuQap/QQbcUhxCB9CCOnPCOV8mMod3bmr8GU
	mhD/oB+ugOZ2zp0hIjIu6ECzolH2QbXhMoKoE+vQiulOSzTnqe698MKCvtkjaVr0P9Xk4Jm7SL9Kq
	l5fsp1QaswzrVY8YvslGVr0gzHLb9DVT2mJ9APg4RigJ+Kdw8zYovuOaC8lxnbcjmNkuF9nmZC7Kk
	n4KI2swEhKDGu/MH3L4ba2Acvh9I2zPjuSo2YecfzSC8gBSkXt0fzRQHKcJFIYzpWyyyfNfX8oQ68
	stnhwAdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACev-0008Fz-5S; Fri, 06 Mar 2020 13:04:57 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACeq-0008EX-Lu
 for linux-nvme@lists.infradead.org; Fri, 06 Mar 2020 13:04:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 2FFE3B217;
 Fri,  6 Mar 2020 13:04:49 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 3/3] nvme/fcloop: flush workqueue before calling
 nvme_fc_unregister_remoteport()
Date: Fri,  6 Mar 2020 14:04:40 +0100
Message-Id: <20200306130440.16864-4-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200306130440.16864-1-hare@suse.de>
References: <20200306130440.16864-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_050452_867435_6BE99FA0 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Keith Busch <keith.busch@wdc.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_fc_unregister_remoteport() will be sending LS requests, which then
would end up on a workqueue for processing. This will deadlock with
fcloop_remoteport_delete() which would try to flush the very same queue.

Signed-off-by: Hannes Reinecke <hare@suse.de>
---
 drivers/nvme/target/fcloop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index 4f9435d9fa61..0209da9bcb67 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -943,7 +943,6 @@ fcloop_remoteport_delete(struct nvme_fc_remote_port *remoteport)
 {
 	struct fcloop_rport *rport = remoteport->private;
 
-	flush_work(&rport->ls_work);
 	fcloop_nport_put(rport->nport);
 }
 
@@ -1278,6 +1277,7 @@ __remoteport_unreg(struct fcloop_nport *nport, struct fcloop_rport *rport)
 	if (!rport)
 		return -EALREADY;
 
+	flush_work(&rport->ls_work);
 	return nvme_fc_unregister_remoteport(rport->remoteport);
 }
 
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
