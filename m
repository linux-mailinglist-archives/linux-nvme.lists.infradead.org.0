Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 183C0D65DB
	for <lists+linux-nvme@lfdr.de>; Mon, 14 Oct 2019 17:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiE06xfbP5BEGeGUfUumlCfRUnInmnwdRGz60to6zU0=; b=l4lhw6j8ipwnBK
	UD1oJzNaNMVbItQ/TXO8Ue0gXulcyYI4I+ntDndhRYUAC3vp6Ogp318+xmpCInfcJ90aDslsDCBZJ
	rTislD1RYt3hb5cEXrsWFjX5QXgVLsPjOdJhz1VTLg+35fqpzOM3DuxyFejoK8UL/IwFBI8mAtu0Z
	w1S5GLA5cckPjNQ/joxNFANFNTjbQfJcTh8r4SyW/gs+8Yi4pdG4zHE3LRfCvh6tBp0bIZETMLw//
	+QgwGQn5gFVxL0Foibz2+UTZW1TO2ga7BnDkbha1dyTj3vVjZDqvhNiq86l3iV9CGbnjNHJeul9TU
	zf3kkf8i6g8UVR3MWcdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1vU-0008Rj-96; Mon, 14 Oct 2019 15:06:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1vP-0008RJ-Ag
 for linux-nvme@lists.infradead.org; Mon, 14 Oct 2019 15:06:20 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4112E2133F;
 Mon, 14 Oct 2019 15:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571065579;
 bh=aVrCiYC/XCbMs0JloEcT+CbERork/9t/z72zzesnuXY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PvGGcGsJn2rPbI8tcBFHact9H8eKhQ5StiYtBGNm48d/2rHyKXCFwQx/t2yBtp4ex
 IIQAemHJ2e/DAODZvfQp6dEtmcfMXj8OTT7HsLCnC6CqAALoF9E6Z83ZhFJ5NhszOb
 echI03oG297vp/JHJw7ZMZUFDiGTLhvjWJ5xXsLI=
Date: Tue, 15 Oct 2019 00:06:16 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2] nvme-tcp: Initialize sk->sk_ll_usec only with
 NET_RX_BUSY_POLL
Message-ID: <20191014150616.GB6142@redsun51.ssa.fujisawa.hgst.com>
References: <20191010150622.reqmasxgavug4amm@linutronix.de>
 <20191010150719.GA617@lst.de>
 <20191010151023.gru6fhrhy7gxxwye@linutronix.de>
 <20191010151444.GA638@lst.de>
 <20191010152924.jlr53aunkj7de5js@linutronix.de>
 <20191010152958.GA1057@lst.de>
 <20191010153411.6uetttizkto6rv65@linutronix.de>
 <20191014071651.GC10081@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014071651.GC10081@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_080619_387023_DE773D41 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, tglx@linutronix.de,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 09:16:51AM +0200, Christoph Hellwig wrote:
> On Thu, Oct 10, 2019 at 05:34:12PM +0200, Sebastian Andrzej Siewior wrote:
> > The access to sk->sk_ll_usec should be hidden behind
> > CONFIG_NET_RX_BUSY_POLL like the definition of sk_ll_usec.
> > 
> > Put access to ->sk_ll_usec behind CONFIG_NET_RX_BUSY_POLL.
> > 
> > Fixes: 1a9460cef5711 ("nvme-tcp: support simple polling")
> > Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> Looks good,
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks, applied to nvme-5.4.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
