Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C397B10F8C6
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 08:35:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UL1cy4QyAYg8iCMsvktKWpdv+W0JCpT8a7n8nWQfqzQ=; b=aVVJWdpb6vEZhd
	ps6bFk7xyQaPI4TeJjPGVeIxLrCjSUrvZo+YOSKu5uzanceSQgvPiD6KWqWxglIqIsP0iA6tJgL5e
	2fQ4k86udKr+Fleq72Bf0bthd7q9CvQsyZXS8Viz1IeNzJh+5zjS/Oz9mMBCqFVsoEWTdQX/aa9e6
	oyXgzuCQVNlu+djv8/to7Ce59/Z5o9X1zy8ynrwWA/3Dtk8Xt0yMZg87jdITZGyoZRbc1wa53FrHR
	qQ5rs0WHovac5tDhyBvm38IMSal2vkX0ofdCFZilbINPxkNwF1DsWmjbXJxm7mL29Ldc6LRH4DhUY
	1sx+JySjgJymE0vVPraQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2i1-00079C-Qo; Tue, 03 Dec 2019 07:34:57 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2hv-00078n-9X
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 07:34:52 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9C21668BFE; Tue,  3 Dec 2019 08:34:47 +0100 (CET)
Date: Tue, 3 Dec 2019 08:34:47 +0100
From: "hch@lst.de" <hch@lst.de>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [RFC][PATCH] nvme/core: Notify udev about capacity change
Message-ID: <20191203073447.GA23426@lst.de>
References: <20191129002746.6622-1-sblbir@amazon.com>
 <20191129082449.GA9953@lst.de>
 <0a5fc287a4ac392b9b192402e6786e7129b9d5f2.camel@amazon.com>
 <20191203065421.GA23032@lst.de>
 <BYAPR04MB57497F5F024F3E5F2200835F86420@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB57497F5F024F3E5F2200835F86420@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_233451_482923_9D1963F9 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>, "Sangaraju, Someswarudu" <ssomesh@amazon.com>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "Singh, Balbir" <sblbir@amazon.com>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 07:26:03AM +0000, Chaitanya Kulkarni wrote:
> On 12/02/2019 10:54 PM, hch@lst.de wrote:
> > I pretty much hate the set_capacity name to start with, so what about
> > a more descriptive name for new the helper?  blk_set_capacity?
> 
> Do we also need a blk_mq_ops or appropriate block layer callback
> capacity change function, so that file systems can register
> a callback function to take an appropriate action, e.g.
> rebuilding the metadata with new size ?
> 
> If this make sense I'll be happy to take a look.

Well, and op isn't going to help with file system notifications as
that goes the other way around.  We'd probably need some way how
file systems can register a new callback into the existing block
device events framework that is used for media changes.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
