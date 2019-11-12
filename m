Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EADEF95C4
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 17:37:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zg8rvzJNOQgzPefkIAoMjqtGcq+ohq9maHg/gE2EWSE=; b=d7bXl/NZMLWD4y
	CzrXEQPWZqd9YBOeujpVsyIr8BIQOxfDmsgk7j36ng56VtIpY0UQDfKIPO7Sn7Kuuj7dIHpTdCuQT
	Tx633HBlisS+skOAVK9rixzpyXoZhTmEgU5kTGxgZGky8EGD3csr7klEFFK6bs3NOyomswydeN/tR
	FOdwVkX7fE5zCXIrAO1563acH1vu2/rMN66b1brVHrhsEWLalB0SkqxS7Dwg35/4yy2FRj8Hs0Law
	JX37K9Rs7qVLNlUjb01jf0tmhOCeyfSePs2TYx+BMmQSPqHRBYdfPEz0YRe8Js3xcFSWFc/MNe4b4
	m1Xvlj7D5KcDe18NPrew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZAo-0007DE-Jt; Tue, 12 Nov 2019 16:37:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZAi-0007Cf-Rx
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 16:37:42 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABE842067B;
 Tue, 12 Nov 2019 16:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573576660;
 bh=kvXrvgQp2J9jrwEyG4RS+sRVfHFZ22UD2CEegrD8/Oc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MQvxCU9kqvWo8CgyrPSFd+QdStgLwfIf3sAsEKO7fU4Q3oJm4qWjTfcSZNoaeiaKn
 v81G19ZIvrDIDvg+stxnfmYB3h8R/xaTqu5VUpSruSx5J6/zWukSeVfXUnOGRmjr5E
 1fplUfMxzEbWli6Gloit4XAcC1r4JHWPN8Xpz62o=
Date: Wed, 13 Nov 2019 01:37:34 +0900
From: Keith Busch <kbusch@kernel.org>
To: Eduard Hasenleithner <eduard@hasenleithner.at>
Subject: Re: [PATCH v3] Workaround for discard on non-conformant nvme devices
Message-ID: <20191112163734.GA29135@redsun51.ssa.fujisawa.hgst.com>
References: <aa716b06-6e9a-f668-49b4-4007bd3bffae@hasenleithner.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa716b06-6e9a-f668-49b4-4007bd3bffae@hasenleithner.at>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_083740_947066_27BCBFF5 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 11:07:43PM +0100, Eduard Hasenleithner wrote:
> @@ -3012,12 +3012,28 @@ static const struct pci_device_id nvme_i
>  				NVME_QUIRK_DEALLOCATE_ZEROES, },
>  	{ PCI_VDEVICE(INTEL, 0xf1a5),	/* Intel 600P/P3100 */
>  		.driver_data = NVME_QUIRK_NO_DEEPEST_PS |
> -				NVME_QUIRK_MEDIUM_PRIO_SQ },
> +				NVME_QUIRK_MEDIUM_PRIO_SQ |
> +				NVME_QUIRK_DSM_PAGEALIGN, },
>  	{ PCI_VDEVICE(INTEL, 0xf1a6),	/* Intel 760p/Pro 7600p */
> -		.driver_data = NVME_QUIRK_IGNORE_DEV_SUBNQN, },
> +		.driver_data = NVME_QUIRK_IGNORE_DEV_SUBNQN |
> +				NVME_QUIRK_DSM_PAGEALIGN, },
> +	{ PCI_VDEVICE(INTEL, 0xf1a8),	/* Intel 660p */
> +		.driver_data = NVME_QUIRK_DSM_PAGEALIGN, },
>  	{ PCI_VDEVICE(INTEL, 0x5845),	/* Qemu emulated controller */
>  		.driver_data = NVME_QUIRK_IDENTIFY_CNS |
>  				NVME_QUIRK_DISABLE_WRITE_ZEROES, },
> +	{ PCI_DEVICE(0x126f, 0x2260),   /* Silicon Motion SM2260 */
> +		.driver_data = NVME_QUIRK_DSM_PAGEALIGN, },
> +	{ PCI_DEVICE(0x126f, 0x2262),   /* Silicon Motion SM2262 */
> +		.driver_data = NVME_QUIRK_DSM_PAGEALIGN, },
> +	{ PCI_DEVICE(0x126f, 0x2263),   /* Silicon Motion SM2263 */
> +		.driver_data = NVME_QUIRK_DSM_PAGEALIGN, },
> +	{ PCI_DEVICE(0x126f, 0x2265),   /* Silicon Motion SM2265 */
> +		.driver_data = NVME_QUIRK_DSM_PAGEALIGN, },
> +	{ PCI_DEVICE(0x1987, 0x5012),   /* Phison E12 */
> +		.driver_data = NVME_QUIRK_DSM_PAGEALIGN, },
> +	{ PCI_DEVICE(0x1987, 0x5016),   /* Phison E16 */
> +		.driver_data = NVME_QUIRK_DSM_PAGEALIGN, },
>  	{ PCI_DEVICE(0x1bb1, 0x0100),   /* Seagate Nytro Flash Storage */
>  		.driver_data = NVME_QUIRK_DELAY_BEFORE_CHK_RDY, },
>  	{ PCI_DEVICE(0x1c58, 0x0003),	/* HGST adapter */
> @@ -3038,6 +3054,8 @@ static const struct pci_device_id nvme_i
>  		.driver_data = NVME_QUIRK_LIGHTNVM, },
>  	{ PCI_DEVICE(0x10ec, 0x5762),   /* ADATA SX6000LNP */
>  		.driver_data = NVME_QUIRK_IGNORE_DEV_SUBNQN, },
> +	{ PCI_DEVICE(0xc0a9, 0x2263),   /* Crucial P1 (SM2263) */
> +		.driver_data = NVME_QUIRK_DSM_PAGEALIGN, },
>  	{ PCI_DEVICE_CLASS(PCI_CLASS_STORAGE_EXPRESS, 0xffffff) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2001) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },

I've done a little more digging on who uses these SM22XX, and this list
is incomplete, and would unlikely ever be complete. So on second thought,
you had the right idea initially to just default to a known safe size,
otherwise we'll be chasing this issue for a while.

Let's revisit your original proposal:

> +++ drivers/nvme/host/core.c	2019-11-04 22:05:54.409415849 +0100
> @@ -561,9 +561,9 @@ static blk_status_t nvme_setup_discard(s
>  	unsigned short segments = blk_rq_nr_discard_segments(req), n = 0;
>  	struct nvme_dsm_range *range;
>  	struct bio *bio;
>+	size_t aligned_size = round_up(sizeof *range * segments, 4096);

The max range defined by spec is 256 ranges by virtue of being an 8-byte
value, we can just hard-code 256 * sizeof(struct nvme_dsm_range) being
4k as the allocation size, or just use ctrl->page_size.

>
>-	range = kmalloc_array(segments, sizeof(*range),
>-				GFP_ATOMIC | __GFP_NOWARN);
>+	range = kmalloc(aligned_size, GFP_ATOMIC | __GFP_NOWARN);

Use kzalloc() since we're only going to fill in a partial of the
allocated memory.

Finally, be sure to update req->special_vec.bv_len to ctrl->page_size as
well. This will ensure the driver maps PRP2 in case the allocation has an
offset. The address is usually aligned, but that's not always true.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
