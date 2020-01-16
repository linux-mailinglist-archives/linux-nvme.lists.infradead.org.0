Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B326413DF9B
	for <lists+linux-nvme@lfdr.de>; Thu, 16 Jan 2020 17:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MzzO1Xs7ZVib7CvVEQcKEUrX1/wI1J0sbJZLd5a+yg=; b=DRHhR3Ny5XR4pU
	Wsz3BnzIyrxg5R5CUe1EApkwa+VB5EJ5JrokBqPEIiIMIrOx94zLzugcp1VDDDyh3u3XolnnBuYfu
	1Yk8SAHjpELJJKe0PsOWz+m16I3oLyhdtYFxaNZyhZxU1aEDir34kGp8sf1xMsBiQkdQfd4UBjDYM
	5K1aqZhYj2UoiWabVVVjpBpClmidyDzuoALNWlS4rQNe0+xVPZLlT2QshkoHxtZ76P2vM4MXlXqJa
	Pr/cXeWqDNfvx3aQjvVCN7gUjHpTibFvN/lXSOXGz05RPZIxT+jtJd9j9CSZzQPMBNLIcQBMisa7D
	weoxwrg8xre7IiT2jIwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7h0-0007D0-DX; Thu, 16 Jan 2020 16:08:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7gt-0007CG-2j
 for linux-nvme@lists.infradead.org; Thu, 16 Jan 2020 16:08:18 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E27D20728;
 Thu, 16 Jan 2020 16:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579190894;
 bh=yxYIexsCoWILrt+M2mmuV5vOrBSwpURYdsfJ88XcwoM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=abpL9azsRyMf95HcbjIyDGJozIlZt5llUyv5QVHEDwhveKxAU+A5/FtVRAggZVUfL
 a4UmY1ONTVYiZAmJMZJaWarySUNuHDn7TrAkl/d56rEyta1rzpF44OTSUqa4bm3DcM
 ISm22n/F5cmMLeMqnOCzltCksQBMma3F8TI4hWyY=
Date: Fri, 17 Jan 2020 01:08:11 +0900
From: Keith Busch <kbusch@kernel.org>
To: Talker Alex <alextalker@yandex.ru>
Subject: Re: [PATCH] nvmet: fix null-pointer when removing a referral
Message-ID: <20200116160811.GB28993@redsun51.ssa.fujisawa.hgst.com>
References: <34086421575664793@iva7-8a22bc446c12.qloud-c.yandex.net>
 <20191212093341.GA20683@infradead.org>
 <3861821576146988@sas8-ed615920eca2.qloud-c.yandex.net>
 <20191212104322.GA19996@infradead.org>
 <416341579184141@vla4-9d01d86ae0b7.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <416341579184141@vla4-9d01d86ae0b7.qloud-c.yandex.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_080815_141159_D447A0C7 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christoph Hellwig <hch@infradead.org>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 05:15:40PM +0300, Talker Alex wrote:
> Ping.
> =

> Would anyone kindly finally merge this fix?

Patch applied for-5.6, thank you for the ping. =

 =

> 12.12.2019, 13:43, "Christoph Hellwig" <hch@infradead.org>:
> > On Thu, Dec 12, 2019 at 01:36:28PM +0300, Talker Alex wrote:
> >> =A0nvmet_referral_release() was called when item->ci_parent
> >> =A0or item->ci_group were already set to NULL by configfs internals.
> >>
> >> =A0Signed-off-by: Aleksandr Diadiushkin <alextalker@ya.ru>
> >
> > Looks good,
> >
> > Reviewed-by: Christoph Hellwig <hch@lst.de>
> =

> _______________________________________________
> linux-nvme mailing list
> linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
