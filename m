Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD39218BDEA
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Mar 2020 18:24:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bc7EIO5ypZ+GrgtgxB/IJJPDoA7jV4oczZwf3pWW/vY=; b=s07FKTRr2HdulB
	8ifcwlHuit2j/90cEeC1p+8B6ov4EhWRqdhQ1wRX8TJF0rZRPXiMDSQWL80xT0aSL/8wqyZeUA8y5
	8jMkQdRy7zMn9u7xCpC2J/d1EFmj0O7ZRUhVkHFp2nqwsb20fFY5xNIZ0HjlH79i7JP+C8arTe9+u
	TRNwBXs2xo6nyUEgSyrWdkzewA3CFNPaY7lrrC9Ty4ZYpgAgOY1dDBamHMhV5JUh17W+PEwjrkhoO
	I+lm1DTEwUQDdAkciJZNklIQ1hhxVv5ksj5C12hiAVqwFgfdyhm3B8aatXe+mNgOJPuTiW4FN3yZD
	vc0wYPB4q/ZfszhvrrqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEyuD-0000Gg-Gz; Thu, 19 Mar 2020 17:24:29 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEyu7-0000Fd-LM
 for linux-nvme@lists.infradead.org; Thu, 19 Mar 2020 17:24:25 +0000
Received: from localhost (mehrangarh.blr.asicdesigners.com [10.193.185.169])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id 02JHNfTL014998;
 Thu, 19 Mar 2020 10:23:42 -0700
Date: Thu, 19 Mar 2020 22:53:40 +0530
From: Potnuri Bharat Teja <bharat@chelsio.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvmet: fix dsm failure when payload does not match sgl
 descriptor
Message-ID: <20200319172339.GA29063@chelsio.com>
References: <20200124173942.2744-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124173942.2744-1-sagi@grimberg.me>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_102423_796632_484CC6B2 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [12.32.117.8 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <kbusch@kernel.org>, Dakshaja Uppalapati <dakshaja@chelsio.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Friday, January 01/24/20, 2020 at 23:09:42 +0530, Sagi Grimberg wrote:
> The host is allowed to pass the controller an sgl describing a buffer
> that is larger than the dsm payload itself, allow it when executing
> dsm.
> 
> Reported-by: Dakshaja Uppalapati <dakshaja@chelsio.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---

Hi Sagi,
I see this issue with 5.4 stable kernels. Can this be pushed to 5.4 stable?

Thanks.
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
> +
>  int nvmet_req_alloc_sgl(struct nvmet_req *req)
>  {
>  	struct pci_dev *p2p_dev = NULL;
> diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
> index b6fca0e421ef..ea0e596be15d 100644
> --- a/drivers/nvme/target/io-cmd-bdev.c
> +++ b/drivers/nvme/target/io-cmd-bdev.c
> @@ -280,7 +280,7 @@ static void nvmet_bdev_execute_discard(struct nvmet_req *req)
>  
>  static void nvmet_bdev_execute_dsm(struct nvmet_req *req)
>  {
> -	if (!nvmet_check_data_len(req, nvmet_dsm_len(req)))
> +	if (!nvmet_check_data_len_lte(req, nvmet_dsm_len(req)))
>  		return;
>  
>  	switch (le32_to_cpu(req->cmd->dsm.attributes)) {
> diff --git a/drivers/nvme/target/io-cmd-file.c b/drivers/nvme/target/io-cmd-file.c
> index caebfce06605..cd5670b83118 100644
> --- a/drivers/nvme/target/io-cmd-file.c
> +++ b/drivers/nvme/target/io-cmd-file.c
> @@ -336,7 +336,7 @@ static void nvmet_file_dsm_work(struct work_struct *w)
>  
>  static void nvmet_file_execute_dsm(struct nvmet_req *req)
>  {
> -	if (!nvmet_check_data_len(req, nvmet_dsm_len(req)))
> +	if (!nvmet_check_data_len_lte(req, nvmet_dsm_len(req)))
>  		return;
>  	INIT_WORK(&req->f.work, nvmet_file_dsm_work);
>  	schedule_work(&req->f.work);
> diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
> index 46df45e837c9..eda28b22a2c8 100644
> --- a/drivers/nvme/target/nvmet.h
> +++ b/drivers/nvme/target/nvmet.h
> @@ -374,6 +374,7 @@ bool nvmet_req_init(struct nvmet_req *req, struct nvmet_cq *cq,
>  		struct nvmet_sq *sq, const struct nvmet_fabrics_ops *ops);
>  void nvmet_req_uninit(struct nvmet_req *req);
>  bool nvmet_check_data_len(struct nvmet_req *req, size_t data_len);
> +bool nvmet_check_data_len_lte(struct nvmet_req *req, size_t data_len);
>  void nvmet_req_complete(struct nvmet_req *req, u16 status);
>  int nvmet_req_alloc_sgl(struct nvmet_req *req);
>  void nvmet_req_free_sgl(struct nvmet_req *req);
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-nvme mailing list
> linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
