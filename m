Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 518BEE4088
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 02:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utFlqptdaCh67tcVvMZV2hyWnX/FW93AFDZ7HHZLFBk=; b=Cclh4P+SJrE+cZ
	GX5pZUlXLKMyevne8ysw9NphjYIMnxyKttxqFuWYLLX7izgXKb8dNaZw96gOoJkIQJ+pvCBWpiPUi
	YXkJfmhUXbI4cn3miKgr4gUYo0GJXUtIHu0NFOGVa1gW/ornRXe1zJTNFvgv3DwhhHUsXsrtZhOwL
	6ubkAsH6mEijC5Ck0bOWaosHFNPPQsHiQ3ihcbdVYokFMaExDQ4Huo5xgnknqkOLdUwe2dl/JqfTf
	czVk89yPocqCWEkQvcKUGFNsws+tBZApvhVd2gv5zIYjZth548zgs9kSy8MxU2yhOgLjbLBk9Rizs
	M+IMw61OnIGOEpc3BUJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNnLi-0008Ij-0I; Fri, 25 Oct 2019 00:21:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNnLa-0008IE-Ex
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 00:20:55 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3030D21929;
 Fri, 25 Oct 2019 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571962854;
 bh=bC985rj/uGr5kpM3lV8+Lzv14SErAUJ30tXkNbNlDNU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mR+2whxhjFQ/HKwosMbLS1XgQA4+o7WRtuXfJ0BJvvnTDWvKzt0nhxZQiC8dw7pau
 glmXpqG25L32OylS3HzItJywufNSTaMwJee2IrXk10hx11/LO28Z7NZwBvXcz27Obs
 dHBNDDXi7+ICUbJE0HefWpLvzKHrBcQpQCHfvIl0=
Date: Fri, 25 Oct 2019 09:20:50 +0900
From: Keith Busch <kbusch@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 0/7] Remove data_len field from the nvmet_req struct
Message-ID: <20191025002050.GC28602@redsun51.ssa.fujisawa.hgst.com>
References: <20191023163545.4193-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023163545.4193-1-logang@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_172054_520362_1342D380 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 10:35:38AM -0600, Logan Gunthorpe wrote:
> Hi,
> 
> This patchset is a cleanup in preparation for the passthru patchset.
> The aim is to remove the data_len field in the nvmet_req struct and
> instead just check the length is appropriate inside the execute
> handlers. This is more appropriate for passthru which may have
> commands with unknown lengths (like Vendor Specific Commands).
> It's also in improvement seeing it can often be confusing when
> it's best to use the data_len field over the transfer_len field.
> The first two patches in this series remove some questionable uses
> of the data_len field in nvmt-tcp
> 
> Most of this patchset was extracted from a draft patch from
> Christoph[1].
> 
> The series is based on v5.4-rc4 and a git branch is available here:
> 
> https://github.com/sbates130272/linux-p2pmem/branches nvmet_data_len
> 
> Logan

Thanks, applied to nvme-5.5 with the requested author attribution.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
