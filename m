Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 390D0CE0BF
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 13:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qXtmlNNHGwCYzsVbyoPTmWuNIEogmHyWMkySF+OpJBk=; b=jqlvRmoMlsrwY/
	84lWF0XLRMcbBY2Jfbag6ajL4BO4LvcAsQEO6SmG62BLo9lIVJLuKLa2K3z2Ylojai60i6FXvh6dp
	M+NmwHz1ESDXrGdNNRotT096OrWrdsKrvQrSSBw/EmtMYI8Z4N1MEGliqg+DXHaLRjsL8jiFIvYN6
	WJXeKZWkMcbJaZ98ZbYmK+vBYBQGIrVonTnUd2eaP3AQ/zzK0s8dej8kep2yHEtuRslqPOdUI7MSI
	F3UBIijrxMbrbFc6tXLvM5+RAXxKqJkCG/ImJJyU5UZD5OAHW6kxk5oRq1h57kHE9h7EF6/eBS+Fs
	cyNXLxK8Tk7ZvcFFe/rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHRPs-0002cS-TK; Mon, 07 Oct 2019 11:43:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHRPn-0002by-FE
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 11:43:00 +0000
Received: by mail-wr1-x441.google.com with SMTP id b9so14923937wrs.0
 for <linux-nvme@lists.infradead.org>; Mon, 07 Oct 2019 04:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2yAjqiQY+rV5o1c/v+7HXuks3Fx2E595HLEG0iieiO0=;
 b=njWNLdNNj/Px4bmS7DsvC+I/yr/84mJ4Nv+Bbjbfyk7WGtdytsqJiejziuKj8VZF4H
 a0538UaAIBejIrSS+BuHjvNdb91RpX9DzO/gATiHwgD8VA6iizk/aXZslE1rnj2Z7NnA
 leLJOCS3fvYxzbwQ53fZHzLz1zuJiDRfaL/u2C5iVAKgPzO9puVYbaS0vWcX2NNSM8xS
 VXpN7MnOIXhmAcGyYe34YF63BzsQxR00WmF0q6IdIK+Hnemt9OZMY+VP7uHbGbDHNvWx
 lf33YXBIepiPGFqspuDBYwAzIDEuVR2xKgc6ScLMqtu4lRJoTLY1Yp9rLr2h17SFCkVU
 93bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2yAjqiQY+rV5o1c/v+7HXuks3Fx2E595HLEG0iieiO0=;
 b=ceo3dEngyYHrRZrRCVo1zyCy4s3SGbpWuW7NMKEN7vi14/46jGwMT9YXoyanznp1wC
 HzaP7BFo5RYQEO8E1SMqf1SKvN7jnlDbxTqapmGy/0onSoq5+YzUA18fsEmL4PivtyCY
 nP64ahSkBfVqVBfYCd8tufFeevZ3HCuHIYi0woApSvWlHRV2DFgZSD8eLgyHKYlHlhDG
 Drgwjb+S13euC1Wwx8CnH3VS/c5bLLTXd+jTOrFOr7SMG5M/+nLFbpiUhDJJ9ETd7G3n
 MUVDNIuDunXHeUTYG+aVt7s/CzMCOUEfLtdg/wm/xAHtdLcoe9gg9oQJ3BgtnXQ61QHV
 iw5A==
X-Gm-Message-State: APjAAAXk2so6n59BlZL0AWK9EvQg/EOmcTK7i0MCPG/aZC1zYalzYJgq
 YBuMZC5sfJeir+y+Msj8S25kIhbRbZuFow==
X-Google-Smtp-Source: APXvYqwLRGOx9sb78jAgwy+B0sXYnFNbvbo6IUNq8c9QVUv6hvLp1CApn6qD4zWe2UaW0su0jmz/wg==
X-Received: by 2002:a05:6000:34a:: with SMTP id
 e10mr22194660wre.364.1570448576697; 
 Mon, 07 Oct 2019 04:42:56 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:d4ec:cd9a:920:e2ed])
 by smtp.gmail.com with ESMTPSA id f13sm16068007wmj.17.2019.10.07.04.42.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Oct 2019 04:42:55 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3] nvme: retain split access workaround for capability reads
Date: Mon,  7 Oct 2019 13:42:53 +0200
Message-Id: <20191007114253.30735-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_044259_568153_D32613F0 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sagi@grimberg.me, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 ilias.apalodimas@linaro.org, axboe@fb.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Commit 7fd8930f26be4

  "nvme: add a common helper to read Identify Controller data"

has re-introduced an issue that we have attempted to work around in the
past, in commit a310acd7a7ea ("NVMe: use split lo_hi_{read,write}q").

The problem is that some PCIe NVMe controllers do not implement 64-bit
outbound accesses correctly, which is why the commit above switched
to using lo_hi_[read|write]q for all 64-bit BAR accesses occuring in
the code.

In the mean time, the NVMe subsystem has been refactored, and now calls
into the PCIe support layer for NVMe via a .reg_read64() method, which
fails to use lo_hi_readq(), and thus reintroduces the problem that the
workaround above aimed to address.

Given that, at the moment, .reg_read64() is only used to read the
capability register [which is known to tolerate split reads], let's
switch .reg_read64() to lo_hi_readq() as well.

This fixes a boot issue on some ARM boxes with NVMe behind a Synopsys
DesignWare PCIe host controller.

Fixes: 7fd8930f26be4 ("nvme: add a common helper to read Identify Controller data")
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
v3: add comment explaining why we need the split read
v2: drop WARN_ON(), add reference to commit that [re-]introduced the issue

 drivers/nvme/host/pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index bb88681f4dc3..f908acc5d2ef 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2672,7 +2672,8 @@ static int nvme_pci_reg_write32(struct nvme_ctrl *ctrl, u32 off, u32 val)
 
 static int nvme_pci_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
 {
-	*val = readq(to_nvme_dev(ctrl)->bar + off);
+	/* use a split read to work around buggy interconnects */
+	*val = lo_hi_readq(to_nvme_dev(ctrl)->bar + off);
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
