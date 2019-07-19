Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F6B6D86C
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 03:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OEupRsiApP3JgMeUxWOsYaJMGhbJnPAivTqM0b6duk0=; b=VM5vRkIwgtKcsU
	RC0c8Sv/LPc2D3FG9eBUZXMpU7Od9OYj6AuB4RxyInBUCssfetpoN8RiPesB52BqZrV62StApt50U
	g/p/n2d5LOqISeLdZOknsSjyrl/yZ4gmLI+mGflybC31LkHLK1IFMqUGZKAE2XY2/f9UHZNPpsEpt
	rcybNr4r+czyf8/CLNwKyFkEYZyCOoB3XnyUbpPq3uVLQm7N0Ea7mzILXhY3d8rPana/tJ9RXOTar
	h3R35yt7kjnFY/nJd1tNNLTFQCNafZK8IijceqMQ2ev7ZOT++gemjpSXELwsI2duppkez17xkHGFl
	Nx1i12+n9zRPQKiHgYsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoHn4-0006dt-Vi; Fri, 19 Jul 2019 01:34:31 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoHmw-0006dZ-1C
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 01:34:23 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6J1YH99022405;
 Thu, 18 Jul 2019 20:34:18 -0500
Message-ID: <817740cb3c59f82afab3a361045d05d21618a924.camel@kernel.crashing.org>
Subject: Re: Duplicate tag error with 5.2
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Damien Le Moal <Damien.LeMoal@wdc.com>, Keith Busch <keith.busch@gmail.com>
Date: Fri, 19 Jul 2019 11:34:17 +1000
In-Reply-To: <BYAPR04MB58166A99868B66ABB31CB0DDE7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
 <CAOSXXT6Z=zEpWqac2k1ydk2LynAEtFr-4jXJVCtTa5yn8H7f3Q@mail.gmail.com>
 <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
 <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
 <8936e370b7ae272c8810780ee26ae3cebc8525b9.camel@kernel.crashing.org>
 <BYAPR04MB58169C5A4EF8DFB10C5C2148E7C80@BYAPR04MB5816.namprd04.prod.outlook.com>
 <c7235187d44618bc6636da0968c8037aebf50742.camel@kernel.crashing.org>
 <BYAPR04MB581667EE6FB45D86881529E2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <50c35ab3db7745875476c0966bf191ab42de4dd1.camel@kernel.crashing.org>
 <BYAPR04MB58163BC85D7A5351BC053D43E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <5f29b93ba4bf2f7bd8b0a77bc5f82f4cbb9e8f98.camel@kernel.crashing.org>
 <BYAPR04MB58167459AA9933C66694C2D2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
 <62f188398528c74cfa8352a8cf8a7e3bce50307b.camel@kernel.crashing.org>
 <BYAPR04MB58166A99868B66ABB31CB0DDE7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_183422_225817_D5D99AD6 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 2019-07-19 at 01:24 +0000, Damien Le Moal wrote:
> > No, I think the problem is that Apple implementation (which as I said
> > is just a bit of SW running off the PCIe slave bit of the T2 chip, on
> > the ARM core), somewhat uses the tags we provide for internal tracking,
> > and they don't append the qid to them, so internally they assume all
> > tags are unique regardless of what queue they come from. It's crazy but
> > that seem to be what they did.
> 
> OK. So the device essentially operates with a shared tagset across all queues..
> And indeed that does not play well with Linux driver. Looking at the code,
> having the admin queue and io queues share the same tagset would be the cleanest
> fix, but that would also mean essentially rewriting completely pci.c and
> implementing an "apple.c" host driver :)

Yeah, that's why my approach, while sub-optimal (I have to shrink the
IO queue) is the simplest, I just "offset" the IO queue tag space to
avoid overlaps. The offset is basically the patch I posted yesterday,
just with another hack missing I'll send later to also shrink the queue
to the resulting tags don't go over 127.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
