Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 516C97CF3A
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 23:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ht8NezP4LL50K+W+SJ3W59dFYk9XdnX6Omou8s+hSoo=; b=tqyMx8GMq5WUC2
	tqcZLcNrCs/rbbda3y2kx8RbtADp69GxQ4+pMEwF3SduAwoD/wCkKOuEGcfwSta9YTVnZ+6nfxS6i
	5hV/AT+jxeQFDJEo663KqM32M++5nJsqQ+SZiAhY3yykjdeJtkA9J7gfsEE0XO4htPgbAyXDI4hnl
	RwYbYVRHFV1LcACwQFDRvIOm6p0VPEpCTGYtZU0ZwXIBRNfkNQepz3Z117qpr84S5MYihSbOhSAZg
	5OWXcJoQ5/Ftxm7JfVkejEyIQgE2ttP3/lbchPi384DFiND0+j3itbw4lIvj4L92HQ/cnHKxuNBx3
	7n6zYQo4CCPjXF+Ee0mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsviu-0001dV-7c; Wed, 31 Jul 2019 21:01:24 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvip-0001d8-Db
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 21:01:20 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 14:01:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="191370176"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2019 14:01:17 -0700
Date: Wed, 31 Jul 2019 14:58:37 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate
 failed because of controller reset
Message-ID: <20190731205836.GD15643@localhost.localdomain>
References: <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
 <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
 <2f7535ab-3d45-b24d-1512-a937e16e620f@grimberg.me>
 <20190731193257.GB15643@localhost.localdomain>
 <0720636c-8706-e927-3c0b-c2687694664f@grimberg.me>
 <20190731201634.GC15643@localhost.localdomain>
 <cb8a1faf-ea19-06c8-35dc-08cd11180974@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb8a1faf-ea19-06c8-35dc-08cd11180974@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_140119_474484_5BD15DD5 
X-CRM114-Status: GOOD (  18.38  )
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 01:45:12PM -0700, Sagi Grimberg wrote:
> 
> > > > > I think I asked this but was not answered, why are we removing
> > > > > the namespace at all? do others do the same thing (remove the
> > > > > disk if revalidation fails)?
> > > > 
> > > > If a namespace no longer exists,
> > > 
> > > Why is it no longer exists? it failed revalidate..
> > 
> > One way it fails to validate is if it doesn't exist, i.e., the
> > controller returned an error when attempting to identify it.
> > 
> > The other way it may fail to revalidate is if its identify has changed
> > since we last discovered it, so removal is better than data corruption.
> 
> Well, perhaps we can mark failures resulting from reset with a transport
> error.
> 
> For example, nvme_cancel_request is setting:NVME_SC_ABORT_REQ, perhaps
> we can modify nvme_error_status to set that into BLK_STS_TRANSPORT and
> check for that as the return code for revalidate_disk?
> 
> Thoughts?

Would it be sufficient to let these admin commands requeue? Instead of
flushing the scan work, we can let it block for IO on a reset, and the
IO will resume when the reset completes.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
