Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78967DBB8A
	for <lists+linux-nvme@lfdr.de>; Fri, 18 Oct 2019 04:59:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uP6rfCLmKgkGHeHvt27zgKmlSbvIgCwklACvxGto5+k=; b=rUOWsauqf5BPNS4IXPW2owg0o5
	v/nUBveO9IOySIVZcKGmusqdhcjKlU3x9+tlY1rUS+p6zXOLbLjrQqZAjVvVi8Lc+/syBhbbc9m/x
	1Dgfpa0FNocHXa1+RKTaN7Eg6gsLOa8EoOifhoo58b98R0a6vuOexuUAu6T63Ng526VEF/BGtM7sn
	TLXneKbqzgF0gCU12tnyH7HPqmA1V1SOBCt4pgGpdtYt6YCmi7FuhWh+Ofs23FXXmJhtYsX3bFH3z
	3DCxvzCtN8Gptd3gUEqfolQDeqv24jeoFd0jLkuW6W3DrXt7/O+6G1Yo7CR+XADHhlQqIlYzW0zJC
	XAQVi07w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLIUW-0002iR-2c; Fri, 18 Oct 2019 02:59:48 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLIUR-0002hv-VJ
 for linux-nvme@lists.infradead.org; Fri, 18 Oct 2019 02:59:45 +0000
Received: by mail-qt1-x841.google.com with SMTP id 3so7038547qta.1
 for <linux-nvme@lists.infradead.org>; Thu, 17 Oct 2019 19:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ic0NwfN/UVlZrdZyo5m8Xa3+xpzmDrnKhYkMfZtyc58=;
 b=gRh7gdzOG5AJthm+lDz4L25VfV+pSqqRWXUi7L/3WfrCzZhxZq5mQuDeIYaj85cTpy
 TB18NqHhr91BhrFgUKOj/RBn/Sp5tq9UORqtxqEj07iAeUbA9LyfztOEVIFRyi1CVtSv
 F2+VHMfwAjl2HFK3GI8Gkc6GPVnId/CRTCrk2/rdbhX7Y62H0sVHikAsRL3Fso8zznoc
 3tQ4ZIWfzHlO/mEnbJhlHWfni7RlBEBSU18S3hH+HBvHUFNjxP+UZ8LHh/xjsuCJT3eh
 viMWhyCXwhCt/wJhFE1jtXWIR6WhCgCMjnM73xXB0h5pmSe008aBUJp5BKxgCZ3IQiUP
 BMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ic0NwfN/UVlZrdZyo5m8Xa3+xpzmDrnKhYkMfZtyc58=;
 b=OVyDXUiR7DcvNjWesE4+Y2i6xCKUPAR0o8CRSNIr3POss95cEVt8fMNrn3qx5Yhr/H
 zxITNS9tyYxUqi6wjU8iMR4un5LlCf31TVFSvxXeyeEVAQFV7F0bc2YELltoIfC9TSyk
 XWmaUQzpoJfVeKtowOF8MmronJcYB4itAvAtgg0H+zvU6/CSI13XEDcehjE1kpm06egF
 NONmOk5+uQ9/KlAjovrK3nKxqiGEZQRefKbTyoKF3Uznes8rDkIYuMvtk2x51wmAktK+
 XPH3x2Zo98tS7lt6F9bNvtisortHkTD8LiCN28UjlZnZxY3cli3dfI3ryAaGxXMfGGBb
 fkLQ==
X-Gm-Message-State: APjAAAWI7XHKaFfAkPj15es/5KHGhS3pZfXH5gRBKME0f6XSU5v/b27f
 R4ypRyVJd+aIn6zfpl6njNP/1aWzh8w=
X-Google-Smtp-Source: APXvYqx8tTIvpdg1yCLDB5okmlsAMA4Rf94w8Y1KqZMGuFyeFypYfa+QkcuUIc3udwgLau93jFT3ZA==
X-Received: by 2002:ac8:237b:: with SMTP id b56mr7921336qtb.264.1571367582393; 
 Thu, 17 Oct 2019 19:59:42 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (unknown-103-217.windriver.com.
 [147.11.103.217])
 by smtp.gmail.com with ESMTPSA id x59sm2852073qte.20.2019.10.17.19.59.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 17 Oct 2019 19:59:41 -0700 (PDT)
From: Kevin Hao <haokexin@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2] nvme-pci: Set the prp2 correctly when using more than 4k
 page
Date: Fri, 18 Oct 2019 10:53:14 +0800
Message-Id: <20191018025314.39229-1-haokexin@gmail.com>
X-Mailer: git-send-email 2.14.4
In-Reply-To: <20191018005926.GN27363@pek-khao-d2.corp.ad.wrs.com>
References: <20191018005926.GN27363@pek-khao-d2.corp.ad.wrs.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_195944_007071_915671EE 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (haokexin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In the current code, the nvme is using a fixed 4k PRP entry size,
but if the kernel use a page size which is more than 4k, we should
consider the situation that the bv_offset may be larger than the
dev->ctrl.page_size. Otherwise we may miss setting the prp2 and then
cause the command can't be executed correctly.

Fixes: dff824b2aadb ("nvme-pci: optimize mapping of small single segment requests")
Cc: stable@vger.kernel.org
Signed-off-by: Kevin Hao <haokexin@gmail.com>
---
v2: Avoid using modulo as suggested by Keith Busch.

 drivers/nvme/host/pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index bb88681f4dc3..c7ba2b16a93b 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -773,7 +773,8 @@ static blk_status_t nvme_setup_prp_simple(struct nvme_dev *dev,
 		struct bio_vec *bv)
 {
 	struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
-	unsigned int first_prp_len = dev->ctrl.page_size - bv->bv_offset;
+	unsigned int offset = bv->bv_offset & (dev->ctrl.page_size - 1);
+	unsigned int first_prp_len = dev->ctrl.page_size - offset;
 
 	iod->first_dma = dma_map_bvec(dev->dev, bv, rq_dma_dir(req), 0);
 	if (dma_mapping_error(dev->dev, iod->first_dma))
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
