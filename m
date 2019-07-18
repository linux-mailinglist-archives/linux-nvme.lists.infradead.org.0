Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236C36C8BE
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 07:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUUmbYD5e92B2k4cLqDUpJQoTP8e+Irc4HKJu8i15pM=; b=Vhhrprpt4ZVJUD
	f2jjNetXGy327lvcQOBHAsS7yOegj+MI8j6y5sc8GRF+D3JQuHe/vusmwhtDCtHMLx4c2zh2673+6
	9aNH7CT3mL6GupZRYEIiM/oNLgndLa+G8T50axyA2njVxe9D9i97lzQCXqnJF4+sR9zu55sKJTN4F
	rgJMnKzOqmpi6t6DqlfGXqhTHS8qFMW/y1r8ct/wWnU796Up6azNOHWF4Xz4U7gTwDf8wqDx6wP+8
	D0KZenidLhnwORmgN7KKlBPnhGLTiyc3x98KIHBwiESjKmQQp5yyP5XfkZ+Bf6WiieeoJGP0gcuNJ
	UGHAliZQOlBtSxoVLO9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnyxH-0002B5-MS; Thu, 18 Jul 2019 05:27:47 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnyx4-000203-CO
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 05:27:35 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6I5RTln006111;
 Thu, 18 Jul 2019 00:27:30 -0500
Message-ID: <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
Subject: Re: Duplicate tag error with 5.2
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Keith Busch <keith.busch@gmail.com>
Date: Thu, 18 Jul 2019 15:27:29 +1000
In-Reply-To: <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
 <CAOSXXT6Z=zEpWqac2k1ydk2LynAEtFr-4jXJVCtTa5yn8H7f3Q@mail.gmail.com>
 <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_222734_570706_F8717CB6 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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

On Thu, 2019-07-18 at 14:53 +1000, Benjamin Herrenschmidt wrote:
> On Thu, 2019-07-18 at 12:58 +0900, Keith Busch wrote:
> > It doesn't look possible to reuse an active tag on the same queue,
> > but we can have duplicate tags on different hardware queues. Could
> > you the queue ID in addition to the tag in the prints?
> 
> There's only one IO queue on this, and my testing is on qid 1 only.
> 
> That said, I wonder whether we have a different issue that's indirectly
> causing this...
> 
> I noticed the qdepth is strange ... 129. That doesn't look right to me.
> I wonder if Apple is not properly 0-basing the capability, and thus as
> a result, we might get bogus completions or something like this.
> 
> I'll dig a bit more.

Actually the original printk's ignored the qid. I have a theory, trying
to test it now.

The problem tends to happens around when smartd starts. I wonder if the
Apple drive is assuming a unique tag set accross both IO and admin
queue...

I'll do more digging.

Cheers,
Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
