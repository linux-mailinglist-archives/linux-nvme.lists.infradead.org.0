Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C7D2094D
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/zpjt7DSCf9iJlILYs76GxyD7dObLVMaOwdkyWjkIU=; b=snQ6FQfiQXkqK5
	JWLCFnDX+aE2BGGNvM3c0KYfpZ5TjjU4Gk0LJSchZdZ2taH1bxdyaXlm/3sixsY34MfYRtXmG8KPA
	0vCzsE9ZXvCZW/RpWe2Bb2M+7xJJAJMJh2Za1ph4lsuOLKoala3UDS8l6Fj1QHUB/YE0T81mu0J1c
	RMpnw6l7uVxNq0ioOh0/Jg3KWlbtc7BreoiVAx9Z/vOdnbyH2G3AvsSbM+CbAHA1ArbQC6lbRMupn
	CFlmYGabGac0GQGyKgELyhU/FdxHB1Nyw3+6nvC/X7f9clEYI1zFFD8OufXuulDYtnUQhKY8NP7Dp
	CN6zTfF7Cml13yGpvwBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRH9K-0003eK-Tu; Thu, 16 May 2019 14:14:22 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRH9E-0003dx-MG
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:14:18 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 07:14:15 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 16 May 2019 07:14:15 -0700
Date: Thu, 16 May 2019 08:08:59 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 4/6] nvme-pci: Sync queues on reset
Message-ID: <20190516140859.GA23333@localhost.localdomain>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-4-keith.busch@intel.com>
 <20190516062959.GF29930@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516062959.GF29930@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_071416_734020_FB0C570F 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Rafael Wysocki <rafael@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 11:29:59PM -0700, Christoph Hellwig wrote:
> On Wed, May 15, 2019 at 10:36:23AM -0600, Keith Busch wrote:
> > A controller with multiple namespaces may have multiple request_queues
> > with their own timeout work. If a live controller fails with IO
> > outstanding to diffent namespaces, each request queue may attempt to
> > disable and reset the controller in different threads. Synchronize each
> > queue prior to starting the controller to ensure there no previously
> > scheduled timeout work is running.
> > 
> > Signed-off-by: Keith Busch <keith.busch@intel.com>
> 
> Looks good,
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> 
> I wonder if we should move the timeouts to a per-tagset single threaded
> workqueue in the block layer, so that we don't process them in parallel?

I thought that made sense too, and tried that last year:

  https://patchwork.kernel.org/patch/10532983/

There was something wrong with detecting idle queues, but taking a
second look now, I think that's fixable.

But this is a good patch too.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
