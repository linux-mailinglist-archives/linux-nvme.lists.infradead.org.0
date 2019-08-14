Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAB08D815
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 18:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rC/JZRIpnWcavz/R7YANiVgIEJYlitbI7ReRg1+0B8=; b=MSqHeTMhF8u7no
	Sc2KNdpoXl8xt/HXt9VNMwTCKLipHPEbCnhsQhHgMQt2Q/+Av9TwTHZy/26ejHZTCzhxyimZZzYr3
	of0SfT1TCxK9wM+WZ4yzT0cUpjjRMaNRuYE+jBxWGs3vQNyPpIgUQmAlTheuBR9KLZacJfumzxYlx
	IYD2S8AWvs844hj7wDDydfAA2qmtnkSYyIo5LyGjxuRAg3aVhPmYmBmAT3vlKsZdjIRf8a3K1jvbY
	83pGLntTVUG8053AHvMb2JMEb5f7ApgZLyDteE9KmzfGEVHAS72SOFex+TVARx2jNgejm+SuzsW3t
	rW3ObRYahIWUpP3V5DVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxwAB-0002ZT-Kk; Wed, 14 Aug 2019 16:30:15 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwA5-0002YQ-6X
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 16:30:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 09:30:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,385,1559545200"; d="scan'208";a="260554007"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga001.jf.intel.com with ESMTP; 14 Aug 2019 09:30:07 -0700
Date: Wed, 14 Aug 2019 10:27:54 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
Subject: Re: [PATCH] nvme: Use first ctrl->instance id as subsystem id
Message-ID: <20190814162754.GB3256@localhost.localdomain>
References: <20190814142836.2322-1-gpiccoli@canonical.com>
 <20190814160640.GA3256@localhost.localdomain>
 <abfc4bd0-f4f0-5655-81ee-ec32d3516f35@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abfc4bd0-f4f0-5655-81ee-ec32d3516f35@canonical.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_093009_256254_F6EB60A9 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: "axboe@fb.com" <axboe@fb.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "jay.vosburgh@canonical.com" <jay.vosburgh@canonical.com>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 09:18:22AM -0700, Guilherme G. Piccoli wrote:
> On 14/08/2019 13:06, Keith Busch wrote:
> > On Wed, Aug 14, 2019 at 07:28:36AM -0700, Guilherme G. Piccoli wrote:
> >>[...]
> > 
> > The subsystem lifetime is not tied to a single controller's. Disconnect
> > the "first" controller in a multipathed subsystem with this patch, then
> > connect another controller from a different subsystem, and now you will
> > create naming collisions.
> > 
> 
> Hi Keith, thanks for your clarification. Isn't the controller id unique?
> Could the new connected controller from a different subsystem have the
> same id? If you can give a rough example I appreciate.

Sure, start with nvme subsystem A, with host connected to to
controllers, X and Y.

 ctrl X gets instance 0, which you assign to the newly discovered
 subsytem

 ctrl Y gets instance 1

 disconnect ctrl X, which releases instance 0 back to the allocator

 connect to a new ctrl Z in new subsystem B: ctrl Z gets the first
 available instance, which is now 0, and you assign that name to the new
 susbystem, colliding with the sysfs nvme-subsys entries we've created
 for subsys A, as well as any namespaces.
 
> But given the above statement is a fact, what do you think of trying the
> ctrl->instance first and in case we have duplicity, fallback to
> subsystem ID allocator?

At the point we assign the subsystem identifier, we're locked into using
that for the namespace names, which may be discovered long before we're
aware the host has multiple connections to the same subsystem.

I think it'd be better to just completely disassociate any notion of
relationships based on names. The following patch enforces that way of
thinking:

  http://lists.infradead.org/pipermail/linux-nvme/2019-May/024142.html

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
