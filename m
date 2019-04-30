Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D475FB3A
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 16:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhHjw+HEzoMr37TXhExhsUlqsYA+/JFFHUc6138ehOM=; b=ummlcrzCOU9NnZ
	gK5lCUmVmW/vIAGimAFY9cTvFOgNnjP/6EM/MFhMf3LWZ0/mgZdo5O4TNkJJviOaKv+0mNf0S4yak
	3UmDItuCXyMO6oT8MtQl2TyavMqBVBXkvuQ3oMdPVNP5iL1dSCkcVG/WWqg9G9rNls5/8GRVEx+c4
	ih+vQFDsKOYUz4iGM9AK84Fvswv+ZXiWHC/aKHb6EumxvvyV01wwZVwAqZ99P0FqXEivdihDl+UR3
	jc8ppxoz774WmNX2Onp3zgoV7/4gzQ5CHDoUeTzazIalKprHXBYx9UrMpHsuO35B5xIlHivJNsZ5S
	66JiTe4gGjD6p2jMjp4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLTZj-00049K-J2; Tue, 30 Apr 2019 14:17:39 +0000
Received: from charlie.dont.surf ([128.199.63.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLTZd-00048u-PS
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 14:17:35 +0000
Received: from apples.localdomain (77.241.131.189.mobile.3.dk [77.241.131.189])
 by charlie.dont.surf (Postfix) with ESMTPSA id 581F5BF5B7;
 Tue, 30 Apr 2019 14:17:28 +0000 (UTC)
Date: Tue, 30 Apr 2019 16:17:22 +0200
From: Klaus Birkelund <klaus@birkelund.eu>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 14/15] nvme-pci: optimize mapping single segment requests
 using SGLs
Message-ID: <20190430141722.GA19100@apples.localdomain>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@fb.com>,
 Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org
References: <20190321231037.25104-1-hch@lst.de>
 <20190321231037.25104-15-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190321231037.25104-15-hch@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_071733_966438_6F5FE20D 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <keith.busch@intel.com>,
 linux-block@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Mar 21, 2019 at 04:10:36PM -0700, Christoph Hellwig wrote:
> If the controller supports SGLs we can take another short cut for single
> segment request, given that we can always map those without another
> indirection structure, and thus don't need to create a scatterlist
> structure.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/nvme/host/pci.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 47fc4d653961..38869f59c296 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -819,6 +819,23 @@ static blk_status_t nvme_setup_prp_simple(struct nvme_dev *dev,
>  	return 0;
>  }
>  
> +static blk_status_t nvme_setup_sgl_simple(struct nvme_dev *dev,
> +		struct request *req, struct nvme_rw_command *cmnd,
> +		struct bio_vec *bv)
> +{
> +	struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
> +
> +	iod->first_dma = dma_map_bvec(dev->dev, bv, rq_dma_dir(req), 0);
> +	if (dma_mapping_error(dev->dev, iod->first_dma))
> +		return BLK_STS_RESOURCE;
> +	iod->dma_len = bv->bv_len;
> +
> +	cmnd->dptr.sgl.addr = cpu_to_le64(iod->first_dma);
> +	cmnd->dptr.sgl.length = cpu_to_le32(iod->dma_len);
> +	cmnd->dptr.sgl.type = NVME_SGL_FMT_DATA_DESC << 4;
> +	return 0;
> +}
> +
>  static blk_status_t nvme_map_data(struct nvme_dev *dev, struct request *req,
>  		struct nvme_command *cmnd)
>  {
> @@ -836,6 +853,11 @@ static blk_status_t nvme_map_data(struct nvme_dev *dev, struct request *req,
>  			if (bv.bv_offset + bv.bv_len <= dev->ctrl.page_size * 2)
>  				return nvme_setup_prp_simple(dev, req,
>  							     &cmnd->rw, &bv);
> +
> +			if (iod->nvmeq->qid &&
> +			    dev->ctrl.sgls & ((1 << 0) | (1 << 1)))
> +				return nvme_setup_sgl_simple(dev, req,
> +							     &cmnd->rw, &bv);
>  		}
>  	}
>  
> -- 
> 2.20.1
> 

Hi Christoph,

nvme_setup_sgl_simple does not set the PSDT field, so bypassing
nvme_pci_setup_sgls causing controllers to assume PRP.

Adding `cmnd->flags = NVME_CMD_SGL_METABUF` in nvme_setup_sgl_simple
fixes the issue.


-- 
Klaus

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
