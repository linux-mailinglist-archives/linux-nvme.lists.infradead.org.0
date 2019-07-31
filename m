Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95D07CE0B
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 22:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yU0WgTFEIwIswK3o/YrLq6zgZX6oP7enIsv0hUIrdt8=; b=BcIvok9FChISqm
	6Da1xs+fO8GIXI1PT8hyNDH8lor61Ct48JyoKOMBvUIkzHpRIBLrNTc9DOd6c6OZqOB5zVPJLe3oj
	g/krgI/rTTvi2WnP3/ixqtdwVqqd2fxQr0CO73mBCKSzT9WiQYvRjUD5akqPnTzdVOVH0txGkCpvT
	EuCGmcD/vjhszvT6DSDAKJrEuADSWnslUnTBxfK2kozGKiEJz7xYupg8UqzLETMSLPgrKiVpfh/0m
	yb6naGytCLGEgYa+zNl1aE299JW+qo8zncRlbFFLj0TLHg98DX/otPfYlxs/TiLdn+G2woyEalsot
	rtEeDvfd3/+V/pfU8jMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsv4D-0003yy-ES; Wed, 31 Jul 2019 20:19:21 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsv48-0003yf-QU
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 20:19:18 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 13:19:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="256286767"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga001.jf.intel.com with ESMTP; 31 Jul 2019 13:19:15 -0700
Date: Wed, 31 Jul 2019 14:16:34 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate
 failed because of controller reset
Message-ID: <20190731201634.GC15643@localhost.localdomain>
References: <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
 <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
 <2f7535ab-3d45-b24d-1512-a937e16e620f@grimberg.me>
 <20190731193257.GB15643@localhost.localdomain>
 <0720636c-8706-e927-3c0b-c2687694664f@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0720636c-8706-e927-3c0b-c2687694664f@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_131916_872642_32DAF985 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Wed, Jul 31, 2019 at 01:08:05PM -0700, Sagi Grimberg wrote:
> 
> > > I think I asked this but was not answered, why are we removing
> > > the namespace at all? do others do the same thing (remove the
> > > disk if revalidation fails)?
> > 
> > If a namespace no longer exists,
> 
> Why is it no longer exists? it failed revalidate..

One way it fails to validate is if it doesn't exist, i.e., the
controller returned an error when attempting to identify it.

The other way it may fail to revalidate is if its identify has changed
since we last discovered it, so removal is better than data corruption.

Either scenario could happen from administrative namespace management
commands to any controller in the subsystem.
 
> > what do you want to do with it instead of removing it?
> 
> Well, I don't see anyone else even checking the return
> status of revalidate_disk.. Perhaps Hannes can share more
> on how scsi handles this?

Other drivers may have a different path to this, but I'd imagine they
handle a LUN deletion somehow.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
