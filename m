Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6922687A
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 18:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uT83cJfP8E9zCmn9kjTjojHYAXHzau/wfGZuTc6b+W8=; b=pvf+aK35gmrAs5YYvcT2zIBlLH
	thaK7Oz9nIHXpZgOz/zQBdjGnhQC3TLGxqISWBaxA+KQp1xCsFHOoGPF0XR26xkb6dddkPvvcUNOX
	qMD3kn+lJMQMOMZdXalHVF08zsx8EWVNOoFIqRyN/Qkh6JBdyBVFZsoSfWm6qV46S1dzZ3NR/5JhJ
	pKYWG3GN60VtNxu1zlFFTu2WN5HJWUOqSu7TOghieZ+OeTtlc7Xe/XPjkQKk1fRHW6Btkw8XMu95w
	IBchpZBZHNTCs3I1at0YY9bI8X7jOvavlij0op/tCcql1KXSd+zidclbTh+IpRRhiD5IfDM57cENB
	5mrEinJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUIi-0003Rd-8g; Wed, 22 May 2019 16:41:12 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUHY-0000ul-2W
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 16:40:07 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 22 May 2019 19:39:54 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4MGdrAT001383;
 Wed, 22 May 2019 19:39:53 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 7/9] nvme-print: Introduce show_nvme_ctrl helper
Date: Wed, 22 May 2019 19:39:51 +0300
Message-Id: <1558543193-24752-8-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
References: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_094000_574705_9460316A 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: maxg@mellanox.com, martin.petersen@oracle.com, shlomin@mellanox.com
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
