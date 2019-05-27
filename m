Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFEF2B1BD
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 12:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KJrwthd+i7tAUvRgmgXRfwEz6YaiiGKlPjtOKaQoGIM=; b=RYwFw6S3nU/G2IlTLRcS4Z6ieT
	6wPiAWlau1IyIgsiu4Fhwml4dkpaD+Fme9spdIT+6tWXQguLzFZTl4HvO/ltE6jL8nXgzib3K+VUu
	Tugmz/VXr9C4hj9WCvmhosQXue9wVquu4aPVmRsBOMpPQ3n058eeJ5YhmSqmAe6jVGztwX9SbcW7j
	dNRNjyM3g88kzzZAc63EO8KudKvAOBviXQZNv41LzWq3QKn12OTUe0VzG/ZxKILE57dyzYn/xnLmw
	OE/yJcpSFOMtTn3ZlNPlevsUas/Fg/evVS0RL/0+nLB7mVHYtoTT5vVjkeLuhhUL3UUw6TmxMhuG9
	HhIvx2Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCSn-0005xo-46; Mon, 27 May 2019 10:02:41 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCS6-0005By-LW
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 10:02:00 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 27 May 2019 13:01:51 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4RA1oEi021932;
 Mon, 27 May 2019 13:01:50 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 5/9] nvme: fix coding style issue
Date: Mon, 27 May 2019 13:01:46 +0300
Message-Id: <1558951310-31066-6-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558951310-31066-1-git-send-email-maxg@mellanox.com>
References: <1558951310-31066-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_030159_249535_034FF875 
X-CRM114-Status: UNSURE (   9.39  )
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

It's more common to use the following coding style:
if (condition) {
   do_that;
   do_this;
} else if (condition2) {
   do_this;
} else {
   do_that;
}

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 nvme.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/nvme.c b/nvme.c
index 3310abd..2fd4362 100644
--- a/nvme.c
+++ b/nvme.c
@@ -988,11 +988,11 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 		for (i = 0; i < 1024; i++)
 			if (ns_list[i])
 				printf("[%4u]:%#x\n", i, le32_to_cpu(ns_list[i]));
-	}
-	else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+	} else {
 		perror("id namespace list");
+	}
 
 close_fd:
 	close(fd);
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
