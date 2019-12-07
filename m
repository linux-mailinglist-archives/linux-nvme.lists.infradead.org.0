Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ED8115B9A
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Dec 2019 09:55:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QijSfZYNgu6DPOARUx/ZKLK6Lwv8QYQ7gBqAPr2TqXA=; b=IazBE/wpq9GPT0
	DsxQDF38vs9WmoyZzwkP8V2ho1hUigqWg3I8puLu5z0PQ8xmq3Dm2NajNiV2WPTuQ1AS5cYryqcw+
	y2r+utMbI4U8a19sW7soIiAodBp9T/r+JdRoaeLStiCC3dXWSuoZoU1cBMBBEOQNf6udjk+8WLhNs
	PulVKVFjNUzHJeKjL/an7l+RZ+4hNFsiiFDLYcCNYHLHmOcEWz8eNkWJNstkTqPxVd09SNVN6EpqZ
	M1Kk93fflnZiN9zghGF4lM39mdpwzm2MGHQCmTXyMIfEvyg5hUPDP7NWZJ6Ab6Tytc1BfdmAXYB4I
	e2/IDD6q5ZMb4iU5SKEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idVrz-0003AQ-Qn; Sat, 07 Dec 2019 08:55:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idVrv-00039h-GD
 for linux-nvme@lists.infradead.org; Sat, 07 Dec 2019 08:55:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so10384617wru.4
 for <linux-nvme@lists.infradead.org>; Sat, 07 Dec 2019 00:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=YIsgzh1nzZFCjGx+1pqWM4VDNiPT568ziDcv2Rg7xyM=;
 b=a505A6BLdQEPvwI+fPHiUzs5Be6DR221YlSK6Ol6hI/HifTKvncJFxNGVsY9/R7kIH
 pq+KM65aFHHx8rdM7i51s6GT44vTsDvBK6vidF3sGOYHRmkoJ4vDlSIgvU4PIiOECllh
 LV3lQPc3+c3oHUWopy2hFS+jlzk3fuZofeC4fa+YmAiTYrZqW/xRlt0dSMuBW/kw8Prz
 gi3e5pQLHLPryTXlV9GwZorEeRIPH67bIDpKdcDCp46M5IsUWy5P7RqW/a8MvvOa821G
 ClGzb83iP9JoDx1FVlW5q+agIhKJ9rXbpJurKWz4qhZ+6wfbprHaouxv6G9yd6sUiorH
 qZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=YIsgzh1nzZFCjGx+1pqWM4VDNiPT568ziDcv2Rg7xyM=;
 b=s4HWzJcsTQthWnsFOWc0lGQ5AY5793TXhXp0wnalD2Y0CMHqId/nWcgM+w9J1HzPxH
 SN94z0eqnw7a0UT79YV8O0lMRLF5IsfEwqXGy9LKgMHwNIKXIfipgyCfv4Z5whfCCFU8
 Pygc8JY25Y0vm4Zn5LwZhe2hZb02oO/hxyFRmfmhiIani9AjYWVr/oUffFlNRQu7P2bR
 wWyPeG9SrOFhYNhx3U6+rMNMgwnH+zpOjOJQzl5Rvcnyil4bQA0haQUpC5SAhLhoDCph
 MuurGQoFnAwp+0R32D8lu+KKb0Tazx89wZ/CR0icvduFvDTFaglDOUBA56vU5C2w/jrX
 aPLA==
X-Gm-Message-State: APjAAAUxw4nc0KM4fhv7jPxQBG7Zl9eT/Lr8diLCxS/a0z7e7GeDx268
 ie5bZDt78XpGlO7cS8c2LcUr8mgjfW3oBqqwkuo=
X-Google-Smtp-Source: APXvYqwfgtAyW2LPwO0fQsW3/2bnrfgvfZAjA/D1ku42oHJdyJk39jZYxjfFl2jeIIkA3BbT349PMuM7O+SBpphwbzU=
X-Received: by 2002:adf:e2cc:: with SMTP id d12mr19091251wrj.168.1575708911843; 
 Sat, 07 Dec 2019 00:55:11 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a7b:c001:0:0:0:0:0 with HTTP;
 Sat, 7 Dec 2019 00:55:11 -0800 (PST)
In-Reply-To: <20191206171316.2421-4-kbusch@kernel.org>
References: <20191206171316.2421-1-kbusch@kernel.org>
 <20191206171316.2421-4-kbusch@kernel.org>
From: Ming Lei <tom.leiming@gmail.com>
Date: Sat, 7 Dec 2019 16:55:11 +0800
Message-ID: <CACVXFVPsuUzzzoZLVHtsFi+KuLD2i6ipJ0gCFyc3MzEH2ONVcg@mail.gmail.com>
Subject: Re: [PATCH 3/3] nvme/pci: Fix read queue count
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_005515_566009_6AA01243 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 12/7/19, Keith Busch <kbusch@kernel.org> wrote:
> If nvme.write_queues and poll_queues are specified, we expect the driver
> may request more queues than CPUs if the device's queue count feature
> is large enough. The driver, however, had been decreasing the number of
> possible interrupt enabled queues, artifically limiting the number of
> read queues even if the controller could support more.
>
> The driver doesn't request more IO queues than CPUs for each queues type
> anyway, so remove the cpu count comparison to the number of interrupt
> enabled io queues.
>
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/pci.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 6b6452486155..d3bed5df9ef1 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2062,7 +2062,6 @@ static int nvme_setup_irqs(struct nvme_dev *dev,
> unsigned int nr_io_queues)
>  		.priv		= dev,
>  	};
>  	unsigned int irq_queues, this_p_queues;
> -	unsigned int nr_cpus = num_possible_cpus();
>
>  	/*
>  	 * Poll queues don't need interrupts, but we need at least one IO
> @@ -2073,10 +2072,7 @@ static int nvme_setup_irqs(struct nvme_dev *dev,
> unsigned int nr_io_queues)
>  		this_p_queues = nr_io_queues - 1;
>  		irq_queues = 1;
>  	} else {
> -		if (nr_cpus < nr_io_queues - this_p_queues)
> -			irq_queues = nr_cpus + 1;
> -		else
> -			irq_queues = nr_io_queues - this_p_queues + 1;
> +		irq_queues = nr_io_queues - this_p_queues + 1;
>  	}
>  	dev->io_queues[HCTX_TYPE_POLL] = this_p_queues;
>
> --
> 2.21.0

Fixes: dad77d63903e("nvme-pci: adjust irq max_vector using num_possible_cpus()")


Thanks,
Ming Lei

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
