Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCE96D84B
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 03:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICpecTU6N269ybDKTNG/Ho9TIqAy8zCqevKslDxAWO8=; b=mXFWi4IbCGbMAX
	KKKD20kJrlICF/Edv3L6/vQCbpUP9h01Gna5275p3JghqcYlw6zONoanmdHJy92lla2SUGePP/zUb
	YCmn8xJkS8FzJ8AT4MOkIOVKq2wS3pdvg07akGK3sBLHNrglEAsq1xqiV4GwV4CIyiQpuNKb6PGzX
	Zad7v0U8H7XiSxM07qAcnmmw3xnQkRXNNrgZ7iVceazvZjh7MOACSo4agECfA4t0KPTLW/nNhH7M+
	UV1h0AZ7MMpbGlrTY5b8nZPQaDlQj8Rce6KCaFe2eKl512Nx106B+Px4DDfd4S2e8csP7es5zTIVi
	qefzWPNe8hk7/hZ03u/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoHZK-0002bM-9e; Fri, 19 Jul 2019 01:20:18 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoHZA-0002LS-HB
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 01:20:09 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6J1K3hR021957;
 Thu, 18 Jul 2019 20:20:04 -0500
Message-ID: <62f188398528c74cfa8352a8cf8a7e3bce50307b.camel@kernel.crashing.org>
Subject: Re: Duplicate tag error with 5.2
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Damien Le Moal <Damien.LeMoal@wdc.com>, Keith Busch <keith.busch@gmail.com>
Date: Fri, 19 Jul 2019 11:20:02 +1000
In-Reply-To: <BYAPR04MB58167459AA9933C66694C2D2E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
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
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_182008_730598_3B305B2B 
X-CRM114-Status: GOOD (  15.87  )
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

On Fri, 2019-07-19 at 01:09 +0000, Damien Le Moal wrote:
> On 2019/07/19 10:00, Benjamin Herrenschmidt wrote:
> > On Fri, 2019-07-19 at 00:53 +0000, Damien Le Moal wrote:
> > > 
> > > If the admin req completion comes in the wrong queue, then the admin queue
> > > completion queue should not be changing and not need any head/doorbell tweaks.
> > > It simply stays as is. Since I think that nvme_handle_cqe is used for all
> > > commands regardless of submission type (normal, polled, sync, etc), this should
> > > work in all cases. Not sure at all for all this. Some side effects are
> > > definitely possible. But worth a try I think.
> > 
> > I've printed the queue I get completions from and they arrive in the
> > right queues. So that doesn't seem to be the issue.
> 
> OK... But then how is it possible to get a bad tag error ? if the commands are
> issued and completes in the correct queues, the tagsets are independent and
> should not clash in any way. This is really weird.
>
> > Apple's implementation is a SW one running on the T2 chip, I suspect
> > it's just completely broken and they don't care because they have their
> > own driver.
> 
> Got it, but if the prints show correct cqueues, Linux normal driver should
> work... Or is it a problem with a buggy T2 controller implementation resulting
> in some completions being queued twice ? Really weird HW :)

No, I think the problem is that Apple implementation (which as I said
is just a bit of SW running off the PCIe slave bit of the T2 chip, on
the ARM core), somewhat uses the tags we provide for internal tracking,
and they don't append the qid to them, so internally they assume all
tags are unique regardless of what queue they come from. It's crazy but
that seem to be what they did.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
