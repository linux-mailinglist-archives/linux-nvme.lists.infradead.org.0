Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60486BBF4
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 13:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ue/Lu2H3bFo2acop6m0HoksKUVIUExoaW4N4eYlZ3ts=; b=mPVOqKVrrPGlbD
	L79N18hHGYo9EUDhn5E8bKA1pBzfVCIaE9lDPtcRibx7xWVo7XGY4ju48lmWOrc7WkosW7HDELIZs
	TqOhJ3BHXDbQQp/aofwDeQe+vkLhiXM4fxW6cQrRkCE1TgdozEESi3flfb0IX1oOZPrdntQN7JhxG
	gUJ9SZ6hlF5ilDJ8prCVXG1KAg6TQjIr+20elamIYpjBaQiMn7U8kedcxJZIwRyCcZ9XJxp+3pyXG
	ldfeOPO6YiIAQHZhoOZWNoNMpie6MYfBX4iBaLpUSMThDUS1hQhClHVWFF9+nweHZHw+BY1Gy/kh6
	kdbBucqR7n7UTxI2pgRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hniW9-0004zq-4e; Wed, 17 Jul 2019 11:54:41 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hniW1-0004yD-CF
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 11:54:34 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so11857432plb.9
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jul 2019 04:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ftsA6SziUzB7mZMqtb+NPTOifNieeCki+4HWoD26B1Y=;
 b=RX5DcqigpBS6JXUlYNzu9cmNMAC2grNOXp9WsR0aK0MCsioAXFeMRSMQHJR2oP1DOv
 uTQp8odiUnxv/zpgKZZn/q9NJ/sGzWV3xfils+WM1YL69MBfwixBwgD5PQl6G+DEDe9p
 AfLe1ruR/2eWKLQBC8yp5Y8mQ5//Z0Cz9PAjMzaXclRWCXSxAKI0xugHegeT/bJ5DFXT
 83h5pYuhgK9CBpf+24Qr3WIsTvlaPdSR84jq7tYki4PP8woT1zPumXvGelaTRPWM6CRJ
 aXeFOZKK+gKOnX7gpveGdh00ggAnBKZqVirZmWkPpls9LytJZ4yFtoNnohPTOHgNMMnv
 9msg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ftsA6SziUzB7mZMqtb+NPTOifNieeCki+4HWoD26B1Y=;
 b=K/NfDGyVPz8Cx4AZG3dTBY4xLWA/cm9EDbiLGhyD98v5JHZ4kU+kO156sMJ9Gg7bfq
 Mb+0EWJtLMEKa9NxzvcvxmDuxVneIF85I52b8Chfuf6vOhovPEp/6L6fbf2Fd8KwodKe
 pIzbocZwB6uJtw3rRKeMkOp0QSkabnxqDycn1XRFg/fNI+TPGyl9Utia8SbJQ3RDltKl
 R3GQEByI23/R3foZLjVOgqKxeQfx0pRI/HmNkzAnaIzXLq0gYINK2j7VJyloZxuxf/QS
 7d/j+/Jv1LnWzi2kLYiDfSL82qsHK+EuSbKLzWDXJimDpx3Pr/26Z1KhN0UReQwD/y7D
 +ODg==
X-Gm-Message-State: APjAAAVi//IFk++dZ/VuJIhlNml++2BZPTk/s8CNpe5lrmtbxESbP5Hx
 ZuJySFCpXfq8jBmG8OYOSck=
X-Google-Smtp-Source: APXvYqzO02oaG99jKfNVRblZVE5ffaRzjKmORg3MYGOu0u9fYxYJwDy/w8tVgyvu/Y2NMOte7qvNvw==
X-Received: by 2002:a17:902:ea:: with SMTP id
 a97mr42227799pla.182.1563364472811; 
 Wed, 17 Jul 2019 04:54:32 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k8sm24242905pgm.14.2019.07.17.04.54.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 17 Jul 2019 04:54:32 -0700 (PDT)
Date: Wed, 17 Jul 2019 20:54:29 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v2 3/3] nvme-pci: Add support for Apple 2018+ models
Message-ID: <20190717115429.GC10495@minwoo-desktop>
References: <20190717004527.30363-1-benh@kernel.crashing.org>
 <20190717004527.30363-3-benh@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717004527.30363-3-benh@kernel.crashing.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_045433_422634_2A1ED607 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-17 10:45:27, Benjamin Herrenschmidt wrote:
> Based on reverse engineering and original patch by
> 
> Paul Pawlowski <paul@mrarm.io>
> 
> This adds support for Apple weird implementation of NVME in their
> 2018 or later machines. It accounts for the twice-as-big SQ entries
> for the IO queues, and the fact that only interrupt vector 0 appears
> to function properly.
> 
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> 
> # Conflicts:
> #	drivers/nvme/host/core.c
> ---
>  drivers/nvme/host/nvme.h | 10 ++++++++++
>  drivers/nvme/host/pci.c  | 21 ++++++++++++++++++++-
>  2 files changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 716a876119c8..ced0e0a7e039 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -92,6 +92,16 @@ enum nvme_quirks {
>  	 * Broken Write Zeroes.
>  	 */
>  	NVME_QUIRK_DISABLE_WRITE_ZEROES		= (1 << 9),
> +
> +	/*
> +	 * Use only one interrupt vector for all queues
> +	 */
> +	NVME_QUIRK_SINGLE_VECTOR		= (1 << 10),
> +
> +	/*
> +	 * Use non-standard 128 bytes SQEs.
> +	 */
> +	NVME_QUIRK_128_BYTES_SQES		= (1 << 11),
>  };
>  
>  /*
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 1637677afb78..7088971d4c42 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2081,6 +2081,13 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
>  	dev->io_queues[HCTX_TYPE_DEFAULT] = 1;
>  	dev->io_queues[HCTX_TYPE_READ] = 0;
>  
> +	/*
> +	 * Some Apple controllers require all queues to use the
> +	 * first vector.
> +	 */
> +	if (dev->ctrl.quirks & NVME_QUIRK_SINGLE_VECTOR)
> +		irq_queues = 1;
> +
>  	return pci_alloc_irq_vectors_affinity(pdev, 1, irq_queues,
>  			      PCI_IRQ_ALL_TYPES | PCI_IRQ_AFFINITY, &affd);
>  }
> @@ -2322,7 +2329,16 @@ static int nvme_pci_enable(struct nvme_dev *dev)
>  				io_queue_depth);
>  	dev->db_stride = 1 << NVME_CAP_STRIDE(dev->ctrl.cap);
>  	dev->dbs = dev->bar + 4096;
> -	dev->io_sqes = NVME_NVM_IOSQES;
> +
> +	/*
> +	 * Some Apple controllers require a non-standard SQE size.
> +	 * Interestingly they also seem to ignore the CC:IOSQES register
> +	 * so we don't bother updating it here.
> +	 */

That is really interesting.

This also looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
