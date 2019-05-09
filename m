Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCF5189D6
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 14:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Lz5l8yn1NCYFR5ta4IiBVpmTO7pfMUDK4/dNfiIkHo=; b=WjeNAJCKzJgM/8
	9eJPeEqd/shyfzewNP2r5lPzL1fTVtJ61AKyUQYWkxf55ganGJLrU/ogSJ/U86dRvEW1CWTWvO6bt
	R4AAFLUW5p+0OsWpX2/cpmqKH7Bao07tj/KqTVMtVNuYhWieNBgOyi/hF3y8yzog+IIKIrtTyqQBR
	8IZyWdV7JGPI5CE15uW7AOR2PBftbYjL7R1S0zQ3vwZLO5b9i3PiTmT3Cl97R7AKdEwFcwKoym2GC
	4gNH2Qya5HM8QmIYM35mJWNFa0C52d2zDo9obHEdtOgo8vRuOuNqLjwkh9GeARXrvyYkakrVqr/Ej
	/wAhN+J+Ajfl+Drh+UEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiFw-0003h8-5p; Thu, 09 May 2019 12:34:36 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiFq-0003Vy-OZ
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 12:34:32 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id E3F8968AFE; Thu,  9 May 2019 14:34:06 +0200 (CEST)
Date: Thu, 9 May 2019 14:34:06 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH] nvme-pci: fix single segment detection
Message-ID: <20190509123406.GB21483@lst.de>
References: <20190509110409.19647-1-hch@lst.de>
 <20190509112410.GA20711@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509112410.GA20711@ming.t460p>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_053430_951949_CCEB4424 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>, axboe@fb.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 linux-block@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 07:24:12PM +0800, Ming Lei wrote:
> I'd suggest to fix block layer instead of working around the issue here,
> then any driver may benefit from the fix.

That is my plan, and I started on it.  But the fix isn't trivial, and
will probably take a while and be invasive.

> Especially checking bio->bi_vcnt is just a hack, and drivers should
> never use .bi_vcnt.

That is why it is explicitly commented as a hack.  But a good enough
one to still speed up typical 4K I/Os - one a bio has been cloned
chances are very high we don't care about the fast path any more.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
