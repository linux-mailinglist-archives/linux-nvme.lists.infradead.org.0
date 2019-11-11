Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3355DF8303
	for <lists+linux-nvme@lfdr.de>; Mon, 11 Nov 2019 23:37:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6o+r1CK2z/ZgFzbz3yPZBfE1/pt2lVtuE+/MmdC9+g=; b=tZGe6BPMUl/ZtC
	BTbM0l+oLe3+JLzwnDdnSgjnQm4K2hLotSqwFwxo8ovf9JIw1wfzOGJadims5407iFXe+01EEHcsX
	eehvyRv+6ZYONy8iErZC8gdbX3KUbEbd2RbQL32CTnUQrDW3FNPqfyt9vGKm/miyHuPXMpiev+zio
	z60ECZAyalSmbU7pUl9qqkDPTxAXDnFJTHVypoHKJ89yc+YwysHg/4tXDDAEegysKLqz1Xeknejt8
	JVQKavPI9azuuZLbdKSdUYTGgm4BHWSNHhcAsM/ifdgsSdl8dffweL3ixuG+2xl3nGE7rUiQAI9I1
	woGhoNxfzTVuZicd1lsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUIJE-0005NV-VO; Mon, 11 Nov 2019 22:37:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUIJA-0005NB-Fp
 for linux-nvme@lists.infradead.org; Mon, 11 Nov 2019 22:37:17 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A119E206A3;
 Mon, 11 Nov 2019 22:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573511834;
 bh=Fh5EecFzbTAB6p8Q+FUf05P7x49zJelb5kKR099UxK8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0z2m27CR11/cKfM3IXV3hqcs7txzO+qRfqaMlJdovyiVpRIGYM8UwCwMgpzHr4xta
 7MMmJCUDwlt+FUSeq2k5xTJRIqs+9GA0XS2i+aK9ZvUrlmL74aAiOykSnaMaIUrikL
 5O+XS/lj7Os0A5qNSd3JYfxMX9Ih47o3UqGBAwjk=
Date: Tue, 12 Nov 2019 07:37:07 +0900
From: Keith Busch <kbusch@kernel.org>
To: Eduard Hasenleithner <eduard@hasenleithner.at>
Subject: Re: [PATCH v3] Workaround for discard on non-conformant nvme devices
Message-ID: <20191111223707.GA7595@redsun51.ssa.fujisawa.hgst.com>
References: <aa716b06-6e9a-f668-49b4-4007bd3bffae@hasenleithner.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa716b06-6e9a-f668-49b4-4007bd3bffae@hasenleithner.at>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_143716_548697_F1B65E41 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
>
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

Aha, I'm seeing a pattern here: SMI makes the controllers for at least
8 of the 10 needing this behavior.

Patch looks fine to me. I'll give this a short time to see if there's
additional comments before committing for the next merge window.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
