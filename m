Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA0CAC380
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Sep 2019 02:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dM/rwRHIQ3m++hxwKrmKOTDtmND9Cm5DjRfO7GBA2s=; b=LECD13maUlT6y/
	B4cjwe1DrP37n6fNOfzlZarqqtnjmAZcq5tiC1eBf7pZdmewkQiAgSFJyVxwGj1EN3HPRuzsCvO7X
	rIlTSA82BRLFQ5Yjf9ke+SAiu6vbOOkyDXD/quYqJdoSdRe5USFqWb/NtORXS2FN1YLdoCpngLohc
	OICTOeRPqsQts5+LdULJDjkuvmIr5FaeewX4I/WACrXPcPi7iTbpIZ7TueqKgZUTVx+SHPz7QXJXM
	T8YblobN/vtCcrHfERStjR4OKe/z9XRjN5SXIb9RyFc+HKU6cesr6929JGZ+5CTflToRWyqmdQ/tK
	JK5DBVFpVRVZH0yLAc0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6OAP-0001us-IK; Sat, 07 Sep 2019 00:01:25 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6OAH-0001uY-F9
 for linux-nvme@lists.infradead.org; Sat, 07 Sep 2019 00:01:19 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 75B9FA46C07;
 Sat,  7 Sep 2019 00:01:16 +0000 (UTC)
Received: from ming.t460p (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 764675D9CA;
 Sat,  7 Sep 2019 00:01:06 +0000 (UTC)
Date: Sat, 7 Sep 2019 08:01:01 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Message-ID: <20190907000100.GC12290@ming.t460p>
References: <6b88719c-782a-4a63-db9f-bf62734a7874@linaro.org>
 <20190903072848.GA22170@ming.t460p>
 <dd96def4-1121-afbe-2431-9e516a06850c@linaro.org>
 <6f3b6557-1767-8c80-f786-1ea667179b39@acm.org>
 <2a8bd278-5384-d82f-c09b-4fce236d2d95@linaro.org>
 <20190905090617.GB4432@ming.t460p>
 <6a36ccc7-24cd-1d92-fef1-2c5e0f798c36@linaro.org>
 <20190906014819.GB27116@ming.t460p>
 <ffefcfa0-09b6-9af5-f94e-8e7ddd2eef16@linaro.org>
 <6eb2a745-7b92-73ce-46f5-cc6a5ef08abc@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6eb2a745-7b92-73ce-46f5-cc6a5ef08abc@grimberg.me>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Sat, 07 Sep 2019 00:01:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_170117_530384_D583A127 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 John Garry <john.garry@huawei.com>, Bart Van Assche <bvanassche@acm.org>,
 linux-scsi@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Long Li <longli@microsoft.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 11:30:57AM -0700, Sagi Grimberg wrote:
> 
> > 
> > Ok, so the real problem is per-cpu bounded tasks.
> > 
> > I share Thomas opinion about a NAPI like approach.
> 
> We already have that, its irq_poll, but it seems that for this
> use-case, we get lower performance for some reason. I'm not
> entirely sure why that is, maybe its because we need to mask interrupts
> because we don't have an "arm" register in nvme like network devices
> have?

Long observed that IOPS drops much too by switching to threaded irq. If
softirqd is waken up for handing softirq, the performance shouldn't
be better than threaded irq. Especially, Long found that context
switch is increased a lot after applying your irq poll patch.

http://lists.infradead.org/pipermail/linux-nvme/2019-August/026788.html

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
