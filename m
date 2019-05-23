Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E08278B1
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 11:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uT83cJfP8E9zCmn9kjTjojHYAXHzau/wfGZuTc6b+W8=; b=Bb3lx/l01Yv7mmb17MrzMZGhAS
	DL5LCGlMAzfCjfH4WTXBnPitmCucGGAd3InVvh+yAkdZTZ58BpX7ajepiU3mQCc9vCXRDVe7N2//t
	XIkKYSdwyIYxK+BkJN/60qOItb0dPjHHD1yy1cizQG4qdTxARUFFZcgRSo0EpANtVzxAabR1xUy1p
	NDqaWGwkWOnLzyvP9wa4aJPsNvIZT/2CYWV7yoegBA4MzEhVylXgw+ZOVzTW0bA8G+LX6BhRa+IfF
	2Ykg/Bng7xW2I3VJNUliEQcEe/fpXkdaBfC9zVovFWeYmIJU+tHvrqnt9stE5AEhOUF+wQF2aENJ9
	gXb5w2Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjcD-00018y-5S; Thu, 23 May 2019 09:02:21 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjb0-00086W-3D
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 09:01:10 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 23 May 2019 12:01:00 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4N90wUK007383;
 Thu, 23 May 2019 12:00:59 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 7/9] nvme-print: Introduce show_nvme_ctrl helper
Date: Thu, 23 May 2019 12:00:56 +0300
Message-Id: <1558602058-29434-8-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
References: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_020106_648883_AD84C2E8 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: shlomin@mellanox.com, maxg@mellanox.com, martin.petersen@oracle.com,
 minwoo.im@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is a preparation patch for adding namespaces attribute for each
controller.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 nvme-print.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/nvme-print.c b/nvme-print.c
index 7316117..7e1f9ea 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -2843,6 +2843,13 @@ void json_sanitize_log(struct nvme_sanitize_log_page *sanitize_log, const char *
 	json_free_object(root);
 }
 
+static void show_nvme_ctrl(struct ctrl_list_item *item)
+{
+	printf(" +- %s %s %s %s\n", item->name, item->transport, item->address,
+	       item->state);
+}
+
+
 static void show_nvme_subsystem(struct subsys_list_item *item)
 {
 	int i;
@@ -2850,13 +2857,8 @@ static void show_nvme_subsystem(struct subsys_list_item *item)
 	printf("%s - NQN=%s\n", item->name, item->subsysnqn);
 	printf("\\\n");
 
-	for (i = 0; i < item->nctrls; i++) {
-		printf(" +- %s %s %s %s\n", item->ctrls[i].name,
-				item->ctrls[i].transport,
-				item->ctrls[i].address,
-				item->ctrls[i].state);
-	}
-
+	for (i = 0; i < item->nctrls; i++)
+		show_nvme_ctrl(&item->ctrls[i]);
 }
 
 void show_nvme_subsystem_list(struct subsys_list_item *slist, int n)
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
