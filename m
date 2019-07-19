Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFB66D7BD
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qVi8nQ5mK4RwbDfQlFB1S7uVkSgsP1wHUSFAVTtCh44=; b=I7necS8ESNGFlayRHfABAwvAo
	lyX9TLfi0SbLp/pjo0wTnokyhlfxXxJhX68gBMvMv79jH9S6pWOASEf591MAdfz5zLq9uB57pqizH
	AzQyKUfcah5BXKc6Fi1LU63/CZvXFUO7Oo6knfTL8nxhl7AQvj4pbhL6+g6YpgQMXW2VXXEB52FkK
	6IXVHDIGBlGAv25cdKyXqK+AvIe9PWEbNJ/X9S9x6d8v2ogwhlYef7zaDQPLHm6hwN1G7EXC7J8S9
	YCTnqflhtmUqw0eWsoGO92jW1DxCo9o6KYRmyH5cF9WFs3N525kDM/qMtaTgbNj8vjFGVcADJk9xb
	FOhEGoIZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGiG-0000GJ-0z; Fri, 19 Jul 2019 00:25:28 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGi7-0000Fn-8v
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:25:20 +0000
Received: by mail-ot1-f65.google.com with SMTP id r21so24945977otq.6
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 17:25:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3IoGFnjg00mt4dPax7bXZwTDcqISI79mUm9JDBcUrl0=;
 b=S+2RFOpn4y0ddcYLGjEafcyOYvDPuooukkVWkBuLeXIMVrTaKHBED3OuahPRDvVa2N
 oHds+bZNKZ+Q/2UXlpPMN5KI4GDK0l23amNdY2AxcyFK6xJ0PL/WmiOMBkcWpVmdPGH8
 EsFwQ76q8bzeY7cXTqn7eo0tasiJ3NRJYeYOs9N2U+lnRa8g+AfoLKKcwDHeuDYs6IhG
 vvl7Pp+g5zzT6FDAdZprxtPQWojptLvaTq4J8QswPjhV1203XQhqX76C94lZ1wdfMF9S
 wUqfXrZZhVfh7pbVS8hIwB4EySc2h+vxrl9sn9T2ep2KngHojtBzzXCSUlBT84jfJI2N
 gdww==
X-Gm-Message-State: APjAAAXHVcHKSZhFoqZa/CFlUJGd2HlcwwkYHY43dKV/JYMZ0WpY0J8/
 wppfJiaQ2gXTKBy4iOZzj4Q=
X-Google-Smtp-Source: APXvYqwp74SqZaZ1mzJLSJxZj8+X4BWzpJr1g+SgvGiqQMYYR6kf6/0vRmWhygxkZHndfxsl+jXSLA==
X-Received: by 2002:a9d:6a0f:: with SMTP id g15mr6463309otn.135.1563495916926; 
 Thu, 18 Jul 2019 17:25:16 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id i1sm9510593oie.45.2019.07.18.17.25.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:25:16 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme-core: Fix deadlock when deleting the ctrl while
 scanning
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190718225132.5865-1-logang@deltatee.com>
 <20190718225132.5865-2-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c52f80b1-e154-b11f-a868-e3209e4ccb2d@grimberg.me>
Date: Thu, 18 Jul 2019 17:25:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190718225132.5865-2-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_172519_317529_3ED3262D 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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


> With multipath enabled, nvme_scan_work() can read from the
> device (through nvme_mpath_add_disk()). However, with fabrics,
> once ctrl->state is set to NVME_CTRL_DELETING, the reads will hang
> (see nvmf_check_ready()).
> 
> After setting the state to deleting, nvme_remove_namespaces() will
> hang waiting for scan_work to flush and these tasks will hang.
> 
> To fix this, ensure we take scan_lock before changing the ctrl-state.
> Also, ensure the state is checked while the lock is held
> in nvme_scan_lock_work().

That's a big hammer...

But this is I/O that we cannot have queued until we have a path..

I would rather have nvme_remove_namespaces() requeue all I/Os for
namespaces that serve as the current_path and have the make_request
routine to fail I/O if all controllers are deleting as well.

Would something like [1] (untested) make sense instead?


> +	mutex_lock(&ctrl->scan_lock);
> +
>   	if (ctrl->state != NVME_CTRL_LIVE)
>   		return;

unlock

>   
> @@ -3547,7 +3554,6 @@ static void nvme_scan_work(struct work_struct *work)
>   	if (nvme_identify_ctrl(ctrl, &id))
>   		return;

unlock


[1]:
--
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 76cd3dd8736a..627f5871858d 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3576,6 +3576,11 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
         struct nvme_ns *ns, *next;
         LIST_HEAD(ns_list);

+       mutex_lock(&ctrl->scan_lock);
+       list_for_each_entry(ns, &ctrl->namespaces, list)
+               nvme_mpath_clear_current_path(ns);
+       mutex_lock(&ctrl->scan_lock);
+
         /* prevent racing with ns scanning */
         flush_work(&ctrl->scan_work);

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index a9a927677970..da1731266788 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -231,6 +231,24 @@ inline struct nvme_ns *nvme_find_path(struct 
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
@@ -257,14 +275,14 @@ static blk_qc_t nvme_ns_head_make_request(struct 
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
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
