Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC81E27A4
	for <lists+linux-nvme@lfdr.de>; Thu, 24 Oct 2019 03:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIWUFy0P5qPZ9GyzShIUndVElx+6dwJgBQ7qdbx1kOQ=; b=LDLGH9WK1aGtzS
	7j4aNwDhdtqUxVu0rpgeqc3ARlpeLnzn5vO15xyjoAn0xaRlc/bcIBfVHGYFQZQrm8fW5fmn5ZG0J
	gN/GiZPJ/aMUG6lpuGhm2GA6W39F17VWl9iqgUNKFdPkaOVMOUl36O0S/3SQ5pyxGdn01r6jf2sB7
	D258YWv0hJPWBCBG7nzVdV5R0NJw69tNab0RJrJdf7tn79iwaA1yhgi/EvenqC/+vlv+GVrsomtf1
	dJolavzYAdNoeFfW4gyc8p/xycsf/FwiO1IIzI21zEzkUdbWABCstm5R2JUYDm8onqh9boL83/u2A
	mxJXgP41UneXy3PFEmWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNRjP-0004DC-UB; Thu, 24 Oct 2019 01:16:04 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNRjH-0004CU-Jl
 for linux-nvme@lists.infradead.org; Thu, 24 Oct 2019 01:15:56 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B2D1F68BE1; Thu, 24 Oct 2019 03:15:53 +0200 (CEST)
Date: Thu, 24 Oct 2019 03:15:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 2/7] nvmet-tcp: Don't set the request's data_len
Message-ID: <20191024011553.GB5190@lst.de>
References: <20191023163545.4193-1-logang@deltatee.com>
 <20191023163545.4193-3-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023163545.4193-3-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_181555_796791_AE754A46 
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 10:35:40AM -0600, Logan Gunthorpe wrote:
> It's not apprporiate for the transports to set the data_len
> field of the request which is only used by the core.
> 
> In this case, just use a variable on the stack to store the
> length of the sgl for comparison.
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
