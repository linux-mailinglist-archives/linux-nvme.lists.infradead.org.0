Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5D81C1269
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 14:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmr8lTUVNPCmIJanns4/jSJMYcxvk4vgUjwnKjLt11w=; b=c7pec+fND2sZ2u
	cgX1iBdZvHdkG8+SoJAwbqpILmpqM9XkkRGIkYO4UzPnlbTPRxIHxKgUxmqDEMyVQYKGmdpVImOgJ
	Mnf8ccGlTtqcdA4D+4RQUTLF8JyjrRhbXEVAHSjqqBGDYhKRaSLjUrW8AcpHQvcC4MFPJxmU7lzJC
	jZQyp+EgjPh454rY+TIhtUzra6mkKAnsbbC+MUv+phYoBEAY3rsEbhy2A6cSfz3KAeSvwKRYVgl+p
	b0lErVOCVT2kAxd7Tbl5/vytzzveQFZVtQJ2BCCiWSkyyi5hB4gnp3VZstxsn8j4ndVR2ool+pFp7
	SV1DiW1EvAiA1bMrnzeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUV6m-0001pD-3A; Fri, 01 May 2020 12:49:36 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUV6h-0001oo-UY
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 12:49:33 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7E4A168BFE; Fri,  1 May 2020 14:49:29 +0200 (CEST)
Date: Fri, 1 May 2020 14:49:29 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 1/3] nvme-pci: clear shadow doorbell memory on resets
Message-ID: <20200501124929.GA5197@lst.de>
References: <20200427235243.2268765-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427235243.2268765-1-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_054932_131526_A37DD94F 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 04:52:41PM -0700, Keith Busch wrote:
> The host memory doorbell and event buffers need to be initialized on
> each reset so the driver doesn't observe stale values from the previous
> instantiation.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/pci.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index cf386c84588b..d388fff9c358 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -228,8 +228,11 @@ static int nvme_dbbuf_dma_alloc(struct nvme_dev *dev)
>  {
>  	unsigned int mem_size = nvme_dbbuf_size(dev->db_stride);
>  
> -	if (dev->dbbuf_dbs)
> +	if (dev->dbbuf_dbs) {
> +		memset(dev->dbbuf_dbs, 0, mem_size);
> +		memset(dev->dbbuf_eis, 0, mem_size);
>  		return 0;

Can you throw in a comment why the memory is cleared?


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
