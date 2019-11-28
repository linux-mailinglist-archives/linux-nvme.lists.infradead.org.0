Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6681010C31A
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 04:58:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D79D1SRc1RpqxFxM34TJ9AhdugHhnnLqTFUypgQpAkw=; b=BCLaNDUS44fMoH
	Cv/Q1hmKruW1j+2BIB/TwzAGdWw+xh2d1u8O98ZTJgmbj4G1RTLF3Q9RZ0QMMD0pgYqzcBfcD57WV
	M9UZSMWoOeh6/PvIpiZMyygTQWcoVA+5EkIuav3Ctetz2ru6wQlF4CNENgxZXQf9pOuygHLnyCQIo
	e5yO0JydYkXVQUNXG0uKLHp5zyFzXhQYUWMmCQULMYxwdpNT+ZV94ZMz8nvNoDDu6+mwh8O+2dtxs
	8xt2H89ZegGaUvSgZbuxk4LL0FqfCHG83xMhSExMhrKqi0hQyqCmiyjozoCbYlg96v6/poDU3lLuZ
	vCtix9SRLR9dBtYUJedQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaAwW-0003QH-Dm; Thu, 28 Nov 2019 03:58:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaAwQ-0003Pz-HI
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 03:58:07 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50003208E4;
 Thu, 28 Nov 2019 03:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574913486;
 bh=NDBMtX0J/CmDTNiRvjdji6fwgPtpVfscg5M3ZlNsQ+Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ew3mhVvviPIN6hxnGf6RgdZBPx6XCAFoFjKSvetklZrWZia58PL43BWDZZcWQLry8
 L5aXga5no8lTFoAOf3VePnJ8P7ataZDUzOiXmEvckXgk0NyqKrjWspd5wtlS+tSc8N
 hqQ4xXcS6BSeB1snIqSrG+Gl6XdK92I81OO00vHo=
Date: Thu, 28 Nov 2019 12:58:03 +0900
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 4/4] nvme/pci: Spin threaded interrupt completions
Message-ID: <20191128035803.GA1947@redsun51.ssa.fujisawa.hgst.com>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-5-kbusch@kernel.org>
 <11325d8e-e9f8-408e-18c3-182c69e90eab@grimberg.me>
 <20191128032843.GA1738@redsun51.ssa.fujisawa.hgst.com>
 <20191128035139.GE3277@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128035139.GE3277@ming.t460p>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_195806_596611_F0369ABA 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: bigeasy@linutronix.de, helgaas@kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 11:51:39AM +0800, Ming Lei wrote:
> On Thu, Nov 28, 2019 at 12:28:43PM +0900, Keith Busch wrote:
> > 
> > When you have two or more devices with queues mapped to multiple CPUs,
> > their threaded interrupt handler affinities will not share the same CPU.
> 
> They still may share same CPU if there are many enough NVMe drives, the
> threaded interrupt handler actually takes the effective hard interrupt's
> affinity, which still may point to same CPU, in case of:
> 
> 	nr_nvme_drives * nr_hw_queues > nr_cpus

Yeah, that's true. I'm just a bit constrained on devices, so having some
difficulty testing Sagi's scenario. I assume the cond_resched() provides
appropriate fairness here, but will need more time to instrument such a test.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
