Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91408E639E
	for <lists+linux-nvme@lfdr.de>; Sun, 27 Oct 2019 16:09:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRfSkiuVaHegFkyn4zuF4JBIMgfhDNQO6Yx+qsHfTnc=; b=Hj3gOHTPjV6xD/
	OVsaQWEPG7V8t42nUXG7nTRPUpVn+8j0T46i/ADDU0mcX2i1ShOYMOaqT3V7CDtJp9i6N2atoc7Ml
	g9nLr4TutTQ1VHPafn4d+00ygo4I19yfWnpTlZcDq67MshZ4W0FXRX8mU/ce+t34uqy853QFPRxNx
	E9Ni15opPIOmLVVggX//wFE/qNGZ6whIeBSyYZy3H98mAX7I7tERKf3uiR8qp/OMdySe/02FlrAUi
	1LmzyQE82J5mfeFMJ3BE5GoAa0RVtjn9l5dSix9U7QXDwqj7mORZzNiqYXaUjVSk1k/CRbYiu/2yC
	zbY+fy+FJkoRHpN5JwUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOkAs-0000YH-2o; Sun, 27 Oct 2019 15:09:46 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOkAm-0000XP-F1
 for linux-nvme@lists.infradead.org; Sun, 27 Oct 2019 15:09:41 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D8ED668B05; Sun, 27 Oct 2019 16:09:37 +0100 (CET)
Date: Sun, 27 Oct 2019 16:09:37 +0100
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 3/3] nvme: Introduce nvme_execute_passthru_rq_nowait()
Message-ID: <20191027150937.GC5843@lst.de>
References: <20191025202535.12036-1-logang@deltatee.com>
 <20191025202535.12036-4-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025202535.12036-4-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_080940_655344_7F48C2BD 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 02:25:35PM -0600, Logan Gunthorpe wrote:
> This function is similar to nvme_execute_passthru_rq() but does
> not wait and will call a callback when the request is complete.
> 
> The new function can also be called in interrupt context, so if there
> are side effects, the request will be executed in a work queue to
> avoid sleeping.

Why would you ever call it from interrupt context?  All the target
submission handlers should run in process context.

> +void nvme_execute_passthru_rq_nowait(struct request *rq, rq_end_io_fn *done)
> +{
> +	struct nvme_command *cmd = nvme_req(rq)->cmd;
> +	struct nvme_ctrl *ctrl = nvme_req(rq)->ctrl;
> +	struct nvme_ns *ns = rq->q->queuedata;
> +	struct gendisk *disk = ns ? ns->disk : NULL;
> +	u32 effects;
> +
> +	/*
> +	 * This function may be called in interrupt context, so we cannot sleep
> +	 * but nvme_passthru_[start|end]() may sleep so we need to execute
> +	 * the command in a work queue.
> +	 */
> +	effects = nvme_command_effects(ctrl, ns, cmd->common.opcode);
> +	if (effects) {
> +		rq->end_io = done;
> +		INIT_WORK(&nvme_req(rq)->work, nvme_execute_passthru_rq_work);
> +		queue_work(nvme_wq, &nvme_req(rq)->work);

But independent of the target code - I'd much rather leave this to the
caller.  Just call nvme_command_effects in the target code, then if
there are not side effects use blk_execute_rq_nowait directly, else
schedule a workqueue in the target code and call
nvme_execute_passthru_rq from it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
