Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90CA51F63
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 01:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bHLl6cFqY75AdWsFagGphogvB73ohByeSB1RLjBU2Xw=; b=V4C
	uRPFggMJrCIXcnZOmuIMtK8gNxIx8hdlqSncuQCe+Pqa6DXytY3P8hjFyb2Ny/KxiUUaEcZdlxa+I
	g5Z6kFiz+RY90D6svez6mQNDuFvDRF6vYDlHmKaUNVqY2gPzZC9/3RfJBM6cyfKMIinyqJJYkf3hs
	d8bAjjxIIb+0hUN8qpU8nMcWx3lKBff2V4ybNFg8qNMYHzfKUtqyFZWmdmNs1Jj3hDUP/BkbJ7zWq
	JkG4U1phBoHJMix0J115lIqRLqL9uzG04p+5EGKJsFbXJVcq1mCb6Q18UwyOe15Y6rNbnOhyDtFKc
	Ax6OiW0+V5PRIJkwtlv0lGGV00e5vGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYqQ-0001IW-BW; Mon, 24 Jun 2019 23:57:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYqK-0001Hs-H6
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 23:57:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so8390486pfe.11
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 16:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=EWd21nCYRg84WSpQXPJVjMWkNm03qaZe3d9MXyHClVQ=;
 b=VixCw8alxWT8K/HkqFguASctouXsEzuvGCOYHVmqElcW1gPxiFCLXr4OqaKIgDJMy6
 obWkNElQtEOdY3xStj24EvWfHFe0/QhmKxc4Z40jG6CK1oFp81qTPtPf0Z785HnxCeuu
 eGYYJAxjQANiTFI45yD3g7KrzKJXrF5KpABVczo1mIdp0qcW23MxygKmrxVc8Tw81c1u
 5PG3/4guxe+rapHj+Jx60WDyoxmYNODoXvxP+wzEZWyfFEyzVWhUowfiW6f48RlhXJs/
 AS1GILpY4010jYJK8dkYTcMfKBVV14EQ4G95SBS6nFQHcngiIJapeiD0MsuNEpdM/38+
 /Fsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EWd21nCYRg84WSpQXPJVjMWkNm03qaZe3d9MXyHClVQ=;
 b=nBilKJkLORcjYB+ZMjHz2sr2fiZ21zX/6tM+vQafKkTmWndgULrBL4YxqgoMPH0rPG
 p1BUIqDRBskGncrLt8b7igp4LGLsNNR63LWaIeQAwLfWrTgbTvcX4HOXceWuRJjQXgao
 DuhdEPCsZtkt93uB5IIqxFB6ufdet6EOZ3vcWhDnPrrcxQIpgx8xAAIif2hwjv4kMF69
 6qxhGF2v5xrJbp6Pd7HMzHuZhD5EukpP33RNAVkPNWprEWiKDSqfkiiHWh/+cd/MLeVK
 LmFk88Nfua0LOn5/K97zTRvo+MTFlXMd7vse0LCvJvGjfhr3MNMAST1QJHFz9hXc23+e
 UXaA==
X-Gm-Message-State: APjAAAVrMKyfzSpLaFDYZkchYvdXMOPqr0SiLdU26anw8B/Dx6PnFJE1
 0oqzMg+g82Pe+KKzbJgiz+pKHxkv/HY=
X-Google-Smtp-Source: APXvYqzAaa6PoOBFZTIRVOfw04tMBXd+p/jLR9GMhGwwnBp89+8nJwsBf+HuB1ozjSetHRkQSaJUdA==
X-Received: by 2002:a63:de50:: with SMTP id y16mr19184127pgi.431.1561420666183; 
 Mon, 24 Jun 2019 16:57:46 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 125sm1335727pfg.23.2019.06.24.16.57.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 24 Jun 2019 16:57:45 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 keith.busch@intel.com, axboe@fb.com, hch@lst.de, sagi@grimberg.me,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH] nvme-pci: Avoid leak if pci_p2pmem_virt_to_bus() returns null
Date: Mon, 24 Jun 2019 16:57:22 -0700
Message-Id: <1561420642-21186-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_165748_633183_FFCAD8D0 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alan Mikhak <alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Modify nvme_alloc_sq_cmds() to call pci_free_p2pmem()
to free the memory it allocated using pci_alloc_p2pmem()
in case pci_p2pmem_virt_to_bus() returns null.

Make sure not to call pci_free_p2pmem() if pci_alloc_p2pmem()
returned null which can happen if CONFIG_PCI_P2PDMA is not
configured.

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
