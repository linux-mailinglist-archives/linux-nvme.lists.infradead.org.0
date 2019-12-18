Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28D6124C30
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Dec 2019 16:51:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oG7K6XtA/RTRPZj78vIhtgbj2uZgxrgCBvaPzoGQqRI=; b=l8pirex0WcpTnV
	e8elxRnHTqddHnzp04YXRr3U03JO0CydHlmxHK6GGTvao2ST9ZKUqE7tmI3nrybTyip7YikpZwRc5
	oaBOwomZthclsXExb8U5QX39jbl4YqeVbIST4fqMHE7fxUWQLdReQ0+YsApErs3lLrdIiojN7qXXs
	xx2jvnI6X57aIrdfFQsufgyAgHiF7ZLgO9KlPm0uns75/E8ed/H14Fd4SgzNQq7w96Uhm3W7UVWMU
	bVM+l30iP+355L4VhPvup3gJCarI2jfoOY38EutLAJZ4m0qOeDaDOPrfRPLwG4HdWswJV81Muvua1
	NelWUhBgpNscSaMxfI/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihbbN-0001qY-FC; Wed, 18 Dec 2019 15:51:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihbbI-0001q7-01
 for linux-nvme@lists.infradead.org; Wed, 18 Dec 2019 15:51:01 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5EC4420717;
 Wed, 18 Dec 2019 15:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576684259;
 bh=/55wRoJeGbmcYhycKyvTeJ5mt8CkBl6XTWSdgK2e3/w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tRXrp2tYBug8T67Nu4gwoZuK5m+0/uMzVJ8VCaw37M7W1yX+IQYyUg/ExHtO5Lapp
 b18WF6fLevuEII27fOihwzPz1DfwTSC/6V1SDR7D+nQLTv6inEpTsxWtvM6gjnqMDR
 OUfh3xfJrbFF3buZwT96B5dRPaqKcRHoqvYtOO1Q=
Date: Thu, 19 Dec 2019 00:50:50 +0900
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCHv3 3/4] nvme/pci: Remove use_threaded_interrupts
Message-ID: <20191218155050.GA6625@redsun51.ssa.fujisawa.hgst.com>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-4-kbusch@kernel.org>
 <20191212091433.GD2399@lst.de> <20191218072946.GA23166@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218072946.GA23166@ming.t460p>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_075100_064223_DCBEDA4A 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: bigeasy@linutronix.de, tglx@linutronix.de, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 03:29:46PM +0800, Ming Lei wrote:
> On Thu, Dec 12, 2019 at 10:14:33AM +0100, Christoph Hellwig wrote:
> > On Tue, Dec 10, 2019 at 02:56:21AM +0900, Keith Busch wrote:
> > > The nvme threaded interrupt handling provides quick completions for
> > > latency sensitive workloads, and threaded handlers for more IOPS intensive
> > > ones. Remove the use_threaded_interrupts nvme module parameter since
> > > leaving it disabled should not be providing a benefit.
> > 
> > I think we need some careful benchmarking and numbers to justify the
> > switch.
> 
> The patch can fix CPU lockup on Azure's NVMe, however, IOPS drops to
> ~600K from 3M+.

Compared to current mainline, or is that 3M+ with the poll completions
from submission?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
