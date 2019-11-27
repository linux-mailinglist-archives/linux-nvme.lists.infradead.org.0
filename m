Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BA610ACB8
	for <lists+linux-nvme@lfdr.de>; Wed, 27 Nov 2019 10:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pwERSMb3m89/xAmHnnSOdu7u/7koiIDqemHUsHV4xBU=; b=Mo83W6UaSkX1Rh
	sIINe4kByu8dYUpbobDAPy1QJbjU7hSZJUI7cEqO0JEfUzfhaNTJlNd/bZR+xN71N4FeBw6efmg3f
	VT+KdAcARchSTyjHMcp4Pl3r4T4m1Q3BGFDiPHsC/EhXISbTfCLzObdNeybsS008Q+zJJUjrfAE0e
	PDmdsI0bfbRNsCg5oxDbu0mLgp2svzJvS4NAHgCEcEbVUJDxYegsqutjNXSiITR1aZz+AtX3iHld2
	gKtBuDw7CpkQRaTQNvZYEbB72RucGBtWkWKWRBCcpP5+WArwF4tpYrhh6bUNHP6B7Zs1oTUgZYi0W
	zbb/LTOVHY0Z4MedxMAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZtoV-0004YE-Im; Wed, 27 Nov 2019 09:40:47 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZtoN-0004Wv-Jg
 for linux-nvme@lists.infradead.org; Wed, 27 Nov 2019 09:40:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574847640; x=1606383640;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MIXmhZPCjCAOlpz5w94vEixpz2n+EW//cj/XaZjopoM=;
 b=gqcVrroknvQ73HC8wv0P9EoF+krvaBbTP6fVEGr5i/Abxe/NJLtS5nBC
 VoytsjixaXK2NKYfr8iYyTqg6p+B42ON0+mlZ8R2XXWrDWS8bMeFhq17S
 e4BICGH86ZQujVJplERFw6DVtB2AcrpezvBw8fJRo18lixh5oG5Ml9UrB
 uQEOoEQGmCmpBrmQNAtNfNbYExs/hLUdNUb/AwwkrM7lDThCSQvfdMeQw
 mStKzycTKxON/feidRujI80p5/uE80r7mM2oRW/rOJaMacfk3q1V92r69
 ubpq0XGMZWQdOYC9yvPXF2+9l/PEjnL0lfNLuerSTjCdYyCdIqSdXW/hZ Q==;
IronPort-SDR: /HyvqQINu09xCscaFXjWrEwaJzmNDV6n9ywdHtYFZTg6KKBHOFbPTlukswErXJPiQcUn2EV9yb
 NOYq3dgk2dOtfqoXCHZwqYX5jQjmTYxgVs+nTBBzAAnpCMaOmuxFMl8ELSniwbLIlFW0t5WPJf
 0WdXB/tyy6BSfUwD2qh+OqoDwurqx9FAtjyAmEoTvNNXu9JgTW5g8/UBptcOrg7Sz/tJGICrX8
 pVWWtPxs+gJ7PG0ZybuhRIkvD97jWDGpPmFsu+5Fzq3++INsjFzTu+Jz0DyJfriWjt+Hx/VALt
 +nA=
X-IronPort-AV: E=Sophos;i="5.69,249,1571673600"; d="scan'208";a="124872962"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 27 Nov 2019 17:40:37 +0800
IronPort-SDR: nBZ8JZjF5KJusfy0q71nc/cosgPyZkji90b9Vd4xlSU0fbZzBS4YQbibOiYY/KvyacyrIuVuLH
 lH2A6CqKmXpiPqL6AsSmeKcynhEFHNixIDGff4SH3Lq/6TO8aZd8yV81xkVRVYbL4f6rk5Sxm6
 UEU6j3mlgtkScJzBiSAXr7zncoaw6kpB+OOrF9HRs0mQq0Mg1jBTIuueNpEdZ6+y0wmTHBDWmQ
 ChxJ/QO8J5ojWZVxRujjM4WWM9G9j4GF6cOwMWQ3N+ydvgtk7D7MAJxmWV08s0PKnXqAyS5LH0
 OuQ5uQtb4Hk29JpO0WpeJeIm
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 01:35:35 -0800
IronPort-SDR: RwDGKLZx42oab/IG/XHrwPDCn1JMcAIFq0yaGLlpOiBY9ZKqQ5p7NbEMrlmtjCtVVZR5R/vkh6
 mALxHJ9kZYlLblSw05wboCp1n0Pg0Rz/ND3fY46WCs9Blb7FExx/l6vQaAwNloKqbOYKbg5YpN
 44CH07gKNf868+y0JSMBOeYOf6btyyVMV2tP7Apqd1KidxiOQKC/ZMSxFPQvjY4/wP/mVDRpug
 hjko/+EzxrE4YV0u4NDTN8S7RRsrJleJPbnCS1m74BZO9Ks4EmZQEdrpifbInk1/EUOgyS1Qhp
 LlQ=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Nov 2019 01:40:36 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/3] nvmet: make model/ctrl-id configurable, configfs fix
Date: Wed, 27 Nov 2019 01:40:31 -0800
Message-Id: <20191127094034.12334-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_014039_707420_2B301645 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This is a small patch series which allows user to configure the model
and controller ID. Also, patch #3 has a fix for missing sscanf check
in the nvmet_subsys_attr_serial_store().

The changelog is present in the respective patches.

Regards,
Chaitanya

Chaitanya Kulkarni (2):
  nvmet: make ctrl-id configurable
  nvmet: check sscanf value for subsys serial attr

Mark Ruijter (1):
  nvmet: make ctrl model configurable

 drivers/nvme/target/admin-cmd.c |  12 ++-
 drivers/nvme/target/configfs.c  | 125 +++++++++++++++++++++++++++++++-
 drivers/nvme/target/core.c      |   6 +-
 drivers/nvme/target/nvmet.h     |   6 ++
 4 files changed, 143 insertions(+), 6 deletions(-)

-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
