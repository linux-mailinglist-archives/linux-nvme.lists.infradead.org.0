Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D131EB369
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 04:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWHG6uFx5UHy+gCDdVq+PABnka508wIn+PuV7Lmosx0=; b=euCyxoWSeyV1/H
	RfuyQxOQRGHnapUVwDYe8sOrtNdF3hM4MqkGMMlcYzw7tVspZbWaBK3ET8oJeDYkyxbMneQryL4YL
	byZJUy3iNnliOCLkyzLIoIdxCbb0s5V9Ft070KM8DasIbreZoARHATXiL8ngffj95XMzcbfX2m+Fi
	DK2CeefWXCBhQvkkiElbz+r6EjwlKGrRdmfZzLQ7I/aWgxGeDGZb7ybiRCP8jkafd8cWBDTzDvY54
	f/NpnLni5qXnSJ0xI/iAgI2jWjBmkIMhy7LB1vYc9sCNUHahdE4cW4Btg+rw9LzKAJ+sVLuJNVfyJ
	lpFKwhBj9GLLQv77AyxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfwrv-0004Ug-4g; Tue, 02 Jun 2020 02:41:35 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfwri-0004QU-RC
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 02:41:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591065683; x=1622601683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gn2J2vgS1bSmf/zU2AodIuJqOS8DpH6WwdriRj1dVaw=;
 b=DCGw2v2T8qNVKha3aNpasI5A0mKrDexQ+e9v6aSoKqBWkDYy6V2RP3nP
 ZPcXi/0DgbUmIBg7qXpBvDbLm+jd8Nhv639UaSA0XXJa1ivFVZvnuH6Uv
 h4V4srrz7xPTEBRVwFFVWjrsyicgEiW6vNbb4Rw4+p85iB/l6y3WTmPuh
 CM1afsy9phCeNHkyu9OBXqyXrVPIdxlTkc15dOFvAQMVsj38saJW9V9DK
 O+WzbuR5+WCFfQkuYHVfF0mQBZQY7Sk+kntMXE/RtAEVKgZz2jwp1/jlI
 3dIrUBSkNrvFYNd/UY8jbRaVi3hTcOwiwHI7BWMoBRaKzUnGu7mUjNadg A==;
IronPort-SDR: j/dT46UG/YBrpwQ2AGTabPAPKAWxdb6uv+izdVWN4zhf7Us61pwRa5NKDhJnCibG874Drf7ZIM
 M8Wzes/fGVp18mRQoEqihfIHwiuIf+fObJ9Pm/EkkMu1ch9+TiB00wCBJuPx2v2/R2wQcp70t5
 oqS1ALJz+smz9ygrqH/6p5d9NbXyu/XHgh4cw3jNUaiUJBE0JWS57hdbjMwLSAKvetUGc66CRN
 hUslXMoL8FA/BHRm0Ajp+GXMUuCZoJV2LQ6qtiyY0G0DpFEvR1YIPIIeUaFEK9hgZmGu+PU7/2
 0UQ=
X-IronPort-AV: E=Sophos;i="5.73,462,1583164800"; d="scan'208";a="139314110"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 Jun 2020 10:41:22 +0800
IronPort-SDR: 5Zp9OAVPiODS8XuF1FybHjda/IPSOe6cl/2+P3CCyBUeNWY4C8Dwu//ymuRjdtC9qXEQd39Zii
 1k+1ADw1RwjSOUF6Yv070XtB24ZSsdiwk=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 19:31:03 -0700
IronPort-SDR: u6FG8JwKs3vRb2/NVd93Y7sZl0jtHKqYkaQv/QgXfT5nVoIyYK33xu9wXhu43szknUq+lZIq2A
 K+6+dC0gCzkA==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 01 Jun 2020 19:41:22 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/4] nvme-core: use u16 type for direcives
Date: Mon,  1 Jun 2020 19:41:11 -0700
Message-Id: <20200602024114.5153-2-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200602024114.5153-1-chaitanya.kulkarni@wdc.com>
References: <20200602024114.5153-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_194122_886562_60934E36 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbusch@kernel.org, hch@lst.de,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In nvme_configure_directives() when calculating number of streams use
u16 instead of unsigned type in the min_t() since target variable
ctrl->nr_streams is of type u16.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a3a4dbc59af1..8d05dbf29d76 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -555,7 +555,7 @@ static int nvme_configure_directives(struct nvme_ctrl *ctrl)
 		goto out_disable_stream;
 	}
 
-	ctrl->nr_streams = min_t(unsigned, ctrl->nssa, BLK_MAX_WRITE_HINTS - 1);
+	ctrl->nr_streams = min_t(u16, ctrl->nssa, BLK_MAX_WRITE_HINTS - 1);
 	dev_info(ctrl->device, "Using %u streams\n", ctrl->nr_streams);
 	return 0;
 
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
