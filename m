Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286E11FE06
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5a88HRCOmg7TI40XqM3IybUR4/VBmr+4kyYyPu5ri3Y=; b=nk4BkXdVXcVdNuzDuSltV888kN
	Sl7cgDCGjIUaR4p5zd38gNbpfxzoD3mTGfS+pWhlQX5VcrTTjLOUtAbGC1uuCaMjU9tPd9JFD9oWP
	NQDW9wC1qDB1GPrqBDyRog/iQyZL9IMf7DMZ1ASTl3orjI+KQ7vJHsK9b9cfRCeYexN1OwR2i2LVD
	pNSRXsP6FkIu8WHJAXGHr1VrXFDR69X/6LSeDETFPc/d2bWG8fBV6qqlZXO0dcyEzGFsRHEIzeyd4
	HZv+ZFcxqMEw/diIzyvXljKSN+bE7O+si3MarawOqObcNI+OXCpgPwuCnvK0oN3F1Ce4/aOm5NHfE
	J+UZBofw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6yG-0005z6-8I; Thu, 16 May 2019 03:22:16 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6xv-0005Wz-RC
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557976915; x=1589512915;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=OsFxuFzYZElsTucOoU8TPGuW0LMCQs3NhqiVyAvKD0E=;
 b=o0mJ1H0AmDMZSkUaqzPPGMRbEWB7fsbxlPS8QRS/m4UxBmAohDkz7J5f
 USEY26ize9CjItqxF26D7unY0zwHarL5v5iVbm/ZiomE2dTWtfBpiPpeR
 p5SRmx3XrKNH4Q/vl2GmvirPoEwpODzzq+9RtO5XPMRvi4oXqMmBD4YW2
 0Xxq45hGWSLkkExeKvEEGKf6VvwqTaYYAZ0brTHzCSYzjwEkGiBGdMLwE
 g/Qf9bWc3AIUhpvF2LjCHQVR0Wgo4MRL6/Q3UhwY4w6DZNmry3jin8Qyo
 lPyUqtLvdSCNtTvIdOXYRE0yw9SRArQRUdhEdJI2Zz1bKJAt/pVSLvjb3 g==;
X-IronPort-AV: E=Sophos;i="5.60,475,1549900800"; d="scan'208";a="214490463"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2019 11:21:35 +0800
IronPort-SDR: pBX0JreTWjghhEK0bJyAMQ+cZNJv7q8z3b5szXgBWmN+oDRiFoCmiKsmJMFcBTScDtPxCma7a1
 HH7MZer+Rruwul94EfhaWNpTHUOY1fb+efYjl1ubKw/QicIKwbeg2G5kvbg5JOIjNm7nDDceIk
 wQouWHzdyqbZTRY8gMwrnFZRhym7OcgXgQF5l0M4Q6xbl5yE5NY0KocY7fZSGm9QN0YuPLyule
 HEcM5aXcpzjtAzpNQ3x5juQfi+rAeC+B6G4yN6NelkhtoPaCkFpoM8UWMAwxZ+XBZR7F5dNZqd
 xLlKQYjqb6wXhExARWutPhRy
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 15 May 2019 19:59:29 -0700
IronPort-SDR: BW8x2mkrSJHt++TUsGcBc5tHXD/My1t5ZOda6yXV//8PVBbEzp8HWg0x0q0SyY2QCeGb2Z25Oj
 rbNEXnTdAAD0ZyAE+W3F3oSvA3molpeBawoZ1G/j9gV10uU3zUf3QjpJ6rmuTGgazhjEqzXcEr
 EIXyx+b8mTiPIByzZgIGnpSGRSk+RjJ+5CE9+YH7/d25k3KiiyATDtv45GNUS2VkS9v8raWI97
 RswUlk/v07SA0q+cW9OyklhtCQfunLaSBpFLhvilVE8gUxMd1+Anj4Ayts23H8E/m+VIHdhyzD
 LqU=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 May 2019 20:21:35 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH 3/4] nvmet: set iopriority for each bio
Date: Wed, 15 May 2019 20:21:08 -0700
Message-Id: <20190516032109.13048-5-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
References: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202156_528290_89DDEB2C 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jthumshirn@suse.de, hch@lst.de,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, sagi@grimberg.me
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch sets up the bio iopriority value before we submit this bio.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/io-cmd-bdev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 3efc52f9c309..099dba477df8 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -152,6 +152,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 			bio_set_dev(bio, req->ns->bdev);
 			bio->bi_iter.bi_sector = sector;
 			bio_set_op_attrs(bio, op, op_flags);
+			bio_set_prio(bio, req->port->ioprio);
 
 			bio_chain(bio, prev);
 			submit_bio(prev);
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
