Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FEBD4568
	for <lists+linux-nvme@lfdr.de>; Fri, 11 Oct 2019 18:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFp3EOQ9ywMucaL0ZA9gVqJq4e8OnrhZMqcZFBGuR1I=; b=hq3keNXkGWp36u
	p/G5yda7ImgKkTh6qpnSNG8J/BlOcDOBIiw7QcFpKt2pnBSmndxzVcX+zWaMkEGIOYShID6msZuk2
	/F62OyJ157JQVn1rgEnZvpMHQY1nPQ5E1/q6s0eOiZuE7h9rPjl+57upmq+hU4Vj4RerJPu9Z2oXI
	xpFT4SPpou9aSlymplFH+jhrSOvLV/0M3cfRuWrSuVqaLqHT2d30wpvXLpasZCUR2UO5e5fBtGZe1
	tlTwhQ8YNV508pI1X/vafroQJ5Epcl8c0oMzckJ0MDXRgM/+lcjTvG8+f+cHafWtO5ynJJusUw+2H
	Y/fp01jve6ozL11XklFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIxlK-00073t-Oo; Fri, 11 Oct 2019 16:27:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIxlF-00073G-2J
 for linux-nvme@lists.infradead.org; Fri, 11 Oct 2019 16:27:26 +0000
Received: from C02WT3WMHTD6.wdl.wdc.com (unknown [199.255.45.63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8628F206A1;
 Fri, 11 Oct 2019 16:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570811240;
 bh=tmp9ua/qCr1uT3pCwrIoZ+/OWUgw6c+anmB4plpE57Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nUhW5xYFPBgH/eIpGlc28m+okEQRv91DxkYJWffEQDIpUY9S+c/W5GmyMxICwePMH
 GJlqQqlcMCWaGNAhOieuthTSxQkjnYAKjRq9FQ5l3kg+WMjOJETX90cYKpaXe0NDHb
 MpOhFLN+8w/0ZeSZtieRXLUN/oTrsy0ExRk4Oe7M=
Date: Fri, 11 Oct 2019 10:27:14 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Subject: Re: [PATCHv4 0/5] nvme: double reset prevention
Message-ID: <20191011162714.GB75437@C02WT3WMHTD6.wdl.wdc.com>
References: <20191010165736.12081-1-kbusch@kernel.org>
 <12fd3758-ff71-c02d-1545-5ce8189c2c59@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12fd3758-ff71-c02d-1545-5ce8189c2c59@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_092725_128797_3701B413 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: James Smart <james.smart@broadcom.com>, Judy Brock <judy.brock@samsung.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 09:58:52AM -0600, Nadolski, Edmund wrote:
> On 10/10/2019 10:57 AM, Keith Busch wrote:
> > The main objective of this series is to prevent double resets. This sort
> > of thing is known to have happened if a timeout occurs at roughly the
> > same time as a user intiated reset, like through through PCIe's FLR.
> > 
> > The double reset could happen because the controller disabling had been
> > occuring outside of the RESETTING state when we can't schedule the
> > reset_work, which is to occur later. When another reset schedules in
> > between these events, the controller ends up in the wrong state.
> > 
> > The end result of this series is simply to block subsequent resets by
> > initializing the controller state to RESETTING without actually scheduling
> > the reset_work.
> > 
> > v3 -> v4:
> > 
> >    Renamed nvme_reset_schedule() to nvme_try_sched_reset_work() and
> >    documented when it may fail (hot remove). I'm open to suggestions for
> >    a better name.
> > 
> > Keith Busch (5):
> >    nvme-pci: Free tagset if no IO queues
> >    nvme: Remove ADMIN_ONLY state
> >    nvme: Restart request timers in resetting state
> >    nvme: Prevent resets during paused controller state
> >    nvme: Wait for reset state when required
> > 
> >   drivers/nvme/host/core.c    | 91 +++++++++++++++++++++++++++----------
> >   drivers/nvme/host/fabrics.h |  3 +-
> >   drivers/nvme/host/nvme.h    |  5 +-
> >   drivers/nvme/host/pci.c     | 78 ++++++++++++++++++-------------
> >   drivers/nvme/host/rdma.c    |  8 ++++
> >   drivers/nvme/host/tcp.c     |  8 ++++
> >   6 files changed, 134 insertions(+), 59 deletions(-)
> > 
> 
> Tested-by: Edmund Nadolski <edmund.nadolski@intel.com>

Thanks, Ed.

Christoph, any remaining concerns on this? If no, do you prefer I push
this to 5.5 or 5.4? This fixings reported bugs, but it ended up a bit
larger and later than I originally hoped, so I'm okay either way.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
