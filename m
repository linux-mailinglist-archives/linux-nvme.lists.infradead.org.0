Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 667B1194C21
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Mar 2020 00:21:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dpZfpbHLfqqzcGhvEHpY2GONN0uJ0E51haF5bZ95BMs=; b=DrmYAIssKFK8N/QCRhiBVmNmc
	ozTVj9YzlJOlM6N5OT7CUKf9+9a2hb4fnJTOFH99EBhukvnvE9/TTqpQXnkLSXEXqmlM2tl344doc
	v0s7vOe6DgekvtqVg54vXZj3qe1zlGRhn2Kr4cjdPi83JPY5Mh/RvViVBYn18OVj3vqQFODXOSI/s
	vGvzfIFdqz2eg/Ben4IuRAKNmegR4EZLvoZIGQYPayhoE+UBH6EGAWOx4kNUj4oWuXUGZBRMMw9Eo
	HYrHXGzf3VSQ12AVU03mEbEC5m4lWaDtb7JkYK1MlMbCKs0tCRJsp2O0FeOE9QC1pL1H6iTXpJpL2
	24UPjdJEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbo2-0000BF-Bz; Thu, 26 Mar 2020 23:20:58 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbnx-0000Au-VF
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 23:20:55 +0000
Received: by mail-pg1-f193.google.com with SMTP id b1so3655726pgm.8
 for <linux-nvme@lists.infradead.org>; Thu, 26 Mar 2020 16:20:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=//zFw6yP/D/KsJwWUYvhhivV4+RxQsc1/+n0s6GAGfc=;
 b=W40uafMyoQvMxJ4Zfrtc9vHNYTPOUjcm/JABXoxrgBlKhkZKvzc+hIq3fwPFmhPVY7
 waDFIqOajqS/W21ige7UrYCeU1xJEjQh+eFSvRkV1tsWXpZezyt9keXvTbY19Mfg1hTl
 La4re1T0ElxceI0Y/chXlS7uIrUWA4cGQRuv4rBVc+fyNn5UvzwDIqv/QzqsWkz1YqC5
 /CZp+SHQMeGXQi36bFixxV4hYrsXhGPCjK7lyR96aaGbc7tGcSzEww3MS6fufihcVaO5
 ay52m2AkzUlgwSBgFl6s+tBxsJDeseKn0XirdSAo8ufBpYBonAjURFAY/y2TO/w2YIru
 hBCQ==
X-Gm-Message-State: ANhLgQ1da2UZTaVmQwQvfuv9ynBx5Kbz2ikvEUPyj932hEwYrG2bZLeG
 YQr62ahuIvvHJn33+Nv+uF0=
X-Google-Smtp-Source: ADFU+vupnfGi2l6R4iYQUoq//t8A6r76j3bb6CYWnzEF9tZ+aF1KEXjDX+/71Gcowht/cs+sXA3w5g==
X-Received: by 2002:a63:ff59:: with SMTP id s25mr11025577pgk.159.1585264852851; 
 Thu, 26 Mar 2020 16:20:52 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:7c30:3845:645:967b?
 ([2601:647:4802:9070:7c30:3845:645:967b])
 by smtp.gmail.com with ESMTPSA id g12sm2588765pfo.200.2020.03.26.16.20.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Mar 2020 16:20:51 -0700 (PDT)
Subject: Re: [PATCH v4 1/1] nvmet-rdma: use SRQ per completion vector
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de
References: <20200326181512.58053-1-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <80ff5951-caad-1130-43d4-6239b9f6a143@grimberg.me>
Date: Thu, 26 Mar 2020 16:20:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326181512.58053-1-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_162054_006386_567A2C0B 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
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
Cc: shlomin@mellanox.com, jgg@mellanox.com, bvanassche@acm.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> @@ -954,7 +1039,7 @@ static void nvmet_rdma_free_dev(struct kref *ref)
>   		goto out_free_dev;
>   
>   	if (nvmet_rdma_use_srq) {
> -		ret = nvmet_rdma_init_srq(ndev);
> +		ret = nvmet_rdma_init_srqs(ndev);
>   		if (ret)
>   			goto out_free_pd;
>   	}

I'm wandering if we should fallback to normal rqs, probably not a
good idea...


> @@ -1238,6 +1326,10 @@ static void nvmet_rdma_qp_event(struct ib_event *event, void *priv)
>   	case IB_EVENT_COMM_EST:
>   		rdma_notify(queue->cm_id, event->event);
>   		break;
> +	case IB_EVENT_QP_LAST_WQE_REACHED:
> +		pr_debug("received last WQE reached event for queue=0x%p\n",
> +			 queue);
> +		break;

Can you remind me when does this event come up? Why don't we see it with 
normal queues?

Other than that, looks good Max,

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
