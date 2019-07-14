Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EFE67E48
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 10:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=D2OlBqbvycrhwnin3Uu6hIgGIGdPtiRHNEMImpMaO08=; b=hwq
	hYz15hgHlTqghvMwBCgun8tGZra54ujIw7n4SK60lu8hwwdTQFOPE2U+VIM7RAlaD1E/1Zf0BaAUM
	iU69YqMIw4YHAatikqngU5A/YguO1i7eSlvTaY36KZSgSTN5dh2jKQYXgE0hL6hTKGCLJMYAKGTfN
	3yYlK/KQYO+2s2OXi+ECcsL2CMjzDxRcHKJDSQRKL6FakJX0C3g5X3weUKRSbIK6niiMvbgJ0zKKU
	Sn6Y5Dlg/PMCuEcMn6cBOnNPy+kcUMWgzbFrWXVvdXX6xD9ddzpXCntG+KYdpVOypHeJnMmDwN/AN
	DfrQy4wGc7MDoKHSZ/gv4TUCFcw7idw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmZim-0005c4-67; Sun, 14 Jul 2019 08:19:00 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmZic-0005bl-Fh
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 08:18:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id m9so6758826pls.8
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 01:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pQUDJySZ+tdHa2Xirdx4XjU4KqgjjKHVQRa7LgGZ3S0=;
 b=EHzwfEbvL3HsN7bcQ3INeuYczW9SavYtuCk4xtr39qJtEVVxD/0ncaIlVkrm7p3cxc
 ArvqWOIUU9eU9uWJav+OjQkT5hXeDxc+PLxRkhNUSx8UCUOn/JfwYsG74FfeTfO6KdSk
 UY5IloGxPbyvEES8cvc7ATnJ6gLtetzBXtlSZLGiDOTXw/TRtuCD1ZXBR/J70tG6RG3T
 wyBYMeS1oOT8KO62DvwxUZmFLTIXHr+klyW/J6gaU0uh99xDPL9BqbisF+Ultw5YgXCS
 4BRR1db4eWupvd1gRSALzoMg91EGEKGk8scXHcAfXzrIangq6TGeBMUVqtQIP1sar1jD
 JVEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pQUDJySZ+tdHa2Xirdx4XjU4KqgjjKHVQRa7LgGZ3S0=;
 b=kcQi7yt4g7Y81ywsx4A2blgtijqLbHn5QgB1fQJ5UOCrdH+WUHLGBaTFwuqICNCWTb
 VhHHNZOdTbAuJ8wC6Wsr8ujkGpuILpkZWGIZxfh3USr+Am3zEFSrZGFRooHeKz86Ndql
 gedSd1GnRumo7IeIkIJRE11cEiHWOijjN4YqwVRucutdhG48RRHiu6yjkDx+3zKuL81v
 S9weXNsSx3dB/FqstVk8JIBPrczs8PO1ugnEZ8pJ+CczUBpF4POnwMzbuhjsz3iGvOwg
 GyzRJtP9uK9AvPGs+yvJ/vmVGNNDKEbb6OfxC2FZECKfWguxJMjbGjkAfBMeaLARCCKZ
 hDag==
X-Gm-Message-State: APjAAAVJBd7t3gZTuoq6hfbZDbbsl3HzNlF+Rqyq68gBA675FMHerTpC
 I7o/yN+pUkWAlDnBwLv5XfkAKomNgtc=
X-Google-Smtp-Source: APXvYqwnnoVRwjxPskPtaW0KcgM5hLOYUjOhgopEYVii2fgFwx1cx9ypLIiNMMg/S8jkCvonckIADg==
X-Received: by 2002:a17:902:9a04:: with SMTP id
 v4mr21028522plp.95.1563092329574; 
 Sun, 14 Jul 2019 01:18:49 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p187sm20244779pfg.89.2019.07.14.01.18.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 01:18:48 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: tcp: selects CRYPTO_CRC32C for nvme-tcp
Date: Sun, 14 Jul 2019 17:18:42 +0900
Message-Id: <20190714081842.32427-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_011850_527254_43BA7A35 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

nvme-tcp should depends on CRYPTO_CRC32C.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Jens Axboe <axboe@fb.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/host/Kconfig b/drivers/nvme/host/Kconfig
index ec43ac9199e2..2b36f052bfb9 100644
--- a/drivers/nvme/host/Kconfig
+++ b/drivers/nvme/host/Kconfig
@@ -64,6 +64,7 @@ config NVME_TCP
 	depends on INET
 	depends on BLK_DEV_NVME
 	select NVME_FABRICS
+	select CRYPTO_CRC32C
 	help
 	  This provides support for the NVMe over Fabrics protocol using
 	  the TCP transport.  This allows you to use remote block devices
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
