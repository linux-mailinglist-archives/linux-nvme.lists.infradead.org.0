Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 998EB1E369A
	for <lists+linux-nvme@lfdr.de>; Wed, 27 May 2020 05:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dluKAHtgK1z4vOtvrZXjA2NeQXKzQlE70t5ZwwefPnQ=; b=h6Ypi1w/D1yfHI
	1NkbQ0LPxPOuQT7tsrx6P6ZOD6gnM3phhFgt0fWgdJS3HG4VpBVGvIUx6S5XsgopD91mprdVP5XXd
	1bQlingQlETMAT5fCHV57US8JyE/LVtXowZkOysFeh0UF69PPm1Rgn7ql/M+8M0DkADeKfed7GoIN
	UqMb6ATgPuFk36WKa0X8GLFAAzxU2AetLbdXSEp+Y7CGDyOV/S1Z8x0dzBMh179NM7qDSNfPkLdbK
	VsbsyeNrySwpe3VIM4EBOp6gXegjz/L1PfKPWGtvx0buClZ1s0B7ZRGyYSxEg8+3gsMqnxWCh4NGc
	I+AO1LXRxmPnYt3L6P7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmrt-0006Sq-H2; Wed, 27 May 2020 03:36:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmrp-0006SE-T5
 for linux-nvme@lists.infradead.org; Wed, 27 May 2020 03:36:35 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E715206F1;
 Wed, 27 May 2020 03:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590550593;
 bh=g795YNhpz6ErqnozUO1OAeEdQzAsLj/CkT7WEI/3mrY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nYZuC7MwlQ3FF65kPaJSJ7FTDh+vyBA4Z4lSYtzXwdXOMFjvBYfDqqfdRKOUsBtoD
 qn/Z5vbTRwviVHd5fcvruTcirm2eylFM2z5ofcgk629O2UuzprOZudv+W8zujRxNqT
 zCwcAGqyIdbfirWVCzQ2ETphSaDeiO+2bPvjz5gY=
Date: Wed, 27 May 2020 12:36:29 +0900
From: Keith Busch <kbusch@kernel.org>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: Re: nvme double __blk_mq_complete_request() bugs
Message-ID: <20200527033629.GB24861@redsun51.ssa.fujisawa.hgst.com>
References: <c77b0998-5112-4d6b-b51c-41d2b901009d@default>
 <86a0321e-d260-ef8c-db9f-b804fc92c670@grimberg.me>
 <49f32df9-81a9-4c15-9950-aceff8fb291e@oracle.com>
 <20200525164516.GC73686@C02WT3WMHTD6>
 <d5c51f9c-3706-bc22-1a67-3695880d4918@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5c51f9c-3706-bc22-1a67-3695880d4918@oracle.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_203633_959582_262C483F 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-block@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 06:04:27PM -0700, Dongli Zhang wrote:
> On 5/25/20 9:45 AM, Keith Busch wrote:
> > On Sun, May 24, 2020 at 07:33:02AM -0700, Dongli Zhang wrote:
> 3. In the context of blk_poll().
> 
> I do not find a mechanism to protect the race in this case.
> 
> By adding mdelay() to code, I am able to reproduce the below race on purpose.

Yeah, there's no other way to synchronize with a potential polling
thread, so locking within the driver looks like the right thing to do
for now.

It'd be great if we could temporarily halt polling while resetting,
though, as that is potentially a lot of wasted cpu cycles if requests
are requeued while the controller resets. But that's a different issue
than what you're addressing.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
