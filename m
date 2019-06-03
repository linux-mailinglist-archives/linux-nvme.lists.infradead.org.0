Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBC933B93
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 00:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Aee5EwPwY3FIw6P86FThT4UQZfcajjBv5GK6mZPSdQ=; b=qvwi/Fj8cZAINU
	lbEDzeNiW0+8grdxMJv/0Shkn4T3audpd7stKuGVfCuKL4knv4DkWipqOJJiCNb7uNWcLCdKLK6pl
	SChAj2DUbBzxE62ePNdWB2VtLhAvr9OHP5zCU6afSekiqHhAgnV2UsgBAKmbYK9O2NPNg+FApVlpL
	v3M+l6FHuxzxrU4TYCa1XoJZAR3K2JTtu+WRYXl6VFS0055LzXrzGXIrAlR5+K/fJ2oPIKZsGbdG0
	UO2E/RLVHp0SYqkb6WpvoWfT1icwbg/e+0oHRMSzHtHQC1R0mTh61mMdOVsvyfOpDz0NsJc1qU/HW
	sa3VfAjSmIbjlM/SxTEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvn3-0004ai-Dx; Mon, 03 Jun 2019 22:50:53 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvmy-0004Zx-CQ
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 22:50:50 +0000
Received: by mail-qt1-x841.google.com with SMTP id x47so11489047qtk.11
 for <linux-nvme@lists.infradead.org>; Mon, 03 Jun 2019 15:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6gd9+xvpDFWnuE2qtteM1eOFM6N+MN2IpjWJ0ech8v0=;
 b=k9+H98ME2mRVYBu6W73G4QLTEc4eqFcJdkbalP5HUYhU09xH6h8ym50lF6hG6gxDQF
 C+3G6IqGnraIYpJVxIgyo+JaV5IF91Rr/vCmzo0jYkcM7rM6b9M4oLVBn1RiErzMqk4v
 yw8bCmJ9Wfn1Z8bJrwlzzTfIYI9N2JHGdItBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6gd9+xvpDFWnuE2qtteM1eOFM6N+MN2IpjWJ0ech8v0=;
 b=QYevnSkpwbMGZBehESTAZgz7V9dZv3x9SCAPClM04z4ekinqbXAqlvT0tMmcrAqC4+
 3iygCQxw21UKG9V8ctsIDZYMqYeohx7eWf1o/yLHA/W+oZiHXGShmzkimM+iw18W0HF7
 yxIoS8PO7jTnbuLdmbQCOFbi8YShmulgAacZtR1mE+FTdY0Bz+T1DcQk+B6p6EwD/izE
 YwvpAHJuUzhsvaGZi0AIGOcR/8bnRyNTCNI0EY3DDQtHFuAU5PXFZHc/mySq0x2d6vmF
 R01Hl3rpCsSm07+qW+8+7cBKzU+DTpDngSIASOqpYLlcPFl1SUqQhx1ITW+0F+RabqDF
 6ypA==
X-Gm-Message-State: APjAAAVblXhXHNsJALBf1Sc520Hi+Ed8fbyF/y+515Gd5Bl7PzQ7f4Lk
 mg/xCgvGwGBFFt7Ex/4Dv5zWB69DIxSQqMr87ti46w==
X-Google-Smtp-Source: APXvYqx4oAjul4fWWSTL90VX+Rk7IndfUis7OEMUkTFdfPHsBd9hAlO5EET9YhaKLkgMxcW8d5i1UJtcW1BmvpzLYwM=
X-Received: by 2002:ac8:614b:: with SMTP id d11mr24457066qtm.329.1559602246252; 
 Mon, 03 Jun 2019 15:50:46 -0700 (PDT)
MIME-Version: 1.0
References: <1559601877-13614-1-git-send-email-jalee@purestorage.com>
In-Reply-To: <1559601877-13614-1-git-send-email-jalee@purestorage.com>
From: Jaesoo Lee <jalee@purestorage.com>
Date: Mon, 3 Jun 2019 15:50:35 -0700
Message-ID: <CAJX3CthjFcMHK--n4TPjjJ6LCTx-FbnS2tBLx0kmuBMtW04xow@mail.gmail.com>
Subject: [PATCH] nvme: Fix u32 overflow in the number of namespace list
 calculation
To: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_155048_756756_512883F3 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The Number of Namespaces (nn) field in the identify controller data structure is
defined as u32 and the maximum allowed value in NVMe specification is
0xFFFFFFFEUL. This change fixes the possible overflow of the DIV_ROUND_UP()
operation used in nvme_scan_ns_list() by casting the nn to u64.

Signed-off-by: Jaesoo Lee <jalee@purestorage.com>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 2c43e12..5bcf926 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3373,7 +3373,7 @@ static int nvme_scan_ns_list(struct nvme_ctrl
*ctrl, unsigned nn)
 {
        struct nvme_ns *ns;
        __le32 *ns_list;
-       unsigned i, j, nsid, prev = 0, num_lists = DIV_ROUND_UP(nn, 1024);
+       unsigned i, j, nsid, prev = 0, num_lists = DIV_ROUND_UP((u64)nn, 1024);
        int ret = 0;

        ns_list = kzalloc(NVME_IDENTIFY_DATA_SIZE, GFP_KERNEL);
--
2.7.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
