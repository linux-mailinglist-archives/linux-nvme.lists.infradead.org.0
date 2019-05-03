Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EFF12D70
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 14:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ao+OjKpA+gTVNOp/EaNQnme96XNyGBZj0XkH6Am7ryc=; b=SbroNy3EcKM1YT
	wbDJr5HjFeSnz5n95+TMNCEjn53e1oC5vRxfWtH0nsKg2+luyvA5c18gQNRJgoOOThTma7SfJOzrd
	UEDxudhP8xvb/7UQFDxri9BjGEo0NLUDo+m6Uni6t1SAJaLWuon3fxpLKDXWZcWpcfdzK7gxVLD47
	5hrwJxjAkPToswIzGcYhhxIHWJYbZgTKOK0e2mfumyFaq/NPxu6sgKdkz6j/WlYzJn+1bIKpIeKdz
	j5ys01kXRM/Rz3DN6KyhdtFmi/STHrCCWBt4z8Wfdw2/TVm545lERScDNZikh/a1wyJn4X64OjJWZ
	vNpl7TpbFC4i59J577Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXBT-0000TU-Q7; Fri, 03 May 2019 12:20:59 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXBO-0000ST-1q
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 12:20:55 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 0A1DA68B05; Fri,  3 May 2019 14:20:36 +0200 (CEST)
Date: Fri, 3 May 2019 14:20:35 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 0/4] nvme-pci: support device coredump
Message-ID: <20190503122035.GA21501@lst.de>
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <20190502125722.GA28470@localhost.localdomain>
 <CAC5umygdADGrYeJy=F53Mm4bNPHmo+WY4SD3HFSRqi_cLrz9jw@mail.gmail.com>
 <20190503121232.GB30013@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503121232.GB30013@localhost.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_052054_247135_74AD8843 
X-CRM114-Status: UNSURE (   7.62  )
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Keith Busch <keith.busch@intel.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 06:12:32AM -0600, Keith Busch wrote:
> Could you actually explain how the rest is useful? I personally have
> never encountered an issue where knowing these values would have helped:
> every device timeout always needed device specific internal firmware
> logs in my experience.

Yes.  Also not that NVMe now has the 'device initiated telemetry'
feauture, which is just a wired name for device coredump.  Wiring that
up so that we can easily provide that data to the device vendor would
actually be pretty useful.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
