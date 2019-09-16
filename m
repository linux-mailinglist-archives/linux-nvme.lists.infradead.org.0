Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D40DB418A
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 22:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2TG46jbVjVyFrpf8yJn6QXRkbUJpzNmCVIfz3BFrq0=; b=qBZjAylWE45ugw
	SlHaAcYIBI1IcpxHl78LYnPhkELZqFvlDpp1rCVBDENwjO7f0gXCGGZSgogGymONXQFfXyxlsSZd6
	mJRq3IhW9b7/TJ8u2yK+FBdz+X4vJhTmncUr6lItRrDIqBDjNbAQ1vLZVqieSLbaIksy+xCzQskUz
	d3TObmh5ydb08Zw8/mbdl2YY6wePttaAz+UZ564US978Jn6RUH4qADHoveqs6no+Ak6LkHAbNND85
	Cau/Rrliz/BVjckvL3jPcbGPyOuENZAhKWILJO7O+8aK37QRIhvtIaQxZCuboAduKWdHItvjTKqD/
	R57+hVrjHnrFHsSwINTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9xHo-0001Cv-Da; Mon, 16 Sep 2019 20:07:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9xHd-0001Ca-VQ
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 20:07:40 +0000
Received: from C02WT3WMHTD6.wdl.wdc.com (unknown [199.255.45.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87B2C20644;
 Mon, 16 Sep 2019 20:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568664457;
 bh=EVIHbXq0hhu7Odc/s8KVNwDTyqWW9FYJrMTQFwajHZg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kNCf6zlHfhXLS9GBrjYSPrKUb0CqcYbm/LK/KiGAaXe1PX9rpXsIEXwnCFCrWSgb8
 2bGdEpwV5jpZjwReKXG8kRK/gVY60BDpkDnIe1bBbmYX7kQP7J0pMf15x4fJvbE2Zo
 PrxVlSbonrUDvrS28vxkdfW68yzaYqdi0z36ODdM=
Date: Mon, 16 Sep 2019 14:07:34 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Singh, Balbir" <sblbir@amazon.com>
Subject: Re: [PATCH v2 1/2] nvme/host/pci: Fix a race in controller removal
Message-ID: <20190916200734.GA17997@C02WT3WMHTD6.wdl.wdc.com>
References: <20190913233631.15352-1-sblbir@amzn.com>
 <7017c4c1-75a9-1e37-eb54-6126dfbb251b@acm.org>
 <25d9badc90a1eb951cb5103774e8360edaa8ec15.camel@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25d9badc90a1eb951cb5103774e8360edaa8ec15.camel@amazon.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_130738_036810_61D9E02B 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "sblbir@amzn.com" <sblbir@amzn.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>, "hch@lst.de" <hch@lst.de>,
 "bvanassche@acm.org" <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 07:38:44PM +0000, Singh, Balbir wrote:
> On Mon, 2019-09-16 at 08:40 -0700, Bart Van Assche wrote:
> > The comment above revalidate_disk() looks wrong to me. I don't think 
> > that blk_set_queue_dying() guarantees that ongoing commands have 
> > finished by the time that function returns. All
> > blk_set_queue_dying() 
> > does is to set the DYING flag, to kill q->q_usage_counter and to wake
> > up 
> > threads that are waiting inside a request allocation function. It
> > does 
> > not wait for pending commands to finish.
> 
> I was referring to the combined effect of blk_set_queue_dying() and
> blk_mq_unquiesce_queue() which should invoke blk_mq_run_hw_queues().
> I can see how that might be misleading. I can reword it to say
> 
> /*
>  * revalidate_disk, after all pending IO is cleaned up
>  * largely any races with block partition
>  * reads that might come in after freezing the queues, otherwise
>  * we'll end up waiting up on bd_mutex, creating a deadlock
>  */
> 
> Would that work?

How about:

 /* Revalidate after unblocking dispatchers that may be holding bd_butex */

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
