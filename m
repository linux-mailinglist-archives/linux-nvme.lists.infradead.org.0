Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755F519E95
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 15:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iK4f1q+dBIzZBejQN9Tft5Px8UhL8N6GfyfrKvCptc=; b=MRnGB46HBZPqh5
	9oxW1TibWAR84Trd0OwBkWZmJNobkFQLaZIfylUwFRPnZquODTgZ9E5BPkBMqN8wnJvCxKGXfHL1Q
	5ofWE7R9r47VKIYAkKLE+K4FrWTJoU520HcxDT/wBIWFi/kT6cofu+baiWrxRgSBalbFkzgy/FHDL
	MSNnpludxgfe+QxsiD5L+4EJoaUKKojShvMoNuKF+zzScZUxR76L2KdIO7M6rr7pkO32Chzmi4jBI
	kNhhBpPewP2/+XG0CSVQb2Yc4kcoUueVEWqsgK29vgjj6KWTbjXSPjIpw7sU/JMXIflM/Ciif8CcE
	/rWe2dR0zm+p4t141brA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP61S-0006l6-T9; Fri, 10 May 2019 13:57:14 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP61M-0006kH-UZ
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 13:57:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 06:57:08 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga007.fm.intel.com with ESMTP; 10 May 2019 06:57:07 -0700
Date: Fri, 10 May 2019 07:51:39 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Message-ID: <20190510135139.GE9675@localhost.localdomain>
References: <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <20190510053052.GB3654@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510053052.GB3654@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_065708_998399_804FB1F6 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>,
 "kai.heng.feng@canonical.com" <kai.heng.feng@canonical.com>,
 "Mario.Limonciello@dell.com" <Mario.Limonciello@dell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 10:30:52PM -0700, Christoph Hellwig wrote:
> Also I don't see any reason why we'd need to do the freeze game on
> resume.  

Right, definitely no reason for resume.

> Even on suspend it looks a little odd to me, as in theory
> the PM core should have already put the system into a quiescent state.
> But maybe we actually need it there, in which case a comment would
> be helpful.

I wasn't sure if suspend prevents a kthread or work queue from
running. For example, if the device sends a namespace notify AEN during
S2I, does the nvme scan_work run?

Since I wasn't sure, I took a paranoid approach to ensure nothing was
in flight, but I'd be happy if this is unnecessary.

> > +     if (!pm_suspend_via_firmware())
> > +             return nvme_set_power(&ndev->ctrl, 0);
> 
> Don't we need to save the previous power state here and restore that?
> For example if someone set a specific state through nvme-cli?

Sure, we can do that. It would have been super if the spec had this
set feature command's CQE DW0 return the previous power state so we
could set the new and save the old in a single command, but two commands
is just a minor inconvenience.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
