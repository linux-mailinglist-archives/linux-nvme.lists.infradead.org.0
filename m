Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB661FB443
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 16:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBcRw7a5czQ1d9m7J/lDZNNX5N2ASPqgN/85LRx227E=; b=edABS3K9Z2utbD
	GtetL/f8+yy/Mcfyr4HVXhlyx+BbUk2WdujphoKw3G4GGLXhUO7yyKpdEksYebuhB2KDJm/MLp5Qp
	9jCjZkUgsR738aDEXejzfYLv6Dn/S8LdQGI0Z71o0u3as7kLz+u+PjhFoCC9uZCcdDwpqEJlRVWM4
	8GrLSyQ7YoWEhwsJ39YFeHotjW/0ZQTrRBGFEOMgqGs+Yc8MAl2Zvo7BpI5YP0VOr3US1oJUNJh43
	Xb69mUe/JmRn+5OaxDjmYGMK1TFY4YoRNrBcNg1g0xTSGIsKVtRVckiKGRaEKL5WvSSK7V3tCgbi7
	yKjrosOu8F6c8+LvN2yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCYB-00010e-Mh; Tue, 16 Jun 2020 14:26:55 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCQV-00077Z-EK
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 14:19:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 14ACFABE4;
 Tue, 16 Jun 2020 14:19:01 +0000 (UTC)
Date: Tue, 16 Jun 2020 16:18:55 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Keith Busch <keith.busch@wdc.com>
Subject: Re: [PATCH 2/5] null_blk: introduce zone capacity for zoned device
Message-ID: <20200616141855.4opiywhfbo7sa7nu@beryllium.lan>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-3-keith.busch@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615233424.13458-3-keith.busch@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_071859_751840_C29C83FB 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <damien.lemoal@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Aravind Ramesh <aravind.ramesh@wdc.com>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Matias =?utf-8?B?QmrDuHJsaW5n?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 08:34:21AM +0900, Keith Busch wrote:
> From: Aravind Ramesh <aravind.ramesh@wdc.com>
> 
> Allow emulation of a zoned device with a per zone capacity smaller than
> the zone size as as defined in the Zoned Namespace (ZNS) Command Set
> specification. The zone capacity defaults to the zone size if not
> specified and must be smaller than the zone size otherwise.
> 
> Signed-off-by: Aravind Ramesh <aravind.ramesh@wdc.com>

Just a little nitpick.

Reviewed-by: Daniel Wagner <dwagner@suse.de>

> ---
>  drivers/block/null_blk.h       |  2 ++
>  drivers/block/null_blk_main.c  |  9 ++++++++-
>  drivers/block/null_blk_zoned.c | 17 +++++++++++++++--
>  3 files changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/block/null_blk.h b/drivers/block/null_blk.h
> index 81b311c9d781..7eadf190528c 100644
> --- a/drivers/block/null_blk.h
> +++ b/drivers/block/null_blk.h
> @@ -44,11 +44,13 @@ struct nullb_device {
>  	unsigned int nr_zones;
>  	struct blk_zone *zones;
>  	sector_t zone_size_sects;
> +	sector_t zone_capacity_sects;
>  
>  	unsigned long size; /* device size in MB */
>  	unsigned long completion_nsec; /* time in ns to complete a request */
>  	unsigned long cache_size; /* disk cache size in MB */
>  	unsigned long zone_size; /* zone size in MB if device is zoned */
> +	unsigned long zone_capacity; /* zone cap in MB if device is zoned */

Maybe also use zone capacity in the comment instead of the abbreviation?


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
