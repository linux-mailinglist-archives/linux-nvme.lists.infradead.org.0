Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422E716892
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 18:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QU6ldNGdj1hcRqHIuEjU/wwHh6SqaoPGiTi7VZE1Z14=; b=qr0P/BXwX/A8UiNUaPo145TS6+
	A9AqZGKrFC/BUQvN3f0cTso9jxJlPaa0jFk1ONtMmBTz722oyQG5JBqplKBUFNJjEBqarHv3qMyaq
	30U9Z46w22Lt790UxP6AP4fYZz4xMLV3CQbUiLbKC2UMimBZybLeP/RnWPIcEkM3nXo8Q5qyrOSlZ
	okBY+ycK8CWeDGUJr+BoeV7lqlyIXrYUGCFGNsRf0MQeBwORDJstGh2g0AjkTBC8RhmFt9l1sM4ud
	kMZlFCnn83mmaKdQwqkDSgEEY9PB7BqrfOLBBaO4tWf0f/BdCwWR/SuDeIoOQmTvEx2ifKOjYlM2h
	vOUNmvkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3RP-0008B1-3f; Tue, 07 May 2019 16:59:43 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3Qo-0007aG-9z
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 16:59:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id z26so8963407pfg.6
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 09:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HpUfowzPkPP+EimE58t16S3r0XExpxfBQEdnNQKh3Bc=;
 b=g9xny6JgesQKFtGTi5kEK7/Ikcq8NsKELmngrvHowFn6ojZtnzg4X+UR9s9XHsOLMK
 atxUuP/jBO/XQjlM7YFRyNAGG/kHQaIs20geCqyOQm31bLMI0iu881uzXAL5fKgtw9rk
 3rrZtE2h8ztC+6lUMMaT4V3RS/P6d9ItRnxVAi8//paxzCDECnQ1ZiZjhtn0NM/9+4Cn
 WQjWg6SfxsX2gqxeYz8u4h2YXhCVX4/wEk3g9yO2h/jvCUQDyIFKl9CP0O6JrhwzFMHP
 8ZrIEQ1DZnzNVLUaglA2DyxvaYR4khxGLgEumI2+2DCx+CV6hcM5H+xewdX6v8gdk4Ue
 O7HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HpUfowzPkPP+EimE58t16S3r0XExpxfBQEdnNQKh3Bc=;
 b=XMKOBFMK5RC8FxZNbb0ExGyB8RKzUUDwDl6E5CLJq/bCR4eRRxIvwPxQ9nXjh+irim
 5bh8/+6IJTvjTKgvJ0RXoyaD+FplugJ+eTnZkKUEXMLvnP1TgCuBnjxuMAYZvZroY1ZM
 ifIRotYV6gh4+B71AyLdxv6q9LFJ+4r5FgfrLpc3zWken+zaZYuHuSWoBQuEQckBQg5L
 eegzefQxSiqZH5fsdynwTC74oOvRcJNjSxGQWqkYitgN+jZ/9qor20jNj1oo07EOHix9
 3hj1q+2Fg479qIzpwXa3FvlLKgX0bBFQhOVnAccRjKMvzHjNmUt4SQO0qWftqThlj7K5
 szzw==
X-Gm-Message-State: APjAAAX70iY6HETSJpmdjOl0yLqT+nsCE5M4g194I+s+p72u+nPWFKY6
 FM+B1KHLE9Dj/55wB1eb0Q3L/yfV
X-Google-Smtp-Source: APXvYqyuqnN4Vgezd5EXk0WeM5ZmcTumZxABQ40n/nV8S+B8o9TKIPvDyqx6/SaAXGHOoeGiSmm4dw==
X-Received: by 2002:a63:3190:: with SMTP id
 x138mr28837539pgx.402.1557248345314; 
 Tue, 07 May 2019 09:59:05 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id r12sm18140093pfn.144.2019.05.07.09.59.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 09:59:04 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/7] nvme: add facility to check log page attributes
Date: Wed,  8 May 2019 01:58:32 +0900
Message-Id: <1557248314-4238-6-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_095906_851657_8BFB46E0 
X-CRM114-Status: GOOD (  13.39  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This provides a facility to check whether the controller supports the
telemetry log pages and log page offset field for the Get Log Page
command.

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v2
- New patch in this version.

 drivers/nvme/host/core.c | 1 +
 drivers/nvme/host/nvme.h | 1 +
 include/linux/nvme.h     | 2 ++
 3 files changed, 4 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 6265d92..42f09d6 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2580,6 +2580,7 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 	} else
 		ctrl->shutdown_timeout = shutdown_timeout;
 
+	ctrl->lpa = id->lpa;
 	ctrl->npss = id->npss;
 	ctrl->apsta = id->apsta;
 	prev_apst_enabled = ctrl->apst_enabled;
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 527d645..8711c71 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -195,6 +195,7 @@ struct nvme_ctrl {
 	u32 vs;
 	u32 sgls;
 	u16 kas;
+	u8 lpa;
 	u8 npss;
 	u8 apsta;
 	u32 oaes;
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 5217fe4..c1c4ca5 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -294,6 +294,8 @@ enum {
 	NVME_CTRL_OACS_DIRECTIVES		= 1 << 5,
 	NVME_CTRL_OACS_DBBUF_SUPP		= 1 << 8,
 	NVME_CTRL_LPA_CMD_EFFECTS_LOG		= 1 << 1,
+	NVME_CTRL_LPA_EXTENDED_DATA		= 1 << 2,
+	NVME_CTRL_LPA_TELEMETRY_LOG		= 1 << 3,
 };
 
 struct nvme_lbaf {
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
