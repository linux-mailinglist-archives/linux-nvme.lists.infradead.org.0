Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8294F11A16B
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Dec 2019 03:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ke69K2phlZct2Z3SntjbNI8f9ig9M/9E1NpbI4VgrQ=; b=FGivkRduovHVGd
	1EisU+7Vo4ehGwEGdmSbv+8NJXKnPtnJ7HtLETFRabLzKFMoTkHmoWFV9xygihhQCvz29D+IfAUU0
	UwCwU+XARTo3id3tgPNmXJkgsFCpwoO7CO7s5vnc/13hu+u93IHPhquTaQKqPrbH9vERoLvcPgtRo
	NktjkiszH1N/RYeiBOaVM8v4IdPBq0V1BG3jczto8gkdYHtm9HvxkhLb2KhJ39d3xL5+7yx8F0r8B
	VhZcJfy9hYn9+O85P21lAnmkb+GUhlocwmjN3Ax+ig/WAAG1NckJZweBnjDTrY9SPY8+rxAMMUQiM
	ZmAzTR0uec8/LWbIhqHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ierqX-0004pw-Ms; Wed, 11 Dec 2019 02:35:25 +0000
Received: from mo-csw1514.securemx.jp ([210.130.202.153]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierq4-0004l1-Ic
 for linux-nvme@lists.infradead.org; Wed, 11 Dec 2019 02:34:58 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1514) id xBB2YYYS020034;
 Wed, 11 Dec 2019 11:34:34 +0900
X-Iguazu-Qid: 34tMK4xBDHqkacVd01
X-Iguazu-QSIG: v=2; s=0; t=1576031674; q=34tMK4xBDHqkacVd01;
 m=IozrUjXUuKzFdLlGA7Af5G6SOvtLYO2bvH3LJDqrWb0=
Received: from imx12.toshiba.co.jp (imx12.toshiba.co.jp [61.202.160.132])
 by relay.securemx.jp (mx-mr1512) id xBB2YXwo001003;
 Wed, 11 Dec 2019 11:34:33 +0900
Received: from enc02.toshiba.co.jp ([61.202.160.51])
 by imx12.toshiba.co.jp  with ESMTP id xBB2YW6D017313;
 Wed, 11 Dec 2019 11:34:32 +0900 (JST)
Received: from hop101.toshiba.co.jp ([133.199.85.107])
 by enc02.toshiba.co.jp  with ESMTP id xBB2YWZN018272;
 Wed, 11 Dec 2019 11:34:32 +0900
From: <tsutomu.owa@kioxia.com>
To: <linux-nvme@lists.infradead.org>, <sagi@grimberg.me>, <kbusch@kernel.org>, 
 <hch@infradead.org>
Subject: [RFC PATCH 2/5] nvme: to add NVME_PCI_RESET config option
Thread-Topic: [RFC PATCH 2/5] nvme: to add NVME_PCI_RESET config option
Thread-Index: AdWvyaqXktM6qd3xQTa2AWyDRIHw6Q==
Date: Wed, 11 Dec 2019 02:34:30 +0000
X-TSB-HOP: ON
Message-ID: <4b937e3b7cf343859205232e0aaa0315@tgxml778.toshiba.local>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [133.118.176.119]
msscp.transfermailtomossagent: 103
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_183456_824140_B0A4DCAA 
X-CRM114-Status: UNSURE (   5.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.153 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tsutomu.owa@kioxia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds NVME_PCI_RESET config option for nvme reset functions
(e.g conventional hot reset, function level reset and link down reset).

Signed-off-by: Tsutomu OWA <tsutomu.owa@kioxia.com>
---
 drivers/nvme/host/Kconfig | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/nvme/host/Kconfig b/drivers/nvme/host/Kconfig
index c6439638a..35137e278 100644
--- a/drivers/nvme/host/Kconfig
+++ b/drivers/nvme/host/Kconfig
@@ -84,3 +84,12 @@ config NVME_TCP
 	  from https://github.com/linux-nvme/nvme-cli.
 
 	  If unsure, say N.
+
+config NVME_PCI_RESET
+	bool "nvme additional pci reset support"
+	depends on BLK_DEV_NVME
+	help
+	  This provides support for the additional controller level reset
+	  (conventional hot, link down and function level reset).
+
+	  If unsure, say N.
-- 
2.17.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
