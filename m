Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FB5AACF8
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 22:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGbs9FgX+mE8N8LZPBmP4yUMoKwNrHg2p9AfuSSDqNc=; b=EeR4O9YedCsrcO
	HQdte6JN4R4wGIpnUOmz7zn56CjYWEyyJVjNVlzw7dkXTmdTa6Os4pVV0kmqUmXYq0k6NPmNlU4IV
	QgtrgWxSS4cNRIVF/OPsQL/oef7PQnjix7t762qtWFb6eF5SOcP2speOMqGWIsqcJzBQzCjfu2LHm
	9z1Kh+oJ9bJ2J+fOqCFAawFkQY2ySAiAG86jFters/0bmgG0fJWBUn0o2ti7cxAtTYFORCUAwLmdV
	iNTHHXj3FbS3xaXAhn1XqBivqu1buEPZgDxRGHGjzNJZRHooOp1opI0F6yatRdRgSXgQTywcXyblL
	erVcK6B5VuwPP4iVSEcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5yLt-0002Kf-Jb; Thu, 05 Sep 2019 20:27:33 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5yLn-0002K3-6U
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 20:27:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 13:27:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,471,1559545200"; d="scan'208";a="212910216"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2019 13:27:26 -0700
Date: Thu, 5 Sep 2019 14:25:57 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/5] nvme: Restart request timers in resetting state
Message-ID: <20190905202557.GA25467@localhost.localdomain>
References: <20190905142607.24897-1-kbusch@kernel.org>
 <65aa0709-c8a7-2988-864a-4bda0a4c3ce8@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <65aa0709-c8a7-2988-864a-4bda0a4c3ce8@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_132727_244340_D0A56FB3 
X-CRM114-Status: GOOD (  16.25  )
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 01:13:43PM -0700, Sagi Grimberg wrote:
> 
> > +	/*
> > +	 * Restart the timer if a controller reset is already scheduled. Any
> > +	 * timed out commands would be handled before entering the connecting
> > +	 * state.
> > +	 */
> > +	if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
> > +		return BLK_EH_RESET_TIMER;
> > +
> >   	if (ctrl->ctrl.state != NVME_CTRL_LIVE) {
> 
> Not sure I understand what exactly is this solving? if the controller is
> not responding to a connect command, we just added another ADMIN_TIMEOUT
> to failing it.

The connect command is sent in the CONNECTING state, no? So that's not
affected by this. The point of this patch is to not do anything in a
reset state because whatever set the reset state is responsible for
clearing any commands prior to exiting that state.

But the motivation for why I'm bringing this up now is that it also
prepares for PATCH 2/5. That one uses the RESETTING state when the
controller reports CSTS.PP. We do not want to schedule a reset when the
controller is in that state, and we also expect any IO dispatched prior to
seeing CSTS.PP may time out. Any IO should complete once CSTS.PP clears,
so not escalating recovery is the correct action during that window,
and we use the state machine to coordinate that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
