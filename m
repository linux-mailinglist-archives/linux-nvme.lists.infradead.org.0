Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCDB17E264
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Mar 2020 15:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdtabSAplS50EEHN5S3AnWIgWpYu206h2U43Zlpy/Ac=; b=R1Ysw6peLvjwJX
	4LbRvq3ZkSdw26ZZdPCkwvHbzPVF5fFKDzOxAKkWafAvVV+z8TbIbLzaL94E5mS2wjBND1EpgNo9/
	NA1/eqnVyXtKJE13dZcJfKe/mT7w+GEg6dGcwZ748o7fgcHaBuJvTTa8GYi5ETtaxvhZTOwsgizJZ
	HoYeTHi3PwBbTCgk3XDSTxp5ThJufnKRQG2WC1nBz2fB1rXvU6kGFgCLD2EDRbyjutWE6oE8pG3JJ
	XM6X/9FcF+RBE5oLM4dINC9AD9m0eNcpxaN+Eq+HEML2fLGEfxvCaVCXNNg/LyxCPHrJim+klVKSL
	g+QmLfSKth9TX0vC5HeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJD0-0003Ag-C4; Mon, 09 Mar 2020 14:16:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJCv-0003AI-7B
 for linux-nvme@lists.infradead.org; Mon, 09 Mar 2020 14:16:38 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 989D420727;
 Mon,  9 Mar 2020 14:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583763396;
 bh=xfCViSencda7tEqaGBoY1MZ07dANUMtfBJNdVbUCpww=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uCNzw875cyY1IvGAxm/VQw4VFVPNETYfvpG73S7BNQ8OjvL1W3r0fNhFEM+bvvegD
 A2/8mtGHvV2X+xIldCLXadA+GH0UcqUeqEeGwIkk3T5BOIn+dpvq8+Nhe05xKtqalh
 WLRaeDsemAWh4mHGoVzVv+MKM8HVui7ej7oUnXuw=
Date: Mon, 9 Mar 2020 23:16:29 +0900
From: Keith Busch <kbusch@kernel.org>
To: Yaroslav Isakov <yaroslav.isakov@gmail.com>
Subject: Re: NVME is not using CPU0
Message-ID: <20200309141629.GA5446@redsun51.ssa.fujisawa.hgst.com>
References: <CADS+iDV5S+QyfhE4M+fSwXuczx4WCveU+UyhKpx7HY6pfHfc6A@mail.gmail.com>
 <20200309015524.GA4567@redsun51.ssa.fujisawa.hgst.com>
 <CADS+iDXQ4HtyXSTETPqQdJS=1tKdd93vCBtAbqwXEfWt3w7GBA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADS+iDXQ4HtyXSTETPqQdJS=1tKdd93vCBtAbqwXEfWt3w7GBA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_071637_288531_B06E102E 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 10:49:43AM +0100, Yaroslav Isakov wrote:
> Hello, Keith! I've tried to pin fio process's threads, but with no
> luck. On my system, your command gave this:
> 0, 1
> 2
> 3
> 4
> 5
> 6
> 7
> So, it looks like first queue should use two CPUs, but using only
> CPU1. Oh, and if I'm run fio with 2 threads, without pinning, I can
> see increasing numbers in /proc/interrupts for all CPUs besides CPU0

/proc/interrupts shows which cpu handled a completion. It doesn't show
which CPU handled the submission. You don't have enough interrupt vectors
to assign to each CPU so some CPUs won't get interrupts.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
