Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F474FA6D3
	for <lists+linux-nvme@lfdr.de>; Wed, 13 Nov 2019 03:48:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zhWA1qvuL2geNRxObu7wot25XSbUhmIFXrsks8SEpw=; b=Ur5cu6MXtZNEBr
	efV56UKH7XGXyNM8o0qSoDrzrHgOqEinKbPy7/wxh/H7nllmywKOsszqybZ5+Nlimv4h+gfvRyv0Q
	orKs0XUBGd6MeEiDrRPDCvB203llA4Ky01JaR7+cqMtHYJ/8rF4mChYsOLNuPuK+lsHKViY1+VS7j
	/oJQZ3y4yoiu6V8MKAYw2k9P7hpNlhnNn15Tfq8KFFqXHnrtjvOo/IZCFWAmhnE2JMm6ZAPs08X/G
	DcGR8IU/Urd7VEebRF3iiahbR6EiUQCw4fI9dzOq4Qd5//HWKB73ObPhSYFNtkFyNCswfk69N1kkF
	PHJYm6Ldzyn/aFGnwZdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUihe-0008Vb-R6; Wed, 13 Nov 2019 02:48:18 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUihZ-0008V5-PU
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 02:48:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573613292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=P8SX28o43x1v3QKp+I5AFrSegtrV6cBrObIzKtMoyzc=;
 b=hVNuoK57kEGVNwF0tFQX/1a3iWDjkKbp5BV2u0YC+5RctyhYMI/F/2+S7C7EgipLaKDGEQ
 a9UgaFEsd/sDksfWngs+OLySzCrJJZykLtlqNIpatO0M1ztpj07ioJkobYF606uv/joOSG
 lkKurp7jHL+vKDQiFt6UOrN3+/0pFjA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-254-RbxbeSXVOb-ndSdyXFtQCg-1; Tue, 12 Nov 2019 21:48:09 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 036C92B4;
 Wed, 13 Nov 2019 02:48:08 +0000 (UTC)
Received: from ming.t460p (ovpn-8-28.pek2.redhat.com [10.72.8.28])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 66CC16117E;
 Wed, 13 Nov 2019 02:47:58 +0000 (UTC)
Date: Wed, 13 Nov 2019 10:47:53 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
 multi-mapping queue
Message-ID: <20191113024753.GB28701@ming.t460p>
References: <20191108035508.26395-1-ming.lei@redhat.com>
 <20191108035508.26395-3-ming.lei@redhat.com>
 <82fb330e-a507-999a-69f3-947f13bbaae1@grimberg.me>
 <20191112095649.GE15079@ming.t460p>
 <4664ca6f-2ebb-c69c-5b7f-226a86394adf@grimberg.me>
MIME-Version: 1.0
In-Reply-To: <4664ca6f-2ebb-c69c-5b7f-226a86394adf@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: RbxbeSXVOb-ndSdyXFtQCg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_184813_906561_A82AD043 
X-CRM114-Status: GOOD (  35.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Long Li <longli@microsoft.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 09:35:08AM -0800, Sagi Grimberg wrote:
> 
> > > > f9dde187fa92("nvme-pci: remove cq check after submission") removes
> > > > cq check after submission, this change actually causes performance
> > > > regression on some NVMe drive in which single nvmeq handles requests
> > > > originated from more than one blk-mq sw queues(call it multi-mapping
> > > > queue).
> > > > 
> > > > Actually polling IO after submission can handle IO more efficiently,
> > > > especially for multi-mapping queue:
> > > > 
> > > > 1) the poll itself is very cheap, and lockless check on cq is enough,
> > > > see nvme_cqe_pending(). Especially the check can be done after batch
> > > > submission is done.
> > > > 
> > > > 2) when IO completion is observed via the poll in submission, the requst
> > > > may be completed without interrupt involved, or the interrupt handler
> > > > overload can be decreased.
> > > > 
> > > > 3) when single sw queue is submiting IOs to this hw queue, if IOs completion
> > > > is observed via this poll, the IO can be completed locally, which is
> > > > cheaper than remote completion.
> > > > 
> > > > Follows test result done on Azure L80sv2 guest with NVMe drive(
> > > > Microsoft Corporation Device b111). This guest has 80 CPUs and 10
> > > > numa nodes, and each NVMe drive supports 8 hw queues.
> > > 
> > > I think that the cpu lockup is a different problem, and we should
> > > separate this patch from that problem..
> > 
> > Why?
> > 
> > Most of CPU lockup is a performance issue in essence. In theory,
> > improvement in IO path could alleviate the soft lockup.
> 
> I don't think its a performance issue, being exposed to stall in hard
> irq is a fundamental issue. I don't see how this patch solves it.

As I mentioned, it is usually because CPU's interrupt handling can't catch up
with the interrupt events from hardware. Either the device generates
interrupt too fast, or the CPU isn't fast enough.

> 
> > > > 1) test script:
> > > > fio --bs=4k --ioengine=libaio --iodepth=64 --filename=/dev/nvme0n1 \
> > > > 	--iodepth_batch_submit=16 --iodepth_batch_complete_min=16 \
> > > > 	--direct=1 --runtime=30 --numjobs=1 --rw=randread \
> > > > 	--name=test --group_reporting --gtod_reduce=1
> > > > 
> > > > 2) test result:
> > > >        | v5.3       | v5.3 with this patchset
> > > > -------------------------------------------
> > > > IOPS | 130K       | 424K
> > > > 
> > > > Given IO is handled more efficiently in this way, the original report
> > > > of CPU lockup[1] on Hyper-V can't be observed any more after this patch
> > > > is applied. This issue is usually triggered when running IO from all
> > > > CPUs concurrently.
> > > > 
> > > 
> > > This is just adding code that we already removed but in a more
> > > convoluted way...
> > 
> > That commit removing the code actually causes regression for Azure
> > NVMe.
> 
> This issue has been observed long before we removed the polling from
> the submission path and the cq_lock split.
> 
> > > The correct place that should optimize the polling is aio/io_uring and
> > > not the driver locally IMO. Adding blk_poll to aio_getevents like
> > > io_uring would be a lot better I think..
> > 
> > This poll is actually one-shot poll, and I shouldn't call it poll, and
> > it should have been called as 'check cq'.
> > 
> > I believe it has been tried for supporting aio poll before, seems not
> > successful.
> 
> Is there a fundamental reason why it can work for io_uring and cannot
> work for aio?

Looks Jens has answered you.

> 
> > > > I also run test on Optane(32 hw queues) in big machine(96 cores, 2 numa
> > > > nodes), small improvement is observed on running the above fio over two
> > > > NVMe drive with batch 1.
> > > 
> > > Given that you add shared lock and atomic ops in the data path you are
> > > bound to hurt some latency oriented workloads in some way..
> > 
> > The spin_trylock_irqsave() is just called in case that nvme_cqe_pending() is
> > true. My test on Optane doesn't show that latency is hurt.
> 
> It also condition on the multi-mapping bit..
> 
> Can we know for a fact that this doesn't hurt what-so-ever? If so, we
> should always do it, not conditionally do it. I would test this for
> io_uring test applications that are doing heavy polling. I think

io_uring uses dedicated poll queue, which doesn't generate irq, so
not necessary to use this approach since there is poll already.

> Jens had some benchmarks he used for how fast io_uring can go in
> a single cpu core...

So far I plan to implement it as a quirk for azure's hardware since it is
because the nvme implementation applies aggressive interrupt coalescing.

The aggressive interrupt coalescing has already introduced big IO latency.

> 
> > However, I just found the Azure's NVMe is a bit special, in which
> > the 'Interrupt Coalescing' Feature register shows zero. But IO interrupt is
> > often triggered when there are many commands completed by drive.
> > 
> > For example in fio test(4k, randread aio, single job), when IOPS is
> > 110K, interrupts per second is just 13~14K. When running heavy IO, the
> > interrupts per second can just reach 40~50K at most. And for normal nvme
> > drive, if 'Interrupt Coalescing' isn't used, most of times one interrupt
> > just complete one request in the rand IO test.
> > 
> > That said Azure's implementation must apply aggressive interrupt coalescing
> > even though the register doesn't claim it.
> 
> Did you check how many completions a reaped per interrupt?

In the single job test, at average 8 compeletions per interrupt can be observed
since its IOPS is ~110K.

> 
> > That seems the root cause of soft lockup for Azure since lots of requests
> > may be handled in one interrupt event, especially when interrupt event is
> > delay-handled by CPU. Then it can explain why this patch improves Azure
> > NVNe so much in single job fio.
> > 
> > But for other drives with N:1 mapping, the soft lockup risk still exists.
> 
> As I said, we can discuss this as an optimization, but we should not
> consider this as a solution to the irq-stall issue reported on Azure as
> we agree that it doesn't solve the fundamental problem.

Azure's soft lockup is special, and really caused by aggressive interrupt
coalescing, and it has been verified that the patch can fix it, meantime
single job IOPS is improved much.

We'd still need to understand real reason of other soft lockup reports,
I saw two such RH reports on real hardware, but not get chance to investigate
them yet.


Thanks 
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
