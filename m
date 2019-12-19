Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFC2126F34
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Dec 2019 21:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcQhNgNMfBR/COyBeUo6G08kLlzhsZAELICK+/LOOg4=; b=GgGKQvrhGo+sO6
	H2+ecq3XwoOvyapA+u40bMr0yc326qmJL4CeTfQWbW/rmSUc0DjYsOPYkqt+IBd5wC+lt9mEYdvEG
	8gntc+TV+4un6xilHH4k4GSjTl7xcGH18LdA3eRDzA9yK8Ss1bxaNRkgtpxtTwp+NVRreNqx4NrMY
	K/MOdojDnejNkqr41I7haOMeiKgtuItOVJJCtQdk1YRTQMCKkOV4yO8dSBzIF3K6qz39SH5vFpDS3
	UlMYbJ3hyg4iUFLQ6QayN5eNF+wklKjbg7W+PG3GDzozpsqHScR8RORZd8qtu5d+Cr+5KV63P/t5e
	3ybmvKLFmxjwCwukDW6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2mV-0004LJ-Kq; Thu, 19 Dec 2019 20:52:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2mQ-0004Kb-P7
 for linux-nvme@lists.infradead.org; Thu, 19 Dec 2019 20:52:20 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E681E227BF;
 Thu, 19 Dec 2019 20:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576788736;
 bh=v9auNo8rkNHOXG05cTjzKAwluyv3XeVsSOf+rklCYPY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PoNSjSNZj7/ypeN73ewtv/LvBgZ6bhnrJNr3eYPqwRdFTbuBC/Jqk/TN+CW3yBuC5
 xAtyjg+taT1+XU1mDc0mPVYN8PJ7zsxvFq5AbRGQ/KDiCHNmoh8WhSkziKFT9jcEo5
 w12PQILu5aNGblagVhfYZU2khTGRtXEkG/8UPbSE=
Date: Fri, 20 Dec 2019 05:52:10 +0900
From: Keith Busch <kbusch@kernel.org>
To: "Ober, Frank" <frank.ober@intel.com>
Subject: Re: Polled io for Linux kernel 5.x
Message-ID: <20191219205210.GA26490@redsun51.ssa.fujisawa.hgst.com>
References: <SN6PR11MB2669E7A65DD0AD9DC65A67C58B520@SN6PR11MB2669.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR11MB2669E7A65DD0AD9DC65A67C58B520@SN6PR11MB2669.namprd11.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_125218_886611_76122D07 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "Rajendiran,
 Swetha" <swetha.rajendiran@intel.com>, "Liang, Mark" <mark.liang@intel.com>,
 "Derrick, Jonathan" <jonathan.derrick@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 07:25:51PM +0000, Ober, Frank wrote:
> Hi block/nvme communities, 
> On 4.x kernels we used to be able to do:
> # echo 1 > /sys/block/nvme0n1/queue/io_poll
> And then run a polled_io job in fio with pvsync2 as our ioengine, with the hipri flag set. This is actually how we test the very best SSDs that depend on 3D xpoint media.
> 
> On 5.x kernels we see the following error trying to write the device settings>>>
> -bash: echo: write error: Invalid argument
> 
> We can reload the entire nvme module with nvme poll_queues but this is not well explained or written up anywhere? Or sorry "not found"?
> 
> This is verifiable on 5.3, 5.4 kernels with fio 3.16 builds.
> 
> What is the background on what has changed because Jens wrote this note back in 2015, which did work in the 4.x kernel era.

The original polling implementation shared resources that generate
interrupts. This prevents it from running as fast as it can, so
dedicated polling queues are used now.

> How come we cannot have a device/controller level setup of polled io today in 5.x kernels, all that exists is module based?

Polled queues are a dedicated resource that we have to reserve up front.
They're optional, so you don't need to use the hipri flag if you have a
device you don't want polled. But we need to know how many queues to
reserve before we've even discovered the controllers, so we don't have a
good way to define it per-controller.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
