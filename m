Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28831FB274
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 15:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrM4zgxF0J8D1p7rLdyj0PDXHq/WAvjY46oUMqmZIDA=; b=hcXhjH6iHtyica
	sQJH5G6Ucn0/9Ny49cU9KQ3hmEdB79P4Sr1ZIBMZGW6vj45PpWnY+hEkESQbqmvw8wYdn9OGEIIP7
	45MudpFVG/tyhfoHAUmRe7uSImnt+1ss39RI2jqn8i95LeuR64p6td+oSAsAzNmPdP2t/ugh6mpe0
	zdOATbxHqsC5nu19mIVhee65Jd9p5Ft5Yb4a5TPCe1Dbr8Ri/alFHbtbDSSmq5aokpKpSCKnP+bs+
	7IdNsJ2pV7y/rg0UU2P19L8FFZ3EbDxlepq52F6EdRvCXe/A29p2OqCX2XLsHB0kDMRN6SoWES7Lz
	DomXTxJFiFJO8B+69HeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBwS-0006Q9-8W; Tue, 16 Jun 2020 13:47:56 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBwN-0006PN-KL
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 13:47:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E196FAD25;
 Tue, 16 Jun 2020 13:47:46 +0000 (UTC)
Date: Tue, 16 Jun 2020 15:47:41 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Keith Busch <keith.busch@wdc.com>
Subject: Re: [PATCH 1/5] block: add capacity field to zone descriptors
Message-ID: <20200616134741.zvs55r6pga5w2pvo@beryllium.lan>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-2-keith.busch@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615233424.13458-2-keith.busch@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_064751_811030_246CBB27 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Matias =?utf-8?B?QmrDuHJsaW5n?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 08:34:20AM +0900, Keith Busch wrote:
> From: Matias Bj=F8rling <matias.bjorling@wdc.com>
> =

> In the zoned storage model, the sectors within a zone are typically all
> writeable. With the introduction of the Zoned Namespace (ZNS) Command
> Set in the NVM Express organization, the model was extended to have a
> specific writeable capacity.
> =

> Extend the zone descriptor data structure with a zone capacity field to
> indicate to the user how many sectors in a zone are writeable.
> =

> Introduce backward compatibility in the zone report ioctl by extending
> the zone report header data structure with a flags field to indicate if
> the capacity field is available.
> =

> Signed-off-by: Matias Bj=F8rling <matias.bjorling@wdc.com>

Reviewed-by: Daniel Wagner <dwagner@suse.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
