Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D1F2B14D
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 11:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsqhZUz9wC/HjUFZ3xNQ5ztZlc64iaILTXJnLxZTT78=; b=Zp/4//AQ3Ee1WP
	lNCBhfZwKpwMWFGGN0lPIpZ7LYF6UBAL3xWqZljsMYu9/QfUDUR1CXYQvFaub1UdaMO0wAPBkzGkn
	HHtNUrsHx/QdsdyjN9hJ7/9hv+7BClrzZN0aWlxBCX9QnQATPwZhcqZ+Fu7mPVo/KuAFn3ACUKYPD
	OqiTwjJQgoyzbbILYiOlwbiyMvVsxUyl/Dems4f8845FeU4+MerKCaZSm7Enexg5JDGuCEaK5ItEB
	sSGOJf7+RnkjyCNXos50geW+Qm36UjjmHdnnGK98XorsBT0J7ABHTCBn83z7AxY4ZPSsUq5Mf+5RD
	GNHhUI0IHyqQAOvLTYXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBwe-0007Vq-KI; Mon, 27 May 2019 09:29:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBwa-0007VT-0l
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 09:29:25 +0000
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 439972173B;
 Mon, 27 May 2019 09:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558949362;
 bh=2MWFhjM4UY8IX250DkFNDH8WwQdNjxGm4HS/F78Ubx0=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=kYSJaXs2gebpHBrDowtBFSu2CqFIPJRz8884hp2rZsdaV0dQzuDEQ3ZUokch+QkNV
 d6m+UX8/aHP4hphfWvU30waL8xaXpBwE8PHEj4IYh+HpFfDWpFahJugMfpZDIQ6/4x
 8ZQqOosmAml6Innx0KtArS+91hCkNJG/VOWUJJD4=
Date: Mon, 27 May 2019 11:29:19 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: Re: [5.2-rc1 regression]: nvme vs. hibernation
In-Reply-To: <92a15981-dfdc-0ac9-72ee-920555a3c1a4@oracle.com>
Message-ID: <nycvar.YFH.7.76.1905271126480.1962@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
 <20190524154429.GE15192@localhost.localdomain>
 <nycvar.YFH.7.76.1905250023380.1962@cbobk.fhfr.pm>
 <92a15981-dfdc-0ac9-72ee-920555a3c1a4@oracle.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_022924_083729_E8929C09 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, 25 May 2019, Dongli Zhang wrote:

> Looks this has been discussed in the past.
> 
> http://lists.infradead.org/pipermail/linux-nvme/2019-April/023234.html
> 
> I created a fix for a case but not good enough.
> 
> http://lists.infradead.org/pipermail/linux-nvme/2019-April/023277.html

That removes the warning, but I still seem to have ~1:1 chance of reboot 
(triple fault?) immediately after hibernation image is read from disk. 
Seems like that has been going all the way down to 4.19, which seems to be 
rock stable. It's a bit hard to bisect, as I am not really 100% sure 
whether this is one issue or two intermixed ones, and it doesn't reproduce 
completely reliably.

-- 
Jiri Kosina
SUSE Labs


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
