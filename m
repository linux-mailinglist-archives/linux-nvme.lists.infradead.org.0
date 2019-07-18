Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A4A6C8F6
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 08:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3UVKCsVWkw2FCuOTYsRbU0EEhxZfJ/U63/jk90PpJw=; b=o6aKophvNlweq6
	0UJM4ZNMxZ0XvnP5iZ8joY/zkvW3lqN6PumhuKNyfo7rW/gGRk6QJ6ezcQ7tsbyomGAn8qMdy/Ek+
	voXMSh1t7dOw+U3q4U9RGzMlNAF+aeNFiqhSZ/5NOE81pDa+yfY7KNegHBz+/Vf6BTqbVJqXaKuxp
	UPgkc0A7ayMt87yRjAjif3mJgVagJ01bo/cvTg9OHOoyxlXgdt1aQBM/ad8NiUU/OsN/Nw8l0zSJ2
	reD9DnTzos0XOzbcU5kkgKyuXW/OQa0lSlhNbYozB6UFDmuW7iK7vGHphSBS4/lvZ5rCA8VbpNwhs
	eHzJDsHS4Zx1Kw3FbJ6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzTS-00013D-T4; Thu, 18 Jul 2019 06:01:02 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzTI-0000uZ-JR
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 06:00:53 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6I60mdw007030;
 Thu, 18 Jul 2019 01:00:49 -0500
Message-ID: <8936e370b7ae272c8810780ee26ae3cebc8525b9.camel@kernel.crashing.org>
Subject: Re: Duplicate tag error with 5.2
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Keith Busch <keith.busch@gmail.com>
Date: Thu, 18 Jul 2019 16:00:48 +1000
In-Reply-To: <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
 <CAOSXXT6Z=zEpWqac2k1ydk2LynAEtFr-4jXJVCtTa5yn8H7f3Q@mail.gmail.com>
 <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
 <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_230052_791241_0BEB0DDE 
X-CRM114-Status: UNSURE (   9.75  )
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

On Thu, 2019-07-18 at 15:27 +1000, Benjamin Herrenschmidt wrote:
> 
> Actually the original printk's ignored the qid. I have a theory, trying
> to test it now.
> 
> The problem tends to happens around when smartd starts. I wonder if the
> Apple drive is assuming a unique tag set accross both IO and admin
> queue...
> 
> I'll do more digging.

Ok. I think that's it.

I reduced the IO queue to 4 entries (3 usable) and the admin queue to 6
(4 usable), and added printk's of submitted and completed tags.

I can trigger the problem easily now running smartctl -c /dev/nvme0n1
and doing a bit of IOs. It seems to happen when the IO and Admin queue
use the same tag.

I verified after the crash, going to MacOS and getting the log from the
T2 chip, that the tag it complains about *is* the one that we happened
to have used accross both queues at the point where it dies.

Now, I am not that familiar with the tag management/allocation code,
how hard would it be to split the tags accross the queues ? I suppose I
could easily add a quirk to do +32 to the tags used on the IO queue...

(Provided they support arbitrary sized tags up to 16 bits).

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
