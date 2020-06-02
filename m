Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7111A1EBCDE
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 15:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/9d5YJo3LFgkt2Lae6WOpo4m73NO5nsWo+CZCLiuns=; b=DVBq5QCpU1sVjn
	HcsRfGWH+aKPB4vpuDOlBnw8Km+m2/Vzi/ctkOghg5njCsAjZ7YDKVH1Ow9WEAZCW4eNBxcXtP1w1
	hDyRk62yXqgirTI96azdy1gIhpgsxJIbBDWloQtow7f4rHOEV24Thtu6opa82Ql21SNpLmWQ7E1CD
	WNfo455x9kbf/TIWDNuHdrQSWPmXTWzPXbti0Tl0iBNCWe49jdZcdEuuRIwVycgzu+ZjBCXwrPJZB
	7KNtMe9QrxOzXliQnJWQ9soUf6m3gPATZGX+ro+K7U6Bfj+b53c5svM65jZoXzU0aNXqi7sfu1y5s
	M5qgJWHWYTXPXKXkiYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6mJ-0003X5-DI; Tue, 02 Jun 2020 13:16:27 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6ll-0003AP-Jk
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 13:15:57 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 2 Jun 2020 16:15:47 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 052DFkVk031311;
 Tue, 2 Jun 2020 16:15:47 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: sagi@grimberg.me, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, james.smart@broadcom.com, chaitanya.kulkarni@wdc.com
Subject: [PATCH 4/5] nvmet-tcp: remove has_keyed_sgls initialization
Date: Tue,  2 Jun 2020 16:15:45 +0300
Message-Id: <20200602131546.51903-5-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200602131546.51903-1-maxg@mellanox.com>
References: <20200602131546.51903-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_061554_076511_3EC1D5F4 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: israelr@mellanox.com, nitzanc@mellanox.com, oren@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Since the nvmet_tcp_ops is static, there is no need to initialize values
to zero.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Israel Rukshin <israelr@mellanox.com>
---
 drivers/nvme/target/tcp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index 9e4cb90..3099237 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -1751,7 +1751,6 @@ static void nvmet_tcp_disc_port_addr(struct nvmet_req *req,
 	.owner			= THIS_MODULE,
 	.type			= NVMF_TRTYPE_TCP,
 	.msdbd			= 1,
-	.has_keyed_sgls		= 0,
 	.add_port		= nvmet_tcp_add_port,
 	.remove_port		= nvmet_tcp_remove_port,
 	.queue_response		= nvmet_tcp_queue_response,
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
