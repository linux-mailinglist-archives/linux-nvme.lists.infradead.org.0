Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AC79F6B0
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 01:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ip9XaKr+4RsRz83LotLJp1ZgMr5zQkXcMIpwMnDu460=; b=rqzMllnq9MXV5+
	5Nj2J+BqDkV2v3w0FG8oz2RhQ+Yny6rAgO69mgDHA2164whq67pTCjVlM2B9K9f4IbXDbKjVW+4U/
	XwRsCHkBZ6qbU9Id3Kkk6crxl2vQ+BBD7Y1O7ftpL2slLZi72Amfm4o+fNULvkJFsKnwJN4/wV4xQ
	5q3x+SLZfWljeiJQRX6/okHendeSZzGm0M21sAhjDVS/OkEa6cJDvDHWEVGDYJEdNTAnWOGPunH4J
	CWD5yWckAOZe6vHZLOZwvfwyzINUV5PQckq3h8Nj5UEUu9sbh5v3uKNkoYtS/a0LDBNTfemJXvxjE
	jQlD++AYcwlizx7zET5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2kdh-00023J-QI; Tue, 27 Aug 2019 23:12:38 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2kdV-00022z-Tp
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 23:12:27 +0000
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i2kdD-0005dr-Ja; Wed, 28 Aug 2019 01:12:07 +0200
Date: Wed, 28 Aug 2019 01:12:06 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
In-Reply-To: <20190827230451.GB5263@ming.t460p>
Message-ID: <alpine.DEB.2.21.1908280110380.1939@nanos.tec.linutronix.de>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-2-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1908271817180.1939@nanos.tec.linutronix.de>
 <20190827230451.GB5263@ming.t460p>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_161226_107328_705611FE 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-scsi@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Long Li <longli@microsoft.com>, John Garry <john.garry@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019, Ming Lei wrote:
> On Tue, Aug 27, 2019 at 06:19:00PM +0200, Thomas Gleixner wrote:
> > > We definitely are not going to have a 64bit multiplication and division on
> > > every interrupt. Asided of that this breaks 32bit builds all over the place.
> > 
> > That said, we already have infrastructure for something like this in the
> > core interrupt code which is optimized to be lightweight in the fast path.
> > 
> > kernel/irq/timings.c
> 
> irq/timings.c is much more complicated, especially it applies EWMA to
> compute each irq's average interval. However, we only need it for
> do_IRQ() to cover all interrupt & softirq handler.

That does not justify yet another ad hoc thingy.

> Also CONFIG_IRQ_TIMINGS is usually disabled on distributions.

That's not an argument at all.

Thanks,

	tglx

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
