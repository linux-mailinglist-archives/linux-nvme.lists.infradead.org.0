Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E67B68AA
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Sep 2019 19:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahLeLSbre9/MS+p5umU8b2nIP094SbnpCEmvEXMhk84=; b=AS9jqmgeCqke1W
	Anz7WA6HuGmldhP3zNlgxqAM246e1KA8JIEQpU/PmGOoEnoNphYseTox/7Xy+5WIEao9YM2AmEtPx
	dXbrH4YxfdBXuqjRUXNX4J2YYuqDayKKWfLhLDw16+qykIixfvgDvGYv0U4VAnJwOyk61UoI6B1Ew
	q122eghOhBiBoZ2Kh2Htjej/h0mZkspNqvWtL6O4W/XkXLAIYLVfWpAE9Gs/gE/SDUme5mKhNPJAC
	ELqVTcykVpmqpLV95pPfpe46ifyQOA0t/f0S5O6qshFMsQTMNHcN885dVpEaVb1H3A/c8bRhcIpFE
	LC96Yqw4xsYRcsply2UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAdRB-00058g-Mp; Wed, 18 Sep 2019 17:08:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAdR3-000580-N5
 for linux-nvme@lists.infradead.org; Wed, 18 Sep 2019 17:08:10 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE93520665;
 Wed, 18 Sep 2019 17:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568826489;
 bh=G32la0/Uj46Si9JMGEgwbmCiq3XWbFpIxwtdy37oWGg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YP2Yqo7A+koYz2c0hxGZWLyAtwlLvVGPuowlGAe8Oxuzos29a5n15XvP2WSACUtF4
 pM3ZQ7G/mmiXf5s9lQ1w+w+KmvZvV997vH2ORoIeMMda7cK13y0zwAoDXs5WviUnX5
 /4C893hbfXv6atKsV30Y0YVVUZ6x1CmhNQNnC2RA=
Date: Wed, 18 Sep 2019 11:08:07 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 0/2] nvme: Add kernel API for admin command
Message-ID: <20190918170807.GA50966@C02WT3WMHTD6>
References: <20190913111610.9958-1-robert.baldyga@intel.com>
 <20190913143709.GA8525@lst.de>
 <850977D77E4B5C41926C0A7E2DAC5E234F2C9C09@IRSMSX104.ger.corp.intel.com>
 <20190916073455.GA25515@lst.de>
 <850977D77E4B5C41926C0A7E2DAC5E234F2C9D03@IRSMSX104.ger.corp.intel.com>
 <20190917163909.GB34045@C02WT3WMHTD6.wdl.wdc.com>
 <20190918132611.GA16232@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918132611.GA16232@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_100809_775744_445CBD11 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>, "Baldyga, Robert" <robert.baldyga@intel.com>,
 "Rakowski, Michal" <michal.rakowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 03:26:11PM +0200, Christoph Hellwig wrote:
> Even if we had a use case for that the bounce buffer is just too ugly
> to live.  And I'm really sick and tired of Intel wasting our time for
> their out of tree monster given that they haven't even tried helping
> to improve the in-kernel write caching layers.

Right, I don't have any stake in that out-of-tree caching either. I am
more just interested in trying to get Linux to generically reach as many
NVMe spec features as possible, and extended formats have been in-spec
since the beginning of nvme.

And yes, that bouncing is really nasty, but it's really only needed for
PRP, so maybe let's just not ignore that transfer mode and support
extended metadata iff the controller supports SGLs. We just need a
special SGL setup routine to weave the data and metadata.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
