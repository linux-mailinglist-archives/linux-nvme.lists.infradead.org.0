Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96563E9D1E
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 15:05:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVq9Ty765u3sLL9FkvhPNTgBcJ7QlVwVZRjUU8oAy/k=; b=NbdZmfXuXxj05H
	6eZHU9dHk2vsTar8JYz9PgeGp+/UpS5OIQY4CFlOr34hDna0biB6RqakPG0kyyWlQmsmOmSewcLFO
	GnxUovSBsoQGqFtsJcDu1HMetB0hNylLHHGaN2Sk0BBiDD736LvPqC7TlmFY42Qw46/HH9vsATKsw
	xZI4irL4/EHc4mk8sTQ/77Gj6oODalwfIGpw69iz8hm82tIZvY3mD3l503JOrGzz3IjJKPmBIvKJ9
	RGLsCs4vye+Fwyr061gxHY+y1xfNOrLlOVyAXEnO1KmDN/XseO/kdDq38Bo8KTVqj3JTHEEObawcx
	HwBhyJtxX1THLnEjfuVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPobF-0004p5-LB; Wed, 30 Oct 2019 14:05:25 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPob8-0004hx-L8
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 14:05:20 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id BC5D068C4E; Wed, 30 Oct 2019 15:05:11 +0100 (CET)
Date: Wed, 30 Oct 2019 15:05:11 +0100
From: Christoph Hellwig <hch@lst.de>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v2] nvme: Add hardware monitoring support
Message-ID: <20191030140511.GA14252@lst.de>
References: <20191029223214.18889-1-linux@roeck-us.net>
 <CAC5umyhc=6yULiLwXu65VDvDk2cBiF0R9O39B-T5ftapJfj0rQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyhc=6yULiLwXu65VDvDk2cBiF0R9O39B-T5ftapJfj0rQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_070518_893074_B1C8B18F 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Chris Healy <cphealy@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 08:16:48PM +0900, Akinobu Mita wrote:
> The nvme_init_identify() can be called multiple time in nvme ctrl's
> lifetime (e.g 'nvme reset /dev/nvme*' or suspend/resume paths), so
> should we need to prevent nvme_hwmon_init() from registering hwmon
> device more than twice?
> 
> In the nvme thermal zone patchset[1], thernal zone is registered in
> nvme_init_identify and unregistered in nvme_stop_ctrl().

So Guenter said above the thermal subsystem could use the information
from hwmon as well.  Does this mean this patch would solve your needs
as well?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
