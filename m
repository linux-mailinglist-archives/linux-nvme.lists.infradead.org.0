Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8541C3515
	for <lists+linux-nvme@lfdr.de>; Mon,  4 May 2020 10:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bc8pR5I/yebaSfslHN/keUdLMttc5i9AIbBYLuPhT0s=; b=FjTmKFl16v7vy9
	giuLzqW33QjqGCOt3ghcflZZ48873GnnB5Cb+encOFOZLZwwz8m+zacSCYefVabN0KeC6aOp7hAfE
	dGD5rOwFaofrr0gBqm1kX/LI8fkyd1pRqg6lWzNX7dbR+NbVxuYIcrHlb+fe93jnRjRr5Gy2cPXY7
	RKDWMKMjxMclF5HCMAh/p4SlprneBMnG5KZ90dTP99WrK6X3JPAOWyGGyNuvPrK7sfwc1qLBqqD89
	kwR/W6yCYTi/ndVlWjTbBR/8Kty023mMQFtlGV2r0zXR4+Y5dUdyXW5j0dDibeaDRT6HUhilO6NFS
	iQqK1MfnMTCilcP91tWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWv7-0004qN-NI; Mon, 04 May 2020 08:57:49 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWua-0004aU-IZ
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 08:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588582641; x=1620118641;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fjehroMKt3BDlBUNp1swKZcJ44mlp3iXWnIemRTZH4Q=;
 b=i2247q7tMwDhy7rnJftwkeffMQxopXIeRqvlbHPTOA7RQKmryr2AQZmQ
 AuC+NPFQvDc/+boJgy/OL1cpkgl8Yxan9NfC/fsG6WJlZr7QJ0infwGPZ
 4tr/uEaDnl2g019kXBKamADbutbrFoRxWKhaKH45iPQ8gMBiS/UzMSwlQ
 343rXfWYYQT7wRgxv+WrBMZ+MPSiwGZssxk5FYd9Xw2TOcQuFRe5119V9
 BfRQmFzsdqpWK8zbdjW6vZnnzGUdmm7DiwK/m33gM451elN+DbAgBG6F/
 M/sNG/ZEr3RXlFjQCL/+9VyI9MmIzcoEIQJ2jiBgHJ4/NYFQbOq+6KskX A==;
IronPort-SDR: mDC7sbK9Ty7y2st2M/K7d3nPb4v7wL+F4uUn4XcTE0sALY7rHQWh+d8brfY3v+o4nJ5uCuTt/x
 jWOM1CKTxpGjGPBc2mWGxWUEJ6yV2xigb1eTa0dBWMZOUmvH7fzfCz9eEwiwCVrw+4nvJ/uAZb
 qIYF8E3vXO19ItVgGcgmfBS8UbO3696o36xUrZmEaBSHkJ4+Lq0n5T4lCbpEw9exFcvdnRyWgd
 KiQrdveZeX6U2sCHPF/duPH+qWiENGIeosFdK1ZA1mmXZUdPM713nEB0pMu/Tb/J0BbW3WRdjC
 A1s=
X-IronPort-AV: E=Sophos;i="5.73,351,1583164800"; d="scan'208";a="239470240"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 04 May 2020 16:57:17 +0800
IronPort-SDR: R/mNQkaON3VSfW6q+NM/RloBxoWoPl9031TBK0hVrLgCLu6JMiePY6YcG6B7L5b3VhmKsDYvSy
 Hrglto+ptAL4PUeAQH3y4CaI5DKHJUPAk=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 01:47:10 -0700
IronPort-SDR: gilfKke0VGCbMBaV1+nas70J+Xh7x84j7UZF4sYZ/u5j/2YlQA77ZhD0vnYOve/2NbBgARg3xJ
 AmiUKDT9sIKA==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 04 May 2020 01:57:13 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 3/6] nvmet: use type-name map for ana states
Date: Mon,  4 May 2020 01:56:45 -0700
Message-Id: <20200504085648.15549-4-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200504085648.15549-1-chaitanya.kulkarni@wdc.com>
References: <20200504085648.15549-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_015716_716064_D50E09FF 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Now that we have a generic type to name map for configfs, get rid of
the nvmet_ana_state_names structure and replace it with newly added
nvmet_type_name_map.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/configfs.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 8a5d99e25192..78eb822a20d5 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -1153,10 +1153,7 @@ static const struct config_item_type nvmet_referrals_type = {
 	.ct_group_ops	= &nvmet_referral_group_ops,
 };
 
-static struct {
-	enum nvme_ana_state	state;
-	const char		*name;
-} nvmet_ana_state_names[] = {
+struct nvmet_type_name_map nvmet_ana_state[] = {
 	{ NVME_ANA_OPTIMIZED,		"optimized" },
 	{ NVME_ANA_NONOPTIMIZED,	"non-optimized" },
 	{ NVME_ANA_INACCESSIBLE,	"inaccessible" },
@@ -1171,10 +1168,9 @@ static ssize_t nvmet_ana_group_ana_state_show(struct config_item *item,
 	enum nvme_ana_state state = grp->port->ana_state[grp->grpid];
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(nvmet_ana_state_names); i++) {
-		if (state != nvmet_ana_state_names[i].state)
-			continue;
-		return sprintf(page, "%s\n", nvmet_ana_state_names[i].name);
+	for (i = 0; i < ARRAY_SIZE(nvmet_ana_state); i++) {
+		if (state == nvmet_ana_state[i].type)
+			return sprintf(page, "%s\n", nvmet_ana_state[i].name);
 	}
 
 	return sprintf(page, "\n");
@@ -1184,10 +1180,11 @@ static ssize_t nvmet_ana_group_ana_state_store(struct config_item *item,
 		const char *page, size_t count)
 {
 	struct nvmet_ana_group *grp = to_ana_group(item);
+	enum nvme_ana_state *ana_state = grp->port->ana_state;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(nvmet_ana_state_names); i++) {
-		if (sysfs_streq(page, nvmet_ana_state_names[i].name))
+	for (i = 0; i < ARRAY_SIZE(nvmet_ana_state); i++) {
+		if (sysfs_streq(page, nvmet_ana_state[i].name))
 			goto found;
 	}
 
@@ -1196,10 +1193,9 @@ static ssize_t nvmet_ana_group_ana_state_store(struct config_item *item,
 
 found:
 	down_write(&nvmet_ana_sem);
-	grp->port->ana_state[grp->grpid] = nvmet_ana_state_names[i].state;
+	ana_state[grp->grpid] = (enum nvme_ana_state) nvmet_ana_state[i].type;
 	nvmet_ana_chgcnt++;
 	up_write(&nvmet_ana_sem);
-
 	nvmet_port_send_ana_event(grp->port);
 	return count;
 }
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
