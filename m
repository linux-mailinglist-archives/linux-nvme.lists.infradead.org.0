Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8CA1FE02
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hJyDF9qf1bMCvSLsflY1Sse4HSzGNrbekuogXDp8QBU=; b=I8O1lbQwE7X6hLAW02SW/17VCD
	OQE4RVt88J2GNid12HLNAm/TUt8jDrAr1BAS32PG7Fy7EZFPyJnfNLKnUsGRkZvZzDY7CYszPvDEj
	2iSm53NA09QfUmPnb8oRmot3+W5sBcRhElYU4muHyDzIb8gsJ6qiJugowklaPfYUSjkU8CAyhyU7f
	xH/esrE79zErnhhMLcKAPOyRt/7IICeePalovN/YmAdR2LROzNW8vbniAJogadxfm6UVj4Zrv04HA
	59U2x6yTUayxVfrX8YkgsoFvR/56J2u+7CUwPWC+aKMteEn7H+i0jFbZb8+8mOoo+unCXXXGdxkvR
	2OPQKbkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6xb-0005Cr-8h; Thu, 16 May 2019 03:21:35 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6xR-000572-F2
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557976885; x=1589512885;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=xo53zKuoZp/ok9gFI3EfqnNbxU7HNs4+GdbIZY2PAGk=;
 b=GYSkEq9IpUH3RVmdb3WfuthEEeqBNHDNLdNLN7f+Sa8ldePYcoH4DNBE
 53Uzx5ims3HlPETE2Aq23ilJ99mPlAYfJOAlYp5Xt6ON3uzYU3zXujTeY
 bwAjifTnNd6sLWv7Ya1Otkn5Z8ea3otIo1RYjj1JqDut5+5iih2+WAXEg
 tvpnq6syEI/zrKel/hRkuQ9R61ejpfMfYPnfbOK9UNaPYldXaa0EUyI2k
 qzj4TLmohM/YYvHJHUX7cNr5RAwJ0Di7p+YKoN1lu1t8un1d8+QhhSb3O
 TfDBUqOnztr85CvodBTRDPQ7N8IQMgNXC+EZBK8mEH09uLrH9BXzOn9GF Q==;
X-IronPort-AV: E=Sophos;i="5.60,475,1549900800"; d="scan'208";a="214490448"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2019 11:21:25 +0800
IronPort-SDR: n5WGnjV3KfTX6mYFAVs7wliQH37Uc270uZ64CcNRO5ZmSJNLDvT5qB5fCm8cMm9rXOoZDkxFvM
 5BLwQliEAS8/3wKlle2wX+MS5ThwO2OD9lJy0rv7JkZuQWhkU1fW5DJWuBa95HhZPAlVlhVOtv
 lEmzZePoOPU/ogXWNHHPwOEkvF/x2VnyRbpHkbMhL9RDkv3nUhx0XNkBbdpKj8QVLN++Avip79
 I3DSmEhmYvQd0XCsq5BAs6LZZfSujMLWjYWVzw5VYo//aal5VJ+xpUTvqFVkoUKsLltD0zGQfy
 2xZhnUnp7ndwXcUU3FGCqatI
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 15 May 2019 19:59:19 -0700
IronPort-SDR: gZKf6j0HK7RoiRHsb93Kvs9MAuL/EiEcbrq5Ixgj22jMJ4F1wBdEYbS7NpMlldVB3UJgDXKb4b
 hZAszmaCuoRUVjsziZVAXkeR8mUhSFv7d9UOTVG3u3W/JeX48UMdsuSBiN63qkzL0oBqIKPPAi
 j9Xq72+aS+NQ8XbaGKo2nZGUyhqb4XH+utrc92XvFy0pPbrFjh44RyZpEmlQa5kcHaPqiV1ow3
 gyMDPnw7QWhzSTzbalDNlsCsHar6FC45cEwCmJzDj1cbfklBjiYwJKYa2POTwKTAbqz5ekLP/6
 +as=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 May 2019 20:21:25 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH 1/4] nvmet: add iopriority definitions for port
Date: Wed, 15 May 2019 20:21:05 -0700
Message-Id: <20190516032109.13048-2-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
References: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202125_612558_7A9A190C 
X-CRM114-Status: UNSURE (   8.71  )
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

This patch adds iopriority class and value per port which gets
initialized from the user through configfs.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/nvmet.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index c25d88fc9dec..b81b1501cf55 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -140,6 +140,9 @@ struct nvmet_port {
 	void				*priv;
 	bool				enabled;
 	int				inline_data_size;
+	u8				ioprio_class;
+	u8				ioprio_value;
+	u16				ioprio;
 };
 
 static inline struct nvmet_port *to_nvmet_port(struct config_item *item)
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
