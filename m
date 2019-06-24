Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3481517D4
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 18:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B75mCbS2ftcLkO7YK4jrtNMo85BEXTzCyGZPgo8o5GE=; b=trFIilOLKueHv6
	wpSW2FdvJmY0OsYKheqodt471CJCg25G4Q1LKyksll14j9PhUFcdti6ID8kYE5IiCBvrBBzyx2NHY
	G6Ooz/ZOCB8Lh/zHh6WS4sP5tMMAvRQ7sz3PKKN3AWdIqp2139sExGkZXbXql1G4RFKrSPawYGAE+
	m0zajyRAabIYIgh7KV/62s61VLFBDnDAxEqovbuidQ/kvTAT7ppxTlAIA/8deIqOKRiMrIg8Y0NMP
	O/NAOAuzgtYgvuRStLMS4brkxk0fx41h+lIn/xGMCyaJde865TTN2wcdVl7HopIN7blnp3fkbkzlw
	4oKoG9PZg12Xd6XbvtFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfROg-0001aT-Bf; Mon, 24 Jun 2019 16:00:46 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfROa-0001Zk-Nj
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 16:00:42 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hfR79-0000Pc-UN; Mon, 24 Jun 2019 17:42:40 +0200
Date: Mon, 24 Jun 2019 17:42:39 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Weiping Zhang <zhangweiping@didiglobal.com>
Subject: Re: [PATCH v3 4/5] genirq/affinity: allow driver's discontigous
 affinity set
In-Reply-To: <1ead341c6d603cf138aed62e31091f257cb19981.1561385989.git.zhangweiping@didiglobal.com>
Message-ID: <alpine.DEB.2.21.1906241740320.32342@nanos.tec.linutronix.de>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <1ead341c6d603cf138aed62e31091f257cb19981.1561385989.git.zhangweiping@didiglobal.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_090040_924636_3754CF07 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, bvanassche@acm.org,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, keith.busch@intel.com, minwoo.im.dev@gmail.com,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019, Weiping Zhang wrote:

> The driver may implement multiple affinity set, and some of
> are empty, for this case we just skip them.

Why? What's the point of creating empty sets? Just because is not a real
good justification.

Leaving the patch for Ming.

Thanks,

	tglx

> Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>
> ---
>  kernel/irq/affinity.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> index f18cd5aa33e8..6d964fe0fbd8 100644
> --- a/kernel/irq/affinity.c
> +++ b/kernel/irq/affinity.c
> @@ -295,6 +295,10 @@ irq_create_affinity_masks(unsigned int nvecs, struct irq_affinity *affd)
>  		unsigned int this_vecs = affd->set_size[i];
>  		int ret;
>  
> +		/* skip empty affinity set */
> +		if (this_vecs == 0)
> +			continue;
> +
>  		ret = irq_build_affinity_masks(affd, curvec, this_vecs,
>  					       curvec, masks);
>  		if (ret) {
> -- 
> 2.14.1
> 
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
