Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C614C278A8
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 11:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CZRybgAF+R5uWm9CZM2hJLmN+mL8jr2j7LzH1OQFpNQ=; b=JRuRzAy8APVr/Bwn7mdqDDTVOr
	Cd4iNIJyi/PsIolnbvderHoOV0oh4LulbwzeMys+W8RCAlChV8Dd02YsVNLwq+d5Ode3POQ2wP/Ro
	g5Ce1JgHP9b9ldJWa0egAuRTNXDsEVVg4JVprnKJgYZ8kxct6zevfVgk+YDcJa25dvVCgmIVWxaRF
	zO3hx7amSTMX1NwlBfaG6nOt6pdPDxDuNzs6JGH8fEZoT7hRgt1optUo3iTpEKSgYCQ27s5WgPgIs
	j6kFq4UH2QjvFoLlkI/jXkNwW6kcFtubkrsc234X8jcbNmybnn6l1AULWSdWedjvz8nXHsAdIGD3i
	YiZGMLqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjbP-0008W6-QC; Thu, 23 May 2019 09:01:31 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjav-00084t-KC
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 09:01:07 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 23 May 2019 12:00:59 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4N90wUF007383;
 Thu, 23 May 2019 12:00:59 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 2/9] nvme: update description for "nvme list" command
Date: Thu, 23 May 2019 12:00:51 +0300
Message-Id: <1558602058-29434-3-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
References: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_020104_565217_8C82BD57 
X-CRM114-Status: UNSURE (   8.25  )
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

The "nvme list" command doesn't get any device handle as an input
argument. This operation prints out a basic information for all NVMe
namespaces in the system.

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 nvme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/nvme.c b/nvme.c
index 3c1bcb1..fd86779 100644
--- a/nvme.c
+++ b/nvme.c
@@ -1797,7 +1797,7 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 	struct list_item *list_items;
 	unsigned int list_cnt = 0;
 	int fmt, ret, fd, i, n;
-	const char *desc = "Retrieve basic information for the given device";
+	const char *desc = "Retrieve basic information for all NVMe namespaces";
 	struct config {
 		char *output_format;
 	};
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
