Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6232B1B8
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 12:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FN9mZyIjx02tYdAJRGJ8ASJyrof5quwJ5olu5LEO6qI=; b=EIYak5uONPeGumz4g66g2UHrbj
	+oiGSS432SLyBLPmjUpTolXOLDCRd1bSy35ZksGOsdbYXlKuNGkEPO8oaYeGdIzvy1adT5Ejx7y0n
	pubHZPq7ED0+CFmOOiDE9z7AIo1Jbx0M0ELUAyHevJb6FpoyrSlo4fZsvP4cheoMql4YsJUkUaT6A
	qChpUO0szqcpGUtHeFiUeExMNhRM3BO94cRVILA5hQKfG1sHYbP9IrWB9fMmjuxuGSu7X1EGXOCyK
	9dCusAHhQ47UayrPBQ41kXi/lJhEe/8uQ1gX/4Ep2OJh8ga2x7S5gzCiAWm8DoJtUAAqfgWBVok/T
	zK7ogzCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCSR-0005Z4-GC; Mon, 27 May 2019 10:02:19 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCS5-0005An-3s
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 10:02:00 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 27 May 2019 13:01:50 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4RA1oEh021932;
 Mon, 27 May 2019 13:01:50 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 4/9] nvme-print: fix json object memory leak
Date: Mon, 27 May 2019 13:01:45 +0300
Message-Id: <1558951310-31066-5-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558951310-31066-1-git-send-email-maxg@mellanox.com>
References: <1558951310-31066-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_030157_604035_F183C29E 
X-CRM114-Status: UNSURE (   6.09  )
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

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 nvme-print.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/nvme-print.c b/nvme-print.c
index 2c4822e..6f85e73 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -2918,6 +2918,7 @@ void json_print_nvme_subsystem_list(struct subsys_list_item *slist, int n)
 		json_object_add_value_array(root, "Subsystems", subsystems);
 	json_print_object(root, NULL);
 	printf("\n");
+	json_free_object(root);
 }
 
 static void show_registers_cap(struct nvme_bar_cap *cap)
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
