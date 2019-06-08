Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB873A0F4
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 20:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0a+eUNBBeUG+EkWKOiLy081f5dIYkr9mGOCJXTqTC8=; b=n1+CPuoT6YMNfo
	cphJsrMJiAWHvnM6l0JHmRKYAfnPJ2i+YFcwY9TjfkTavwsuLuy3v79apHpPV1xGyuut/3G6DtHtg
	ei2vadBopJRlT4GPu+J5EV6J3gAkfB8rk3OKo8ERdstY6Jd9CVbCZxByJeYbtOXaRJqel26keXkKZ
	HoZx47ea2FAXMIaSXhThJihJV55uG07VgwdI0Ls4Jl2+LKJRe2ZLLcfeacIXZ956aJa/DLSWKA3zo
	ZpkcKBrP9CXNmCLUhHAkVq3TwDSjdaX99clED5iHqWPmclA1NBQUoopleFo0tXrZ4MaW4RRqTkZhg
	yI6E/LJtfT2rVwKvvtOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZfg8-00077t-9p; Sat, 08 Jun 2019 18:02:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZffv-00074V-Uj
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 18:02:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so2938537pfe.11
 for <linux-nvme@lists.infradead.org>; Sat, 08 Jun 2019 11:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KyD7rHegFOE2H01j+HsSBXX9EgIGRvx2bhHfhiBGIo0=;
 b=rBbc2XbZhmO4I8maAdrz7VRV2wbtlNOrlEFRrgEJtxsjIaMnGVqaFGUROf+ebP1ljg
 UYAGPl4x8k7qAncCE6OS/Wz/P3un34TWRCMyGvY34rXio+BVKVbVgunWQB3LIxBZIT+o
 v20khwigME96/jz/3WQIrJOpOsfNq60ab3zJbKcmxwtEmnrXqhmTobzbZeQaUAAXnAnO
 Xj0+mjQIVi+hbwlcl7W6i1NZ33L9ozKmCnYp2N2RqfJCI0lzc8zvZzUQLU3t1EDZo/6p
 kg8etEcrDgENUBvRDfePMbAxSepVM/DmxkUf7t6BjZ5jbHkd1+PVx3HVHuQwQh50o5Al
 NXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KyD7rHegFOE2H01j+HsSBXX9EgIGRvx2bhHfhiBGIo0=;
 b=lXBqyh4pzSEuhi2FFxt+l20Be6g21LzPqN+DAfZWecVlcj40nX1WuSgO5icxH7z8WP
 qCI0sRYUHnL+IzWd2Nwun/Zd5xf4N1/apt55/wFqojSMfTBuOV6kNUDJzfdfBDKJYTX3
 bP2m1kDgkmeRtVDdCEhkeemWLIG7PM6a1DwMZkbGKGjlMs/t4KRI93UxO1JnLvssN4ic
 lIPk9bfnYpusSDAHpo3fPmmGyb03dgdkNZ4h10z9aBO4JPhf6Rp2GxFAOWn5+rgeg9Ld
 GZ/Y4eONsrC2SNt8i5VZmAu+ZCKxsYL056IXw3R5299xe8DsSIIZkBHpvMo6ey0GB1SI
 R/eg==
X-Gm-Message-State: APjAAAU8Qx3zGR9uafiu7kw1PTaY+Kn8+DduVQ7zGNl/wRqj18Qehsoa
 A3iamw1tNS4wT9WSKbeIZ/hjr+euc2Q=
X-Google-Smtp-Source: APXvYqxvUi6gosv+P/Up+bt2UVGQE8TbHCR0nLMYxn6NzZR0fKu6TwuMX+Fm3LjYB6U/wdr/CtLsXA==
X-Received: by 2002:a62:1ac8:: with SMTP id a191mr4097077pfa.164.1560016960185; 
 Sat, 08 Jun 2019 11:02:40 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 128sm6212824pff.16.2019.06.08.11.02.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 11:02:39 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/3] nvme-pci: remove unnecessary zero for static var
Date: Sun,  9 Jun 2019 03:02:17 +0900
Message-Id: <20190608180219.17523-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608180219.17523-1-minwoo.im.dev@gmail.com>
References: <20190608180219.17523-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110243_987201_360672FE 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Ming Lei <ming.lei@redhat.com>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

poll_queues will be zero even without zero initialization here.

Cc: Jens Axboe <axboe@fb.com>
Cc: Ming Lei <ming.lei@redhat.com>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 5c051a8470d4..047785023892 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -80,7 +80,7 @@ MODULE_PARM_DESC(write_queues,
 	"Number of queues to use for writes. If not set, reads and writes "
 	"will share a queue set.");
 
-static int poll_queues = 0;
+static int poll_queues;
 module_param_cb(poll_queues, &queue_count_ops, &poll_queues, 0644);
 MODULE_PARM_DESC(poll_queues, "Number of queues to use for polled IO.");
 
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
