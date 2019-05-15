Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5EE1F83F
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 18:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Uz2aOSJGcQVDHoAYj4qx7qb2wXbZzStBiDcKgN8+L+Q=; b=LrK
	WUdWXd5SB1DKDxMbH/+rNYZh7qk/7v5U1mm/7vjdr4xvc3FNNIQTC/gzlU5gH/oMRU64wwFtjyihL
	xbaE6Kl14OT9bUHgC+2us1/KiFR7PoHP5yd6gs1Jv1W/66KhAch0b/ZU3c+dQUfVJiRiTIzb/VsY6
	E0oPvZZ7OWCXZe/XG5gHX75kt7z7Smdh68UN6doq0xVRk8uO6lC9OMdrSzT4Mh6QtG5p0MVPYe6gY
	kdDYRkOhgrRHH2WMmOofWcuh6Yz2xmTBpfzKoNlFHXDAs6m5arcADQoRkEK+DBfZBIpnAqJ46iQM6
	ZomLRRQTeLYgPy3gXDO2hBkaGz1c/zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwUb-00045X-Oj; Wed, 15 May 2019 16:10:57 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwUW-00045C-CK
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 16:10:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557936653; x=1589472653;
 h=from:to:cc:subject:date:message-id;
 bh=pZlZ5SOHrLItXEK0mZ1UX+dB+cCVanYSXqo7zToXUe4=;
 b=FbGp/QQeKILPeE6tAlvt/+aJv0bJacEqvbDYSsqZFUByOiGoe3ri5L9i
 bBaBo75o2kEYzFQRMzU7ADkoY50+IxMALIc9x4XlL6Ig59uxNsHzWFIi0
 IyjSiDFHimgZDJ/Njc+dRxQvShgxxx3O7u6m1U84mdBLg+TYd2UHa7O15
 alAoEt1RWjYNYM/VesDyqQrYLPvdVO7fdZZL8DnPfhul5/CFgbK409bT9
 PZw77sr2e4qyx7P/FS0ZYenEcUPXsHn3oYt+ri/BbzZ6qNVPU4U+0t7EP
 EP/MA9/x2Ixn0a4ClGCHqx5pbZBvFUgEqdyYOKBf6vXOHyiIakkkcgmNP w==;
X-IronPort-AV: E=Sophos;i="5.60,473,1549900800"; d="scan'208";a="113282372"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2019 00:10:51 +0800
IronPort-SDR: SjxfHq4/MOpbYs6Bd4HwnTqeULpz8p7x6D5XPVgIYWsIk/W98ZG+KalVvYiRc9c+y+/oJ5ok/9
 K6URBtDm5b9U1s6Jjafd+WtXL/5sAgbmanmctzCX6uTofXma35rycI9k5mNLkwbFqraf+bZN/d
 4BhA3SRpYOrXyb8N4USklBj2oD743AbyeAReG6ROHMjfHS80+W4w4nFaRQaTReXEm7z5ucVzZR
 +SYPAs9jfD/mKS917hVqvHnOOS2SWCPqhU3vFTOqroyPxcencUcqAGz7ELGYONjyaQq2DaRSGD
 cu802ir6jyKds+PVS0HW7DrG
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 15 May 2019 08:48:45 -0700
IronPort-SDR: srT4pCid26a45Ynnide1FqOPOa/7Ot7U02TC3hOFezJNtiW86NYxhjAgG6t30NjslMHnFMIsHZ
 ei0BjhundmJlAUoCtsQm1jhY5Uk3JuyjNTuulEqCR2d/OLoUKxLqKN5WGSYraX7/k7M5uULOA7
 z2JAaKvRLdcXHoYHnVJjYOV9GreSCwiptKhAfh8UFPPp9CC6/PPJgzD1Z1uAFlr1v1Xy6ydTnk
 /9A3t6VCAAQYSEgr1M4tP403LXtk6kJb6Xm19JrouVqlJ/Lyg85YnVEM5DrJ/OaNVtWyJv/iGE
 zF8=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 15 May 2019 09:10:50 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: get rid of extra line in the tcp code
Date: Wed, 15 May 2019 09:10:44 -0700
Message-Id: <20190515161044.25772-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_091052_457703_6102FA2A 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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
Cc: sagi@grimberg.me, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is a code cleanup patch, it doesn't change any functionality,
It removes the extra line at the end of the function.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/tcp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index 69b83fa0c76c..f019af264081 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -557,7 +557,6 @@ static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
 	}
 
 	return 1;
-
 }
 
 static int nvmet_try_send_response(struct nvmet_tcp_cmd *cmd,
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
