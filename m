Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F5F6C9DA
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 09:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAHeZLWn76NbNGI1+w+qJFjLtEXl4FrUnthK1PZr52k=; b=RD+e/TFnV3X1m/
	qyKrc6Exq3Evir5d6KZ2TzBs4M8oL/modJjBWW+NOeKyKF61U8DE4oQFhoyZBlonDFjGwPCF/Pjod
	XvSI3JMpbdX6+vBJ2kc54E5NqDG1eyyQFLHjwaOxi/olCxsDzypPMCEhNBdIGSn9Edph82yVoirR6
	FOjbDu6UcZtRQ1SwdpN3HXv1Pd5csUVlZbBAhmPMdILpSvTHq98MmIIxd2xBbgd0u6Wlmz0DXvXh+
	VT3eOeHR7XupVLsqNGebvWzyJxuP2h5wrnH1uBdavy7tqBIJnn3NljEs6OePkou0c2hioCnbFJfwl
	g/+pSnVdpBcu0qI4iWSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho0eu-0001u0-Qd; Thu, 18 Jul 2019 07:16:57 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho0ek-0001tW-Pm
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 07:16:48 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6I7GcDE009351;
 Thu, 18 Jul 2019 02:16:38 -0500
Message-ID: <f6dca0a974f76876e4ed8eadf2fc189418aab590.camel@kernel.crashing.org>
Subject: Re: [PATCH] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme@lists.infradead.org
Date: Thu, 18 Jul 2019 17:16:37 +1000
In-Reply-To: <ee80e26d2eda385a709d749e5f0ec9e42b442090.camel@kernel.crashing.org>
References: <20190717004527.30363-1-benh@kernel.crashing.org>
 <20190717004527.30363-2-benh@kernel.crashing.org>
 <20190717115145.GB10495@minwoo-desktop>
 <2cc90b8cfa935e345ec2b185b087f1859a040176.camel@kernel.crashing.org>
 <ee80e26d2eda385a709d749e5f0ec9e42b442090.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_001646_990998_633294EB 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-07-18 at 17:11 +1000, Benjamin Herrenschmidt wrote:
> Another issue with the Apple T2 based 2018 controllers seem to be
> that they blow up (and shut the machine down) if there's a tag
> collision between the IO queue and the Admin queue.
> 
> This adds a quirk that offsets all the tags in the IO queue by 32
> to avoid those collisions. It also limits the number of IO queues
> to 1 since the code wouldn't otherwise make sense (the device
> supports only one queue anyway but better safe than sorry).
> 
> The bug is typically triggered by tag collisions between SMART
> commands from smartd and IO commands, often at boot time.
> 
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> ---
> 
> Note: This is the smallest way I found of doing this that keeps
> the impact self contained to pci.c. Feel free to suggest
> alternatives.

Looks like it's not enough ... the bug is a lot harder to hit but I
still occasionally get a duplicate tag. I'm now wondering if it's
unhappy about having tags bigger than q_depth... I wouldn't be
surprised with anything here.

I'll try again with a reduce q_depth as well...

Ben.

>  drivers/nvme/host/nvme.h |  5 +++++
>  drivers/nvme/host/pci.c  | 26 ++++++++++++++++++++------
>  2 files changed, 25 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 564b967058f4..eeb99e485898 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -102,6 +102,11 @@ enum nvme_quirks {
>  	 * Use non-standard 128 bytes SQEs.
>  	 */
>  	NVME_QUIRK_128_BYTES_SQES		= (1 << 11),
> +
> +	/*
> +	 * Prevent tag overlap between queues
> +	 */
> +	NVME_QUIRK_SHARED_TAGS			= (1 << 12),
>  };
>  
>  /*
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index e399e59863c7..1055f19e57a4 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -194,6 +194,7 @@ struct nvme_queue {
>  	u16 cq_head;
>  	u16 last_cq_head;
>  	u16 qid;
> +	u16 tag_offset;
>  	u8 cq_phase;
>  	u8 sqes;
>  	unsigned long flags;
> @@ -506,6 +507,7 @@ static void nvme_submit_cmd(struct nvme_queue
> *nvmeq, struct nvme_command *cmd,
>  			    bool write_sq)
>  {
>  	spin_lock(&nvmeq->sq_lock);
> +	cmd->common.command_id += nvmeq->tag_offset;
>  	memcpy(nvmeq->sq_cmds + (nvmeq->sq_tail << nvmeq->sqes),
>  	       cmd, sizeof(*cmd));
>  	if (++nvmeq->sq_tail == nvmeq->q_depth)
> @@ -967,9 +969,10 @@ static inline void nvme_ring_cq_doorbell(struct
> nvme_queue *nvmeq)
>  static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16
> idx)
>  {
>  	volatile struct nvme_completion *cqe = &nvmeq->cqes[idx];
> +	u16 ctag = cqe->command_id - nvmeq->tag_offset;
>  	struct request *req;
>  
> -	if (unlikely(cqe->command_id >= nvmeq->q_depth)) {
> +	if (unlikely(ctag >= nvmeq->q_depth)) {
>  		dev_warn(nvmeq->dev->ctrl.device,
>  			"invalid id %d completed on queue %d\n",
>  			cqe->command_id, le16_to_cpu(cqe->sq_id));
> @@ -982,14 +985,13 @@ static inline void nvme_handle_cqe(struct
> nvme_queue *nvmeq, u16 idx)
>  	 * aborts.  We don't even bother to allocate a struct request
>  	 * for them but rather special case them here.
>  	 */
> -	if (unlikely(nvmeq->qid == 0 &&
> -			cqe->command_id >= NVME_AQ_BLK_MQ_DEPTH)) {
> +	if (unlikely(nvmeq->qid == 0 && ctag >= NVME_AQ_BLK_MQ_DEPTH))
> {
>  		nvme_complete_async_event(&nvmeq->dev->ctrl,
>  				cqe->status, &cqe->result);
>  		return;
>  	}
>  
> -	req = blk_mq_tag_to_rq(*nvmeq->tags, cqe->command_id);
> +	req = blk_mq_tag_to_rq(*nvmeq->tags, ctag);
>  	trace_nvme_sq(req, cqe->sq_head, nvmeq->sq_tail);
>  	nvme_end_request(req, cqe->status, cqe->result);
>  }
> @@ -1020,7 +1022,10 @@ static inline int nvme_process_cq(struct
> nvme_queue *nvmeq, u16 *start,
>  
>  	*start = nvmeq->cq_head;
>  	while (nvme_cqe_pending(nvmeq)) {
> -		if (tag == -1U || nvmeq->cqes[nvmeq-
> >cq_head].command_id == tag)
> +		u16 ctag = nvmeq->cqes[nvmeq->cq_head].command_id;
> +
> +		ctag -= nvmeq->tag_offset;
> +		if (tag == -1U || ctag == tag)
>  			found++;
>  		nvme_update_cq_head(nvmeq);
>  	}
> @@ -1499,6 +1504,10 @@ static int nvme_alloc_queue(struct nvme_dev
> *dev, int qid, int depth)
>  	nvmeq->qid = qid;
>  	dev->ctrl.queue_count++;
>  
> +	if (qid && (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS))
> +		nvmeq->tag_offset = NVME_AQ_DEPTH;
> +	else
> +		nvmeq->tag_offset = 0;
>  	return 0;
>  
>   free_cqdma:
> @@ -2110,6 +2119,10 @@ static int nvme_setup_io_queues(struct
> nvme_dev *dev)
>  	unsigned long size;
>  
>  	nr_io_queues = max_io_queues();
> +
> +	if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS)
> +		nr_io_queues = 1;
> +
>  	result = nvme_set_queue_count(&dev->ctrl, &nr_io_queues);
>  	if (result < 0)
>  		return result;
> @@ -2957,7 +2970,8 @@ static const struct pci_device_id
> nvme_id_table[] = {
>  	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2005),
>  		.driver_data = NVME_QUIRK_SINGLE_VECTOR |
> -				NVME_QUIRK_128_BYTES_SQES },
> +				NVME_QUIRK_128_BYTES_SQES |
> +				NVME_QUIRK_SHARED_TAGS },
>  	{ 0, }
>  };
>  MODULE_DEVICE_TABLE(pci, nvme_id_table);
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
