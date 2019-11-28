Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF19310C55B
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 09:41:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GnKoFO8ExukETsxfTs+wXRaz6QRpwkUQRL1MzF081J8=; b=NlEjGY3w42c/Ui
	ATrtI2tlG75n+dS2cZIHt38IEF+qRHa0XmxhIN7qyVSz6X7Dzc+l1/2BWbr7OU3HNjxYWVaWXlc2Y
	fE22pWC61U03cC1XcJNNX+vHep0n2lfzdK05apSUIZweFpJI833JzdHr3Iwtt9wJtnvcoyUsy2yeh
	1UfgMDJ0bcT4wJ+NoJa1gfAYSW15Y5ifsSRDj2QV0BFxRQXKfYNq8A2HhGY5Xp8739tImVb7ar1Yl
	n5hw0t+pZLZOIOxMkCkk59xqxgpSUxJcEMp4Gw7k7bqjwE2ZL0+VnPIi7XHdb0MS+F1f34wUFi/+M
	4unM3/vlVFElWwI/JIwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaFN0-0007op-9d; Thu, 28 Nov 2019 08:41:50 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaFMu-0007oF-Lx
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 08:41:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574930502;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hrFtyU8k8kdkSJ98Uqju+/VpgD6RkhdRd8RCszqLTQ4=;
 b=Cb1vACVcoctH9ohSkK0TFLA92eLCF+Nio49NseabS7oqsl6DwwJlKVax0rRd5rJHH7GVBJ
 kS7ei3AV90C8xd5CkUkMRhPdIpbYvR8qiS91RByeX7QrOcv9/wJB+niUAHpBM/QyU8SZPl
 Wekj9pmFdX0Xc9AQAEF7aV2kuLwhEmI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-119-lCl_NUQSPSOd5SmSq_3QYw-1; Thu, 28 Nov 2019 03:41:41 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CC0E12CAC32;
 Thu, 28 Nov 2019 08:41:39 +0000 (UTC)
Received: from ming.t460p (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 10F4B5D9E2;
 Thu, 28 Nov 2019 08:41:31 +0000 (UTC)
Date: Thu, 28 Nov 2019 16:41:26 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 2/4] nvme/pci: Mask legacy and MSI in threaded handler
Message-ID: <20191128084126.GB15549@ming.t460p>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-3-kbusch@kernel.org>
 <20191128033956.GD3277@ming.t460p>
 <20191128034817.GC1738@redsun51.ssa.fujisawa.hgst.com>
 <20191128035853.GF3277@ming.t460p>
 <20191128041404.GB1947@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
In-Reply-To: <20191128041404.GB1947@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: lCl_NUQSPSOd5SmSq_3QYw-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_004144_804821_0DFA936C 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, linux-nvme@lists.infradead.org,
 helgaas@kernel.org, Thomas Gleixner <tglx@linutronix.de>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 01:14:04PM +0900, Keith Busch wrote:
> On Thu, Nov 28, 2019 at 11:58:53AM +0800, Ming Lei wrote:
> > On Thu, Nov 28, 2019 at 12:48:17PM +0900, Keith Busch wrote:
> > > On Thu, Nov 28, 2019 at 11:39:56AM +0800, Ming Lei wrote:
> > > > 923aa4c378f9("PCI/MSI: Set IRQCHIP_ONESHOT_SAFE for PCI-MSI irqchips"),
> > > > then the question is that if interrupt mask is needed.
> > > 
> > > We don't want to use IRQF_ONESHOT for our MSI interrupts because that
> > > will write to the MSI mask config register, which is a costly non-posted
> > > transaction. The NVMe specific way uses much faster posted writes.
> > 
> > What I meant is that IRQF_ONESHOT isn't needed in case of IRQCHIP_ONESHOT_SAFE.
> > 
> > So it is reasonable to understand that interrupt mask isn't needed in the
> > hard interrupt handler in case of IRQCHIP_ONESHOT_SAFE. That is
> > basically what commit dc9b229a58dc("genirq: Allow irq chips to mark themself
> > oneshot safe") does.
> 
> Hmm, it doesn't look like it's always safe. We have to stop the device
> from generating MSIs for new completions somehow while the threaded
> handler is running, otherwise those MSIs will be considered spurious
> when the thread never gets a chance to increment desc->threads_handled.
> 

I just observe hard interrupts triggered between start of nvme_irq_check()
and end of nvme_irq(). Yeah, there could be at most 36 interrupts comes during
the period on one machine, and most are <= 5.

So looks this patchset make sense, and also means that IRQCHIP_ONESHOT_SAFE
might be broken.


@interrupts_during_threaded:
[0, 1)           2074375 |@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                       |
[1, 2)           3668018 |@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@|
[2, 3)           1508944 |@@@@@@@@@@@@@@@@@@@@@                               |
[3, 4)            554496 |@@@@@@@                                             |
[4, 5)            225761 |@@@                                                 |
[5, 6)             99354 |@                                                   |
[6, 7)             45127 |                                                    |
[7, 8)             20912 |                                                    |
[8, 9)              9940 |                                                    |
[9, 10)             4765 |                                                    |
[10, 11)            2458 |                                                    |
[11, 12)            1365 |                                                    |
[12, 13)             719 |                                                    |
[13, 14)             451 |                                                    |
[14, 15)             265 |                                                    |
[15, 16)             168 |                                                    |
[16, 17)             103 |                                                    |
[17, 18)              67 |                                                    |
[18, 19)              60 |                                                    |
[19, 20)              41 |                                                    |
[20, 21)              27 |                                                    |
[21, 22)              18 |                                                    |
[22, 23)              17 |                                                    |
[23, 24)               8 |                                                    |
[24, 25)               2 |                                                    |
[25, 26)               9 |                                                    |
[26, 27)               6 |                                                    |
[27, 28)               3 |                                                    |
[28, 29)               1 |                                                    |
[29, 30)               0 |                                                    |
[30, 31)               0 |                                                    |
[31, 32)               0 |                                                    |
[32, 33)               0 |                                                    |
[33, 34)               0 |                                                    |
[34, 35)               0 |                                                    |
[35, 36)               0 |                                                    |
[36, 37)               1 |                                                    |


Thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
