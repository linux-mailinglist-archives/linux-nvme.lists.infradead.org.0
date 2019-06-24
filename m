Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F111351BFA
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 22:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjeC7BVd57VlSH/UBd5lJE8FWYpFOlsv6+KtanqizYg=; b=K27gaX6o8v6Jsl
	IZSqCAO27pJyxp9zS94oD/ejsM1P5S+bdWn99DhswhdhKdH7GftXtnmCxpLUZluoDtKCfJtU8x8GE
	Tf+K0ytInTJwW6xBES6rRWiPV2w8UCMLWsWzb2Zm2X1ilVVcRZzQut50PratGy4Rz+zfdCKQBoqmf
	sGo5LKjkecJr+m/hfvHAWZedhgwYmqoz1zIMBA3uw5KDirB5ZzUSP1JOp2xgBp8r/0NCphjOsRoKa
	J/lANDkLEiUt9ApfswsYS1rYjsnNvPY0bLZlqA/QRi1Yx/cPywrm6gRp9TJGM/dJesnMVpAO7K662
	No92GQNz5YUx3ut4ynSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVE3-0005Tj-E9; Mon, 24 Jun 2019 20:06:03 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVDX-0005AT-IO
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 20:05:33 +0000
Received: by mail-pf1-f196.google.com with SMTP id p184so8127844pfp.7
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 13:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BvwT4qkQmBlGOYiHNzs/FcGLr/q5xiaGhHGVlT4d8Bk=;
 b=kbUpf9zgTRXA9md2h3GGvc6TojyEfQOIfpHv+FfYc0YlhSwuq+aYVjz/mib1rZODCs
 lamL6pFWCHZq3FHRemFu/UluXI9gmNdtPfZ7lCtF4utPoSS+jVD+e2AS06fsUneU7cTH
 87xYgcmWQO4RuWorOZwZAybF/UkLDOZKf+3lFJSzoAKNsAYCI3zcR4WV5+AafvGF/QgT
 GzTMoRQ9V2SASAjWBCpbpATKRagOi0jj5W1Q1Z5xBd7vnWOHnpaA9XeguomjHnSTXRpd
 49P0a0xZwnp+NojCA5xAsQRAoaqiRKOD2uYW5D3wSWyOfjCU6SUPQTyW+9/bialfalcz
 pIHQ==
X-Gm-Message-State: APjAAAWGVym08NNpg/J74yaTkkfWTdNLZF5+qQDe7bMriI+i/lp76Bpk
 NXVt1PjJvk8WaWBNiPfUFh0=
X-Google-Smtp-Source: APXvYqyAVLNUJIuuuCvVxkz59b82DRglfV29iG1YFO+LaZ3eQ/0vsQX0fzbe6X9wzWmiQ5oOA9Whng==
X-Received: by 2002:a63:6245:: with SMTP id w66mr28216077pgb.117.1561406730593; 
 Mon, 24 Jun 2019 13:05:30 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id n7sm13060878pff.59.2019.06.24.13.05.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 13:05:29 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 2/3] nvme-cli: Restore RHEL 7 compatibility
Date: Mon, 24 Jun 2019 13:05:20 -0700
Message-Id: <20190624200521.28191-3-bvanassche@acm.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190624200521.28191-1-bvanassche@acm.org>
References: <20190624200521.28191-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_130531_696900_A4B01B60 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

With glibc version 2.24 and before the endianness conversion macros
return a value with an incorrect type. Avoid that this causes the
nvme-cli build to fail on e.g. RHEL 7. A side effect of this patch
is that it allows sparse to verify the type of the endianness
conversion functions.

See also https://sourceware.org/bugzilla/show_bug.cgi?id=16458

Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Reported-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Fixes: e68409e447b2 ("Remove superfluous casts")
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 nvme.h | 38 +++++++++++++++++++++++++-------------
 1 file changed, 25 insertions(+), 13 deletions(-)

diff --git a/nvme.h b/nvme.h
index a149005a0425..f059db864128 100644
--- a/nvme.h
+++ b/nvme.h
@@ -119,19 +119,31 @@ struct nvme_bar_cap {
 #define __force
 #endif
 
-#define cpu_to_le16(x) \
-	((__force __le16)htole16(x))
-#define cpu_to_le32(x) \
-	((__force __le32)htole32(x))
-#define cpu_to_le64(x) \
-	((__force __le64)htole64(x))
-
-#define le16_to_cpu(x) \
-	le16toh((__force __u16)(x))
-#define le32_to_cpu(x) \
-	le32toh((__force __u32)(x))
-#define le64_to_cpu(x) \
-	le64toh((__force __u64)(x))
+static inline __le16 cpu_to_le16(uint16_t x)
+{
+	return (__force __le16)htole16(x);
+}
+static inline __le32 cpu_to_le32(uint32_t x)
+{
+	return (__force __le32)htole32(x);
+}
+static inline __le64 cpu_to_le64(uint64_t x)
+{
+	return (__force __le64)htole64(x);
+}
+
+static inline uint16_t le16_to_cpu(__le16 x)
+{
+	return le16toh((__force __u16)x);
+}
+static inline uint32_t le32_to_cpu(__le32 x)
+{
+	return le32toh((__force __u32)x);
+}
+static inline uint64_t le64_to_cpu(__le64 x)
+{
+	return le64toh((__force __u64)x);
+}
 
 #define MAX_LIST_ITEMS 256
 struct list_item {
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
