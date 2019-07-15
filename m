Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6FC683E7
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 09:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eWexGsCVAdsZ4JFQFn5o51BhOJMkKrTSla+UVZieJGE=; b=gRx0FgivKpdWUi
	ZCixgcM1VS1wYudhe0fXjVj0PYSMlk+9buxQ3VR4KmOIKoJCKu4Fjh9uiGcYsieestURQDJvH+C4z
	9wbMqaucBhwDS2+u/8ZxQ7RHuYknlV32+7Yf3rrAk4xOGwFTgw0xCE1OucxDwQGl7CRXWS60vcFgF
	OwM7GOW/Mbc5iPqVoL7NVpDYMia7YK/cPg5tBI8ev5Uy2RcC6OgghZOpVqjF2AJh1Si8FPa4q0d8W
	ae9Z1N8WK4DgSS3ehBSp+2ELupO26Yv5SJbtS3WnEXdii/4EHiBdtfDtiJgDje6Nx7yFHGTjISrvu
	RI9R5/MkFaFxK0Z1QI0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmv9l-000574-Dj; Mon, 15 Jul 2019 07:12:17 +0000
Received: from smtpauth.rollernet.us ([208.79.240.5])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmv9b-00056U-61
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 07:12:08 +0000
Received: from smtpauth.rollernet.us (localhost [127.0.0.1])
 by smtpauth.rollernet.us (Postfix) with ESMTP id 6731F280004A;
 Mon, 15 Jul 2019 00:11:59 -0700 (PDT)
Received: from nasledov.com (nasledov.com [75.144.249.93])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by smtpauth.rollernet.us (Postfix) with ESMTPSA;
 Mon, 15 Jul 2019 00:11:49 -0700 (PDT)
Received: by nasledov.com (Postfix, from userid 1000)
 id A807C14829BD; Mon, 15 Jul 2019 00:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nasledov.com; s=mail;
 t=1563174709; bh=TtNNBwEpjBsBg6ISjw7/qkj3/mPcz2YfzwhjRZvZjPM=;
 h=Date:From:To:Cc:Subject:From;
 b=Pa5C7HU/YCGNsub8ChHmDuu+7DgMi5nmstTWfGH/IGIHJD56/NYLRzfowIYMaf7kU
 F95nvH40wfIcc279lmjt0G+DsrK+ycExG35cxceu3VP+W8acMcGs9ZQFAdIso+NEkO
 yRAmnEeJ8uAIIzrTgoT17T/itlNVvH0DsKg/S96A2wAQkWaYaUuSJ6367dnCd6w26M
 8oWYG2zVu2TdCACAATzpVROm8sxEWqe8bVEyMFZlZquZUqrtS9/xhBHIuBxjq2V9RN
 VFQP9HJDdtt+M4Yf9jXZJLdsItwVT25OZ3enDD5Kod01YItFBJGhneV6kAuoXCQmmd
 gzyC3FEcHIWZw==
Date: Mon, 15 Jul 2019 00:11:49 -0700
From: Misha Nasledov <misha@nasledov.com>
To: kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me
Subject: [PATCH] NVME: ignore subnqn for ADATA SX6000LNP
Message-ID: <20190715071149.GA24206@nasledov.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Rollernet-Abuse: Processed by Roller Network Mail Services. Contact
 abuse@rollernet.us to report violations. Abuse policy:
 http://www.rollernet.us/policy
X-Rollernet-Submit: Submit ID 4097.5d2c2735.e998b.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_001207_249455_9E8E44A8 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [208.79.240.5 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The ADATA SX6000LNP NVMe SSDs have the same subnqn and, due to this,
a system with more than one of these SSDs will only have one usable.

[ 0.942706] nvme nvme1: ignoring ctrl due to duplicate subnqn (nqn.2018-05.com.example:nvme:nvm-subsystem-OUI00E04C).
[ 0.943017] nvme nvme1: Removing after probe failure status: -22

# lspci | grep Non-Volatile
02:00.0 Non-Volatile memory controller [0108]: Realtek Semiconductor Co., Ltd. Device [10ec:5762] (rev 01)
71:00.0 Non-Volatile memory controller [0108]: Realtek Semiconductor Co., Ltd. Device [10ec:5762] (rev 01)

There are no firmware updates available from the vendor,
unfortunately. Applying the NVME_QUIRK_IGNORE_DEV_SUBNQN quirk for
these SSDs resolves the issue, and they all work after this patch:

# nvme list
/dev/nvme0n1     2J1120050420         ADATA SX6000LNP [...]
/dev/nvme1n1     2J1120050540         ADATA SX6000LNP [...]

Signed-off-by: Misha Nasledov <misha@nasledov.com>
---
 drivers/nvme/host/pci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 189352081994..762ae6927689 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -3005,6 +3005,8 @@ static const struct pci_device_id nvme_id_table[] = {
        { PCI_VDEVICE(INTEL, 0x5845),   /* Qemu emulated controller */
                .driver_data = NVME_QUIRK_IDENTIFY_CNS |
                                NVME_QUIRK_DISABLE_WRITE_ZEROES, },
+       { PCI_DEVICE(0x10ec, 0x5762),   /* ADATA SX6000LNP */
+               .driver_data = NVME_QUIRK_IGNORE_DEV_SUBNQN, },
        { PCI_DEVICE(0x1bb1, 0x0100),   /* Seagate Nytro Flash Storage */
                .driver_data = NVME_QUIRK_DELAY_BEFORE_CHK_RDY, },
        { PCI_DEVICE(0x1c58, 0x0003),   /* HGST adapter */

-- 
Misha Nasledov <misha@nasledov.com>
GPG: A063 B99A 2BD3 2D48 F2D7 8E68 0F27 4D21 948F 8F06

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
