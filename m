Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385B411E067
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Dec 2019 10:13:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WW8c+4xze15wVBslQgUpbNLtmaihNEFRSyiHqMeq4yE=; b=lZZQS2SDPoa5gG
	CQSGAoFxldwmUg+3SxyO+3dtugNiiswEZdEQOSCDuDrWGhdlZC11cbVO5ktIX0KYkyOePu//DsGp1
	VGouXbywnXZLB5iHviWom+r5O54HoHe8X+dgECXBwc1numeTVvQIWcDSHTic48UX3t40rblNWnLfO
	TjuJbXEGcUw71rwVzL2NQ65oRNLTZFZ3AFxTpJgAvjsa2EtAOUd8li/uSwPKXcTjU3+Nrw6+Ysx20
	mhdt2Hvi7pGxXz+DZhoAJx6+ONFp3zWp4rIx4DGr0yYvLTk3USBMnOU3Z2w+wuJzhnPKHlF9/eAaB
	LZs7OvlTCYRX7vE93tbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifh0z-0001Fg-GR; Fri, 13 Dec 2019 09:13:37 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifh0p-000145-RQ
 for linux-nvme@lists.infradead.org; Fri, 13 Dec 2019 09:13:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1576228408; x=1607764408;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=CBG1FDANtU5OZr3itkCR/uZ0kGzF/Rp81mdKwZKZTmw=;
 b=n+022V3yih+YgcgBo504w7Yx2QoUCvUPqoR8SKMVDKbAoHvYwlUeju2e
 KRn45rXO3/h7oYPpmSWi6RKjeOHAFg0OU1b1GhMBMsANL7OYChXY8un/P
 PjxEM64QNBujs0jvKIz97ZwiAf5SCN4GwIYnooVqc5eG4jMulIeffq3Ea c=;
IronPort-SDR: R4EWnN0LcLv3X8VjF98eHYXSiwobj13NuJFtg1jfSe3jZQPRiaEXcXvdv2mR/rTU60u/8H6D4+
 oZHClg/pP4ww==
X-IronPort-AV: E=Sophos;i="5.69,309,1571702400"; d="scan'208";a="13309466"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2a-119b4f96.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 13 Dec 2019 09:13:13 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2a-119b4f96.us-west-2.amazon.com (Postfix) with ESMTPS
 id 216D91A1E8F; Fri, 13 Dec 2019 09:13:11 +0000 (UTC)
Received: from EX13D11UWB004.ant.amazon.com (10.43.161.90) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Dec 2019 09:13:11 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13D11UWB004.ant.amazon.com (10.43.161.90) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Dec 2019 09:13:11 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Fri, 13 Dec 2019 09:13:11 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [RFC PATCH] block/genhd: Notify udev about capacity change
Thread-Topic: [RFC PATCH] block/genhd: Notify udev about capacity change
Thread-Index: AQHVrwYjh2l0GmmZOEmELsmopgOsAqe2RkCAgAGGxwA=
Date: Fri, 13 Dec 2019 09:13:10 +0000
Message-ID: <8dee699c66a2c8532bd82515291d7fa86cab93f4.camel@amazon.com>
References: <20191210030131.4198-1-sblbir@amazon.com>
 <20191212095431.GA3720@lst.de>
In-Reply-To: <20191212095431.GA3720@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.100]
Content-ID: <85A3E586BE61E449B1EB82A25A1F7677@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_011327_923573_C9C89971 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>, "mst@redhat.com" <mst@redhat.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "Sangaraju,
 Someswarudu" <ssomesh@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-12-12 at 10:54 +0100, Christoph Hellwig wrote:
> On Tue, Dec 10, 2019 at 03:01:31AM +0000, Balbir Singh wrote:
> > Allow block/genhd to notify user space (via udev) about disk size changes
> > using a new helper disk_set_capacity(), which is a wrapper on top
> > of set_capacity(). disk_set_capacity() will only notify via udev if
> > the current capacity or the target capacity is not zero.
> > 
> > disk_set_capacity() is not enabled for all devices, just virtio block,
> > xen-blockfront, nvme and sd. Owners of other block disk devices can
> > easily move over by changing set_capacity() to disk_set_capacity()
> > 
> > Background:
> > 
> > As a part of a patch to allow sending the RESIZE event on disk capacity
> > change, Christoph (hch@lst.de) requested that the patch be made generic
> > and the hacks for virtio block and xen block devices be removed and
> > merged via a generic helper.
> > 
> > Testing:
> > 1. I did some basic testing with an NVME device, by resizing it in
> > the backend and ensured that udevd received the event.
> > 
> > Suggested-by: Christoph Hellwig <hch@lst.de>
> > Signed-off-by: Balbir Singh <sblbir@amazon.com>
> > Signed-off-by: Someswarudu Sangaraju <ssomesh@amazon.com>
> > ---
> >  block/genhd.c                | 19 +++++++++++++++++++
> >  drivers/block/virtio_blk.c   |  4 +---
> >  drivers/block/xen-blkfront.c |  5 +----
> >  drivers/nvme/host/core.c     |  2 +-
> >  drivers/scsi/sd.c            |  2 +-
> >  include/linux/genhd.h        |  1 +
> >  6 files changed, 24 insertions(+), 9 deletions(-)
> > 
> > diff --git a/block/genhd.c b/block/genhd.c
> > index ff6268970ddc..94faec98607b 100644
> > --- a/block/genhd.c
> > +++ b/block/genhd.c
> > @@ -46,6 +46,25 @@ static void disk_add_events(struct gendisk *disk);
> >  static void disk_del_events(struct gendisk *disk);
> >  static void disk_release_events(struct gendisk *disk);
> >  
> > +/*
> > + * Set disk capacity and notify if the size is not currently
> > + * zero and will not be set to zero
> 
> Nit: Use up all the 80 chars per line.  Also maybe turn this into a
> kerneldoc comment.  I think you also want to mention the notification
> as well.

Will do!

> 
> > +EXPORT_SYMBOL_GPL(disk_set_capacity);
> > +
> > +
> >  void part_inc_in_flight(struct request_queue *q, struct hd_struct *part,
> > int rw)
> 
> No need for the double empty line.
> 
> >  {
> >  	if (queue_is_mq(q))
> > diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
> > index 7ffd719d89de..869cd3c31529 100644
> > --- a/drivers/block/virtio_blk.c
> > +++ b/drivers/block/virtio_blk.c
> 
> And you probably want to turn this into a series with patch 1 adding
> the infrastructure, and then one patch per driver switched over.
Makes sense, will do

Thanks for the feedback
Balbir Singh.
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
