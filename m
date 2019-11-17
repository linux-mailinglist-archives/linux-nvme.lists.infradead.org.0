Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EBCFFABA
	for <lists+linux-nvme@lfdr.de>; Sun, 17 Nov 2019 17:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBvZUqGXQ62DGgngu467vBzn1u6p6/CivZqMzI9PEhc=; b=oGmCVH0iaFZ2yw
	sQgbxGVkyZHhN2jQ+g2cl0J0i9zz5PYigjkYCBr47q+EQY4BL4cok6xEh3ctdBcJcZCBiWVQeLZJr
	ExMLsmdT2QIz/4P6JxKSrZmkVQG3HrrBAQMrIdQRVt7eAl9XKl+/ZnlMoX5ZCZgnDX23M9ccEvadN
	trH3K40EkUsNyNTFjcHwV+ovbnT+21/2wgimKorE5QQrlbxa69qhPzrFB+cGEhq3jdwdGRHwHEIRn
	/Z5Wf4V616dSNRVF/6lKkLbO+N+Ck3f4uMW2zL5uud9bVbHySDUWY8POQoKLn6ud3KeEGAbNffXCw
	MVJTlFaddMjzrfE7Rpdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWNIG-00071a-3G; Sun, 17 Nov 2019 16:20:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWNIB-00070y-QY
 for linux-nvme@lists.infradead.org; Sun, 17 Nov 2019 16:20:53 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A651620700;
 Sun, 17 Nov 2019 16:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574007650;
 bh=Yufnt2ARnU8qngrikuB/q9ldKmwkDzb11j4c6BI8Hlw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wLsKdkNgdlj21oHTi97rJ6B2jguCyQQQzndLRoUElBMqZG/RqomqzfkNVVqPvW23r
 85hYEIvaZDLW8TcOtZyIrf7D1lDh5zluC+ehNuVuyAhrFvUjIFbQUJwJkKmM97qtKv
 egRZGS0GK9Qz++E97UlOGEsP5UGEiojFT5tTqTro=
Date: Sun, 17 Nov 2019 09:20:48 -0700
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvmet: add another maintainer
Message-ID: <20191117162047.GA15623@keith-busch>
References: <20191116175038.6105-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191116175038.6105-1-hch@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_082051_885258_92E006AD 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: chaitanya.kulkarni@wdc.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Nov 16, 2019 at 06:50:38PM +0100, Christoph Hellwig wrote:
> Sagi and I have been pretty busy lately, and Chaitanya has been
> helping a lot with target work and agreed to share the load.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 55199ef7fa74..1e9439377485 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11633,6 +11633,7 @@ F:	drivers/nvme/target/fcloop.c
>  NVM EXPRESS TARGET DRIVER
>  M:	Christoph Hellwig <hch@lst.de>
>  M:	Sagi Grimberg <sagi@grimberg.me>
> +M:	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com
>  L:	linux-nvme@lists.infradead.org
>  T:	git://git.infradead.org/nvme.git
>  W:	http://git.infradead.org/nvme.git

Thank you, Chaitanya! Patch applied to nvme-5.5.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
