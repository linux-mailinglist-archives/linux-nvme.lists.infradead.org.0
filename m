Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C672F007F
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 15:58:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04ERXrPUCDzgVNRluNzlyBWdH2p5tMRFge6dVdfl+l4=; b=JvbD7nkPmY4A+X
	9KFBLyl914Ck8jDBt1ORME8nuL9RVSbwHKABPcK/PUQfZ9DuSX33jmYjzFb1JCW1+oGho0JNq/QFF
	sGAt2jqA+CcI1dN64Rse8HZRsykA/wC8AQ48GW94opBm1FY2ydMWFIBk/G9QGwyZQQM8fVOET/LDi
	SX0LdPK13v/c/sySi3ge8o6/OyzVfryEa/e7d/wTW1IaS3UAOhqgJj5ZrYOgRkVfTRO89eii5B80H
	lgVPZMbJ8nMERdV8VW90/aAxmikCBTYRmA0KIO5L3TcZlVWpsCwrVNAPcKMbSADcxYQ88R0e0NFZQ
	ySdsv/lCVksLLPC2jn8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0I1-0004sk-Hg; Tue, 05 Nov 2019 14:58:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0Hv-0004rl-BV
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 14:58:32 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6AACE21929;
 Tue,  5 Nov 2019 14:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572965911;
 bh=cVTdpH80mUziEXjuwNINaLwvFs0yZ+ZcXOn47AlsBLU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lqn+lN3VIVGZUoZRjD3Zs6K9bM0pdlJstjc+ze61SwJSsQYuTM1BrVdsPi6Z2nTPb
 fBHclf8xSDg9qM1lTXarL+H8k6i9CjQNq7pJSGOSX5HOFpl7Q4O9uJGixHFbOt02cw
 6RsX3XInLPdnquWyXwrD8RuDyNJVXx1FiVkQ1bXA=
Date: Tue, 5 Nov 2019 23:58:24 +0900
From: Keith Busch <kbusch@kernel.org>
To: Marta Rybczynska <mrybczyn@kalray.eu>
Subject: Re: [PATCH 4/4] nvme-cli: ioctl: support 64-bit ioctls
Message-ID: <20191105145824.GA22559@redsun51.ssa.fujisawa.hgst.com>
References: <436860210.90381688.1572941457980.JavaMail.zimbra@kalray.eu>
 <20191105134530.GA2462@keith-busch>
 <1803760845.90444797.1572962758500.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1803760845.90444797.1572962758500.JavaMail.zimbra@kalray.eu>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_065831_413499_B5E0BDAC 
X-CRM114-Status: UNSURE (   9.88  )
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
Cc: Keith Busch <keith.busch@intel.com>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 03:05:58PM +0100, Marta Rybczynska wrote:
> It's based on https://github.com/linux-nvme/nvme-cli.git and applies to the
> current master of that (66652af38042fc9624a8fbf25a325a788ccd3c82)
> 
> If there's a better one to use, please let me know.

That's the right one to use. That nvme_commmand usage just got past me.
I'll fix it up, we should not be using them from user space.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
