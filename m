Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F54427F2D
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDBYq1IR1W/wbreWDfAmLrQa5qmUFbvQR3I5A5Ngk8o=; b=UwxQmJpqtejblq
	mydTAm0zATUkoxT65k7lvQGC8LBkSYYdjsggwbT9f4wQXXFIUk3TnzpGmd1Z0sFTHcu5cnlalXvPJ
	esjulhzg544w69lob6agvdlNMDcEzx5wkq2jmDtmEF8Xi/HH5WMfTkQp62s9lh+nFL0Pzr6kL8Ix4
	9825n2MidkZwj7RX1QA9eY27vDU7dgBYFKDscnQLUcJVfmTLpOPJv7Bx1gVlU7+st8cyjjCHkMEKO
	iGDoHSforx4nmRsiPJBsZ6xazk7+zqSfNtjZOtrqJnfIM7AWT1/i+tL+OVB+ioridUJMoGPlS+u40
	Foye02lpGpRzXAfNdgDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToRH-0002qc-G1; Thu, 23 May 2019 14:11:23 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToRC-0002pz-2x
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:11:19 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id CCF5E68AFE; Thu, 23 May 2019 16:10:54 +0200 (CEST)
Date: Thu, 23 May 2019 16:10:54 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 0/2] Reset timeout for paused hardware
Message-ID: <20190523141054.GA19635@lst.de>
References: <20190522174812.5597-1-keith.busch@intel.com>
 <20190523032925.GA10601@ming.t460p>
 <CAOSXXT45jyLrKZ56QOPGWFyajtSvgPQcT+f2nj95n9Eowb44FA@mail.gmail.com>
 <20190523101311.GB15492@lst.de>
 <20190523132304.GB14049@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523132304.GB14049@localhost.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_071118_274150_C887DBF0 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Keith Busch <keith.busch@gmail.com>, Ming Lei <ming.lei@redhat.com>, "Busch,
 Keith" <keith.busch@intel.com>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 07:23:04AM -0600, Keith Busch wrote:
> > Figure 49: Asynchronous Event Information - Notice
> > 
> > 1h		Firmware Activation Starting: The controller is starting
> > 		a firmware activation process during which command
> > 		processing is paused. Host software may use CSTS.PP to
> > 		determine when command processing has resumed. To clear
> > 		this event, host software reads the Firmware Slot
> > 		Information log page.
> > 
> > So we are supposed to get an AEN before the device stops processing
> > commands.
> 
> Hm, I read the same section, but conclude differently (and at least some
> vendors did too). A spec compliant controller activating new firmware
> without reset would stop processing commands and set CSTS.PP first,
> then send the AEN. When the host is aware to poll Processing Paused,
> the controller hasn't been processing new commands for some time.
> 
> Could you give some more detail on your interpretation?

What would be the point of the AEN if it wasn't sent at exactly
the point when the controller stops acceppting command?

The wording is of course NVMe-like, but "The controller is starting a.."
pretty clear implies this is sent at the beginning of the paused
state, not the end.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
