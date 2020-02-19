Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E843164790
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 15:58:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ea7FL3IIe/jIYVMTVSJAjij4srDgJ+OFE2Y/zZ1Wtkg=; b=Bh4d8TcQYPh6/t
	KHvbYSBLAnUSotdkLrUuvNm3KY7+yE/Tlgf+HsjuvsH4UeR/QK1FNaTnjwhAWzsBXLLENnGhlcPcf
	WkwXwCk7GlwD5380Dt4TAn6yf4BD1e8H4t0L8SOzysHcvfBgrlFsEhOfIb78XM6ZdfB5uQUo9HRlv
	5RL52eHz6ZGiyDjZZTcbxfryfv5Ay+612mzw1QFaOF3qUoTDLp4PzfeOBYD5YLSQY1hkPtSuVLR69
	57aEbfYq+0bSaN7/WtOG6gwSC5mHvXNTELCbft2N47X5sN24sZOEj1PiVlYlco3OdEf2LDU+vA5mD
	OwCCNsjWUrOEkTTD5D8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Qnl-0001OV-J1; Wed, 19 Feb 2020 14:58:13 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1j4Qnh-0001OK-0H; Wed, 19 Feb 2020 14:58:09 +0000
Date: Wed, 19 Feb 2020 06:58:08 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] drivers: NVME: host: core.c: Fixed some coding style
 issues.
Message-ID: <20200219145808.GA5147@infradead.org>
References: <20200218230131.12135-1-edmund@sucs.org>
 <20200219000519.GB18306@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219000519.GB18306@redsun51.ssa.fujisawa.hgst.com>
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
Cc: Edmund Merrow-Smith <edmund@sucs.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 09:05:19AM +0900, Keith Busch wrote:
> On Tue, Feb 18, 2020 at 11:01:31PM +0000, Edmund Merrow-Smith wrote:
> > Fixed a number of style issues highlighted by scripts/checkpatch.pl.
> > Mostly whitespace issues, implied int warnings,
> > trailing semicolons and line length issues.
> 
> But checkpatch.pl is on the wrong side of the 'unsigned'/'unsigned int'
> debate! The C standard defined unsigned since forever ago, its usage is
> not at all confusing.

Nevermind all the style issues with the patch itself.  Also while I'm
all for clean code - pure cleanup patches are a complete waste of time.
Everyone feel free to clean up obvious warts arounds code that your
are touching for a real fix or feature.  But please stop sending random
cleanup patches.

> 
> _______________________________________________
> linux-nvme mailing list
> linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme
---end quoted text---

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
