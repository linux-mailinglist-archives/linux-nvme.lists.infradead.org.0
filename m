Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120C929176
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 09:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NocxIGzeHmzspXOFAeRd83SRzg0c5ol2MYqgYwWsjto=; b=oxqfKCSFmiCYMRViTbIc61r1b
	X7H6IQ0Gdvi0C7g6vAm14+yDmK0/0bPU3bGV8ReBJhUtg7ctaClWVn8SvOfnfKHZ794q9ujnG5+t/
	zcEq+pemtguf+GjiQiI3HWWmpxmCjYzEpLSU1OLU7HYTO+j9SkJHqvCZDK8EjaP+bDwmPzhMqI+CO
	/+f/qUYaBwy7Ysunak3WpzCR667zngN+zUPGibwkaf3n+bm8k6B6rEQxUz1whWJXS/CPPMcxTY6aV
	2yuvKp1HvXu8MW47riXH/kOcwXiB9XmlzvrQqQR4TKgEkjhKHkIIafSf0FB3uFQaEY5pKIHGYIxIj
	7xIjV8ZUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4Gi-0008SF-TE; Fri, 24 May 2019 07:05:32 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4Gd-0008Rl-Nq
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 07:05:29 +0000
Received: by mail-pg1-f193.google.com with SMTP id o11so4334667pgm.13
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 00:05:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2UlxV1MRszKSmN9jIxGk9aRVIUON2qQ+72XgRXe1UBU=;
 b=i9g8dlkjxqTveg/i88R2KVqfdFNAn3jLZRZy41CbIIAzZByUbbO3g76UTILmzi+PmE
 k3O0hQdJofzMtXcNS4G4EntjuPVOflHqj36MFpfCKgbPnCmvxXlay+1hcqiXkDogg3vD
 +ruhRQ+XL0fBRu3mdSndaPTclxi5F5Sx7CPDJV4Z1w7j/RQAtp/YcCZpQMMwW1/+qo57
 QyB4QSRLixrDbC1hOEjmtW1P92jDtrFZTK0RBhHYFg8dClla0Kc62KawbCDmZipEsDQD
 ZRTHkCXYu7QtezuYfSvtm1C3YJGIFOY5XuNahSQfVnqQC9iFCNGi0PUjxqQ7WPR1OaAS
 4LZg==
X-Gm-Message-State: APjAAAXnBeDIkGQUhEDptWaXV1NcLDwJT6qAvGdEVM54JNKPtpMIJEY4
 vfygpN6/1OEYy7LxuJyzu6M=
X-Google-Smtp-Source: APXvYqxq6Jb6mCPKxBpANgBEhCEzCEBYh7ciFovi0zHfn1f42XvSfLZAhyBfhstI5OiBbxG+4rCj6g==
X-Received: by 2002:a17:90a:d803:: with SMTP id
 a3mr7005427pjv.48.1558681525463; 
 Fri, 24 May 2019 00:05:25 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:c906:f7f5:4d80:8bc5?
 ([2601:647:4800:973f:c906:f7f5:4d80:8bc5])
 by smtp.gmail.com with ESMTPSA id b4sm1519368pfd.120.2019.05.24.00.05.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 00:05:24 -0700 (PDT)
Subject: Re: [PATCH 1/1] nvme-rdma: Add association between ctrl and transport
 dev
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 hch@lst.de
References: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <da6603ee-4a71-e057-5c88-656455956eba@grimberg.me>
Date: Fri, 24 May 2019 00:05:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_000527_778903_0F4B0C97 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> @@ -758,23 +777,26 @@ static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   		bool new)
>   {
> +	struct ib_device *ibdev;
>   	int error;
>   
>   	error = nvme_rdma_alloc_queue(ctrl, 0, NVME_AQ_DEPTH);
>   	if (error)
>   		return error;
>   
> -	ctrl->device = ctrl->queues[0].device;
> -	ctrl->ctrl.numa_node = dev_to_node(ctrl->device->dev->dma_device);
> +	ibdev = ctrl->queues[0].device->dev;
> +	ctrl->ctrl.numa_node = dev_to_node(ibdev->dma_device);
> +	ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ibdev);
>   
> -	ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ctrl->device->dev);
> -
> -	error = nvme_rdma_alloc_qe(ctrl->device->dev, &ctrl->async_event_sqe,
> +	error = nvme_rdma_alloc_qe(ibdev, &ctrl->async_event_sqe,
>   			sizeof(struct nvme_command), DMA_TO_DEVICE);
>   	if (error)
>   		goto out_free_queue;
>   
>   	if (new) {
> +		/* ctrl takes refcount on device */
> +		nvme_rdma_ctrl_dev_get(ctrl, ctrl->queues[0].device);
> +

Do you actually need the extra reference on the device? why doesn't just
the set/clear of ctrl->device sufficient? these routines should be
serialized..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
