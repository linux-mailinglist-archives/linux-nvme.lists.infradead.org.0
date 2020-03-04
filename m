Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2541794AC
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Mar 2020 17:13:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvAgedzCPRuwO6FdKDyGWA/ZhsdzEohJmyjvwYE7+hE=; b=QJsDVj5rK4Ug6t
	c+Q8SSEr4WuJ1fgoVhsWJ0nFX9bNAIBAbPbrO5Zv/UoqmTs1by8U2VTFyhsIUOn5wy9L7mmOUeu9Q
	gfU639IrlqiU7pbBgbvbOtILliZVBb6PQLxFiP5F6Zokzh/L2Trb/nYA50QPodQmwMFV6iPlr/Chc
	aXABRK5rgSsl48HvOy2LyUAZsRZFJE7APRiWUgSYDQRTQApgXbK9xfjLMGqVBmOYrYgqSDFioksCE
	vkjQFDL3Jj2w1KYo4pcWzezEglatwfPwAx5VGdBpMoDQXF1okbkVaz0hEPst9UcaE9Jz6rYWOSoZ+
	7gku9vcwjrx+pI/g4u1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9WeF-0002aE-LK; Wed, 04 Mar 2020 16:13:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9We8-0002Zh-Vy
 for linux-nvme@lists.infradead.org; Wed, 04 Mar 2020 16:13:22 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id EB22768B20; Wed,  4 Mar 2020 17:13:17 +0100 (CET)
Date: Wed, 4 Mar 2020 17:13:17 +0100
From: Christoph Hellwig <hch@lst.de>
To: masahiro31.yamada@kioxia.com
Subject: Re: [PATCH] nvme: add a compat_ioctl handler for NVME_IOCTL_SUBMIT_IO
Message-ID: <20200304161317.GA11268@lst.de>
References: <c0d7091c43154d9ea7a978c42a78b01a@TGXML281.toshiba.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0d7091c43154d9ea7a978c42a78b01a@TGXML281.toshiba.local>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_081321_183632_B4ECB39E 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +static int nvme_compat_ioctl(struct block_device *bdev, fmode_t mode,
> +		unsigned int cmd, unsigned long arg)
> +{
> +	if (cmd == NVME_IOCTL_SUBMIT_IO32)
> +		return nvme_ioctl(bdev, mode, NVME_IOCTL_SUBMIT_IO, arg);

I think this really need a comment explaining what is going on, including
why not translating anything works in this specific case.

> +
> +	return nvme_ioctl(bdev, mode, cmd, arg);
> +}

This function should also be under CONFIG_COMPAT, with a

#define nvme_compat_ioctl	NULL

in the #else branch.

> index d99b5a772698..52699a26b9b3 100644
> --- a/include/uapi/linux/nvme_ioctl.h
> +++ b/include/uapi/linux/nvme_ioctl.h
> @@ -24,6 +24,21 @@ struct nvme_user_io {
>  	__u16	appmask;
>  };
>  
> +struct nvme_user_io32 {
> +	__u8	opcode;
> +	__u8	flags;
> +	__u16	control;
> +	__u16	nblocks;
> +	__u16	rsvd;
> +	__u64	metadata;
> +	__u64	addr;
> +	__u64	slba;
> +	__u32	dsmgmt;
> +	__u32	reftag;
> +	__u16	apptag;
> +	__u16	appmask;
> +} __attribute__((packed));

This should not be exposed in the UAPI header.  I think it should just
go into the #ifdef CONFIG_COMPAT block in core.c near the comment and
the compat_ioctl handler.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
