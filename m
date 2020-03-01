Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A51174C5F
	for <lists+linux-nvme@lfdr.de>; Sun,  1 Mar 2020 10:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkLoINL8iRUkIvd60VotzcK3be5Iode/O+X7XYhjgas=; b=BYXdMZm9T0AD/O
	QdMujws4DXgps135LjHZpOQOjIIGFX2FQkGIXEDjyQ//Eazs21jr9qgQfDAETXZ1ct/b/Rl2ftd3S
	8+5TaT5krAJrNVR8JbQYk1NuSFT9R1uTRMAV9sedHTPLuonKb7v0JRRFLbnU+pctnTFiaodc2Bq9W
	CqII6mXRl8+H2bZW7KQbPmddhVkHka5WFYv54ylUQmQcOPMYcI8O+/qa8roRxqUJCq1Ys8RstOeCL
	NUm269PaFXm+1ygtZBX/oGNjLP3ck7p9LeUr50GBeXdN+Qq5jXJZXdxG1vbUQQ9fQHtfPK1r9gVHr
	68dROg1o6unIf6x0gaDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8KV4-00045Z-VI; Sun, 01 Mar 2020 09:03:02 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8KV0-00044x-72
 for linux-nvme@lists.infradead.org; Sun, 01 Mar 2020 09:02:59 +0000
X-Originating-IP: 172.58.43.63
Received: from localhost (unknown [172.58.43.63])
 (Authenticated sender: josh@joshtriplett.org)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 9D74920006;
 Sun,  1 Mar 2020 09:02:43 +0000 (UTC)
Date: Sun, 1 Mar 2020 01:02:39 -0800
From: Josh Triplett <josh@joshtriplett.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH] nvme: Check for readiness more quickly, to speed up boot
 time
Message-ID: <20200301090239.GC216567@localhost>
References: <20200229025228.GA203607@localhost>
 <BYAPR04MB5749363E3AC8C583F5CB076786E60@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB5749363E3AC8C583F5CB076786E60@BYAPR04MB5749.namprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_010258_389950_DDFA1220 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Mar 01, 2020 at 02:01:05AM +0000, Chaitanya Kulkarni wrote:
> Nit:- please have a look at the patch subject line and make
> sure it is not exceeding the required length.

Documentation/process/submitting-patches.rst says "no more than 70-75
characters,", and the summary here is 61. Checkpatch similarly says 75.
Is there somewhere I missed that gives a different number?

> One question though, have you seen similar kind of performance 
> improvements when system is booted ?

I tested with nvme compiled in, both with one NVMe device and two NVMe
devices, and in both cases it provided a *substantial* speedup. I didn't
test nvme compiled as a module, but in general I'd expect that if you're
trying to optimize initialization time you'd want to build it in.

> I took some numbers and couldn't see similar benefit. See [1] :-
> 
> Without :-
> 
> 714.532560-714.456099 = .076461
> 721.189886-721.110845 = .079041
> 727.836938-727.765572 = .071366
> 734.589886-734.519779 = .070107
> 741.244296-741.173503 = .070793

With numbers in this range, I don't see how you could be hitting the
100ms msleep at all, even once, which means this patch shouldn't have
any effect on the timing you're measuring.

- Josh Triplett

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
