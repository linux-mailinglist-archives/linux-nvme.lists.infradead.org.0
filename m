Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6BE27F76
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5hSoiWCOwbFOU1UJcxz51CavWdzSiTTWWyU/VtrONU=; b=gPMLqpLX5b7VnY
	DlTgGXT3sKyflV+9sUQiCb8c0/KLLyMTIFjGMJWXQqSRtuNu3h1cFEJPHxSnO2xN55JCnvezNMxVG
	jtHTfiOEVpvjD5Vw4CY0mxqD1zQmgTKxVqDUNNY4cMJAXW/Zg6LiqwLon3o5HEqcAdTZAJpN7CQtn
	yEvA8DS82aOeSDUfGuYdLvvAJb07yEja36gBfr8xHi+0yqd0bc6EUN/KU8mqGVZJt0ikWwkFv2sXR
	OLrclmz6TjTztz0rlwsNhn6aME8aA55HDt1X6fxpnS9KJq0pAnq7Zp5Wf/GVV+9B7/RrLJ/J14nyb
	oMgyvMTQqLlbM0VtXRSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTodj-0006zg-T3; Thu, 23 May 2019 14:24:15 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTodf-0006zB-0i
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:24:12 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 07:24:10 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga008.fm.intel.com with ESMTP; 23 May 2019 07:24:09 -0700
Date: Thu, 23 May 2019 08:19:08 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 0/2] Reset timeout for paused hardware
Message-ID: <20190523141908.GA14943@localhost.localdomain>
References: <20190522174812.5597-1-keith.busch@intel.com>
 <20190523032925.GA10601@ming.t460p>
 <CAOSXXT45jyLrKZ56QOPGWFyajtSvgPQcT+f2nj95n9Eowb44FA@mail.gmail.com>
 <20190523101311.GB15492@lst.de>
 <20190523132304.GB14049@localhost.localdomain>
 <20190523141054.GA19635@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523141054.GA19635@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_072411_110813_8F1E302E 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-nvme <linux-nvme@lists.infradead.org>, Ming Lei <ming.lei@redhat.com>,
 "Busch, Keith" <keith.busch@intel.com>, Keith Busch <keith.busch@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 04:10:54PM +0200, Christoph Hellwig wrote:
> On Thu, May 23, 2019 at 07:23:04AM -0600, Keith Busch wrote:
> > > Figure 49: Asynchronous Event Information - Notice
> > > 
> > > 1h		Firmware Activation Starting: The controller is starting
> > > 		a firmware activation process during which command
> > > 		processing is paused. Host software may use CSTS.PP to
> > > 		determine when command processing has resumed. To clear
> > > 		this event, host software reads the Firmware Slot
> > > 		Information log page.
> > > 
> > > So we are supposed to get an AEN before the device stops processing
> > > commands.
> > 
> > Hm, I read the same section, but conclude differently (and at least some
> > vendors did too). A spec compliant controller activating new firmware
> > without reset would stop processing commands and set CSTS.PP first,
> > then send the AEN. When the host is aware to poll Processing Paused,
> > the controller hasn't been processing new commands for some time.
> > 
> > Could you give some more detail on your interpretation?
> 
> What would be the point of the AEN if it wasn't sent at exactly
> the point when the controller stops acceppting command?
> 
> The wording is of course NVMe-like, but "The controller is starting a.."
> pretty clear implies this is sent at the beginning of the paused
> state, not the end.

Right, the controller starts the pause at time T1, and sends the AEN at
the same time. No new commands will be processed after T1 until the
firmware activate completes.

The host sees the AEN a short time later, time T2.

The time between T1 - T2, we may have sent many commands that are not
going to be processed, and we couldn't have known that when they were
submitted. The controller still owns those commands, and we just need
to adjust their deadlines once processing resumes.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
