Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3390820A0E
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTh48/XIhaWzdSrnHzsSf7tqHZohypo0ehG0JDpFFD8=; b=oIeHqjBtz5Nmva
	OXJ+1B8q6ezDkVkIgEPJH2c4znwd74HgITQbqOBbur++xwee9tThz7i2IZDBoNH2NcfYwbRdQciWZ
	idLar5rYh3J5VkEom4oMx1BEoIN5dK9d/JrygWetx1ses8/30e34HilbQdDfDsh5EFYoyGzOmPAoS
	kgMFQfGoCh9a47dQnG3RelVSAjiFbBXQOu5Pb/00pOUm2h0IZodd5+o//CLsjg1I56psXC05Xlrjr
	D3sp9MxmCVqgYX7/XOVNeh8FV5oP110mCtpeFHHtGIVnOSY9NlgJOYFf/E55p5u4lHZbctVYTct7z
	Zfx1erccZVIBoJzDI/Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHdd-0002CO-Ac; Thu, 16 May 2019 14:45:41 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHdW-0002BG-UD
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:45:37 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 07:45:33 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 16 May 2019 07:45:33 -0700
Date: Thu, 16 May 2019 08:40:17 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
Message-ID: <20190516144017.GA23372@localhost.localdomain>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516064651.GA30234@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_074534_983941_3409112A 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 11:46:51PM -0700, Christoph Hellwig wrote:
> On Wed, May 15, 2019 at 03:33:51PM -0600, Keith Busch wrote:
> > So here's a solution that no one will like: pull subsystem and controller
> > instances from the same IDA so that there won't be any namespace block
> > devices with a matching controller handle name. While this does nothing
> > to clear up device relationships, this will force the user to think
> > really hard about what they're doing and avoid such mistakes.
> 
> Hmm.  So we'll get:
> 
> /dev/nvme0
>  - chardev subsys X ctl 1
> 
> /dev/nvme1n1
> /dev/nvme1n2
>  - namespaces for subsys X
> 
> /dev/nvme2
>  - chardev subsys X ctl 2
> 
> /dev/nvme3
>  - chardev subsys Y ctl 1
> 
> ...
> 
> This should work.  Not sure it really buys us so much, though.

Right, it's not much. The only thing I want accomplish with this is to remove any excuse for
sending commands to the wrong handle. We can insist that it's wrong 
 
> Btw, I wonder if we should have udev rules for:
> 
> /dev/nvme-subsys-$NQN-ctrl1
> /dev/nvme-subsys-$NQN-ctrl2
> /dev/nvme-subsys-$NQN-ns1
> /dev/nvme-subsys-$NQN-ns2
> 
> I have to admit that since udev/systemd moved to github I can't
> be bother to send them patches, though as it would require signing
> up for that crappy service.

I can send it on your behalf if you have a rule in mind.

We do already have /dev/disk/by-{path,id,uuid} rules already, if that's
what you're looking for.

We don't have rules for the chardev though. Those devices are skipped in
60-persistent-naming.rules.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
