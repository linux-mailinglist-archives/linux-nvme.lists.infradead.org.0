Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731D86D7CA
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vmf3B2nLh9QA6ay+hYVSyk9VPCYvE2JhZxuvYAtm3sQ=; b=o5S3jfajeF0L7xE40iCuljkcc
	8NikzsjlMUpXRhiHsyvqIeBUD82iy5NYqqBaOey95/oAQEwyUTkmYgeIubP+nVk/xC3zv/gCoXNQy
	38DYH4NlW0uIKEj3lYGWPZBcDp0i37M1nUDwY1r7jR8WQ2CQBBZpC0b2dV8GE3SHw2VHKoiuWkTWh
	C4EIxpLOqQUnskJW1U8o7MA7yNjTKf6p6G1Dpo5GI+yJc9hOBl6Ky7U0GrBumOZjQXMF10Xd2/Dw3
	EpRvfdwyOTDHJ6AKOUj8iNd5/4JRTm7tA9oak2ok5iUOn0/pLDVG0H5aAKBPNVjIf4LRSrzC7Ldnm
	00gLf/n+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGnq-0002GP-Ky; Fri, 19 Jul 2019 00:31:14 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGng-0002G6-Bj
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:31:05 +0000
Received: by mail-ot1-f68.google.com with SMTP id z23so2676989ote.13
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 17:31:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oa7NZ9SHHSZyZ+ddNT7cMnWruRPCnZIWB1sl8B9uIas=;
 b=UkHHyDJMyJpjyXgG/ZEkvF5Qdd66Gf6Bypsm1YfukzKHc1ZKodKb4vJJt9+Gm0IDgv
 seBQjVlxXHQAm3JuWEzKKbJ5wNPO8zc8SpuPBdsw1VQBKPH/k44lEmHTWKpE+wcRxvCz
 iuXOplD2HSV63+NTzHAyV8kh37zMUZEK9kusrrq2Ll33DSJyqXVKajVXFjXgSHj0lNeJ
 gv7ArAkyWny2XLdqpdTis5mAFhtZ+UwQ7hKrjRH/EGGyjdJk1KtI1dbw+IvkK0trq8BW
 /+BYL2tNdhaO2xyruWf7rppG4W0Tcy0XdEbAzodhclg15voOFF8fL/S/M5b2uJezLdQa
 R8lQ==
X-Gm-Message-State: APjAAAWhBIviH1J+A6tXvb8bu4taelNKxJsSDD8UbA9VAKV4OjQJUTvR
 Raq9H9qdHasuDtmUzCZ0XvA=
X-Google-Smtp-Source: APXvYqyodarpFohjC/vmQsLFzwYhPQwgI8CfqGRscHkMtLQVaShFYJBsJquA/U7ucH0aiJLTjlXmJw==
X-Received: by 2002:a05:6830:1197:: with SMTP id
 u23mr35966663otq.36.1563496263108; 
 Thu, 18 Jul 2019 17:31:03 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id w9sm9790587otk.16.2019.07.18.17.31.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:31:02 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme-core: Fix deadlock when deleting the ctrl while
 scanning
From: Sagi Grimberg <sagi@grimberg.me>
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190718225132.5865-1-logang@deltatee.com>
 <20190718225132.5865-2-logang@deltatee.com>
 <c52f80b1-e154-b11f-a868-e3209e4ccb2d@grimberg.me>
Message-ID: <ba6d1a56-8f86-4060-a167-6d67435e1a88@grimberg.me>
Date: Thu, 18 Jul 2019 17:31:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c52f80b1-e154-b11f-a868-e3209e4ccb2d@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_173104_405005_C0EDA7C8 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> [1]:
Or actually:
--
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 76cd3dd8736a..a0e2072fe73e 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3576,6 +3576,12 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
         struct nvme_ns *ns, *next;
         LIST_HEAD(ns_list);

+       mutex_lock(&ctrl->scan_lock);
+       list_for_each_entry(ns, &ctrl->namespaces, list)
+               if (nvme_mpath_clear_current_path(ns))
+                       kblockd_schedule_work(&ns->head->requeue_work);
+       mutex_lock(&ctrl->scan_lock);
+
         /* prevent racing with ns scanning */
         flush_work(&ctrl->scan_work);

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index a9a927677970..0e7e41381388 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -109,18 +109,22 @@ static const char *nvme_ana_state_names[] = {
         [NVME_ANA_CHANGE]               = "change",
  };

-void nvme_mpath_clear_current_path(struct nvme_ns *ns)
+bool nvme_mpath_clear_current_path(struct nvme_ns *ns)
  {
         struct nvme_ns_head *head = ns->head;
+       bool changed = false;
         int node;

         if (!head)
-               return;
+               return changed;

         for_each_node(node) {
-               if (ns == rcu_access_pointer(head->current_path[node]))
+               if (ns == rcu_access_pointer(head->current_path[node])) {
                         rcu_assign_pointer(head->current_path[node], NULL);
+                       changed = true;
+               }
         }
+       return changed;
  }

  static bool nvme_path_is_disabled(struct nvme_ns *ns)
@@ -231,6 +235,24 @@ inline struct nvme_ns *nvme_find_path(struct 
nvme_ns_head *head)
         return ns;
  }

+static bool nvme_available_path(struct nvme_ns_head *head)
+{
+       struct nvme_ns *ns;
+
+       list_for_each_entry_rcu(ns, &head->list, siblings) {
+               switch (ns->ctrl->state) {
+               case NVME_CTRL_LIVE:
+               case NVME_CTRL_RESETTING:
+               case NVME_CTRL_CONNECTING:
+                       /* fallthru */
+                       return true;
+               default:
+                       break;
+               }
+       }
+       return false;
+}
+
  static blk_qc_t nvme_ns_head_make_request(struct request_queue *q,
                 struct bio *bio)
  {
@@ -257,14 +279,14 @@ static blk_qc_t nvme_ns_head_make_request(struct 
request_queue *q,
                                       disk_devt(ns->head->disk),
                                       bio->bi_iter.bi_sector);
                 ret = direct_make_request(bio);
-       } else if (!list_empty_careful(&head->list)) {
-               dev_warn_ratelimited(dev, "no path available - requeuing 
I/O\n");
+       } else if (nvme_available_path(head)) {
+               dev_warn_ratelimited(dev, "no usable path - requeuing 
I/O\n");

                 spin_lock_irq(&head->requeue_lock);
                 bio_list_add(&head->requeue_list, bio);
                 spin_unlock_irq(&head->requeue_lock);
         } else {
-               dev_warn_ratelimited(dev, "no path - failing I/O\n");
+               dev_warn_ratelimited(dev, "no available path - failing 
I/O\n");

                 bio->bi_status = BLK_STS_IOERR;
                 bio_endio(bio);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 716a876119c8..915179368d30 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -496,7 +496,7 @@ void nvme_mpath_remove_disk(struct nvme_ns_head *head);
  int nvme_mpath_init(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id);
  void nvme_mpath_uninit(struct nvme_ctrl *ctrl);
  void nvme_mpath_stop(struct nvme_ctrl *ctrl);
-void nvme_mpath_clear_current_path(struct nvme_ns *ns);
+bool nvme_mpath_clear_current_path(struct nvme_ns *ns);
  struct nvme_ns *nvme_find_path(struct nvme_ns_head *head);

  static inline void nvme_mpath_check_last_path(struct nvme_ns *ns)
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
