Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09E6B065D
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Sep 2019 03:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w78FrfZPa1FzpapXxivsdmmtQVx32rbh9phMBOYrmMU=; b=bX3WSO2KBrl/Jb
	WpG59ackV4XF32JWE9nVLUvCrEbd0dn5gBOJnnhqOG7CUlRMzjHAUSencReZEW24jxSTkdy13jUHq
	yYfDXhWPMf+NqUXKYvgFA+QHeV1G4HuFzpFFInhkjr/7r3dabnGfGJ9FzSqFz5TeSkmFeWX577A/A
	9jjjw+k1lsYwiCzuMd+4ISQUd6ick7z/nkpgojx5xTFxXauGIdqmaevfThk1wqgQOq+QLkZIXRbEw
	4ZNmkvqibQenQ8NvTGT9ENmQ+r3LLBmo5rhYGUV8clRY50zgpQUzCA8HfSuFZitSiyIrscL19OJ2x
	8M78eJk9wTNj6yJKm4XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8DW4-00013e-Rd; Thu, 12 Sep 2019 01:03:21 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8DVv-00012x-MS
 for linux-nvme@lists.infradead.org; Thu, 12 Sep 2019 01:03:13 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E1CB03084242;
 Thu, 12 Sep 2019 01:03:09 +0000 (UTC)
Received: from ming.t460p (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BAA261001958;
 Thu, 12 Sep 2019 01:03:01 +0000 (UTC)
Date: Thu, 12 Sep 2019 09:02:57 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 10/15] nvme-pci: do not build a scatterlist to map metadata
Message-ID: <20190912010256.GB2731@ming.t460p>
References: <20190321231037.25104-1-hch@lst.de>
 <20190321231037.25104-11-hch@lst.de>
 <20190828092057.GA15524@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828092057.GA15524@ming.t460p>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Thu, 12 Sep 2019 01:03:10 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_180311_776351_4AB78860 
X-CRM114-Status: GOOD (  23.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Gopal Tiwari <gtiwari@redhat.com>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, dmilburn@redhat.com, linux-block@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 05:20:57PM +0800, Ming Lei wrote:
> On Thu, Mar 21, 2019 at 04:10:32PM -0700, Christoph Hellwig wrote:
> > We always have exactly one segment, so we can simply call dma_map_bvec.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  drivers/nvme/host/pci.c | 23 ++++++++++-------------
> >  1 file changed, 10 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index bc4ee869fe82..a7dad24e0406 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -221,7 +221,7 @@ struct nvme_iod {
> >  	int npages;		/* In the PRP list. 0 means small pool in use */
> >  	int nents;		/* Used in scatterlist */
> >  	dma_addr_t first_dma;
> > -	struct scatterlist meta_sg; /* metadata requires single contiguous buffer */
> > +	dma_addr_t meta_dma;
> >  	struct scatterlist *sg;
> >  	struct scatterlist inline_sg[0];
> >  };
> > @@ -592,13 +592,16 @@ static void nvme_unmap_data(struct nvme_dev *dev, struct request *req)
> >  	dma_addr_t dma_addr = iod->first_dma, next_dma_addr;
> >  	int i;
> >  
> > +	if (blk_integrity_rq(req)) {
> > +		dma_unmap_page(dev->dev, iod->meta_dma,
> > +				rq_integrity_vec(req)->bv_len, dma_dir);
> > +	}
> > +
> >  	if (iod->nents) {
> >  		/* P2PDMA requests do not need to be unmapped */
> >  		if (!is_pci_p2pdma_page(sg_page(iod->sg)))
> >  			dma_unmap_sg(dev->dev, iod->sg, iod->nents, dma_dir);
> >  
> > -		if (blk_integrity_rq(req))
> > -			dma_unmap_sg(dev->dev, &iod->meta_sg, 1, dma_dir);
> >  	}
> >  
> >  	if (iod->npages == 0)
> > @@ -861,17 +864,11 @@ static blk_status_t nvme_map_data(struct nvme_dev *dev, struct request *req,
> >  
> >  	ret = BLK_STS_IOERR;
> >  	if (blk_integrity_rq(req)) {
> > -		if (blk_rq_count_integrity_sg(q, req->bio) != 1)
> > -			goto out;
> > -
> > -		sg_init_table(&iod->meta_sg, 1);
> > -		if (blk_rq_map_integrity_sg(q, req->bio, &iod->meta_sg) != 1)
> > -			goto out;
> > -
> > -		if (!dma_map_sg(dev->dev, &iod->meta_sg, 1, dma_dir))
> > +		iod->meta_dma = dma_map_bvec(dev->dev, rq_integrity_vec(req),
> > +				dma_dir, 0);
> 
> Hi Christoph,
> 
> When one bio is enough big, the generated integrity data could cross
> more than one pages even though the data is still in single segment.
> 
> However, we don't convert to multi-page bvec for bio_integrity_prep(),
> and each page may consume one bvec, so is it possible for this patch to
> cause issues in case of NVMe's protection? Since this patch supposes
> that there is only one bvec for integrity data.
> 
> BTW, not see such kind of report, just a concern in theory.

Hello Christoph,

Gently ping...


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
