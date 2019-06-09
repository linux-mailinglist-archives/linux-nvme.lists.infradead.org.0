Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB3E3A657
	for <lists+linux-nvme@lfdr.de>; Sun,  9 Jun 2019 16:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7SpDhEKVfKOzMePe/ciu28ItAyOuCIPVBTQOghj5xHg=; b=SY4CxVnVXYaqasAMy7ejG6wkv7
	UYV0Jx2oCxGplztcgrc+U1Zjmdt8KuBnUb3aZWWEX+fvAZB5LJsB9sapPR5/YsIg6YIPFuL0I7Cy5
	J6PjA3MJzBF6dSZcIjDmC+78l4iFi/D7gRBpczfsLXaFyEIsR7iGUNljq8+ouyHRE12zqNuqJyyNy
	eRZgEckWLVll6aW/wfUreuRr/YBJQBqpS5HJff1dhtFGcfcQc8a3fAYIG07pd+XqP6E1XAXmEwN1K
	6DNwgl+aF0Y8GKn0ZUZcLOaWq4hn1EuZ7OJENDav35jyEMIpoD9our8FF3ibAKozSJLAKAh3IJ/mH
	YCcRMdJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZye2-0003pq-F3; Sun, 09 Jun 2019 14:18:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZydV-0003Xg-OW
 for linux-nvme@lists.infradead.org; Sun, 09 Jun 2019 14:17:31 +0000
Received: by mail-pg1-x544.google.com with SMTP id 196so3636331pgc.6
 for <linux-nvme@lists.infradead.org>; Sun, 09 Jun 2019 07:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eEBEaq48nCu18L9B5AiK4Yd8CaXUKXL3x2y6081xTYE=;
 b=HN4GGrv+4Eb5ASGD5oB6lq5Y6DVH4Kw6S8SsuJn2XrKLwHma5jqbXXR+03qPe8oQkM
 PUxzvhY1gsglvkV29x4fm6hDcVf0Jqlqotvtzg8Y/V4VY/goKVHWjGHJQ4osuPAWm4jL
 nQssfwuf+XeUD02Gao9HBeqULzfgzN/PwNzxekl7zuLxRUDVOPdTdpGogvq0h7RIlWca
 MMbb5wyGREe2UIvvbXmW2OYFIpGkkpN5OeuIxnftol/PaWwy3yqIYUMWhLzzIgU5eM0I
 B2ZxpvG8gmQiLDz8pSZ+1TJGAiXvr5m+PidfYM34v1hnr1pQiStV9SBjU94c7TLjHbTf
 taig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eEBEaq48nCu18L9B5AiK4Yd8CaXUKXL3x2y6081xTYE=;
 b=GpwLpWOMi2ChpAW24dYrs0GJgDZMCAZUBFdMuS4BpB0tFa8upDHK/+GsE8x0HDqx2L
 BPw8vFUJanOB1DZfnwTLEBIzWp6ggzKBDB6+0z1PDPgVmgqo6noUlRtKw2kjqnWh0HRd
 vUiM43Zp3R3y9iOga9f9ekwk7N8TyTvFghVUkZvCeK9RSHr+LCE1XEQgnwa+x+vJXGrR
 cC6uNHu/83UgzZzUzBXtEpnctJG/wa4KnJ60ROWShCbjhdYq0UjsGsofwhH+B/a9kD/B
 QnycXkbYSD+e5+P96GcLG2aB0bWlVilikd6qQ2YlOCa/aelfnAllF35Fy87l+dRqdCxN
 27Tg==
X-Gm-Message-State: APjAAAWozL+FZqkgX2Sn6CLXosiA81Pf+QAsEi4tcEPEzBfFockmbHiD
 DIXdrSsEQLB2V/FQIPVzmvULMkoig48=
X-Google-Smtp-Source: APXvYqwdQu4RmRoRrJHA3TQe85JOiGXRoSe9QTccORBM699qSOwqpE/V1N5g529ZywSziROJdpiXow==
X-Received: by 2002:aa7:8acb:: with SMTP id b11mr68948353pfd.115.1560089848679; 
 Sun, 09 Jun 2019 07:17:28 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:b49b:e456:7394:88a2])
 by smtp.gmail.com with ESMTPSA id w4sm9556554pfw.97.2019.06.09.07.17.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 09 Jun 2019 07:17:28 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 2/3] nvme: enable to inject errors into admin commands
Date: Sun,  9 Jun 2019 23:17:01 +0900
Message-Id: <1560089822-11462-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560089822-11462-1-git-send-email-akinobu.mita@gmail.com>
References: <1560089822-11462-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_071729_837208_3C1EF630 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Thomas Tai <thomas.tai@oracle.com>, Akinobu Mita <akinobu.mita@gmail.com>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This enables to inject errors into the commands submitted to the admin
queue.

It is useful to test error handling in the controller initialization.

	# echo 100 > /sys/kernel/debug/nvme0/fault_inject/probability
	# echo 1 > /sys/kernel/debug/nvme0/fault_inject/times
	# echo 10 > /sys/kernel/debug/nvme0/fault_inject/space
	# nvme reset /dev/nvme0
	# dmesg
	...
	nvme nvme0: Could not set queue count (16385)
	nvme nvme0: IO queues not created

Cc: Thomas Tai <thomas.tai@oracle.com>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
* v3
- add Reviewed-by tags
- remove thermal zone series dependency

 drivers/nvme/host/core.c         | 3 +++
 drivers/nvme/host/fault_inject.c | 5 ++---
 drivers/nvme/host/nvme.h         | 2 ++
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a66e7d8..80960e4 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3701,6 +3701,7 @@ EXPORT_SYMBOL_GPL(nvme_start_ctrl);
 
 void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
 {
+	nvme_fault_inject_fini(&ctrl->fault_inject);
 	dev_pm_qos_hide_latency_tolerance(ctrl->device);
 	cdev_device_del(&ctrl->cdev, ctrl->device);
 }
@@ -3796,6 +3797,8 @@ int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
 	dev_pm_qos_update_user_latency_tolerance(ctrl->device,
 		min(default_ps_max_latency_us, (unsigned long)S32_MAX));
 
+	nvme_fault_inject_init(&ctrl->fault_inject, dev_name(ctrl->device));
+
 	return 0;
 out_free_name:
 	kfree_const(ctrl->device->kobj.name);
diff --git a/drivers/nvme/host/fault_inject.c b/drivers/nvme/host/fault_inject.c
index e37b8c2..1352159 100644
--- a/drivers/nvme/host/fault_inject.c
+++ b/drivers/nvme/host/fault_inject.c
@@ -60,9 +60,6 @@ void nvme_should_fail(struct request *req)
 	struct nvme_fault_inject *fault_inject = NULL;
 	u16 status;
 
-	/*
-	 * make sure this request is coming from a valid namespace
-	 */
 	if (disk) {
 		struct nvme_ns *ns = disk->private_data;
 
@@ -70,6 +67,8 @@ void nvme_should_fail(struct request *req)
 			fault_inject = &ns->fault_inject;
 		else
 			WARN_ONCE(1, "No namespace found for request\n");
+	} else {
+		fault_inject = &nvme_req(req)->ctrl->fault_inject;
 	}
 
 	if (fault_inject && should_fail(&fault_inject->attr, 1)) {
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index f00c596..1b2624c 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -256,6 +256,8 @@ struct nvme_ctrl {
 
 	struct page *discard_page;
 	unsigned long discard_page_busy;
+
+	struct nvme_fault_inject fault_inject;
 };
 
 enum nvme_iopolicy {
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
