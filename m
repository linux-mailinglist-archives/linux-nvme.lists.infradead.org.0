Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A5F1193A5
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Dec 2019 22:14:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKXL/rS1je9xVGoXONrWotYOedXBrrCbjYvsGlFHNwU=; b=oYOTlR2r1YoXoe
	Pd/MMqaLb20VT29FJfb/Ql7HjlprEJqTyq2FVQ5wCQC0cTKC0Zc+RB2FKakpdeF1dRZKcGTY8l3jh
	DWJjk0ubjgQQIV1y0/GE/vUu29GdEt7RtiOdR8ST/SuA38Fweem2GUPm+nHTC5p8L/E3AC95ZhiFA
	x/CTYGOK0GMBIagFQ1z+IwQ8BwJ6Zf7sejKabDNipTdY8XM6miSqfHDg8hngO5qdZenXzrk1lQcsJ
	zLbCoWJ+nGAcPnyGmAAJXrOcCgy7+7Iv1tBmY8wwqcPDfqRXVZ2ytQgPvs3SnfKe6GU9+uafUiWJm
	ceQ3X0UItQe2GI2XE6GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemqC-0008DN-BQ; Tue, 10 Dec 2019 21:14:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemnx-0006HH-56
 for linux-nvme@lists.infradead.org; Tue, 10 Dec 2019 21:12:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCC07206EC;
 Tue, 10 Dec 2019 21:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012344;
 bh=zWTvVjzz0vxgQQ+pb8yWW2h7B279AAATV2L93ZXW/6Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aJdTFu4mN1bWvVuwIKkZG2+0xFtdjiqAwdqbbghM+6XE6c6e0I09aq0mqWZ3Q7K5M
 52pyBLyhzuo1hCNiAclqbTYTcNliA+ORhb2s6wzPD5eWeStIdwA2QVQrS/XmKzgG4W
 yTxCePE8DIy5YCBx+7sTTfwzaJ6tKA5wClF6xlMQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 275/350] nvme: Discard workaround for
 non-conformant devices
Date: Tue, 10 Dec 2019 16:06:20 -0500
Message-Id: <20191210210735.9077-236-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131225_270996_0535AC2C 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Sasha Levin <sashal@kernel.org>,
 linux-nvme@lists.infradead.org, Eduard Hasenleithner <eduard@hasenleithner.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Eduard Hasenleithner <eduard@hasenleithner.at>

[ Upstream commit 530436c45ef2e446c12538a400e465929a0b3ade ]

Users observe IOMMU related errors when performing discard on nvme from
non-compliant nvme devices reading beyond the end of the DMA mapped
ranges to discard.

Two different variants of this behavior have been observed: SM22XX
controllers round up the read size to a multiple of 512 bytes, and Phison
E12 unconditionally reads the maximum discard size allowed by the spec
(256 segments or 4kB).

Make nvme_setup_discard unconditionally allocate the maximum DSM buffer
so the driver DMA maps a memory range that will always succeed.

Link: https://bugzilla.kernel.org/show_bug.cgi?id=202665 many
Signed-off-by: Eduard Hasenleithner <eduard@hasenleithner.at>
[changelog, use existing define, kernel coding style]
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 393913e2fb233..154ce69ae2941 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -611,8 +611,14 @@ static blk_status_t nvme_setup_discard(struct nvme_ns *ns, struct request *req,
 	struct nvme_dsm_range *range;
 	struct bio *bio;
 
-	range = kmalloc_array(segments, sizeof(*range),
-				GFP_ATOMIC | __GFP_NOWARN);
+	/*
+	 * Some devices do not consider the DSM 'Number of Ranges' field when
+	 * determining how much data to DMA. Always allocate memory for maximum
+	 * number of segments to prevent device reading beyond end of buffer.
+	 */
+	static const size_t alloc_size = sizeof(*range) * NVME_DSM_MAX_RANGES;
+
+	range = kzalloc(alloc_size, GFP_ATOMIC | __GFP_NOWARN);
 	if (!range) {
 		/*
 		 * If we fail allocation our range, fallback to the controller
@@ -652,7 +658,7 @@ static blk_status_t nvme_setup_discard(struct nvme_ns *ns, struct request *req,
 
 	req->special_vec.bv_page = virt_to_page(range);
 	req->special_vec.bv_offset = offset_in_page(range);
-	req->special_vec.bv_len = sizeof(*range) * segments;
+	req->special_vec.bv_len = alloc_size;
 	req->rq_flags |= RQF_SPECIAL_PAYLOAD;
 
 	return BLK_STS_OK;
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
