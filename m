Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2CA1ACDC
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GWfR+W49nHAVEtMHiGZdTALwsbxtbtW9prIYEUiyT4c=; b=rphLOoss+sGakmlCf0ZGQvn/Yj
	wzmahvKm43zjjRj54r0GiV944imnKrnXt7rOmF2+n/HfqyxnbBcYzfmDUGMCQOph/iWo3lBJ7DyPa
	2CM7dl5O4mKgAW0XVuutr5x7ctECZnCYP882Ufo4IcgvC3BjCEAyYjCs1uvAQ8SrptZu/wBLduPHv
	ITECZbwzlBazyKxXFNAo4/AOTFswVZfy2s7XlXlplJ1y/J9a5NOCcL3X9/3EmXkCQ/I3P8nkU6nIM
	FWaGcPi6j/FZO0ZIfVxLGdRn99yUGIMOBwjn27a0rMEBj14Vo1WZc1dOG1JBSkIKZdNSgPG2imy6X
	xZt33Iqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqoU-0000P0-Iv; Sun, 12 May 2019 15:54:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqoH-0000E7-8l
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:54:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so5813270pfa.3
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1vxIkomPQH1I9c3EfXtdAffirCBxYctwSQxs/tfCVVk=;
 b=nKGp1cwM0HpeQtIGPKLVLbdzwqo+4T2NhcX+2MwhkQOJl42LteJhZcwJTjqLy2eVuM
 D8PSISWWroylyI9r+JnXwmv6+lERMZnQ6eaNdxjNKxE0+B//6RdAzKo7xOIeVPAW7Y83
 jhE61YDsPz9NvOnMK6vh/jANUvWSaiLL0i4hVl3LtMriYCmwYBkZ4yKfxl/HZ0w7iHSp
 R7FFoADlMWA2l1fGL3pLEe4phuIuWSk84rZFi+F2J/OqNM9fyV0bwlXr8eoWD159yVYL
 VJFmRB61pUdMbSxCTZQniNI5JQm6T1uV85aVX5M3tdEO3I1TwRvYuGL6UQYF03yCSNak
 uiUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1vxIkomPQH1I9c3EfXtdAffirCBxYctwSQxs/tfCVVk=;
 b=AiTU4jPbf90ygAUMCLzaIhIokGN/hAHyWS2s+7RKKfn7oJR8etjfKovbb2s6IPalYn
 P8KtPH0a9o3wD1u1skZuSay/CqrA7qFmkJEoBisdxBEljG2kRUp3FLn4fmSb2rJBHa8s
 klb8DD/x2fr/9MiLIysycOfUVz+ZAv8FCztaggnYj1VeOhtZ6/Y/KpVc1BbDHVBicBkV
 aq67IspyawOVBk6RvTH2zWHWerTS29RcBSTJL0VFi2xFTIC+L8uRRt0LAU5zfFIwdqao
 oCtWPnmRC+UHV+NIGEx49Xm8E0UEjHiX3vNAXwo6CaG5kzjP2xeA+CuvbWEYpPxS7pJS
 EGYw==
X-Gm-Message-State: APjAAAVF0Z+7VGKSK2zzR/4l+GEDuXoPkhFa5GQRebn/P4e1f3RLuY6B
 6Oy0DRGGSoDcbfnuroqnrd6jaHBu
X-Google-Smtp-Source: APXvYqzKuq/nOTzNp4a0CIhbe/zEW80ewvYRP5VBoY8liCuefiCQCn0dB2vxlU4/fjnURQbjPzQ4Dw==
X-Received: by 2002:a65:6295:: with SMTP id f21mr26550078pgv.129.1557676484449; 
 Sun, 12 May 2019 08:54:44 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:918e:f7e4:1728:3f45])
 by smtp.gmail.com with ESMTPSA id v2sm4470058pgr.2.2019.05.12.08.54.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 12 May 2019 08:54:43 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/7] devcoredump: fix typo in comment
Date: Mon, 13 May 2019 00:54:12 +0900
Message-Id: <1557676457-4195-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_085445_598371_3BE23BE1 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

s/dev_coredumpmsg/dev_coredumpsg/

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v3
- No change since v2

 drivers/base/devcoredump.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/devcoredump.c b/drivers/base/devcoredump.c
index 3c960a6..e42d0b5 100644
--- a/drivers/base/devcoredump.c
+++ b/drivers/base/devcoredump.c
@@ -314,7 +314,7 @@ void dev_coredumpm(struct device *dev, struct module *owner,
 EXPORT_SYMBOL_GPL(dev_coredumpm);
 
 /**
- * dev_coredumpmsg - create device coredump that uses scatterlist as data
+ * dev_coredumpsg - create device coredump that uses scatterlist as data
  * parameter
  * @dev: the struct device for the crashed device
  * @table: the dump data
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
