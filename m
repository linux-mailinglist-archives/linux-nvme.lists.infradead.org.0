Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 924111BB52
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 18:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ULpQ9alkTb42U7LYT59r7YuE4KbQELCzTZZVeNYca4=; b=gWxwxqFXi9aQ+C
	3nA3wmTUZUtUlk1/wOL3uQFU8pDhpqpckJQbEbpay3TslYH9duNx7ZG9wiDXpidOA0h2ofwEiEdLw
	Q2WM7CEFNQLTxUIxI221DUXpWOKA+0cAR+aON1hG1bRvLM09O9d/7V/H4YyjyhPeI4DIIFsEiD+WQ
	njFpEeQxGPHyfjzmEE/F6gQ3u6OaD5a7P/rw7Q66ubgGw4A4v+gV9C474z0ht3rpwe/DDP4qesMC8
	GRxr1LwOSycY6sNn3an8WKZiDkom6esDxkkdH5ZmEVGxMXhDYT5CnwS0aQOlQ7w1Wat6kFEBvNCFH
	XE8QHiI0t4tnUHMLQqtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEE8-00081C-W8; Mon, 13 May 2019 16:55:01 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEE4-00080U-7q
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 16:54:57 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 09:54:55 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 13 May 2019 09:54:54 -0700
Date: Mon, 13 May 2019 10:49:33 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 0/3] nvme-core: add user command filter
Message-ID: <20190513164933.GC15437@localhost.localdomain>
References: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
 <20190510214255.GA11723@localhost.localdomain>
 <20190513132517.GB2661@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513132517.GB2661@infradead.org>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_095456_332001_447D6011 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-nvme@lists.infradead.org,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 06:25:17AM -0700, Christoph Hellwig wrote:
> On Fri, May 10, 2019 at 03:42:56PM -0600, Keith Busch wrote:
> > On Wed, May 08, 2019 at 11:36:31AM -0700, Chaitanya Kulkarni wrote:
> > > This patch-series adds a filter to allow only certain user commands.                                   
> > > Right now we use this infrastructure to prevent the user get log page
> > > commands where RAE bit is cleared. We only allow get log pages to be
> > > read with RAE == 0 where we issue the uevent to the userspace so that
> > > user can clear the log pages.
> > > 
> > > Here we white list the log pages which are only allowed when RAE == 0.
> > > We also allow Vendor Specific log pages irrespective of the RAE.
> > 
> > I'm generally against the passthrough interface examining commands. It
> > is not for the driver to decide what an admin can't send to their devices.
> 
> Well, the whole AER model is based around log pages clearing the
> event, so if userspace clears these events we are in pretty deep
> trouble.  Would you prefer just setting the RAE bit unconditionally
> for these log pages?

What if user space really wants to clear it? We shouldn't just make that
capability unreachable to admins.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
