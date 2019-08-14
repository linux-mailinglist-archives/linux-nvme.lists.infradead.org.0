Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A671D8D5EF
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 16:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MduWLsYsv1iBSixB6X6eq58uXmad3TYJSw+BYaTtB10=; b=Xu6yWcbiTBBeg4
	pUqiO3M8qF4unxiJFAd75QfIK7elNmmh74Rl8zZ1to5YMaBIeel9F+KuLDEx5jNQrp4sg55zXDbqs
	FjMQrUiWfS1oxrlT6M+q05fhO+GN/G9061Gy4KfakKKC9KBEtRkpT3Ao6qFHNJhNhXSu5m7M+4YQl
	1RFIH9TuTYpO4UD3JCrIpRt2Yb/DB5sazcNe74+RizXf8EX35MTZNEhizSNimT74WePgU/I9dipW8
	2O2ECcqi8kWUvuqGsdLd5nMc9k0llsRCY+X8vJaETwVhL9IxoEZAw/pZ1yJvOavLH7cXyopMdoXJ2
	z4s0hdRQJ2mMd8u8V9GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuGr-0002NT-Ap; Wed, 14 Aug 2019 14:29:01 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuGh-0002MO-BK
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 14:28:52 +0000
Received: from mail-pl1-f198.google.com ([209.85.214.198])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <gpiccoli@canonical.com>)
 id 1hxuGf-0000yr-U6
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 14:28:50 +0000
Received: by mail-pl1-f198.google.com with SMTP id v13so6110808plo.4
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 07:28:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7uHFaBE8ZhNAyjr5dmWMEqG4zYwwgGR3dmEDnGu54/4=;
 b=bNsVqBibMedELlqF2T716s1q14S+Oc21uapUy9xMCDutwdGGs0zsJa3yPMgbp0XzXy
 6DAHSUzhr5mBWhK5+al+6U0Q7Nf+2yZshFLmBM8rHc+6YlyueLrpIWqndFdoNDSapeSe
 QyyWOfMLfCD0LgKbwmFVOYEidkimMmOihmMdt4p33z9X5EG3+jlCC5eZ7rnCB5ndIPb8
 v/+q5puHNuqaj8MyBjVPwbHCwHYfOrX2E9XVxlSAqwKSewFO76ggqscd1CqDx0QRhCkM
 VwVo1+uFt4LrdPPoyJOB3ZexP7OPpyXzJT+Uqn3XudbVBv6yypy/+cUyHSOGkaFn280G
 zESQ==
X-Gm-Message-State: APjAAAUrIkRFdF55ECWQSgcR9LTSvMqIUhfuwVGlNeQK2qnKC+TDh1KG
 vArKuBegiPCQUIuxIjDgqOdEt97utqR7x0eVcEHEH5JJbQQuFwix+HSTuJS5X1PxG4wq/dtu/L1
 qB0FE8Xqq+VTUUpweOrmISOJErBPgd9kFNLPru7vF4WrX
X-Received: by 2002:a17:902:bf09:: with SMTP id
 bi9mr40468827plb.143.1565792928375; 
 Wed, 14 Aug 2019 07:28:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxS/FX+5oVpjJcvMW8Dpe9gfyBKv7pQm0TdJYtzcf9R83TKJ912i7FOulvuf+w06xfHv8UnVg==
X-Received: by 2002:a17:902:bf09:: with SMTP id
 bi9mr40468808plb.143.1565792928194; 
 Wed, 14 Aug 2019 07:28:48 -0700 (PDT)
Received: from localhost ([191.13.19.2])
 by smtp.gmail.com with ESMTPSA id v14sm119820825pfm.164.2019.08.14.07.28.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 07:28:47 -0700 (PDT)
From: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: Use first ctrl->instance id as subsystem id
Date: Wed, 14 Aug 2019 11:28:36 -0300
Message-Id: <20190814142836.2322-1-gpiccoli@canonical.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072851_525233_772B1C26 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: axboe@fb.com, sagi@grimberg.me, gpiccoli@canonical.com,
 linux-block@vger.kernel.org, kbusch@kernel.org, jay.vosburgh@canonical.com,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Since after the introduction of NVMe multipath, we have a struct to
track subsystems, and more important, we have now the nvme block device
name bound to the subsystem id instead of ctrl->instance as before.
This is not a big problem, users can even fallback to the old behavior
using the module parameter "nvme_core.multipath=N" in case they don't
have multipath and wish to have a consistent mapping between the char
device nvmeX and the block device nvmeXnY.

That said, we noticed the nvme subsystem id is generated by its own ID
allocator, and ctrl->instance value has itself an ID allocator too.
The controller instance is generated during the probe, in the function
nvme_init_ctrl(), which always executes before nvme_init_subsystem().
That said, and since according to the spec we have a relation 1:N
between subsystem and controllers (i.e., one subsystem may have more
controllers but not the reciprocal), why not use the ctrl->instance id
as the subsystem id?

This patch does exactly this: removes the ID allocator for subsystems
and use the unique controller instance id as subsystem id. The patch
was tested in multiple scenarios, like:

* multiple controllers (each one tied to its own subsystem);
* 2 controllers in a single subsystem (using emulated nvme controllers
from qemu). In this case, subsystem gets the id of its 1st controller;
* NVMEoF/TCP with this patch in both target and host kernels.

All test cases worked as expected. With this patch, the "coincidence"
of the char device number matches the block device number is forced for
single-controllers subsystems (the most usual scenario), even without
disabling multipath. It's useful for scenarios with some multipath'ed
controllers and some solo controllers.

Signed-off-by: Guilherme G. Piccoli <gpiccoli@canonical.com>
---
 drivers/nvme/host/core.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index cca270836892..60631e856b41 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -81,7 +81,6 @@ EXPORT_SYMBOL_GPL(nvme_reset_wq);
 struct workqueue_struct *nvme_delete_wq;
 EXPORT_SYMBOL_GPL(nvme_delete_wq);
 
-static DEFINE_IDA(nvme_subsystems_ida);
 static LIST_HEAD(nvme_subsystems);
 static DEFINE_MUTEX(nvme_subsystems_lock);
 
@@ -2316,7 +2315,6 @@ static void nvme_release_subsystem(struct device *dev)
 	struct nvme_subsystem *subsys =
 		container_of(dev, struct nvme_subsystem, dev);
 
-	ida_simple_remove(&nvme_subsystems_ida, subsys->instance);
 	kfree(subsys);
 }
 
@@ -2445,12 +2443,8 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 	subsys = kzalloc(sizeof(*subsys), GFP_KERNEL);
 	if (!subsys)
 		return -ENOMEM;
-	ret = ida_simple_get(&nvme_subsystems_ida, 0, 0, GFP_KERNEL);
-	if (ret < 0) {
-		kfree(subsys);
-		return ret;
-	}
-	subsys->instance = ret;
+
+	subsys->instance = ctrl->instance;
 	mutex_init(&subsys->lock);
 	kref_init(&subsys->ref);
 	INIT_LIST_HEAD(&subsys->ctrls);
@@ -4051,7 +4045,6 @@ static int __init nvme_core_init(void)
 
 static void __exit nvme_core_exit(void)
 {
-	ida_destroy(&nvme_subsystems_ida);
 	class_destroy(nvme_subsys_class);
 	class_destroy(nvme_class);
 	unregister_chrdev_region(nvme_chr_devt, NVME_MINORS);
-- 
2.22.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
