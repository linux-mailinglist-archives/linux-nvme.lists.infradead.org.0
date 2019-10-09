Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0B0D1B72
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 00:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQPZdkV4wgv1E3Zo5wV30aFak3vDv3idX6yKwfyueIA=; b=AQD0ZmWmsPLkfP
	1oWdBFT3H3JLoFF0pvt0Rp7IOi10vya0IugbzB6P71nnhz8OLBKgTyUgtiMX4gY8U4yZIyeV5//vN
	P+ShYgiJv1S2etcM5wlHnXVtnsQEQjuqd8MMYC/nPr+2JeeFhiKhtd6ZKtkHv627wO9Pzem/IMprU
	LaQy4Ue1pjEW74hwWvRR3FRVJsPo4vDM3OKJrMUQUwwPBDQEXUJm/wKCKxQxIxAehtSaTnZULYIZs
	3tMizHPIaO7BCWRaIk9VKaD+2H6kYIJFbj8zG/KIzOWPKE3Gu2UroFutOOMmdXTJgBZ5stYLpWMUY
	Os1JgQaH/j5B7X2OlAAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIKDR-0006C0-Rg; Wed, 09 Oct 2019 22:13:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIKDM-0006Bc-8B
 for linux-nvme@lists.infradead.org; Wed, 09 Oct 2019 22:13:49 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A08B120B7C;
 Wed,  9 Oct 2019 22:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570659227;
 bh=RyPgVqyj3PPw8zKgkDtZVoZJBEN/mwASsfZ3X8viFlg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ob9rAGSf4kNkBMpSCe4SQ3shpy8EKIrmDLXF707Cgz9PzHJA6+ZVX3wqfOwpy3c94
 4KqzrRhJaQyB3mDz9J4jyRqBVSABi8NN3laK0c/71U1sIEzkZjJGvGLqWrDmNtIGke
 PqJspaioXzcDujS0cyNGMv6SjJM66iv/A0BGWCEg=
Date: Thu, 10 Oct 2019 07:13:44 +0900
From: Keith Busch <kbusch@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v9 01/12] nvme-core: introduce nvme_ctrl_get_by_path()
Message-ID: <20191009221344.GB3009@washi1.fujisawa.hgst.com>
References: <20191009192530.13079-1-logang@deltatee.com>
 <20191009192530.13079-2-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009192530.13079-2-logang@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_151348_312095_E56EA9E4 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 01:25:18PM -0600, Logan Gunthorpe wrote:
> nvme_ctrl_get_by_path() is analagous to blkdev_get_by_path() except it
> gets a struct nvme_ctrl from the path to its char dev (/dev/nvme0).
> It makes use of filp_open() to open the file and uses the private
> data to obtain a pointer to the struct nvme_ctrl. If the fops of the
> file do not match, -EINVAL is returned.
> 
> The purpose of this function is to support NVMe-OF target passthru.
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

Looks fine.

Reviewed-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
