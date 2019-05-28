Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010642CF5B
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 21:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAMxSm+76mulRsMwCRMYYUn/tOBCH/YfxCFNJPe3RfY=; b=CJ02beE50KQwUF
	L1X+wKE7Mk3EnAxsXfZWaoskXZvXJ1BGvs3UbKK2/vGVAmsdfIC8FNLqdUI5lHqKUQ1yajCDhFHT5
	0+Quyg/xIRKOudMpCY2pVmpMzS4e7m8J9J3+vrt6HZ0Pcu9nRGPbfukcjLCTmOizRrEWILB9GgOoW
	xVRPfza9KY05IYA6G4WhzpJDxnTI58XpNXL71fSRIgb7/4LgGaH+JGQ+dOcFIdU2zNNFAZbN2WMG6
	KauF4Yt4KuWaJK7HJphiUFuNPYp3we4kD2fHM6lf1u+jxTkr9bZ/Hl1vYbSzRo5nyzH8eRJid1+D6
	Yc4CM1eqfOzmFJg/uiDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVhg1-0002iD-Br; Tue, 28 May 2019 19:22:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVhfw-0002hp-O3
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 19:22:21 +0000
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 486F420717;
 Tue, 28 May 2019 19:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559071339;
 bh=NNBPdal1/mPJSYY/vCIJCUtKr1A1D9YM+1nS3i59aSE=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=e1nbRXCK4zkM43bwpA5IrqL1jWKct4Vq1WA8Ly1whHC4PevDXtD8UwtxpDcbwlBcX
 u/Iy2IByYwwRF19Qp4GyUTYlrxIALyEi6wSSyzRpxuAIegbR20IpBovAr6moj9KZWm
 p33c+UH3muKLCd+niSSyVHKnZqH4ONYuiwzaoRzE=
Date: Tue, 28 May 2019 21:22:14 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: Re: "nosmt" breaks resuming from hibernation (was Re: [5.2-rc1
 regression]: nvme vs. hibernation)
In-Reply-To: <nycvar.YFH.7.76.1905281709130.1962@cbobk.fhfr.pm>
Message-ID: <nycvar.YFH.7.76.1905282118070.1962@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
 <20190524154429.GE15192@localhost.localdomain>
 <nycvar.YFH.7.76.1905250023380.1962@cbobk.fhfr.pm>
 <92a15981-dfdc-0ac9-72ee-920555a3c1a4@oracle.com>
 <nycvar.YFH.7.76.1905271126480.1962@cbobk.fhfr.pm>
 <nycvar.YFH.7.76.1905281709130.1962@cbobk.fhfr.pm>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_122220_802316_0A61439A 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, x86@kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Hannes Reinecke <hare@suse.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Keith Busch <kbusch@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 28 May 2019, Jiri Kosina wrote:

> [ some x86/PM folks added ]
> 
> I isolated this to 'nosmt' being present in the "outer" (resuming) kernel, 
> and am still not sure whether this is x86 issue or nvme/PCI/blk-mq issue.
> 
> For the newcomers to this thread: on my thinkpad x270, 'nosmt' reliably 
> breaks resume from hibernation; after the image is read out from disk and 
> attempt is made to jump to the old kernel, machine reboots.

Thomas figured it out (and this should be really more widespread than just 
my machine :) ).

nosmt forces HT siblings to mwait, but that explodes after %cr3 change 
during resume, as the mwait target address is all of a sudden not valid 
anymore for neither of the hyperthreads.

That also explains why I apparently didn't see it that regularly with 
kaslr disabled.

Nothing to do with nvme, so let's not continue coming up with proper fix 
in this thread.

Thanks,

-- 
Jiri Kosina
SUSE Labs


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
