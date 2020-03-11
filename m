Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C27D7180D7D
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Mar 2020 02:27:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBV4t+L/iLbTeGgJsbFLbyI9AJ3jEK3TXu/NYbtDUhM=; b=daz1v5mDDyUOl/
	92xalUaxCEYY46U34nkkrU2te3Vz6amRyaTn8jSLYGkVPIqfdt/msMCmC5h2Ky6EOAQqV+fs5sMOA
	Q+lJhPzOFUyTAp8N2U1IDwBwu2yh247AADjA6qemF5uhl7hV2vIrisCJmrVi3eUzX5JOBq9YgV0PU
	p5GioQDb0snwEXeBPSX7uqFr1W/+argrXyFBbz1GrWWWX+XjuKjVmappTYx0MI4E//k3+/w80TjsR
	mqgXS7yM04igy/h4w+17fZ9uj3OkY4r7JLtdf1s9b5gKpEJl/1O/9TVhpc7Ijj/pZYccLULY7CCOg
	mFGTGkPJK0OUp8G0jN2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBq9N-0007Vl-Fv; Wed, 11 Mar 2020 01:27:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBq9I-0007V9-R2
 for linux-nvme@lists.infradead.org; Wed, 11 Mar 2020 01:27:06 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A5EB205ED;
 Wed, 11 Mar 2020 01:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583890023;
 bh=2WR/XqFjKZdY2vFOsxiWU+HrbFRF/jZWdWnBW9PIM1A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n2qu5ZMjZ/ua3UaMuscAtWnOjJ394g6iuaEDZOnuby+NqxAVmCNj0d1qagqjyFvUC
 pLql8hv3NPnzwZOFim7pH89/evbV5iKMCbKcuAxV5gvUNIXVPjlRIW7ULmBJOqKrkw
 2sJTt3C7L2gpMenESxWaB6eU2BLVru5Q+2w0tM9g=
Date: Tue, 10 Mar 2020 18:27:01 -0700
From: Keith Busch <kbusch@kernel.org>
To: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
Subject: Re: I/O performance with block sizes > 128k
Message-ID: <20200311012701.GF604509@dhcp-10-100-145-180.wdl.wdc.com>
References: <321f0a4b-8a75-8cae-2d77-34ad712225d3@oracle.com>
 <20200310170818.GA28008@infradead.org>
 <20200310194421.GB17237@redsun51.ssa.fujisawa.hgst.com>
 <3971720d-d05d-9a08-cb5e-6396df70a8b2@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3971720d-d05d-9a08-cb5e-6396df70a8b2@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_182704_899852_A568C5F6 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christoph Hellwig <hch@infradead.org>, Jens Axboe <axboe@kernel.dk>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 05:52:02PM -0700, Bijan Mottahedeh wrote:
> On 3/10/2020 12:44 PM, Keith Busch wrote:
> > On Tue, Mar 10, 2020 at 10:08:18AM -0700, Christoph Hellwig wrote:
> > > On Mon, Mar 09, 2020 at 02:49:10PM -0700, Bijan Mottahedeh wrote:
> > > > I'm seeing a sizeable drop in perf with polled fio tests for block =
sizes >
> > > > 128k:
> > > Try using a controller with SGL support.  NVMe PRP unfortunately are
> > > a completely brain dead scheme once you use non-tiny I/O sizes (
> > > and actually really painful even for those for other reasons).
> > SGL would really help if you have phyiscal continuity, and never needs
> > to allocate from the dma pools. If most pages in the transfer are not
> > physically contiguous, though, PRP is still more memory efficient. But
> > yes, the PRP format is ... unique. :)
>
> So with SGL you can potentially bypass dma pool allocation but with PRP y=
ou
> always have to regardless of contiguity?

Yes, if the payload can be expressed as a single address range, an
SGL capable controller can describe that in the NVMe command without
allocating a scatter list payload to accompany the command.

The maximum length of a PRP is 4k. If you're transferring 256k per
command, that will require at least 64 PRP entries regardless of the
number of ranges in the DMA mapped scatter-list.

> > FWIW, I couldn't measure a performance drop on real hardware comparing
> > the large pool vs the small one.
> =

> I took out my workaround.
> =

> I can't see a big drop on h/w with 256k either; however, I can't push the
> tests far enough because they hang depending on the number of fio jobs and
> iodepth.
> =

> They seem to be stuck in an io_uring poll loop:
> =

> =A0=A0=A0 58.91%=A0 [kernel]=A0=A0=A0=A0=A0=A0=A0=A0=A0 [k] blk_poll
> =A0=A0=A0 27.01%=A0 [kernel]=A0=A0=A0=A0=A0=A0=A0=A0=A0 [k] io_iopoll_get=
events
> =A0=A0=A0=A0 8.56%=A0 [kernel]=A0=A0=A0=A0=A0=A0=A0=A0=A0 [k] blkdev_iopo=
ll

That looks pretty normal for polled io.
 =

> I had to kill the fio jobs and got a bunch of this output:
> =

> Jobs: 103 (f=3D103): [r(4),_(1),r(12),_(1),r(2),_(1),r(10),_(1),r(2),_(1)=
,r(1),_(1),r(7),_(1),r(1),_(2),r(16),_(1),r(5),_(1),r(6),_(2),r(2),_(1),r(2=
),_(1),r(2),_(1),r(3),_(1),r(9),_(1),r(4),_(2),r(5),_(1),r(3),_(1),r(1),_(1=
),r(4),_(2),r(2)][0fio:
> job 'fiotest' (state=3D5) hasn't exited in 300 seconds, it appears to be
> stuck. Doing forceful exit of this job.
> =

> Hopefully Jens can comment what this means.

What kernel are you using? A bug observed with multiple threads polling
the same queue was just fixed in the 5.6-rc5 release (also in 5.5.8,
5.4.24 stables).

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
