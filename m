Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6387F8BC
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 15:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puwkTVytfUY6KFtghR3O+bJ+Oe/2SI+3lhYF0Cb0IsU=; b=OhFcNw0e7b9wMd
	4wnCm0RMj+UUYeFsWhAO2Drier7va5P1w8xCt4jYcvYfByFfOuvE9eenNJwNvHH3RofqMxOAGllyT
	mdwufjSB9kXUrC8d6wUHw/zY7tigBgj5+TabvDRJN6pQ1lLM7puuj7Sqv45gzCfhFuEXUisS9K1+z
	sXKhaeRlRFnZ0bOOHvftQAw4ZPod9d+Ha2RVWkuoXbh9WiiTV47qHLL6NsKrPRZnvHVvGAiu4drOa
	1Usrovj9rTEmvRvxZxJJSAP3e19hDs7QyxWCpfuEsYgl4D0GRzBLZzL1F1ihtww8aMbrbkCsbcYnL
	WTlLL2IwcGnM8G/YvVGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXVr-00044y-Jn; Fri, 02 Aug 2019 13:22:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXVm-00043n-59
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 13:22:23 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 165AB20644;
 Fri,  2 Aug 2019 13:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564752141;
 bh=HPlxUtNwkZHE7h7+b4y2FQxruajmN736XDBowKuRmkY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OichDcKQ9NP/k0O1gbCm/l8XxmqDLeCPKhsUF/zJpS2gl6lnWOXeiNhEr21LwqeyG
 ciIv3jxWX1lpZmH7Ka9yUCzhDv3eJz5uSc9mYtCGJV2jUItopTQG4XMX4e3KdVMknh
 MY6QPiFujPc+kwNKOo5T0thpTqHlH1AvYJAZUln0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 59/76] nvme: ignore subnqn for ADATA SX6000LNP
Date: Fri,  2 Aug 2019 09:19:33 -0400
Message-Id: <20190802131951.11600-59-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802131951.11600-1-sashal@kernel.org>
References: <20190802131951.11600-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_062222_219719_BA014546 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Misha Nasledov <misha@nasledov.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Misha Nasledov <misha@nasledov.com>

[ Upstream commit 08b903b5fd0c49e5f224a9bf085b6329ec3c55c0 ]

The ADATA SX6000LNP NVMe SSDs have the same subnqn and, due to this, a
system with more than one of these SSDs will only have one usable.

[ 0.942706] nvme nvme1: ignoring ctrl due to duplicate subnqn (nqn.2018-05.com.example:nvme:nvm-subsystem-OUI00E04C).
[ 0.943017] nvme nvme1: Removing after probe failure status: -22

02:00.0 Non-Volatile memory controller [0108]: Realtek Semiconductor Co., Ltd. Device [10ec:5762] (rev 01)
71:00.0 Non-Volatile memory controller [0108]: Realtek Semiconductor Co., Ltd. Device [10ec:5762] (rev 01)

There are no firmware updates available from the vendor, unfortunately.
Applying the NVME_QUIRK_IGNORE_DEV_SUBNQN quirk for these SSDs resolves
the issue, and they all work after this patch:

/dev/nvme0n1     2J1120050420         ADATA SX6000LNP [...]
/dev/nvme1n1     2J1120050540         ADATA SX6000LNP [...]

Signed-off-by: Misha Nasledov <misha@nasledov.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/pci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 7fbcd72c438f6..f9959eaaa185e 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2959,6 +2959,8 @@ static const struct pci_device_id nvme_id_table[] = {
 		.driver_data = NVME_QUIRK_LIGHTNVM, },
 	{ PCI_DEVICE(0x1d1d, 0x2601),	/* CNEX Granby */
 		.driver_data = NVME_QUIRK_LIGHTNVM, },
+	{ PCI_DEVICE(0x10ec, 0x5762),   /* ADATA SX6000LNP */
+		.driver_data = NVME_QUIRK_IGNORE_DEV_SUBNQN, },
 	{ PCI_DEVICE_CLASS(PCI_CLASS_STORAGE_EXPRESS, 0xffffff) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2001) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
