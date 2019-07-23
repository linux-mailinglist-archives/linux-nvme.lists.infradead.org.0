Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58AF71C70
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 18:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0LM5oYYEmypdaqT5FRG35ZPKwU0doua+eCReE6Iaz8=; b=YuaYMg6TGc/FIu
	HWcHYFKJlciqoKySeDKpbVzFQEa6gIm8GlVfnfokC7Fuz/wXtKFzKjcdyGEaNjHQVWK9hGGwVsPSP
	vvOz8rQDTAaeVHrNl+iUjw9oFNBMKCoolviQm/4UCe9ebSmqE2xXfJ+37Em5oM+di39fLMgQOicEl
	jbIlCS7gneCCnTUEvVBT+12oZK+sCYrmKnP7G6Pz1iwKj2HUeYQhNi2V7GgypryHxWTU2Glc0BaO9
	7s1G/L/x0xykUgEj3oXF4gdIM02wMJYZaz+xDIDNIEWtD2XGU6AtD3TKnOc3JXWlHes1ANYg8ocqz
	1rbDraxtudSaUQxiGAEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxIG-0005Ve-Gu; Tue, 23 Jul 2019 16:05:36 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxHN-0004DO-EN
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 16:04:43 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 09:04:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="197173385"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 23 Jul 2019 09:04:39 -0700
Date: Tue, 23 Jul 2019 10:01:42 -0600
From: Keith Busch <kbusch@kernel.org>
To: Matias =?iso-8859-1?Q?Bj=F8rling?= <mb@lightnvm.io>
Subject: Re: [PATCH V2 0/4] lnvm: minor clean-ups
Message-ID: <20190723160141.GA4002@localhost.localdomain>
References: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
 <744d9561-0710-6428-6135-cb1902fc66ad@lightnvm.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <744d9561-0710-6428-6135-cb1902fc66ad@lightnvm.io>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_090441_586885_37A9DCC5 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: Klaus Birkelund <birkelund@gmail.com>,
 Javier =?iso-8859-1?Q?Gonz=E1lez?= <javier@javigon.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 10:58:11AM +0200, Matias Bj=F8rling wrote:
> On 7/21/19 5:32 PM, Minwoo Im wrote:
> > Hi,
> > =

> > This series is nothing but a clean-up patch series.  I hope it's not a
> > just code churns, but a good start to do something for lnvm.
> > =

> > The first one removed a redundant whitespace in the command description.
> > The second one removed unnecessary print for the sizeof(dev) which will
> > always be zero in case user does not give any argument for the device.
> > The third patch removed temp variable instead casting the pinter
> > directly.  The last one just sync-up the kernel UAPI header file to the
> > latest.
> > =

> > Please review.
> > =

> > Thanks,
> > =

> > Changes to V2:
> >    - Resend the series with the latest patch commits.
> > =

> > Minwoo Im (4):
> >    lnvm: remove redundant whitespace in lnvm_init()
> >    lnvm: do not print 0 when the arg is not given
> >    lnvm: cast identity structure to (void *) directly
> >    lnvm: sync-up uapi lightnvm.h header from kernel
> > =

> >   linux/lightnvm.h         | 52 +++++++++++++++++++++++++++++++++++++++-
> >   nvme-lightnvm.c          |  7 +++---
> >   plugins/lnvm/lnvm-nvme.c |  8 +++----
> >   3 files changed, 58 insertions(+), 9 deletions(-)
> > =

> =

> Thanks Minwoo.
> =

> Patch 1-3 looks good to me. Keith, feel free to pick them up.
> =

> Patch 4 can wait until there is a use for the data structures.

Sounds good, series applied from the pull-request.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
