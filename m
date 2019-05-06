Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75D6145A3
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 09:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5arkDNWtfh9t0RWpfLivmbA5xWmta7gOu+TtvEm1i+o=; b=kMkmcqIDJnZOzO
	Y+qvZRBPPzS5BOPthbkUx5ExR/DXmSo8fvRFkhi4VXfFWJVxzdQGo+5AG1uhRpGQ/8SwcBfrbOW0i
	XCTIEbw2aKVHqJ6WmIA5CjII3jsC2lQQ/GrBsp5RzN1FcRHQdI9zD9T4Mp3HvsRuNHyL/rI07FVz1
	8fmSoyBNSjRXXhpxOasCWoKHYqPf0E+8PopkX3HBpRZizdiCGzTinCwppRW3jTI8lt+SEAaR/6ne9
	9batKbkRG6orNqZliNQNICBIV6Ai1Ie7YDMXDpalG4PCkZz55ddeJH3eiliUuwU7rT9rxYziNI3Gy
	2KJ4tzFsLgldYZqQy5Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYUM-0002ws-Aa; Mon, 06 May 2019 07:56:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYUG-0002va-4s
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 07:56:37 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 04CB43086227;
 Mon,  6 May 2019 07:56:34 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 921CE5DA35;
 Mon,  6 May 2019 07:56:22 +0000 (UTC)
Message-ID: <599086a07da9943e1748d5608357ebc85b2330db.camel@redhat.com>
Subject: Re: [PATCH v2 08/10] nvme/pci: implement the mdev external queue
 allocation interface
From: Maxim Levitsky <mlevitsk@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Date: Mon, 06 May 2019 10:55:19 +0300
In-Reply-To: <20190503120915.GA30013@localhost.localdomain>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190502114801.23116-9-mlevitsk@redhat.com>
 <63a499c3-25be-5c5b-5822-124854945279@intel.com>
 <f1f471e0b734413e6c0f7a8bb1a03041b1d12d6d.camel@redhat.com>
 <20190503120915.GA30013@localhost.localdomain>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 06 May 2019 07:56:34 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_005636_214599_4C4DEAD4 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Fam Zheng <fam@euphon.net>, kvm@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, Liang Cunming <cunming.liang@intel.com>,
 Jens Axboe <axboe@fb.com>, Alex Williamson <alex.williamson@redhat.com>,
 John Ferlan <jferlan@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Heitke,
 Kenneth" <kenneth.heitke@intel.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Amnon Ilan <ailan@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 2019-05-03 at 06:09 -0600, Keith Busch wrote:
> On Fri, May 03, 2019 at 12:20:17AM +0300, Maxim Levitsky wrote:
> > On Thu, 2019-05-02 at 15:12 -0600, Heitke, Kenneth wrote:
> > > On 5/2/2019 5:47 AM, Maxim Levitsky wrote:
> > > > +static void nvme_ext_queue_free(struct nvme_ctrl *ctrl, u16 qid)
> > > > +{
> > > > +	struct nvme_dev *dev = to_nvme_dev(ctrl);
> > > > +	struct nvme_queue *nvmeq;
> > > > +
> > > > +	mutex_lock(&dev->ext_dev_lock);
> > > > +	nvmeq = &dev->queues[qid];
> > > > +
> > > > +	if (WARN_ON(!test_bit(NVMEQ_EXTERNAL, &nvmeq->flags)))
> > > > +		return;
> > > 
> > > This condition is probably not expected to happen (since its a warning)
> > > but do you need to unlock the ext_dev_lock before returning?
> > 
> > This is true, I will fix this. This used to be BUG_ON, but due to
> > checkpatch.pl
> > complains I turned them all to WARN_ON, and missed this.
> 
> Gentle reminder to trim your replies to the relevant context. It's
> much easier to read when we don't need to scroll through hundreds of
> unnecessary lines.

I fully agree, sorry! Next time I will do this.
Best regards,
	Maxim Levitsky


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
