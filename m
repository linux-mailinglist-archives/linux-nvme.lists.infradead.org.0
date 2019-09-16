Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C686B39FF
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 14:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coPUhMczw1Lu6YBG9OXIqhs56uZdbweJ5QUw7iIps68=; b=Ap3BhLOomP58PG
	RpI7pMhWw4Gc8lG4w6HMifO8x75+us4iGVyk7NqLRwwZKqZSmd6TiBssVedzPw4yThgdDwDrtW9Nm
	WbrLDoC1IuEUTdd0P7omf5uN6MEZzB2qJNDwirVu5iiNfU3WHb1zfVLd+HPW/BFABum+mPReaEYsu
	Xa3wFWMLip6n0k2kGuP90aZ406Cme35uji01SHBD23BOd/ibW5p1IRIG2fcAGUF81UdT93S494/4L
	VQj55oZQLhOg4P1fmWqKdGzZX0GjITd7ldjQO3uGP1CFGu6t+smmgF1vdO18IgBgYoiZFtkRtFUFZ
	Om41ExgBWJk548yZyhAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9pnH-0004nG-PS; Mon, 16 Sep 2019 12:07:47 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9pmy-0004mo-VW
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 12:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1568635648; x=1600171648;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7xgAbS9iXo/qqboHcuxoAI5k6jUjfoW5H4F9dykuzlY=;
 b=X+gLACZf+Z3fA0mhGyQ/iarnhgiKxTqjA99hSw6fxXfd7IGCiUPU9q1z
 ccOrIFSGBZuo0ocp4ow/cFcIXDhltFn512MkLYsFkULd2O+hSmYCCOy71
 CNObS6BgWXXuRHGN+/psCXI7EybMZld9TE2LwSUaR/dNt4DhUzh1xENNU M=;
X-IronPort-AV: E=Sophos;i="5.64,512,1559520000"; d="scan'208";a="421371016"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1d-9ec21598.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 16 Sep 2019 12:07:26 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1d-9ec21598.us-east-1.amazon.com (Postfix) with ESMTPS
 id 1FCFFA20B4; Mon, 16 Sep 2019 12:07:25 +0000 (UTC)
Received: from EX13D01UWB001.ant.amazon.com (10.43.161.75) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 16 Sep 2019 12:07:25 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13d01UWB001.ant.amazon.com (10.43.161.75) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 16 Sep 2019 12:07:24 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Mon, 16 Sep 2019 12:07:24 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "hch@lst.de" <hch@lst.de>, "sblbir@amzn.com" <sblbir@amzn.com>
Subject: Re: [PATCH v2 1/2] nvme/host/pci: Fix a race in controller removal
Thread-Topic: [PATCH v2 1/2] nvme/host/pci: Fix a race in controller removal
Thread-Index: AQHVaowXMhT5fp4jR0Gn8rYSgg/tw6ct8YgAgABH9gA=
Date: Mon, 16 Sep 2019 12:07:24 +0000
Message-ID: <336bb49fae2a723bdd31cad1ffe10110a0efb6ee.camel@amazon.com>
References: <20190913233631.15352-1-sblbir@amzn.com>
 <20190916074948.GB25606@lst.de>
In-Reply-To: <20190916074948.GB25606@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.217]
Content-ID: <0C566049C544D84AB27DDB81B4D13DCA@amazon.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_050729_218493_4D948F5B 
X-CRM114-Status: GOOD (  28.37  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "kbusch@kernel.org" <kbusch@kernel.org>, "axboe@fb.com" <axboe@fb.com>,
 "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2019-09-16 at 09:49 +0200, Christoph Hellwig wrote:
> On Fri, Sep 13, 2019 at 11:36:30PM +0000, Balbir Singh wrote:
> > This race is hard to hit in general, now that we
> > have the shutdown_lock in both nvme_reset_work() and
> > nvme_dev_disable()
> > 
> > The real issue is that after doing all the setup work
> > in nvme_reset_work(), when get another timeout (nvme_timeout()),
> > then we proceed to disable the controller. This causes
> > the reset work to only partially progress and then fail.
> > 
> > Depending on the progress made, we call into
> > nvme_remove_dead_ctrl(), which does another
> > nvme_dev_disable() freezing the block-mq queues.
> > 
> > I've noticed a race with udevd with udevd trying to re-read
> > the partition table, it ends up with the bd_mutex held and
> > it ends up waiting in blk_queue_enter(), since we froze
> > the queues in nvme_dev_disable(). nvme_kill_queues() calls
> > revalidate_disk() and ends up waiting on the bd_mutex
> > resulting in a deadlock.
> > 
> > Allow the hung tasks a chance by unfreezing the queues after
> > setting dying bits on the queue, then call revalidate_disk()
> > to update the disk size.
> > 
> > NOTE: I've seen this race when the controller does not
> > respond to IOs or abort requests, but responds to other
> > commands and even signals it's ready after its reset,
> > but still drops IO. I've tested this by emulating the
> > behaviour in the driver.
> > 
> > Signed-off-by: Balbir Singh <sblbir@amzn.com>
> > ---
> > 
> > Changelog:
> > - Rely on blk_set_queue_dying to do the wake_all()
> > 
> >  drivers/nvme/host/core.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index b45f82d58be8..f6ddb58a7013 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -103,10 +103,16 @@ static void nvme_set_queue_dying(struct
> > nvme_ns *ns)
> >  	 */
> >  	if (!ns->disk || test_and_set_bit(NVME_NS_DEAD, &ns->flags))
> >  		return;
> > -	revalidate_disk(ns->disk);
> >  	blk_set_queue_dying(ns->queue);
> >  	/* Forcibly unquiesce queues to avoid blocking dispatch */
> >  	blk_mq_unquiesce_queue(ns->queue);
> > +	/*
> > +	 * revalidate_disk, after all pending IO is cleaned up
> > +	 * by blk_set_queue_dying, largely any races with blk parittion
> > +	 * reads that might come in after freezing the queues,
> > otherwise
> > +	 * we'll end up waiting up on bd_mutex, creating a deadlock.
> > +	 */
> > +	revalidate_disk(ns->disk);
> 
> The patch looks fine to me, but the comments looks a little strange.
> How do we trigger the partition scan?  Is someone opening the device
> again after we froze it?

The race itself is between the timeout for an aborted IO (iod->aborted
= 1) causing a reset and the subsequent disable controller, eventually
leading to IO errors on the device.

To reproduce the issue I run fio on the block device, when due to
timeout fio gets errors, it closes the device (/dev/nvme1), which
triggers udevd to reread the partitions.

But independent of this scenario, the race can be triggered by anything
scanning or reading the partition at the time of reset/disable
controller.

Balbir Singh.
_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
