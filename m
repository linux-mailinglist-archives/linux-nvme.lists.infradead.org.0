Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC4A27A19
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 12:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgP0lmaSGrtcsHT/0oZ2Vy9sDMZDknZsa3WKKrhXzVM=; b=tKsYdAQ/YLPD23
	R0JAgWNBdBagJe/VvZ7k6XZ0DNVzLhSgK3F5QgQym5kMlJ292TbNAxXfARPD+r63TsV6iLN0YhWPn
	cz64f7sxHiWb9/6h/U18alnh2d6F8g1nfqJf1s0BHFq3YxZ1W2Hg7pHltfmhs4wcOe3IMsfLxUuun
	Ut2VyiRl+BYtckDjE5x8UjQjc/bPcqTEhDGJ9sTzGYz8mdeuD5CEeZyP3nONFl5ocyOOwTmcbnhI4
	CwY5eeigTPAD64WbKnOwWEZWFrreTGDtPD5LSECnq15HF8Nsuu2dYUv2yAxircG/nS5uVaECfxmi3
	Gmx6bhXVmzFv4zkEE+Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkjG-00067d-5l; Thu, 23 May 2019 10:13:42 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkjA-00067L-JT
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 10:13:38 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 88FB168AFE; Thu, 23 May 2019 12:13:11 +0200 (CEST)
Date: Thu, 23 May 2019 12:13:11 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@gmail.com>
Subject: Re: [PATCH 0/2] Reset timeout for paused hardware
Message-ID: <20190523101311.GB15492@lst.de>
References: <20190522174812.5597-1-keith.busch@intel.com>
 <20190523032925.GA10601@ming.t460p>
 <CAOSXXT45jyLrKZ56QOPGWFyajtSvgPQcT+f2nj95n9Eowb44FA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSXXT45jyLrKZ56QOPGWFyajtSvgPQcT+f2nj95n9Eowb44FA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_031336_792739_68D7B5DE 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-nvme <linux-nvme@lists.infradead.org>, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 09:48:10PM -0600, Keith Busch wrote:
> Yeah, that's a good question. A FW update may have been initiated out
> of band or from another host entirely. The driver can't count on
> preparing for hardware pausing command processing before it's
> happened, but we'll always find out asynchronously after it's too late
> to freeze.

I don't think that is the case at least for spec compliant devices.

From NVMe 1.3:

Figure 49: Asynchronous Event Information - Notice

1h		Firmware Activation Starting: The controller is starting
		a firmware activation process during which command
		processing is paused. Host software may use CSTS.PP to
		determine when command processing has resumed. To clear
		this event, host software reads the Firmware Slot
		Information log page.

So we are supposed to get an AEN before the device stops processing
commands.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
