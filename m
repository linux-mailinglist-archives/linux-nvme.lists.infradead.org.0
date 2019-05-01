Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86E010643
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 11:19:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iz/jo9+I2QKgRr+0fJUnmY0aOzGiw51WSPTyASdRTDg=; b=FfjQyB98iMhzF0
	yTjI0KMz16BnrRzcL7zWNJKaFCjYYZej6H/K8HFGFfD3C6wJKbvCfSC7vjoZdM1KHSlFt7vAs9WJd
	cTCpdkJcSdovFJ/LCYFB0gO7b1fu+jQmg0x6WdutBmhy/3TjK83jWP1DQrdrfvSIlWGc2YxbckpaG
	s6A313hAJWSiK8xzWddJtLxvIl61XLbbXMQZa8w9WPeV1Ql8A/ghDKf/9olY7Q38yC9/xEmaTzBwx
	7IFYGZEep5PdpjdHveGzT7r/UVZGqAf2NyBPRMuRFOqhu6f11OJsjCizj/6/KlkTxWnY28UFB9reB
	QvuXtPbSGW3BRFbPsizg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlO5-0003VS-TO; Wed, 01 May 2019 09:18:49 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlO0-0003V5-SO
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 09:18:46 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F2E51C0578F2;
 Wed,  1 May 2019 09:18:42 +0000 (UTC)
Received: from ming.t460p (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1558666614;
 Wed,  1 May 2019 09:18:34 +0000 (UTC)
Date: Wed, 1 May 2019 17:18:28 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCHv3] nvme-multipath: split bios with the ns_head bio_set
 before submitting
Message-ID: <20190501091826.GB14820@ming.t460p>
References: <20190430165709.106013-1-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430165709.106013-1-hare@suse.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Wed, 01 May 2019 09:18:43 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_021845_103308_0FBFD258 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 06:57:09PM +0200, Hannes Reinecke wrote:
> If the bio is moved to a different queue via blk_steal_bios() and
> the original queue is destroyed in nvme_remove_ns() we'll be ending
> with a crash in bio_endio() as the mempool for the split bio bvecs
> had already been destroyed.
> So split the bio using the original queue (which will remain during the
> lifetime of the bio) before sending it down to the underlying device.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>  drivers/nvme/host/multipath.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
> index f0716f6ce41f..e6ddc83223df 100644
> --- a/drivers/nvme/host/multipath.c
> +++ b/drivers/nvme/host/multipath.c
> @@ -232,6 +232,14 @@ static blk_qc_t nvme_ns_head_make_request(struct request_queue *q,
>  	blk_qc_t ret = BLK_QC_T_NONE;
>  	int srcu_idx;
>  
> +	/*
> +	 * The namespace might be going away and the bio might
> +	 * be moved to a different queue via blk_steal_bios(),
> +	 * so we need to use the bio_split pool from the original
> +	 * queue to allocate the bvecs from.
> +	 */
> +	blk_queue_split(q, &bio);
> +
>  	srcu_idx = srcu_read_lock(&head->srcu);
>  	ns = nvme_find_path(head);
>  	if (likely(ns)) {
> -- 
> 2.16.4

Looks fine:

Reviewed-by: Ming Lei <ming.lei@redhat.com>

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
