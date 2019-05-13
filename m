Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7375C1B9D4
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpw3KSmKJe9lvHCDgzuY+1fvAoaWCzpvpzTqjcMsVB4=; b=UHUwkkH3lhpd56
	oNHzOv+lvLKXvnz1p/+W3eDIliWLpP3RV59sRY1LgU17Pe31GejPGJRDxQdatCkDn8oWdhuIxa38H
	P7jyutWjHDMhU0IomKdWb+TKIiaSQDSIfRrX/g5bkKjsJcovfgGVoRHE6A+GOqaiIur2vFz/z+vfn
	dtq3M3yaxb0VWUuaN6p6B2GerruPRY7Vp2kGkz61nfYigB6c/UDxrTP5/0bDgieq4a5+rng/XzwqM
	H+SOd3xT2qKynb+nWYTVeW+3UjI9x9RdZ8nTNU6aM8IEUQKlxm0u/URStXnxhs0lPc1+g+lfRCfPh
	UvBPzNh+kVzX7Ygdh8aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCmT-0001Zi-TW; Mon, 13 May 2019 15:22:21 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCmN-0001W8-Cr
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:22:16 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 08:22:14 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 13 May 2019 08:22:13 -0700
Date: Mon, 13 May 2019 09:16:52 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190513151652.GB15437@localhost.localdomain>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143754.GE15318@localhost.localdomain>
 <7ab8274ef1ce46fcae54a50abc76ae4a@AUSX13MPC105.AMER.DELL.COM>
 <20190513145708.GA25897@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513145708.GA25897@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_082215_469779_5B0AFB5F 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
Cc: sagi@grimberg.me, rafael@kernel.org, linux-pm@vger.kernel.org,
 Mario.Limonciello@dell.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 kai.heng.feng@canonical.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 04:57:08PM +0200, Christoph Hellwig wrote:
> On Mon, May 13, 2019 at 02:54:49PM +0000, Mario.Limonciello@dell.com wrote:
> > And NVME spec made it sound to me that while in a low power state it shouldn't
> > be available if the memory isn't available.
> > 
> > NVME spec in 8.9:
> > 
> > "Host software should request that the controller release the
> > assigned ranges prior to a shutdown event, a Runtime D3 event, or any other event
> > that requires host software to reclaim the assigned ranges."
> 
> The last part of the quoted text is the key - if the assigned range
> is reclaimed, that is the memory is going to be used for something else,
> we need to release the ranges.  But we do not release the ranges,
> as we want to keep the memory in use so that we can quickly use it
> again.

Yes, this. As far as I know, the host memory range is still accessible in
the idle suspend state. If there are states in which host memory is not
accessible, a reference explaining the requirement will be most helpful.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
