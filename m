Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B34C166893
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Feb 2020 21:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+ThFZqAmppj2ON/lJfFMxshAXAkFv8xsLRLE5hFFTY=; b=iF/67Thj14OMTr
	iQ3BaeP0eBqTsIEOCpcvm9nZKOJqO9Fz6yVuHGX7NlbSHX8V3Wcq1QT8eVuQ9+/fQstkZnx8uhYMj
	vgZLY7z31KMefeCtM6tqqX4mYLeK9xrWx8rxnz4KHysakSpTb7CiPXJD+Jqv3CWej2gp2rk+Uv9Jz
	XOqZ+dpu2NJS8qMGXfcyChAGD+GhI5OnXPOBiLqyZKwQTQ/G2iBk2nMBLylgr7jjpJwlfCXAguyLw
	aMpJO8t8oKOCLZYwW6muxFIHg1GIFzen6HqIpxUqb17ZqlLAPLpH6ZascfeDC6KiQgmZqpXSfLEDp
	NpGSr5x+1UKscW4wiykw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4sbA-0002Ja-V2; Thu, 20 Feb 2020 20:39:04 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4sZD-0000dv-RN
 for linux-nvme@lists.infradead.org; Thu, 20 Feb 2020 20:37:07 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1j4sZ8-0005cR-BY; Thu, 20 Feb 2020 13:37:02 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1j4sZ8-0006yG-0r; Thu, 20 Feb 2020 13:36:58 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Thu, 20 Feb 2020 13:36:47 -0700
Message-Id: <20200220203652.26734-5-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200220203652.26734-1-logang@deltatee.com>
References: <20200220203652.26734-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com,
 maxg@mellanox.com, sbates@raithlin.com, Chaitanya.Kulkarni@wdc.com,
 chaitanya.kulkarni@wdc.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_NO_TEXT,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.2
Subject: [PATCH v11 4/9] nvmet-passthru: Introduce NVMet passthru Kconfig
 option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_123703_935653_15F92404 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

This patch updates KConfig file for the NVMeOF target where we add new
option so that user can selectively enable/disable passthru code.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
[logang@deltatee.com: fixed some of the wording in the help message]
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/Kconfig | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/nvme/target/Kconfig b/drivers/nvme/target/Kconfig
index d7f48c0fb311..2478cb5a932d 100644
--- a/drivers/nvme/target/Kconfig
+++ b/drivers/nvme/target/Kconfig
@@ -15,6 +15,16 @@ config NVME_TARGET
 	  To configure the NVMe target you probably want to use the nvmetcli
 	  tool from http://git.infradead.org/users/hch/nvmetcli.git.
 
+config NVME_TARGET_PASSTHRU
+	bool "NVMe Target Passthrough support"
+	depends on NVME_CORE
+	depends on NVME_TARGET
+	help
+	  This enables target side NVMe passthru controller support for the
+	  NVMe Over Fabrics protocol. It allows for hosts to manage and
+	  directly access an actual NVMe controller residing on the target
+	  side, incuding executing Vendor Unique Commands.
+
 config NVME_TARGET_LOOP
 	tristate "NVMe loopback device support"
 	depends on NVME_TARGET
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
