Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A37E3EAF
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 00:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqHDC9d5/rpwoVZ6/8vdkMhJ46TehhWhK9+hHnmbox0=; b=LbRaszoZ1AT5VQ
	8r6wIjjCaQfC1LWfS2LsGxE9a8Ubad6q38aQKNnm+0sajzEwjPgw6mga20f7desVwqVeaoDup/lgh
	C9d1uSCX/cAQ3NCeKGaw1lb4aofhdD+IjOiEmEMD0oWWgLsnvaD8I6hLZHDNlV3tWqy9K6irN3d56
	inKKTiCnLzTdc7zR0zy9QntOHrF9irvxWXO3oJqEFfvMxwjQzl6cgseW3gedSQA8hhSZ6FN2ILNkY
	3a4LeKLerFg/84aBG6fC4QqmStVBmK3wwEKtodhba1SOFdmAfIwdbP4boR+W+sVyf51o9FhCgKnQk
	zBuJOIUvnHk91lMlTFtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNlAj-0001rk-9c; Thu, 24 Oct 2019 22:01:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNlAd-0001rF-Du
 for linux-nvme@lists.infradead.org; Thu, 24 Oct 2019 22:01:28 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B87492084C;
 Thu, 24 Oct 2019 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571954487;
 bh=xdkUuckaMOBUTSgtdoX+0pi45xYQHnglOzJcvNws2gY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F9sNcutSsj5Fv/b8Pi6ss04WXvRffLCQ3Gr6fFO5LczCpOTqxQUa6E/dg8aIbOL3m
 SWZNxYOzxfu8DkSenzaJqkhDKxR1OXkIz7hfotNLoZzIfB/7Ij41ATARStpLvenDe+
 d9N1aBCsR5eaUKZvQjzfe/61HGg4iyTs5hBBkCQg=
Date: Fri, 25 Oct 2019 07:01:19 +0900
From: Keith Busch <kbusch@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 3/7] nvmet: Introduce common execute function for
 get_log_page and identify
Message-ID: <20191024220119.GA25484@redsun51.ssa.fujisawa.hgst.com>
References: <20191023163545.4193-1-logang@deltatee.com>
 <20191023163545.4193-4-logang@deltatee.com>
 <20191024011743.GC5190@lst.de>
 <382906f0-ce0b-282a-9665-8317b50fe374@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <382906f0-ce0b-282a-9665-8317b50fe374@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_150127_488134_FE61B7D5 
X-CRM114-Status: GOOD (  12.07  )
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

On Thu, Oct 24, 2019 at 11:18:20AM -0600, Logan Gunthorpe wrote:
> On 2019-10-23 7:17 p.m., Christoph Hellwig wrote:
> > 
> > First signoff needs to be the From line picked up by git.  I don't really
> > care if you keep my attribution or not, but if you do it needs From
> > line for me as the first theing in the mail body, and if not it
> > should drop by signoff and just say based on a patch from me.
> > 
> > Otherwise the series looks fine.
> 
> Ok, understood. Do you want me to fix this up in a v2? Or can you fix it
> up when you pick up the patches?

I'll adjust with the commit. Just let me know which way you'd like to go,
whether attribute author to Christoph or use the "Based-on-a-patch-by:"
option.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
