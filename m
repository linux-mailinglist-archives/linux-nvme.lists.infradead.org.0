Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE18D3A0F5
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 20:03:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZjcgoUk7XT0rHic4AMeAOretP2Sg2+AVAH1+FdC9+Q=; b=OAVSwQmeZTBHtl
	lCZ662n8RriGr2bSpt3E7OMIpLfmGMhwlQ8b4c97KtdvQ+Lz+MlANxA0p7T8xCYW/nWt/lWjjnhoe
	c25loAh7PrGdZCH1qYH14Kr4bXUsDEioNmXsf/OPk4tKJBD6LnEmDyYy5kIvxAff75M2KHngwdRoy
	sXOCwWF8PJvIMWVa1J/2GsDvbtwyG3E8XlHr9ldYFYyPrrj1PZAcPCj1nAO4zcXlXRXk6XA+2Lg8x
	gJWhOvDdYffUqBJnN7GhMyvebFYInW7RNk3lbEfZAHn9nmTaUP1Uc9lnVWxj8mDtR/xvNewHPVyP+
	+PK0tUkfBE/vyKYUfALw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZfgR-0007KB-4i; Sat, 08 Jun 2019 18:03:15 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZffw-00074r-A8
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 18:02:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id 81so2936815pfy.13
 for <linux-nvme@lists.infradead.org>; Sat, 08 Jun 2019 11:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UB3MBQHpaatoKnOeRusaPQ0+nMMXnFAUQzd+q+ImndQ=;
 b=UpKXomW9JHjV84QXAjp4UblucZtuH/+BGZXWYrGYciHBy5EcOksexLOVWyKRKF1GVG
 W5zo96G1gDfrxj2cWuWkmorfWeXhrEdmdF7q1igNeDqa+bFqBMMrZrJGrVcXP1V2bTMj
 Q/38ozaKwfWpcT8yWTGBaVNw5bcePE5mI7lpP15RZNECiOo7iPM0EKGJ/aoF4mOEu6r9
 QWxGLFvMcyCHEmyzrZ6ChX6fFkl5PrK8YWriBfKxK0oUeucwomKnlAlc5XWJJvqdsgtY
 jNQW3ZP+jwZ8QyfRBxir5jUWZvq+WyY1h0ckzxX+dJ8OEur4bSmE7f8xXHt6T0fuvfKz
 F32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UB3MBQHpaatoKnOeRusaPQ0+nMMXnFAUQzd+q+ImndQ=;
 b=SNJdq2rhqf4dlvJ3aLXpotGtMMcAOrqJvkkO8dXacuPcxinE+RbqKpaFOGLWyqaxwm
 NJQGXPC+xcGGGmbUiUIsSKIBEaOsOaxC42nZmc3Cln2OGb0Dw+rQHRfqMiSvNI0tD+k5
 kugMahZzwE48K34o+kZPR0gU0gj0XB6Z9YfdoDYF64wKgVjsmG+F+Zrz/N9Y1vJkq+Ob
 fUuvupZhDuCyKuUi32Lhn0Jao5WrB/lMlWgNk/6qsy0SrCjHXaGVftOwza14N8rE+8rR
 Fya1KBY6fo1oGFJ+9TiEAswbolwvmpbaFlp/l8YJsiYfuuJ8YnaibkmdhxhJQj22g0/I
 FfdA==
X-Gm-Message-State: APjAAAXu31pramMSZIFC7F88krJrvLDY0fk9CRPaqToR1TzqzzNH4yfd
 TA69xsReWWRmIIcaWWAYZVMgP0z99ek=
X-Google-Smtp-Source: APXvYqwQ32Y5fflfGtjYoEM/Ycd6Ia9U5+7LdLq4HoV7+Q9kefxOn3xvIvJXZr2sL/pZThfp7agXfA==
X-Received: by 2002:a63:4714:: with SMTP id u20mr8427576pga.347.1560016963436; 
 Sat, 08 Jun 2019 11:02:43 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 128sm6212824pff.16.2019.06.08.11.02.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 11:02:42 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/3] nvme-pci: remove queue_count_ops for write,poll_queues
Date: Sun,  9 Jun 2019 03:02:18 +0900
Message-Id: <20190608180219.17523-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608180219.17523-1-minwoo.im.dev@gmail.com>
References: <20190608180219.17523-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110244_349938_2111C81E 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Ming Lei <ming.lei@redhat.com>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

queue_count_set() seems like that it has been provided to limit the
number of queue entries for write/poll queues.  But, the
queue_count_set() has been doing nothing but a parameter check even it
has num_possible_cpus() which is nop.

This patch removes entire queue_count_ops from the write_queues and
poll_queues.

Cc: Jens Axboe <axboe@fb.com>
Cc: Ming Lei <ming.lei@redhat.com>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/pci.c | 23 ++---------------------
 1 file changed, 2 insertions(+), 21 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 047785023892..20193b11ab0d 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -68,20 +68,14 @@ static int io_queue_depth = 1024;
 module_param_cb(io_queue_depth, &io_queue_depth_ops, &io_queue_depth, 0644);
 MODULE_PARM_DESC(io_queue_depth, "set io queue depth, should >= 2");
 
-static int queue_count_set(const char *val, const struct kernel_param *kp);
-static const struct kernel_param_ops queue_count_ops = {
-	.set = queue_count_set,
-	.get = param_get_int,
-};
-
 static int write_queues;
-module_param_cb(write_queues, &queue_count_ops, &write_queues, 0644);
+module_param(write_queues, int, 0644);
 MODULE_PARM_DESC(write_queues,
 	"Number of queues to use for writes. If not set, reads and writes "
 	"will share a queue set.");
 
 static int poll_queues;
-module_param_cb(poll_queues, &queue_count_ops, &poll_queues, 0644);
+module_param(poll_queues, int, 0644);
 MODULE_PARM_DESC(poll_queues, "Number of queues to use for polled IO.");
 
 struct nvme_dev;
@@ -146,19 +140,6 @@ static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
 	return param_set_int(val, kp);
 }
 
-static int queue_count_set(const char *val, const struct kernel_param *kp)
-{
-	int n, ret;
-
-	ret = kstrtoint(val, 10, &n);
-	if (ret)
-		return ret;
-	if (n > num_possible_cpus())
-		n = num_possible_cpus();
-
-	return param_set_int(val, kp);
-}
-
 static inline unsigned int sq_idx(unsigned int qid, u32 stride)
 {
 	return qid * 2 * stride;
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
