Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A70E7C95
	for <lists+linux-nvme@lfdr.de>; Mon, 28 Oct 2019 23:57:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gYhH2L5ebja7OUDaWYf86pEgkMtr86OTep9GLr0mm7A=; b=j0eBniHdU7MYdN
	js4NSvLhCx3K0lsAxUUy9zx3a6qDYv+/3kOxOpjjene6n6sXRcwHVkbJpX/xgmhWLlrDnOib7C0xu
	XYxdC9Ex+a3IftljATQ0tI9mfbqa7qEoll4dIn3qDPJf5fv6uGW9OcW1w/QQCzB1gRjdcV1Ruexiq
	9H7QhZBAPEopHb+wDnPW08tp/JfCR3ChGOJNuz8cNC6SRiWLdryOL4mEr3AlnM8QM8GG+dB9ICtAI
	4MdnX4NWpgjZJlNjurWwZa52neMghRe1Js1ZcSVCmGpGaGYfFZpjTV85RMRp9KkbyMRFPW7xwo2B8
	+vvWu89NIB9GsIXJF9jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPDwX-0000nO-Am; Mon, 28 Oct 2019 22:56:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPDwS-0000mw-Lg
 for linux-nvme@lists.infradead.org; Mon, 28 Oct 2019 22:56:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id r4so2338719pfl.7
 for <linux-nvme@lists.infradead.org>; Mon, 28 Oct 2019 15:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google; h=from:to:subject:date:message-id;
 bh=DKJRl1CXxjPtjHdfa+8UnaWPj/ZtnfhCi7Cp3Enva/s=;
 b=HWc3/KL9BKsWWrHAk2aFqptanacFmYAQS/1DHUs3TK1asCpyMh6eKPJYjrpc7bXyPS
 YPftqodo8b0X/gGci+Vgkxa7ZruIzXalR0GMrc913fBvA9A20uRw85m8IJ91yTjf4Kjl
 nRpZJc2G3Tpcqk2DKz+yhfhTt7pC54lcZKhLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=DKJRl1CXxjPtjHdfa+8UnaWPj/ZtnfhCi7Cp3Enva/s=;
 b=LbBBBNaXSZ2PbWNTa2S1MLldYp0hVlvrE+IcFe2PXrpLpn9uI/6ecoEFp2qsiElTnA
 q0qluLrFzBOOV2UBmfWg+Ml208Vn88k1rUhz/TLebA9Mlz9KQekToyiRoljc44nmExRI
 Rp+vlMqynLwtu5jxCoCtqAcsfKlJo5gfFcIOjFyh/HOT5W7h4eym72wFZneL5gMOBDZt
 NPS0YMh1qgI3c2lu/Z7aLnEsfgrE8pNQ8/7DcXot/XuFOJ81Nm7ixEJ3ttGi5SpzAzkw
 pCM0VmC3aCodalnaW3+ngxkAnlUp95opMLsquiX6G2SB1NUnCIfsvjJzDXGVfRLpR2r4
 FsRA==
X-Gm-Message-State: APjAAAWTmGlZzCqVYCffdbrAkiPVNyaFE643agkDk0ZjL28WVy4dsos/
 PkfmSQ3kY6Mq0oE93JphrrRSmVh28Qs=
X-Google-Smtp-Source: APXvYqy9TLcxe20mCdPIrrEskF2hf0ITBBnM9CKSPkXqzqNQABe1lmh5h3q5BuMXLzlJTCu5/o4FaQ==
X-Received: by 2002:a63:cb4f:: with SMTP id m15mr24357816pgi.325.1572303411138; 
 Mon, 28 Oct 2019 15:56:51 -0700 (PDT)
Received: from dev-psajeepa.dev.purestorage.com ([192.30.188.252])
 by smtp.googlemail.com with ESMTPSA id
 m68sm12429573pfb.122.2019.10.28.15.56.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 28 Oct 2019 15:56:50 -0700 (PDT)
From: Prabhath Sajeepa <psajeepa@purestorage.com>
To: kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: Fix parsing of ANA log page
Date: Mon, 28 Oct 2019 16:56:48 -0600
Message-Id: <1572303408-37913-1-git-send-email-psajeepa@purestorage.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_155652_783798_0FFA4C89 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Check validity of offset into ANA log buffer before accessing
nvme_ana_group_desc. This check ensures the size of ANA log buffer >=
offset + sizeof(nvme_ana_group_desc)

Signed-off-by: Prabhath Sajeepa <psajeepa@purestorage.com>
---
 drivers/nvme/host/multipath.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 30de7ef..cbd2b3d 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -444,8 +444,14 @@ static int nvme_parse_ana_log(struct nvme_ctrl *ctrl, void *data,
 
 	for (i = 0; i < le16_to_cpu(ctrl->ana_log_buf->ngrps); i++) {
 		struct nvme_ana_group_desc *desc = base + offset;
-		u32 nr_nsids = le32_to_cpu(desc->nnsids);
-		size_t nsid_buf_size = nr_nsids * sizeof(__le32);
+		u32 nr_nsids;
+		size_t nsid_buf_size;
+
+		if (WARN_ON_ONCE(offset > ctrl->ana_log_size - sizeof(*desc)))
+			return -EINVAL;
+
+		nr_nsids = le32_to_cpu(desc->nnsids);
+		nsid_buf_size = nr_nsids * sizeof(__le32);
 
 		if (WARN_ON_ONCE(desc->grpid == 0))
 			return -EINVAL;
@@ -465,8 +471,6 @@ static int nvme_parse_ana_log(struct nvme_ctrl *ctrl, void *data,
 			return error;
 
 		offset += nsid_buf_size;
-		if (WARN_ON_ONCE(offset > ctrl->ana_log_size - sizeof(*desc)))
-			return -EINVAL;
 	}
 
 	return 0;
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
