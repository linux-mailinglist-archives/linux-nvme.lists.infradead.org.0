Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA8F4C038
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkMhs8YABFApPeNEXmmJW6alZDqIltfMmoHGV+g3ji8=; b=HqVsglbeI9jOkF
	bSUJKjqDU3wRzQ5Rzadl2BlK1oqvmfa5lhodCcgZeuoLRpR8QMyGi0p1K6K30CF09DaEGVmKVCE/3
	p57phzU3uyCEoasdgwK/mggAejtPptV2rF670T/4ZEJNZIBe7tBIa/Yznt5A7vaony1/yCKfoLzZp
	V91OAnhW7NG/HBL+PCJ5usVZXka/OQnUogG9IG0FwkCdEx0IkcaGc4ZX6uUHhobnLbkpB5ncsXj2m
	qS3lI4rvlkXiGGJUdVCpyagNVriJ5x6yQE8QRyu0ohc5Yq2aw4pavw6Bp4x+04M5PfTYC/nbtZRax
	jlKtL87E3UYVvAwgRTOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdego-00040z-Ou; Wed, 19 Jun 2019 17:48:06 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWQ-0006kK-9M
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:24 +0000
Received: by mail-pf1-f196.google.com with SMTP id i189so2276pfg.10
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SAI1/7N3dsdpIEurEUfPItdXrtRjDpwSdtbsR+rl5rU=;
 b=SACVGEDHnGH+mJPtkXsV5tGGdqfeR+XTxvdBkiyEsZ0ICVfElMGwSc8oEdp3jg7gbB
 VugFRnDEOJSGPLFPYsI+wdLijD1NqDAKxFJZ9a8FPdyuAbjqrI3t1Wh/14FemUb3NPrz
 Wp533LGUZLHh6U4ssyqtvT5j5zgMpnB5zf20KwHCm3UpZ6fREco1xHMh0DPDD7MhSuMA
 pwjjWza9cSlL7WdS7P0xdKyGvjg9VWi3YG+u2jw3mkLKvY9olHdEb+kX0tt6teJjVDag
 hMobxiQ7yjzm07nFXmZEt/CIQCv/76d6JxcVNRVL5tzqyndkEDKfodqCWvhcPvzhKROf
 c4AA==
X-Gm-Message-State: APjAAAW7t/ww01hPJlScoLp/UA3vZoP33iBXbMqKbPwOO4CaiXVfKA5i
 l+rDapiGZ/Uo8q/X4iiwbg0=
X-Google-Smtp-Source: APXvYqzWeiPCggOC0VkkT/ReoOxfwscbyS66lxpr179lizjb08IJcylbVlr6GnWDX4+IfpPuz8kbdQ==
X-Received: by 2002:a17:90a:ad89:: with SMTP id
 s9mr12528789pjq.41.1560965840513; 
 Wed, 19 Jun 2019 10:37:20 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:19 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 09/13] Avoid using arrays with a variable length
Date: Wed, 19 Jun 2019 10:36:57 -0700
Message-Id: <20190619173701.8263-10-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103722_385410_56F73830 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Patrick McCormick <patrick.m.mccormick@intel.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Since variable length arrays result in suboptimal code, avoid using
variable length arrays.

Cc: Patrick McCormick <patrick.m.mccormick@intel.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 nvme-print.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/nvme-print.c b/nvme-print.c
index ea8f720748ef..94222a3b1c15 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -1,3 +1,4 @@
+#include <assert.h>
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>
@@ -41,8 +42,9 @@ static long double int128_to_double(__u8 *data)
 void d(unsigned char *buf, int len, int width, int group)
 {
 	int i, offset = 0, line_done = 0;
-	char ascii[width + 1];
+	char ascii[32 + 1];
 
+	assert(width < sizeof(ascii));
 	printf("     ");
 	for (i = 0; i <= 15; i++)
 		printf("%3x", i);
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
