Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F20A51BF6
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 22:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rAP8059ga8vk9bXGp7YJlOyPUy8fU2KUMDeHByJ7gU4=; b=r0A6tiobu7n6P2
	WBe99oMN3Kf6I0brpZIgLrvlxKf4Nu9iCEE1oDrEADOXc0Nu26qhvfvvl91zhTMp44arPby31ZbKo
	9Zj/PzfpliJ3g4TrmsImA6RSGaocoOahn9NPp+oYR4spYpdii08hr0fvsEOeVNOQrgNY8q5w6ZARp
	NOfiSDQoeF2DanKblYKo6ZqG8FjSdYKGEmauj8V2EkQFQ4olUbqPOptDFVxNISmB2qv7jizciSmOd
	Nq2/48I5Tar26zh+S5UUHt/3di910CVovXsOsCPIyWPXA85cR5Qce4hk5P0wErzBPLm31kQEM9YSD
	n7RpqKR5p03zQd0zxl0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVDp-0005HH-Ty; Mon, 24 Jun 2019 20:05:49 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVDW-0005A1-0Z
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 20:05:31 +0000
Received: by mail-pl1-f194.google.com with SMTP id p1so7519327plo.2
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 13:05:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o4EFl3fxyQg8jVF7K5W/2ZTgw7xVXgT1VgiBQvdDq9M=;
 b=UZNL1iMSjvRDKqAWD0o31y3AzRcjJwsv7YePXpUb8nJS6pmZzlnKW7JqP6430tPXRy
 NggeW8DCfnVU9sfE8rTjqQ5PeUckbXP1XfpkBq7fCwvRFA0RS5bRgLNr2cZ1uZd1jgKC
 zTdXGTzaK+bmzatiUycokDwQzjqKTT0rskuFz++4zmSpVZ35+xnwhMu3FcaCaMgqAYLm
 EvV+ZxxbUr8KBKe5QpajnU86ElALqjQ6qWmjg0+T6Zrql+9Z6r6TdQK9S3eUx1I8PhCH
 lNA5G7gQw2Us/1lbY+xNRM3DibtI5T7EmjY/kJkdYG8Xzx3oMNmF9UADo+Fk0jfrnhZB
 53GA==
X-Gm-Message-State: APjAAAVADqsQJu1yixXOGxdmjZ60xBGgS70tiORg5sQEYsE0oat1Npxa
 DwA3gyX/YPLyTozOvOKHI74=
X-Google-Smtp-Source: APXvYqzeX3wDzzrbWKelSQ0/rYVZ+QNksfva2odMGpm5Sr1bNote9y6t/ggul67KrJWtbVnOyw9HnQ==
X-Received: by 2002:a17:902:f213:: with SMTP id
 gn19mr3937868plb.35.1561406729127; 
 Mon, 24 Jun 2019 13:05:29 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id n7sm13060878pff.59.2019.06.24.13.05.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 13:05:28 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 1/3] nvme-cli: Restore support for older gcc versions
Date: Mon, 24 Jun 2019 13:05:19 -0700
Message-Id: <20190624200521.28191-2-bvanassche@acm.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190624200521.28191-1-bvanassche@acm.org>
References: <20190624200521.28191-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_130530_050552_A5EF68C5 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Older versions of gcc do not support initializing another than the first
member of a union in an initializer. Rewrite some code such that support
for older gcc versions is restored.

Fixes: 301e263c34e8 ("nvme-cli: Rework the code for getting and setting NVMf properties")
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 nvme-ioctl.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/nvme-ioctl.c b/nvme-ioctl.c
index 57fae22e1e37..524502bf4bed 100644
--- a/nvme-ioctl.c
+++ b/nvme-ioctl.c
@@ -576,16 +576,16 @@ static void nvme_to_passthru_cmd(struct nvme_passthru_cmd *pcmd,
 int nvme_get_property(int fd, int offset, uint64_t *value)
 {
 	struct nvme_passthru_cmd pcmd;
-	struct nvme_command gcmd = {
-		.prop_get = {
-			.opcode	= nvme_fabrics_command,
-			.fctype	= nvme_fabrics_type_property_get,
-			.offset	= cpu_to_le32(offset),
-			.attrib = is_64bit_reg(offset),
-		}
+	struct nvmf_property_get_command pg = {
+		.opcode	= nvme_fabrics_command,
+		.fctype	= nvme_fabrics_type_property_get,
+		.offset	= cpu_to_le32(offset),
+		.attrib = is_64bit_reg(offset),
 	};
+	struct nvme_command gcmd;
 	int err;
 
+	gcmd.prop_get = pg;
 	nvme_to_passthru_cmd(&pcmd, &gcmd);
 	err = nvme_submit_admin_passthru(fd, &pcmd);
 	if (!err) {
@@ -635,17 +635,17 @@ int nvme_get_properties(int fd, void **pbar)
 
 int nvme_set_property(int fd, int offset, uint64_t value)
 {
-	struct nvme_command scmd = {
-		.prop_set = {
-			.opcode	= nvme_fabrics_command,
-			.fctype	= nvme_fabrics_type_property_set,
-			.offset	= cpu_to_le32(offset),
-			.value = cpu_to_le64(value),
-			.attrib = is_64bit_reg(offset),
-		}
+	struct nvmf_property_set_command ps = {
+		.opcode	= nvme_fabrics_command,
+		.fctype	= nvme_fabrics_type_property_set,
+		.offset	= cpu_to_le32(offset),
+		.value = cpu_to_le64(value),
+		.attrib = is_64bit_reg(offset),
 	};
+	struct nvme_command scmd;
 	struct nvme_passthru_cmd pcmd;
 
+	scmd.prop_set = ps;
 	nvme_to_passthru_cmd(&pcmd, &scmd);
 	return nvme_submit_admin_passthru(fd, &pcmd);
 }
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
