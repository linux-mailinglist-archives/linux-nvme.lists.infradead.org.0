Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0323682A
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 01:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9FYdHohtwByIf6zMMauuQohi7swdejob/C3rT77p6kA=; b=jUY71xZotxWfG8zi3OmHExz9a
	8iSkU04LEM3kJSjut+AS0vvHwoZoM6j9gVvoP6GBYuhtoLDsZFebLG3PvUnaX6SBv1luGusqdXecP
	fkle/xwywj9WJ76V9dRq7E39bFjUq1G2AW+LEqfaC95dFmG7nxjNphNRU7sfbFTNeZsfWmVGOUOIi
	FRdy8j2YOucjaWLYCbVPR+wFTS0oiFwPQLlpqDS6RoA2Pjkfa9J1uj+topDYwlDNI4WPJbw2NZ/xB
	9eNjpfF6vXh7Wdf52EKJXyKgWyWVfk/N4b8+sUPxnF2Ps8kdL2OqbBun8HpUbuBHkYXV92PYzHwVz
	82CwKPZTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYfRD-0002PA-Af; Wed, 05 Jun 2019 23:35:23 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYfR7-0002NV-Nj
 for linux-nvme@lists.infradead.org; Wed, 05 Jun 2019 23:35:19 +0000
Received: by mail-oi1-f193.google.com with SMTP id s184so287311oie.9
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 16:35:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sP5Jo/+KivdI/bxh9Ffstcmb0kFLHw7pjLkPnap8FYc=;
 b=bDQsYV15drEu8MUO2zjqV0w/lez3CddQnq2htVwEo/XI7P05LdczKeZduIRjUtHB2Y
 nqJ6kt9gxCk+RBnmELjsMn7PsZgvPtT7xQQbPdOTVQXzeXGM4Hn8tP0/xLprwzvxhzQ9
 boSdmiveTK9Cy+O7/pAbc0cdaFf+ZaUql3z1gdNkHw+CngrZVd8WT9nmJ37Xz+AWBmxw
 VI99gfLPppNkXPuml3xP5uXUhk6nVdiGiElFzUJGrXtk77EITqJyYYRexN5jjMEVxIRu
 8HAbK1e2NNHg0mc0WDHm+tbGTHSazPsnz6U42mmnd9Vazfk1nHGGyCJLiDVLh/0bGsrq
 Bv5A==
X-Gm-Message-State: APjAAAXwYYfm4NoFp+JIqYSDJFxqsaI3lNqScJwZ8Hsi8OY5LoWJkCW2
 PCr0ZoBVC3lfzl89eLOsR4Y=
X-Google-Smtp-Source: APXvYqxKdRuZiaGzWrM69Xb9VlwdZWMVuRphCu6AjNPc/fgK/sF4SQPpB4XYM1onfx/CRY0xjH7dIQ==
X-Received: by 2002:aca:dd08:: with SMTP id u8mr5800529oig.27.1559777716296;
 Wed, 05 Jun 2019 16:35:16 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id m32sm56535otc.55.2019.06.05.16.35.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 16:35:15 -0700 (PDT)
Subject: Re: [PATCH 08/13] IB/iser: set virt_boundary_mask in the scsi host
To: Jason Gunthorpe <jgg@ziepe.ca>, Christoph Hellwig <hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-9-hch@lst.de> <20190605202235.GC3273@ziepe.ca>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b3e46295-4257-86ad-6994-f83b736c8f40@grimberg.me>
Date: Wed, 5 Jun 2019 16:35:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605202235.GC3273@ziepe.ca>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_163517_775938_288AB13A 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-usb@vger.kernel.org, Bart Van Assche <bvanassche@acm.org>,
 Sebastian Ott <sebott@linux.ibm.com>, linux-rdma@vger.kernel.org,
 Oliver Neukum <oneukum@suse.com>, linux-mmc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern <stern@rowland.harvard.edu>,
 linux-scsi@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 MPT-FusionLinux.pdl@broadcom.com, megaraidlinux.pdl@broadcom.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> This ensures all proper DMA layer handling is taken care of by the
>> SCSI midlayer.
> 
> Maybe not entirely related to this series, but it looks like the SCSI
> layer is changing the device global dma_set_max_seg_size() - at least
> in RDMA the dma device is being shared between many users, so we
> really don't want SCSI to make this value smaller.
> 
> Can we do something about this?

srp seems to do the right thing:
target_host->max_segment_size = ib_dma_max_seg_size(ibdev);

But iser does not, which means that scsi limits it to:
BLK_MAX_SEGMENT_SIZE (64k)

I can send a fix to iser.

> Wondering about other values too, and the interaction with the new
> combining stuff in umem.c

The only other values AFAICT is the dma_boundary that rdma llds don't
set...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
