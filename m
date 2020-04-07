Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1797C1A1366
	for <lists+linux-nvme@lfdr.de>; Tue,  7 Apr 2020 20:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oI7LsAx18nhT0QgYc1A06ONqQmqc1cZt8tYIlN0C6ug=; b=d3NxWF0l5LY9Gj
	UEnOSnbo2EtOnrwnZyWy9iGSX1fHHQfXJmyisxqlL4nS3B1uonIAsONX/cqPsvgBmZIuhRalC8RlY
	D/AJ8y4lPrOkBzsh8z0oUlyK+f9D4Ahp50ZW18pnLsbf4yC1Ju0Mtfgd/NGN78oi9eYuIjaoW1mtJ
	YWde7AK2ixTBEwoM7VFGm3JSjwv6MSDM8p7WnBaJIEyiF/lWlniTtQfqwEbkXewyCBTA5eWYwatND
	7gAtwGQTKV3vbwA4xtPkjA2IhW/5fOkudVRdx2dhKDSf/p//qEc88BaSVBy28w2bR1/6kAJ7H7KWK
	rZ6cgbEaujH7oz5c9BPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLsm2-0002L8-Sr; Tue, 07 Apr 2020 18:16:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLslz-0002Kp-0A
 for linux-nvme@lists.infradead.org; Tue, 07 Apr 2020 18:16:32 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8202F2075E;
 Tue,  7 Apr 2020 18:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586283390;
 bh=+0aetLujynAbssXwqwrA5VU81c+xWAOqzhEc+wG8miE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F/GszfStdz5MdzGTQYVBmJgLRxmX6xFA7HY0MmfyNY/evkUp1zJz+54Pz2OrtIRF1
 WnNI2cft+Inx5O3CJ7rQ1VKQ37V53wtbTcRwsUo+EjA6q8Hn/6TyS2jP5IG+TT6DMT
 TgmZdqvlQUkRIVXX7a/L6zjrIy6wcJxb9AxWxZds=
Date: Wed, 8 Apr 2020 03:16:23 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCHv2] nvme: define constants for identification values
Message-ID: <20200407181623.GA3843@redsun51.ssa.fujisawa.hgst.com>
References: <20200403175346.1571822-1-kbusch@kernel.org>
 <20200404070437.GA14423@lst.de>
 <20200404170742.GA53042@C02WT3WMHTD6>
 <20200407172559.GA6876@lst.de>
 <bb8608c9-c523-c9d4-83fa-9c3fac627604@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb8608c9-c523-c9d4-83fa-9c3fac627604@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_111631_062580_A9186725 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 10:47:57AM -0700, Sagi Grimberg wrote:
> 
> 
> On 4/7/20 10:25 AM, Christoph Hellwig wrote:
> > On Sat, Apr 04, 2020 at 11:07:42AM -0600, Keith Busch wrote:
> > > On Sat, Apr 04, 2020 at 09:04:37AM +0200, Christoph Hellwig wrote:
> > > > On Fri, Apr 03, 2020 at 10:53:46AM -0700, Keith Busch wrote:
> > > > > Improve code readability by defining the specification's constants that
> > > > > the driver is using when decoding identification payloads.
> > > > > 
> > > > > Signed-off-by: Keith Busch <kbusch@kernel.org>
> > > > 
> > > > I can't say I find this an improvement - the bit values allow you
> > > > to jump straight to the spec, while the names need a translation
> > > > (either to the actual bit or the spec name without underscores and co
> > > > first).
> > > 
> > > Named constants tell us what they are inline with the code that's
> > > using it. You can make sense of the code just by reading the code,
> > > no additional docs or code comments required.
> > 
> > Sometimes they do, but especially for nvme they often don't.  Anyway,
> > I'd like to hear from Sagi and/or Jens to see if we have more people
> > who like this or don't instead of just us two having different
> > preferences.
> 
> Personally, I'm in Christoph's camp, especially when the names include
> words like CMIC or NMIC etc... These are cryptic unless you are familiar
> with the spec and the NVMe language. I often find it easier to have
> the bits.
> 
> But, I'm also often asked about constants and their meaning, so I'd be
> in favor of adding some descriptive names. But if the point here is to
> save the code reader a trip to the spec, then we should probably add
> some documentation explaining some of the somewhat cryptic acronyms we
> have in NVMe.

It's not just saving a trip to the spec. There's a benefit to naming
things when browsing the code: you can cscope named constants easier
grepping patterns to find all occurances.

The driver isn't so big that locating something is too difficult right
now, so I'm not really concerned either way.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
