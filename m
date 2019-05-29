Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B7E2E013
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 16:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qc0vNQdVJM+Qqa/3yXf2q0M5NpyPs3RO6YwygQReBqM=; b=kkCC80v+sd77vG
	jcB45jtHywwIghpzQRZZvDB7fpj53aUsA1K7yVNqRnBUHVZF+HJQk7jd+Vyk2CxhKA+5CO6CdaK3o
	vZkIv1vIZceBGLYMtqqzzNwllm7wkAAfeaWlwNncnCwDJM5CZn/kkoXLGzFP58U+rU67YZOmiYOzq
	5gjla4usnUbE/+7cAMkXK7HuOsY1cSXmVNv1zv9ZeID2AanTGDZyAi/yHglkm2vMFBJo59ThTYx2T
	mQz9Py0RWzCa27+mXj+zlVYtKVHp+fB0vg4V3FcbLN5J3UtHydgqUzKNffR2xO1rr2XYXN5oEPMvu
	1jSgfe9REkpqACITY1EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVzqg-0000ir-RO; Wed, 29 May 2019 14:46:38 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVzqa-0000iH-R8
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 14:46:34 +0000
Received: by mail-pf1-x443.google.com with SMTP id c6so1774583pfa.10
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 07:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NhUPt5iA2elTv3Plfnw7t9vjPYRnEUaw9x/qdKCgthU=;
 b=EOMktvbTx5ddYTeMgVRAE048xEBL+9lfAqM4Rkv4r4xKvdi8qWnTweXKbbEnysKOAE
 p+cNaUG786qPWC7C30XqV4dRFjD2GxAM/fcaOKl7+TS7ZwadiyWA82if8uHt/X67r7MV
 DY4lgAi1WPipH2akdCQjI/FCyy9Sk1tqoS4ANNpuzCj5lIB2t3XoWchgivFRQTB/I8J7
 Z92ecdEm1UiVzM+SjoD61yQEWyhpBwN9Nz2Sld4V3QMVbX0B0xVT4NMnHqhQD+Glm21O
 mYb7pmy976bcfPM6CH3N7UtnNOlDNrpXzIeSGNjqJDBbxyOPdqlqgeLwXSM+xFzLvJcB
 mVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NhUPt5iA2elTv3Plfnw7t9vjPYRnEUaw9x/qdKCgthU=;
 b=Xf/bJxanQ6P8mKMiV5y860qYIibsuHpdPtMR5WWLifweHfHp1aL5v35kSZxzDbh4oa
 ZpOLk18xTY7mwESStJb+xQXOYdAfXhb63bsPX0ujQHQqSldFnBEoZNezXHAs7if+9W7s
 Wqe0mpRrjP8phZiM3xqkGV2caKEiZR9yx+bAHklYaAhHve/oES2Z+KaZwUJObp4pI5Lk
 gC8GIq5jt9YAFjZ5Fz1T8eJMl9trGAZ3/0fSamZV+3UqrDVNrQLkzKV5K7zCn8HFTyrK
 tgL3r7++3P6SppQzS91+2TRurwXsSvzy1hbQXmqFQG8XTlhXhyXEOCx0y1J3lNXzRC75
 WDFw==
X-Gm-Message-State: APjAAAW5HGSUqHITiz4D3gJHglwn1k8ighuUVhyqfozU8otqNPmFRwI8
 hdyDb+LlE+M8MFvOsauujd1cy2WARfQ=
X-Google-Smtp-Source: APXvYqzuhqqEQBW5/4rvm8LFky+4XFnuXeBuk/1yvbfOP6YwCdIxaBCpVa43+cRJX3P2bZuzpY7aWQ==
X-Received: by 2002:a17:90a:2561:: with SMTP id
 j88mr12778574pje.121.1559141190025; 
 Wed, 29 May 2019 07:46:30 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id t33sm6231931pjb.1.2019.05.29.07.46.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 07:46:29 -0700 (PDT)
Date: Wed, 29 May 2019 23:46:26 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 1/2] nvme: prepare for fault injection into admin commands
Message-ID: <20190529144624.GA28274@minwooim-desktop>
References: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
 <1559063018-3682-2-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559063018-3682-2-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_074632_940282_571D68BC 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-29 02:03:37, Akinobu Mita wrote:
> Currenlty fault injection support for nvme only enables to inject errors
> into the commands submitted to I/O queues.
> 
> In preparation for fault injection into the admin commands, this makes
> the helper functions independent of struct nvme_ns.
> 
> Cc: Thomas Tai <thomas.tai@oracle.com>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
>  drivers/nvme/host/core.c         |  4 ++--
>  drivers/nvme/host/fault_inject.c | 28 +++++++++++++++-------------
>  drivers/nvme/host/nvme.h         | 20 ++++++++++++--------
>  3 files changed, 29 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 26c8b59..9fca8457 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3698,7 +3698,7 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>  	device_add_disk(ctrl->device, ns->disk, nvme_ns_id_attr_groups);
>  
>  	nvme_mpath_add_disk(ns, id);
> -	nvme_fault_inject_init(ns);
> +	nvme_fault_inject_init(&ns->fault_inject, ns->disk->disk_name);
>  	kfree(id);
>  
>  	return 0;
> @@ -3723,7 +3723,7 @@ static void nvme_ns_remove(struct nvme_ns *ns)
>  	if (test_and_set_bit(NVME_NS_REMOVING, &ns->flags))
>  		return;
>  
> -	nvme_fault_inject_fini(ns);
> +	nvme_fault_inject_fini(&ns->fault_inject);
>  	if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
>  		del_gendisk(ns->disk);
>  		blk_cleanup_queue(ns->queue);
> diff --git a/drivers/nvme/host/fault_inject.c b/drivers/nvme/host/fault_inject.c
> index 4cfd2c9..e8d8da9 100644
> --- a/drivers/nvme/host/fault_inject.c
> +++ b/drivers/nvme/host/fault_inject.c
> @@ -15,11 +15,10 @@ static DECLARE_FAULT_ATTR(fail_default_attr);
>  static char *fail_request;
>  module_param(fail_request, charp, 0000);
>  
> -void nvme_fault_inject_init(struct nvme_ns *ns)
> +void nvme_fault_inject_init(struct nvme_fault_inject *fault_inj,
> +			    const char *name)

Hi Akinobu,

Just a simple proposal here.  Can we have a name for the disk name with:
	const char *disk_name ?
I think the name of variable "name" can make some confusions to whom want
to use this feature at later time :)

Otherwise, in the perspective of this single patch, looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
