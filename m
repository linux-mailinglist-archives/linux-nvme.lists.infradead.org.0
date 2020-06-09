Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E7D1F40EA
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jun 2020 18:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QD4X8NgsgyyDpq+PMaol2thhwVg7MAcU8Ou9n3qfDeI=; b=t5Vn7StCE2zYSF
	iUb3rkkxCO14nBdNw1MMyPouPOFf3wSuZEyIo8AiWx2aFsH2ups7jb1wYMWMZ8ETvzdIgzP8R0oFb
	AmgzHhlqIItKtsyU1flvsCJ3hYaBYXy85m9Tc4OZs0+jEP8/D5qKgPnftiK9jWT6z/LMzn/QuVtJ3
	f09nsmhWCMb35//n6LQUfpC3yLZFjOhRVghaJ8yh8qzoAE3j1fmjzavskPTWa8zPXxIv/AiGHh5hO
	BCfHzwBzEForJG2kpuC8YCGstLYRNwACIXLbQ12l8O8a1cTjVtpk3lXAAHqPh3AMj4AfZPR68wdlm
	lQSw2uyA4I3n20jMx1uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jih9b-0007CO-Pb; Tue, 09 Jun 2020 16:31:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jih9L-0007BT-M0
 for linux-nvme@lists.infradead.org; Tue, 09 Jun 2020 16:31:06 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C328020734;
 Tue,  9 Jun 2020 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591720255;
 bh=thQr9+VfrNvGPe6Ik3TC1SHGyJuH/7G01cM/dvEtZg0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lhgAY9W6HuQ8SZG95+YXylQ6dcw6FYcF4s4kNiOmJcjP1w+JYSZXXMwUd2qqxSxqp
 jGSkhUg5vuMFr405xBirwPh1ASpX9eAaSKRuOhqQ+ZcW8s8zAlGTX9X9k/Qw6l6bSK
 euna7ZSzXzlsNdJUKpFFAgcjMPNRdkE+bhV8PJWs=
Date: Wed, 10 Jun 2020 01:30:52 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-pci: use simple suspend when a HMB is enabled
Message-ID: <20200609163052.GA2286@redsun51.ssa.fujisawa.hgst.com>
References: <20200609161053.46493-1-hch@lst.de>
 <20200609162953.GA2278@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609162953.GA2278@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_093055_747288_CDFA707A 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 01:29:53AM +0900, Keith Busch wrote:
> On Tue, Jun 09, 2020 at 06:10:53PM +0200, Christoph Hellwig wrote:
> > While the NVMe specification allows the device to access the host memory
> > buffer in host DRAM from all power states, hosts will fail access to
> > DRAM during S3 and similar power states.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> Looks good. Stable ought to pick this up too.

Reviewed-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
