Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5962A038
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 23:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/f6OU31vlt1PAVXymlM9RvdqleGJe1XKDtGjo5Uz7w=; b=gRPjyTL+KTgKrk
	9I41Izultftk3yoEzlDT8EUCwIz3UNylFIU+CjhCNoHWRxG+xGiibheVQnvcVztrk+uq3QvJXbPWr
	ofAbEQozeu9OH9VBMonycFaWgo8Zg9sJVGPQP2Ol1iy99LDciXfAIajY2coCcxjttXhAEebvEN2Qh
	OZozsvZMF3DuY/c+H83IwzGyUOZ9Uw+YA2GffZHID5XQwzGmaqJp34VR5EO7vEpXE590Jsv0y7kfr
	5yA9erBb4Zqvq2189tT8zkSni07AK2/5nlbw4lUsC1H5xnLbir3e7vAZ1pTbACXwLuM+Lm9NAJz+3
	9QAtYK3Ppm6yzrcjpKxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUHSA-00049z-8C; Fri, 24 May 2019 21:10:14 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUHRz-0003Tn-6d
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 21:10:07 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 14:10:00 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 24 May 2019 14:10:00 -0700
Date: Fri, 24 May 2019 15:05:02 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [RFC PATCH] nvme: Ignore timeouts while a PCIe reset is pending
Message-ID: <20190524210501.GA17343@localhost.localdomain>
References: <20190522003741.26755-1-kenneth.heitke@intel.com>
 <20190522192656.GB5486@localhost.localdomain>
 <20190522200918.GC5486@localhost.localdomain>
 <e01d7206-dc2c-b3cf-548a-4cb5ffc5bd19@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e01d7206-dc2c-b3cf-548a-4cb5ffc5bd19@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_141003_779466_13A93C56 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: axboe@fb.com, Kenneth Heitke <kenneth.heitke@intel.com>, hch@lst.de,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 11:45:28PM -0700, Sagi Grimberg wrote:
> Keith,
> 
> > I think we should do the above anyway, but it isn't going to help if
> > commands dispatched outside disabling timeout. This should fix that.
> > Note, we never needed to have a sync'ed reset on reset_done(), but
> > this makes it necessary.
> 
> With async reset on reset_done() what guarantees that nvme_dev_disable
> does not run concurrently with another context of nvme_reset_work? both
> mangle with the same queues assuming that they are not running
> concurrently.
> 
> quick archive browse got me to:
> http://lists.infradead.org/pipermail/linux-nvme/2017-December/014599.html
> 
> discussion on my patch, but I think that it was a side effect from
> ming's tests..

Oh, you're right. I think Ming must have been writing to the pc reset
repeatedly, in which case this proposal will have a problem coordinating.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
