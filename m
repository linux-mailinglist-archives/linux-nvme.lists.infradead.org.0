Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030AFF0AF7
	for <lists+linux-nvme@lfdr.de>; Wed,  6 Nov 2019 01:18:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChG848R+gpHNAevgY6+r+a7aUsna5qW4DQrCiWUWCaA=; b=sWFX8ad3eqdF3V
	IYdib8WdxpEL2AAYrsFZw++ap627n6SQJ1uR9rPn9yQ3t+307h4D0bgIHw5VZz2Wlx7g0ueNV1mqo
	ta3SEvooRf8SslOhx9rLF1oAef48IhADzvkfv+knc6j+xjiSBL/0ciabcsPZSl17U1CPX/fxd0ufK
	+GV/MsUiqsmZeZF56MmC50E3NMDcuWRyGVIPwbT5Cm094/dW4k3Jnpv1fQrpYMa06zKIdGM8LHcCt
	wLaPyTUuUzry0+2Ci7M90700+1l4851Gy329gX189mL32DTlhHhfG+7apb1FrqHtjbtZIt59e9P73
	eecd+KOvbXZBKgkB7vjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS92C-0002KO-HB; Wed, 06 Nov 2019 00:18:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS926-0002K2-UZ
 for linux-nvme@lists.infradead.org; Wed, 06 Nov 2019 00:18:48 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E88B62087E;
 Wed,  6 Nov 2019 00:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572999526;
 bh=xdCq91yOnBvmSUuhtJO18uIKVytxc59ip6x5qVWsesQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xxX93IXMGF5SOlvoP29sLP7A0JaILkUkMNCG+f0pTtqnFPN5GVJdd4JrTDYFiR3y1
 r8nbeI2fvqeUCpbyDkUYVqlZESSb5b1oX5efFOHTqaTcej+D/KZMFpsrHs5VjIz6WS
 6svPV43nWLcPUq8Wc+C4IJGJ4Y5rp6+KoPUqrkio=
Date: Wed, 6 Nov 2019 09:18:39 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64 to explicitly mark rsvd
Message-ID: <20191106001839.GB1450@redsun51.ssa.fujisawa.hgst.com>
References: <20191105061510.22233-1-csm10495@gmail.com>
 <442718702.90376810.1572939552776.JavaMail.zimbra@kalray.eu>
 <20191105153144.GA12437@lst.de> <20191106000836.GH4787@sasha-vm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106000836.GH4787@sasha-vm>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_161847_009268_F3F05660 
X-CRM114-Status: GOOD (  12.43  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Marta Rybczynska <mrybczyn@kalray.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Charles Machalow <csm10495@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 stable@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 07:08:36PM -0500, Sasha Levin wrote:
> On Tue, Nov 05, 2019 at 04:31:44PM +0100, Christoph Hellwig wrote:
> > On Tue, Nov 05, 2019 at 08:39:12AM +0100, Marta Rybczynska wrote:
> > > Looks good to me. However, please note that the new ioctl made it already to 5.3.8.
> > 
> > It wasn't in 5.3, but it seems like you are right and it somehow got
> > picked for the stable releases.
> > 
> > Sasha, can you please revert 76d609da9ed1cc0dc780e2b539d7b827ce28f182
> > in 5.3-stable ASAP and make sure crap like backporting new ABIs that
> > haven't seen a release yet is never ever going to happen again?
> 
> Sure, I'll revert it. I guess I wasn't expecting to see something like
> this in a -rc release. How did it make it into one if it's not a fix?

It is a fix, but it wasn't marked as such in the original changelog.
I've adjusted it for the pull request, currently staged here:

  https://git.kernel.dk/cgit/linux-block/commit/?h=for-linus&id=0d6eeb1fd625272bd60d25f2d5e116cf582fc7dc

Still, a new ioctl seems pretty aggressive for stable bot, yeah?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
