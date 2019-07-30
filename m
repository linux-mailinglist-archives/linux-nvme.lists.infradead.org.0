Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75937B4D9
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 23:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=px6y4U2cDazj93KzxEqlE38maS2CD2SA7u8vUNV6h5c=; b=szByaqrYEMqbRF
	o4kcNWaXwz9KwfjGwTQG8mT/ZzgyGnh5wrzds0WPqgsqtQJYVz58iN9cH0fnVGnklFa4wFVhPzDBT
	0pLKbviBMIvag7TzJGOD9/5L/8/Xodoim6Ou+FTDLLBIJxLl3qFn22SdwCYDO+ov0d2g0WWMMuqr2
	eUxTtGDGxNmdYmj+S9YMEq5sqZfzIC08dzuwAX9fTPHHcQ/AVhT2S0KMI+R/3LfPeE1S23qhPoue4
	YV7eP2yF4xHpu413BQrpEbrU0iyRyEjG1Tj8+504hwiSYfXHkQ70eE5N99Tt9ka1b47YA+YYS3K2j
	ZoxKb/efY2z6NmEMedPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZR8-00077b-G4; Tue, 30 Jul 2019 21:13:34 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZR2-00077C-Od
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 21:13:30 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 14:13:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="162829295"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 30 Jul 2019 14:13:26 -0700
Date: Tue, 30 Jul 2019 15:10:44 -0600
From: Keith Busch <kbusch@kernel.org>
To: Charles.Hyde@dellteam.com
Subject: Re: [PATCH] drivers/nvme: save/restore HMB on suspend/resume
Message-ID: <20190730211044.GJ13948@localhost.localdomain>
References: <362aad7f1cf547c2a73e1c4f564984db@AUSX13MPS303.AMER.DELL.COM>
 <20190730204829.GI13948@localhost.localdomain>
 <c90ac9850f944407b39e369dce2e1e72@AUSX13MPS303.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c90ac9850f944407b39e369dce2e1e72@AUSX13MPS303.AMER.DELL.COM>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_141328_814219_5693202D 
X-CRM114-Status: GOOD (  18.15  )
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
Cc: axboe@fb.com, Mario.Limonciello@dell.com, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 08:59:38PM +0000, Charles.Hyde@dellteam.com wrote:
> > > LiteOn CL1 devices allocate host memory buffer at initialization.
> > > This patch saves and restores the host memory buffer allocation for
> > > any NVMe device which has HMB.  Devices which have on-board memory
> > > buffers are not impacted.  This patch has been tested locally with the
> > > following devices: LiteOn CL1 and CA3, Hynix BC511 and PC601, WDC
> > > SN520 and SN720.  This patch has also been tested by our partners at
> > > Wistron and Compal.
> > 
> > Please explain why you're doing this rather than what you're doing. We
> > previously concluded that NVMe power states have no spec defined impact
> > on HMB, so changing driver behavior requires justification.
> 
> Why this change is necessary is because LiteOn CL1 devices would
> effectively freeze when coming out of S0ix.  The user perspective is
> that, although the Linux kernel is still running in RAM, no commands
> could be executed because the CL1 device had no memory buffer, or the
> memory buffer was not in the same location; the memory buffer address
> was not discernable by me because I had no ability to run commands in
> this condition.  After implementing this change, these same CL1 devices
> function properly and command access is restored.

But why does the device need this? The kernel has not relocated the HMB,
and it hasn't removed control of the HMB from the device either. We made
a concious choice to not disable HMB in order to get the fastest resume
latency, and additional HMB management is not supposed to be necessary
in the first place. So what's going on with this device that it needs
the driver to disable/enable HMB? Is the nvme power state breaking its
ability to use it or something else?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
