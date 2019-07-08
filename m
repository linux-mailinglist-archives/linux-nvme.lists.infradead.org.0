Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C066B626CD
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 19:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rx+KD6684/iq0U1GCHekcN3YXP8saToC40L1u99St4E=; b=D6b
	MZfUfY1Q8vG6ZvJr3Pb4bEUIw2W4cFc4ahzrTYzwqUQ7Y9WpO514V6QRLjV817bTaQSpokExjqt/0
	c2XNudkXSAr8K3pLreWpVIPgXpFWKZ3IweZJPPCTgRFFcuKZLvQXIXJiBD9Ic98Puy4xeYM1G4QDW
	QyaEW1RPY3BNAvFdJIlsVRW9h5OzgU3pcvy8mUh4QI0yu2pFXGltREgYrg2JqsBnkJS7hLk7OHr5q
	XGQC1xvdgMTxRuL7f8RlEwWyk6G9O/gfsL7W/nLiai+hJ2hv+XgusIRdI2pEbGJ754B8AiAB37Kx9
	MWhk7btro0mHDTwTwpOywW82x5uv5uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkX5P-0003O0-6a; Mon, 08 Jul 2019 17:05:55 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkX4s-0003NZ-Vt
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 17:05:24 +0000
Received: by mail-pl1-x641.google.com with SMTP id c2so7016820plz.13
 for <linux-nvme@lists.infradead.org>; Mon, 08 Jul 2019 10:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=tOpykf3uA7PgIAj57BVeb5Ckpsxwk0DmaPVryuo4XDg=;
 b=RqwarEYe4UuOlIdigKo9s3lm/K/wVHdBOuWbrfreSzdLm5getPo5gHeG0nAHigIVJa
 kY05g9fm1xUuqurBFSvJHSDrt/QEk+OEoOaKcjvOMU9RSWlPHS0lEpz2hh6fm1UEmlkv
 E/zVZBb1QaRjO0QFNSdAb72mhif9YZ7z3PVlXpEJqNQ4NMGohPM1Ji5Db2O0e5T24C6d
 8tB9U48NztW2SP3v0UwvIoI0BGOvgOf9aSKRKDus5lGJuFkq7ef8XWf+Y/j5C4ci++41
 mq9O5jG+gsEr1T/kFQ27AOwj8wWI88FZKgViq2dD/YAq3feXSlOMKczL3FZF2W1Texw8
 mg4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tOpykf3uA7PgIAj57BVeb5Ckpsxwk0DmaPVryuo4XDg=;
 b=f/EjiPloew7jE6Xwixo6DLYpCSYGpsMiZxOqYsW1CGWOVI+kCa0WPmAUyIg+cUOZ3z
 EtfX9PJO8m9rG1GJqx2XXbH+zJz34evHVmYQighHkDtADynAidXt9Q2JbG2g63dHIG4L
 JmNSQUwywXP4fEvCeQ9Bq5HBtJVMLk7gPDImU0kLEX8sWqPgCilvWRGFVAqHyeS+YlvM
 /Gn0qACFOTzBU+yont7xTBNq7F23/V6rAkOlieUKuuxzRGlpEw2szQyCJmU8499dWZ/l
 J75+exPuU9EZkowSxH2D/5Dpn0ExoJzXbV9CjOCAmR58jNELtrRYv3IJmO2W2b8AAoMf
 +6Xg==
X-Gm-Message-State: APjAAAVJSSc6ESOq7CbhOjR/oA1AyftrTi0/t0rX+dc6dtxIvwcMZa57
 Xduaja2amETq6DG4/fPaupIWoTDjEHk=
X-Google-Smtp-Source: APXvYqwM7tLzP2qjV/jjo4GIuB7FNendUt8Pl8OkfRPNMnV0NJhG7mc9q5Gi4NYmGu6GxAaqOl35ww==
X-Received: by 2002:a17:902:9898:: with SMTP id
 s24mr25809547plp.226.1562605520279; 
 Mon, 08 Jul 2019 10:05:20 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id j15sm12173877pfn.150.2019.07.08.10.05.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 08 Jul 2019 10:05:19 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH v2] nvme-pci: Check for null on pci_alloc_p2pmem()
Date: Mon,  8 Jul 2019 10:05:11 -0700
Message-Id: <1562605511-6564-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_100523_093640_0D654044 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alan Mikhak <alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Alan Mikhak <alan.mikhak@sifive.com>

Modify nvme_alloc_sq_cmds() to call pci_free_p2pmem()
to free the memory it allocated using pci_alloc_p2pmem()
in case pci_p2pmem_virt_to_bus() returns null.

Makes sure not to call pci_free_p2pmem() if pci_alloc_p2pmem()
returned null which can happen if CONFIG_PCI_P2PDMA is not
configured.

Current implementation is not expected to leak since
pci_p2pmem_virt_to_bus() is expected to fail only if
pci_alloc_p2pmem() returns null. However, checking
the return value of pci_alloc_p2pmem() is more explicit.

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
---
 drivers/nvme/host/pci.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 524d6bd6d095..5dfa067f6506 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1456,11 +1456,15 @@ static int nvme_alloc_sq_cmds(struct nvme_dev *dev, struct nvme_queue *nvmeq,
 
 	if (qid && dev->cmb_use_sqes && (dev->cmbsz & NVME_CMBSZ_SQS)) {
 		nvmeq->sq_cmds = pci_alloc_p2pmem(pdev, SQ_SIZE(depth));
-		nvmeq->sq_dma_addr = pci_p2pmem_virt_to_bus(pdev,
-						nvmeq->sq_cmds);
-		if (nvmeq->sq_dma_addr) {
-			set_bit(NVMEQ_SQ_CMB, &nvmeq->flags);
-			return 0; 
+		if (nvmeq->sq_cmds) {
+			nvmeq->sq_dma_addr = pci_p2pmem_virt_to_bus(pdev,
+							nvmeq->sq_cmds);
+			if (nvmeq->sq_dma_addr) {
+				set_bit(NVMEQ_SQ_CMB, &nvmeq->flags);
+				return 0;
+			}
+
+			pci_free_p2pmem(pdev, nvmeq->sq_cmds, SQ_SIZE(depth));
 		}
 	}
 
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
