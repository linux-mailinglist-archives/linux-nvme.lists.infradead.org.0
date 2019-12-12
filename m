Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DCC11D143
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 16:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLk2FAHSyyiBERuHQB7SaqEBhrqySbqpQXXqYNFDCLU=; b=acXAndKVplLY/y
	hTbNNu8/NtTa2N+VtJrDbUG8ep8DRhWc7C82PUcDAzSNliCyw0jRqGMKzhTkMAbj3JxDq8l2tr5m3
	MYv5pbQxN6fA5b15lg/T6wNCTcKT0JWSvQ/E1ZywJTZmyWpdfoQMuqhKi3m1XXnRxojfKIqmLRs8z
	zxCMiq6eCcGsc8WeFXrGGHqTnTJ7x6xnLVAcRZYsm8WfQFJxuvAoRR9r1wiJfdrumEI4dAzvWMD/Q
	1Ou1O/4SGPsHnv9G6H3QUTwvXYeyZWWHKTceB+KR1Zmm2Mjaedf6G8u/LxaRy259WG2FOuIhWpFjW
	vaoAekEqzW9MTVc1gZBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQez-0002J5-CG; Thu, 12 Dec 2019 15:45:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQeu-0002IX-Pr
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 15:45:45 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2208D214AF;
 Thu, 12 Dec 2019 15:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576165543;
 bh=z8qtm64J15FZlBgliFqR/J6yytV8BusvgE6kQbHgzV8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1CLHXgwEFxF3A0Qp/jh2qZ/21qt0aB/WJwZDTaPHa9puNb4pdWBK/Y90uk1zlXN0C
 wCkuDNiWX/SqTO7lgA8u6QxdRp4DtX0uJTgMiL4sMMeb30OKp4rfvFGcHwkpUspj+Q
 7uMpBuLZbux/RU6cytmBA5FUXj4gy2uyFdRNHLZo=
Date: Fri, 13 Dec 2019 00:45:36 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCHv3 3/4] nvme/pci: Remove use_threaded_interrupts
Message-ID: <20191212154536.GA30534@redsun51.ssa.fujisawa.hgst.com>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-4-kbusch@kernel.org>
 <20191212091433.GD2399@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212091433.GD2399@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_074544_861825_F36F81CF 
X-CRM114-Status: UNSURE (   9.63  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bigeasy@linutronix.de, tglx@linutronix.de, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, ming.lei@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 10:14:33AM +0100, Christoph Hellwig wrote:
> On Tue, Dec 10, 2019 at 02:56:21AM +0900, Keith Busch wrote:
> > The nvme threaded interrupt handling provides quick completions for
> > latency sensitive workloads, and threaded handlers for more IOPS intensive
> > ones. Remove the use_threaded_interrupts nvme module parameter since
> > leaving it disabled should not be providing a benefit.
> 
> I think we need some careful benchmarking and numbers to justify the
> switch.

Yes, I don't consider this 5.5 material, so we've some time.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
