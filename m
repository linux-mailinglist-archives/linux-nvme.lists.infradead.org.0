Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 122676B2B8
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 02:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnXmDW7Aqd22cE09uQ66Li0u+NyBeVKhmTY+dmdhxqM=; b=Vl0RUktkibKW/h
	qWvnqpTsL8K4LWl3TX3qaIAKitNpcxILBn3KXrYHWvahdgAF7e4oMtl6b0Kcumf/IV5Umd2GN8w/S
	e1GXBVGvJmHQajje5HKrQB+ywdivYNEu7hspGpymZREYpxve8Uhl4nrXd6/TxF2qPnc7jskSnCJRt
	cTQm48JH7wYc+F2rOSQ4ZHoFGV12I4SAwVjBmOe/u4koG/o+fvAxBbgUhyO60jq3plbF/3a7jHqiI
	H2IEryJ5MaYe27ze1K3y6BBbEJIb4E0setmFOK5e4d/MAoiMee4B5cJY9T+8QcSHLYzZ36ppEghkw
	OqjoHwjrP00OQN0i3ncQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnXbH-0001EC-EG; Wed, 17 Jul 2019 00:15:15 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnXbB-00013L-BK
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 00:15:10 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6H0F0Ho031412;
 Tue, 16 Jul 2019 19:15:01 -0500
Message-ID: <6863e5fa43409c370395cc66e7499dd7c150c497.camel@kernel.crashing.org>
Subject: Re: nvme-5.3 ssd performance regression
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Ming Lei <tom.leiming@gmail.com>
Date: Wed, 17 Jul 2019 10:15:00 +1000
In-Reply-To: <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
References: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
 <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_171509_537463_3A93EE7D 
X-CRM114-Status: UNSURE (   4.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-07-16 at 15:12 +0800, Ming Lei wrote:
> I feel we might need the max segment size limit too.
> 
> commit 7637de311bd2124b298a072852448b940d8a34b9
> Author: Christoph Hellwig <hch@lst.de>
> Date:   Wed Jul 3 09:54:44 2019 -0700
> 
>     nvme-pci: limit max_hw_sectors based on the DMA max mapping size

Yes. Reverting this brings the speed back to 2GB/s

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
