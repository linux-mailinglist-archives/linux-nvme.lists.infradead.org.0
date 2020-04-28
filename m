Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 149581BB4C2
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 05:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxCpCRmP8dhz3bgFdlL21HYEIOouH/RKL//npNbLJPA=; b=Bvs3yd1hmjDeDR
	gaw9aEgTGTSDZaHuwFNGcJl7J/9bHDuOvpDerFksNzHyMW0BLoF8vIuF9F6F7xgJhc7mDWdU6tdCj
	+0rw3exOfe8BHnlVRoVOsUtqJ8AyFd7/OMNqLPFWjdmcywoKHiQuVAuy6vR0YhTPGFpefy2IFGpg3
	m67xQ8+qRrQUF9saszGytKLJxp0D15BlkNViY/j3Yu8cPJEej8rjYDZqrZKVIVKRIsbo8CM7bI9Yv
	ukchaT/g3xWUxfxW12sBTha8OCOoudElAHvyRKBb8+lTPOz80L070YbfT1osJ3OsyQbpUWPk8Uest
	stKgl5tA0L5o82oj9KJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTH3l-0008PY-N7; Tue, 28 Apr 2020 03:37:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTH3i-0008P0-Fq
 for linux-nvme@lists.infradead.org; Tue, 28 Apr 2020 03:37:23 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9D36206D9;
 Tue, 28 Apr 2020 03:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588045041;
 bh=v9eFiobOpoDAWCLAyLnQK9hJvFUVVX796NEexuY0JxU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2C6grf4PVeWztUQBTehhw0giH8TuhR8pItE9jvU0CE/wsuQhanBvhA4nXOqW8t0KK
 3JXzrp8GLKtcLLuEz2Oa7Gs2i2HyvPUi3/DYmVlHRdDNOfwJNtiFqILZQsnX0h3dUB
 IMyKBzQyKdx63arOBoeYFrfkEGfjF/uPAL7MZJuw=
Date: Mon, 27 Apr 2020 21:37:19 -0600
From: Keith Busch <kbusch@kernel.org>
To: Jeff Johnson <jeff.johnson@aeoncomputing.com>
Subject: Re: Pinning nvme interrupts to a single cpu?
Message-ID: <20200428033718.GA5085@keith-busch>
References: <CAFCYAscnovJyA0cKeHVxS20+zGgMj4P5ECb95aZE8=o=Wh+5bg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCYAscnovJyA0cKeHVxS20+zGgMj4P5ECb95aZE8=o=Wh+5bg@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_203722_548510_F56B8911 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 05:10:47PM -0700, Jeff Johnson wrote:
> Is it possible to limit nvme interrupts to a single cpu, rather than
> spread them across many?

The managed interrupts provided by the irq subsystem that the nvme
driver uses doesn't allow altering the cpu affinity. The only way to
have all interrupts handled by a single cpu is to have only one nvme IO
queue, but you don't get to choose the cpu.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
