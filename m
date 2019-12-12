Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8955F11C1CE
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 02:03:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2IvoOvIrTi+O59ussMKtAKhOMwpOM31JG2yrZDwBDw=; b=tCl6ZZ+C0EtKWH
	8CQ1bCS+mpZOvACWP0PBi6SqamCCPMuZgJTRk4PkJerHGoA/YctDm7bSM693MowoM8Jv+Hwyn5OEr
	ZEWK0o+UjzW3lSYBq3HixHlKq3NKSb+jB/TE30xpZmDQ7w1jjGI+9Ro/aMeysK8qrMU6Ge7XbYD/I
	rjYfBk51ZgfNgZAbryYc7owUbvX2Nghq5WQt7gse6Op++BKl2JoyheS7/CvYhWEZl0+r+HEy/fD0A
	wmTLI1Byt0ocBNRqJBj4KFF04AgVxzqY0OMjU62a8KWKijfaApkfLqFYXsioc4ioBPgfnhngOJk33
	PR4prZywijpvdMDwHGsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCsh-0002pi-G1; Thu, 12 Dec 2019 01:03:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCsS-0002gY-4I
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 01:02:50 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C77AB2077B;
 Thu, 12 Dec 2019 01:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576112566;
 bh=oOTkNEOcvQ91ugssAoDdeQfR1+6GNJZi+p6ESxnJK8A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Um4JI5vWNCvX8gDu0obC5lwMaM/ciDvCWrULht1e92c4ZYgV/UdiORtO9+8OrU5Sc
 +7XoPkxBsBn8K868XDiERgxTXQcPBblj2TcRwGE0JU9taEHcDSaZqBO4LtnaMrhaps
 hs1WeQqw/AIX3nPBpPl5+dZexhdHJPCsm8djSk7M=
Date: Thu, 12 Dec 2019 10:02:40 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCHv3 2/4] nvme/pci: Complete commands from primary handler
Message-ID: <20191212010240.GA29574@redsun51.ssa.fujisawa.hgst.com>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-3-kbusch@kernel.org>
 <6d55a705-6a43-5b47-166c-5d2b458fd6a5@grimberg.me>
 <20191210202506.GA26810@redsun51.ssa.fujisawa.hgst.com>
 <c58e2cb5-e03c-c56f-8c67-a791ac1eb2c6@grimberg.me>
 <20191211173532.GB493@redsun51.ssa.fujisawa.hgst.com>
 <79442e8d-719a-7510-deea-cc23694fdec0@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79442e8d-719a-7510-deea-cc23694fdec0@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_170248_222671_71894129 
X-CRM114-Status: UNSURE (   7.41  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: bigeasy@linutronix.de, ming.lei@redhat.com, tglx@linutronix.de,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 04:40:47PM -0800, Sagi Grimberg wrote:
> > Perhaps we can cycle the effective_affinity through the smp_affinity?
> 
> Not sure I follow your thoughts.

The only way the nvme driver's interrupt handler can saturate a
cpu requires the smp_affinity have multiple online cpus set. The
effective_affinity, however, is always a single cpu, which can be any
of the online ones set in smp_affinity.

If we can detect a cpu is spending too many cycles in nvme irq,
perhaps we can re-spread the effective_affinity to different cpus. I
don't currently know of a good way to do this, though.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
