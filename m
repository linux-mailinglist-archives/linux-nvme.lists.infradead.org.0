Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDED211C903
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 10:20:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/bOSUufTTDPJ6Rrrf2QWPSXtJxl5jdi9cSAxXj7RVI=; b=ty1SM7Q7Ek8bYx
	9oTaA6P+gMbHPsu4/8/mBVUuQEoSv1BcdnXaMY/BE4PpKKrdr7NIUtn0rStYrTY/hSMdqvqPzkRqq
	ikwPyk459Lzn8HWPD1qvSLKrKHfa2Jfs/ptH4nJR0RiSqF4jlBE5ahLVbhd6BgEVpWczu4LqjeF7h
	qKjleIoGIGeRhvxU/JASXjz9yNeGBgqIswb0Gtpfxrd6sNi3/8cpUXhh9L+x7GPMT55umNnx2pNIX
	27pUCjNPEU80ASC3b+uOgZ8zp1Lz2einjsZCCHCxyo8Shw5RK07mK6LNuWLLcCXanmOTWfmbA9S4v
	8LGGGMAwu3IuAbthlvlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKdx-0001E2-32; Thu, 12 Dec 2019 09:20:21 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKdr-0001DU-V8
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 09:20:17 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5D36B68B05; Thu, 12 Dec 2019 10:20:13 +0100 (CET)
Date: Thu, 12 Dec 2019 10:20:13 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme/pci: Remove last_sq_tail
Message-ID: <20191212092013.GE2399@lst.de>
References: <20191205200825.27651-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205200825.27651-1-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_012016_158339_D1E51503 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 05:08:25AM +0900, Keith Busch wrote:
> We don't allocate enough tags to wrap the submission queue. Remove
> tracking for this condition.

We can totally wrap the sq - just a single command at the end of
the SQ will wrap it.  We are however never going to wrap it around
to the point that we'll overwrite other unsubmitted entries.  So
I think you change looks good, but the commit log needs a better
explanation.

> @@ -502,8 +492,7 @@ static void nvme_commit_rqs(struct blk_mq_hw_ctx *hctx)
>  	struct nvme_queue *nvmeq = hctx->driver_data;
>  
>  	spin_lock(&nvmeq->sq_lock);
> -	if (nvmeq->sq_tail != nvmeq->last_sq_tail)
> -		nvme_write_sq_db(nvmeq, true);
> +	nvme_write_sq_db(nvmeq);
>  	spin_unlock(&nvmeq->sq_lock);

Also this change means we now always submit in commit_rqs.  This makes
total sense as we only commit after having submitted commands, but it
is another thing worth mentioning in the commit log.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
