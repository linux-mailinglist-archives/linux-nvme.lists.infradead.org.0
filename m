Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A3F14D3A2
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Jan 2020 00:29:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6GkYuEbWMobmmquznSnzaE9OaxMQNRz/pR9I/S79us=; b=jCy3Ln4ywoGUyR
	2oUU9jGVP0vWaeEuZQFLjn0YnMAO7iQ1PBYCmz49MvncOv+Nsk+jAeiDFTC+WBcFTqTqU8t6BQc2x
	AENWZi5by1MLJQxoZ24tC2j9YcrcWIEKd1exNZPo7nJJ8D3gU5oLV5W7lxvY0DUPMjqA+NqDu0Wdx
	IoHlavwvnxkZP9efJat/DSfarp2hKZwIK4rVn27F2vry/IbqA1bwVEfhcN0WrOF2wWgRX2JgwRgAx
	fu5+IuE74w0JPOOGbJ/S/2OWZIGPwmYlHJhec0Q/x1Uyi4x3TjZcDPgaSPOoPoqqER6qwiZ6qXXwn
	XhxCchRJNu5ZMjJIixAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwwmI-0002gH-CY; Wed, 29 Jan 2020 23:29:46 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwwm5-0002aY-M3
 for linux-nvme@lists.infradead.org; Wed, 29 Jan 2020 23:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580340574; x=1611876574;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vsWnYxkL3guXdXYEXfUdlM4bUkHgg9d9fy/3CAVl06c=;
 b=c/FCWJu0W75+/UEOOc3VM6SOCJRxyChZ5M4FOY9vr9+obsURwAWmsPrQ
 KI1bkjCFg3VUyk6RJox0UU2iiAO7/0VvlxgYL9vnixRPr9S9QoKbwJCPM
 70yDQ9RN4zdKmBcGLA/qFVv9bp4tx9nSTA5B8kD/Up0uG1EO4tCyjqz4q
 mWLDdfshkNc6d3DXgpe1jc2XtU6lUDK2mkNMfksHxs2+wb/uYijUtuUXQ
 eXIQRaXhHB/Zj7av5dU1QZ2CJGNxan/ziyyuQ9VsA+oUmramp3lijzwVp
 lWd4ZuhsJ4QSiFQt9sqaJXm+43NBMaIMPQMln9vI7M9BRfaxutwLrXYBW w==;
IronPort-SDR: drQ7qRUmb7kdHnRWTvB7a5JTzemUvy404E82yMrIIPKgD7mWkG+CdCLkuRQ5twx0gAU60rYY9i
 ezwvyRp2lVMDC092iU+dibdRM/UvVa68xmaOoHWKSuihCC8ffyJMtoqYAdw9chc/avavNGQ2qP
 hjZKNljb1WIpDs2R+URR4ci6IMKmsPrM4GnmeWAxloFx9vZXO+mAu6ZlwR74LXHIUtPyWX1exi
 UmzPuu8hjZ2YyiCfh0okQWquYmdRNeaHaNzPku7C9c3d+07JTyVVz4R1fQDIwrZ/dNeMOoZr4w
 E4s=
X-IronPort-AV: E=Sophos;i="5.70,379,1574092800"; d="scan'208";a="130160260"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Jan 2020 07:29:29 +0800
IronPort-SDR: 46PNZL04t33J1n89BQq4ep4HrHWNAcWHb+b+bdJuTkZZjYvWrcDpaC9PY4QHewo42vuyC3Bn8T
 X0XZa3khwZf+FWSbb90qc0Cm42a4gz2+vLhHEPjVEuLbKVpGlQq1dnh+wqWan3aWXfYAmIO2NN
 /kdO0NKff22SQ8U6q9wLwGBm8htOcsNrxHV24VROo4IVoB8b7Z1A2jnp/RzoFFvlQKF5saPAVT
 JIKrBOK0d/3ngfCsgoyT607Cepz50o/r82rhlZd4xTkeu12dDRKeh9IhMpJDu1J0mNC0nBbDm0
 dRd9QFZ47qoC59tPCGft4/4w
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 15:22:40 -0800
IronPort-SDR: qiEFBqR7OxCyAa6e5I9ODkf3gO1TtAjCk3dZgU5zphyUrPJCAsydE1KW7ochUqJ36pDEo7dMug
 rZkX/g3bCMdzP2/m+6uT5GF44Nnh+06o4tR5ZuyBTyJeZKPxAzVEuQ9VZvksBiKLUxueXTJndO
 szdvZJ8JCiy/5NEXIsiWKcPzs4laWl2Q0sNkrRvsJtNNWozx5hKkqlCE3iXBNx0nZ03+jZRlvp
 KRTqTFP3JUnV3dpc8+R3IdTgjy75BaZrIE0HBs3vhvi7QANVPjUxymYSeS6sB44IUjxBHJJprY
 C5M=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Jan 2020 15:29:29 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org
Subject: [PATCH 1/5 blktests] nvme: allow target subsys set cntlid min/max
Date: Wed, 29 Jan 2020 15:29:17 -0800
Message-Id: <20200129232921.11771-2-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200129232921.11771-1-chaitanya.kulkarni@wdc.com>
References: <20200129232921.11771-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_152933_750537_F37F4020 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch updates helper function create_nvmet_subsystem() to handle
newly introduced cntlid_min and cntlid_max attributes.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 tests/nvme/rc | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/tests/nvme/rc b/tests/nvme/rc
index 40f0413..d1fa796 100644
--- a/tests/nvme/rc
+++ b/tests/nvme/rc
@@ -121,11 +121,18 @@ _create_nvmet_subsystem() {
 	local nvmet_subsystem="$1"
 	local blkdev="$2"
 	local uuid=$3
+	local cntlid_min=$4
+	local cntlid_max=$5
 	local cfs_path="${NVMET_CFS}/subsystems/${nvmet_subsystem}"
 
 	mkdir -p "${cfs_path}"
 	echo 1 > "${cfs_path}/attr_allow_any_host"
 	_create_nvmet_ns "${nvmet_subsystem}" "1" "${blkdev}" "${uuid}"
+
+	if [ $# -eq 5 ] && [ -f ${cfs_path}/attr_cntlid_min ]; then
+		echo ${cntlid_min} > ${cfs_path}/attr_cntlid_min
+		echo ${cntlid_max} > ${cfs_path}/attr_cntlid_max
+	fi
 }
 
 _remove_nvmet_ns() {
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
