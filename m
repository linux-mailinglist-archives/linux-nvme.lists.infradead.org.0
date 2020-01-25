Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8421497EB
	for <lists+linux-nvme@lfdr.de>; Sat, 25 Jan 2020 22:24:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+mQCm5PqiUgNQisG5h49wjXYb2hcZmHZUDZPit+R2M=; b=owRtQ71kFn1oxz
	VdCs/ScFX8p0L0ImQtQmLNh4M0Lj4usMYL/W6l1eLTK012NQiCXnw5UmaxSzX/HRGXwQxpT39COUf
	NFw4a3EMoM8eFlR1650xGQ1spA4tHtNXJ5rsbw/URkSq5H55I6tvmfTTWJ3b3KO6M8shrPJ5LSbSK
	KK6/VtYva1eXbxqeQlBlBInQnVniKu1sXJO4x2w/U2ut2iLkuSScvJk8wY7BQxu2cIFBxvLCKGjQv
	b73jCi090J3EiX4ceJwZwCmX5LfqnQ+LbMTkC6yQVY8eKwt77f4slOcXe5TgRMUUZeEYnP6ggYJtX
	o3wNlr4+FWADV4WbKPXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivSuT-0006vV-CM; Sat, 25 Jan 2020 21:24:05 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivSuN-0006uf-CZ
 for linux-nvme@lists.infradead.org; Sat, 25 Jan 2020 21:24:01 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3A8C668BFE; Sat, 25 Jan 2020 22:23:52 +0100 (CET)
Date: Sat, 25 Jan 2020 22:23:52 +0100
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvmet: fix dsm failure when payload does not match sgl
 descriptor
Message-ID: <20200125212352.GA5407@lst.de>
References: <20200124173942.2744-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124173942.2744-1-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_132359_579342_51829CFF 
X-CRM114-Status: GOOD (  14.86  )
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
Cc: Keith Busch <kbusch@kernel.org>, Dakshaja Uppalapati <dakshaja@chelsio.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 09:39:42AM -0800, Sagi Grimberg wrote:
> The host is allowed to pass the controller an sgl describing a buffer
> that is larger than the dsm payload itself, allow it when executing
> dsm.
> 
> Reported-by: Dakshaja Uppalapati <dakshaja@chelsio.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/nvme/target/core.c        | 12 ++++++++++++
>  drivers/nvme/target/io-cmd-bdev.c |  2 +-
>  drivers/nvme/target/io-cmd-file.c |  2 +-
>  drivers/nvme/target/nvmet.h       |  1 +
>  4 files changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
> index 28438b833c1b..9217c824620f 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -938,6 +938,18 @@ bool nvmet_check_data_len(struct nvmet_req *req, size_t data_len)
>  }
>  EXPORT_SYMBOL_GPL(nvmet_check_data_len);
>  
> +bool nvmet_check_data_len_lte(struct nvmet_req *req, size_t data_len)
> +{
> +	if (unlikely(data_len > req->transfer_len)) {
> +		req->error_loc = offsetof(struct nvme_common_command, dptr);
> +		nvmet_req_complete(req, NVME_SC_SGL_INVALID_DATA | NVME_SC_DNR);
> +		return false;
> +	}
> +
> +	return true;
> +}
> +EXPORT_SYMBOL_GPL(nvmet_check_data_len_lte);

Why would this need an export??

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
