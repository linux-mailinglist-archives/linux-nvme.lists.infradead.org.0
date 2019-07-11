Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45D365A2F
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 17:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Qt0ICDD83RC6pvkY3qqJJRdcwDGGyQc5yHgHufBu904=; b=b+6
	NVuJ5FvYxQeZ4jqBQKbPObbTzNpMjXWNUNg9Zhfe/LExTYxnAwX6MSk7cVt8Bog2NhgxzvHwQtlE+
	3wgun2yzkm0spA5/KfoGBpr4ymLMSbppe9QDLq7acMSXCAjB0dCFDFLUB9Wpg+rxfEK/lFJ6Vv1RF
	gswe3Fvh9Kc9I5zqqPyTLtLHZ5uSEpsDeCjwb3wOf115lmHF7WfHe0Esxip3sPqR1sHOAOA/+Nunb
	cUMeBky73ksdW644Fz/1KFW54YLQaa1Ed943B75janW2OsCnpqFN6y3nYaP5Gd1CzV75Byr4rKoie
	QhVw9TNA1ECydFPxkQ1M4JAOPaFFcTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlale-00014D-2b; Thu, 11 Jul 2019 15:13:54 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlalU-00013p-NP
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 15:13:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so3091092pgj.7
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 08:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=aS0qxdwNj06g94smSG8hLo42CY84Oq4GaRRgXTXLldA=;
 b=EgzgLshFqAotjooAJF3uxX9bcqWPpBKGOIBXBsdzKv5L1WMszkMFZpjK9igJE5WtUP
 Sgxf9BTBE3ktgkYeLpvtK2YvJH8lwWhqlOcuaaoByyDwqGbuwVeLD77S1dMLtmYXlSSm
 WEZ8MjX9i0xLNJwZpbttSuduU6Bc5pSlWasQNqg7Jh3cShk4BGeQq74LyB2O1FfnT9VV
 dg8LF2odgq1v8uO5Rc2BgcN2LxjYgw+MXcD5L5duis760rQPkXcb53QmafYOKe2vlhOO
 AVh1LjerpEH5PR4GyCg/iw812KDEYN1nAd+jOPgYWViZl1PDjZRBXk6NnfqkJ84t9T0/
 dLhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aS0qxdwNj06g94smSG8hLo42CY84Oq4GaRRgXTXLldA=;
 b=opp71YkgtaUgmdAAFCMIpp6JtGeeR5Tgbckk4L64ATlucpxkd6fKzeRw1IxZ1Weekt
 R1Mh+thrJZy23kpmRaCwGtzl9Kdcbz0Zo1g4OTQHwdczMXWb+qH+oVTFiR/OWU1Sa8yx
 qmOwBTd44skFtdG6jtsUyWoBigMJOJhaW12UJ+Cmy2lwn0bBAxYIJ0q0Wq74RXLEjG8D
 VX7g4UZfDmTRujAbcEpJzN3HazgjYq3KLNvzqxrFTtXZZ7GxyOijyXKNPphhb6QlHOMG
 YodZCMc1YsaoO0d0RP1Bjr0/xt4mWUA8MTwJxIRbEzmDpAFnONAOPWOdKPqUhI87ryLa
 gyAA==
X-Gm-Message-State: APjAAAWQ0AvmeaTdJCePrMiksu8FYKIiTgcpt1DOgGujRP5LszlX0mXu
 lyDvZxHdS2zV4qwbP+wP9MPu2bnIZps=
X-Google-Smtp-Source: APXvYqw7+n+PyMTyUVuwW+uD0KBXX9r0uS+QBo2r27OFACmXCtFWdxsZItQIQqgrxjQUvERDRv0N+Q==
X-Received: by 2002:a63:2a0f:: with SMTP id q15mr5068929pgq.163.1562858023592; 
 Thu, 11 Jul 2019 08:13:43 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id l4sm5544576pff.50.2019.07.11.08.13.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 08:13:42 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: tcp: depends on CRYPTO_HASH2 for nvme-tcp
Date: Fri, 12 Jul 2019 00:13:38 +0900
Message-Id: <20190711151338.16810-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_081344_786144_35BD8B14 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The tcp host module is now taking those APIs from crypto ahash:
	(1) crypto_ahash_final()
	(2) crypto_ahash_digest()
	(3) crypto_alloc_ahash()

nvme-tcp should depends on CRYPTO_HASH2.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Jens Axboe <axboe@fb.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/host/Kconfig b/drivers/nvme/host/Kconfig
index ec43ac9199e2..711d3ea5143f 100644
--- a/drivers/nvme/host/Kconfig
+++ b/drivers/nvme/host/Kconfig
@@ -63,6 +63,7 @@ config NVME_TCP
 	tristate "NVM Express over Fabrics TCP host driver"
 	depends on INET
 	depends on BLK_DEV_NVME
+	depends on CRYPTO_HASH2
 	select NVME_FABRICS
 	help
 	  This provides support for the NVMe over Fabrics protocol using
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
