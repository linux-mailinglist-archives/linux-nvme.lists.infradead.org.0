Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8FC9F7F8
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 03:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlaQSeJSYnorjGJMYsOtJrnr8/F0Ue8rrqb6ikzLX7k=; b=ef87Yfoxo3a51F
	OraTNhUMlg0dUxN10b3xGooJRrAYyXsKMEBbWfNTB76OHEWQFoMB6lVYZCp+WrCmYhgQgXWUvb8TX
	yd+4WqJnjdnCF67hpc+UkWehFNss6hq48uu/VNb6xXqI9ZUFZ149cKJuY4AdZOAFae+m99rg7+4b0
	arH8weMk7PexN5xwv12joUwWoDXsEf/KR9VMFRafIXQolL8JYPlN/kHWDIm9qt5sHmKIenlAt+DJU
	z4FukfhYfvDpQyEU9kXlGYeho8HX/gC4W0DpYMjGKUAj9kF4+1TTDJwIQXMRo8jHdRpIgZl/woGE2
	oP9q792bXGPPUjyHNk1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2n26-0004t2-5q; Wed, 28 Aug 2019 01:45:58 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2n1s-0004ri-Ii
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 01:45:46 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1D13C281D1;
 Wed, 28 Aug 2019 01:45:40 +0000 (UTC)
Received: from ming.t460p (ovpn-8-23.pek2.redhat.com [10.72.8.23])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 26924600D1;
 Wed, 28 Aug 2019 01:45:29 +0000 (UTC)
Date: Wed, 28 Aug 2019 09:45:25 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH 3/4] nvme: pci: pass IRQF_RESCURE_THREAD to
 request_threaded_irq
Message-ID: <20190828014524.GA8090@ming.t460p>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-4-ming.lei@redhat.com>
 <7cdb9dbb-46e5-b66a-ddf1-c7ecceb28d7a@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7cdb9dbb-46e5-b66a-ddf1-c7ecceb28d7a@acm.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.71]); Wed, 28 Aug 2019 01:45:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_184544_637582_373E98C2 
X-CRM114-Status: GOOD (  15.96  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 08:10:42AM -0700, Bart Van Assche wrote:
> On 8/27/19 1:53 AM, Ming Lei wrote:
> > If one vector is spread on several CPUs, usually the interrupt is only
> > handled on one of these CPUs.
> 
> Is that perhaps a limitation of x86 interrupt handling hardware? See also
> the description of physical and logical destination mode of the local APIC
> in the Intel documentation.
> 
> Does that limitation also apply to other platforms than x86?

Please see the following excellent explanation from Thomas.

	https://lkml.org/lkml/2018/4/4/734

Especially the following words:

	So at some point we ripped out the multi target support on X86 and moved
	everything to single target delivery mode.
	
	Other architectures never supported multi target delivery either due to
	hardware restrictions or for similar reasons why X86 dropped it. There
	might be a few architectures which support it, but I have no overview at
	the moment.


thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
