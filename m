Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18353178536
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Mar 2020 23:03:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsxWfnNeypt9NICo2qu38TI5Tk/ZG5endO8POxFFa3w=; b=GKw4MhXXRGMn0C
	e/djzPNxr7aknVanOOqc+Bxnp23Ga+8EXzrc1qjUphJOlMSnqcJGwUmP70TCBS8Tfgg75N4H6QpR0
	UbwtynNeKNW6zE/kZXPOsMJD3xaaMJ/+6wJaARp+47bsBNRRnfJjKXJBW6GEimxPh3jruywZd+jtW
	JjZ3RR2pvBrpzPiBnz4x3dPiJZvFHM9buLkcomY5qxDbAldC7p1lbVkPsIvweCT/xjfGeBa/lLWYr
	esrZbd28R/DmwRwBsCu/DGZ4nLuYQKDKfLVNpOdkv5xaNPMLevzgMNoLjoHJZ+bKKmdkKyRG8N2AD
	yvU7HdYXk2gOeJ+MyWNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Fcv-00012k-J2; Tue, 03 Mar 2020 22:02:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Fcr-00011h-29
 for linux-nvme@lists.infradead.org; Tue, 03 Mar 2020 22:02:54 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FB2920848;
 Tue,  3 Mar 2020 22:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583272972;
 bh=HSQRJP3KSvC/KIrOlVjd0RML3XWoJX2YZfIRsQwxSB0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MvP8NxNMn9ZmP58Tncs5HZmmUYtvCx6yR+iNKPIpUy1350U8oXlYnW4x/Zx5DoLyM
 d+FDG6BSxDuNO6o8RyjjYIJyjgB5nsuoGF7uJlrdfo6r1jk/QvF/zUP0itfEx+3i21
 G2HAQSGIJn6hjSybnviJcj0jD13ghBEYo+RCObYg=
Date: Wed, 4 Mar 2020 07:02:46 +0900
From: Keith Busch <kbusch@kernel.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: Re: "I/O 8 QID 0 timeout, reset controller" on 5.6-rc2
Message-ID: <20200303220246.GA20545@redsun51.ssa.fujisawa.hgst.com>
References: <20200302020339.GA5532@zx2c4.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302020339.GA5532@zx2c4.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_140253_123130_9582DA12 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ext4@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 10:03:39AM +0800, Jason A. Donenfeld wrote:
> Hi,
> 
> My torrent client was doing some I/O when the below happened. I'm
> wondering if this is a known thing that's been fixed during the rc
> cycle, a regression, or if my (pretty new) NVMe drive is failing.
> 
> Thanks,
> Jason
> 
> Feb 24 20:36:58 thinkpad kernel: nvme nvme1: I/O 852 QID 15 timeout, aborting
> Feb 24 20:37:29 thinkpad kernel: nvme nvme1: I/O 852 QID 15 timeout, reset controller
> Feb 24 20:37:59 thinkpad kernel: nvme nvme1: I/O 8 QID 0 timeout, reset controller
> Feb 24 20:39:00 thinkpad kernel: nvme nvme1: Device not ready; aborting reset
> Feb 24 20:39:00 thinkpad kernel: nvme nvme1: Abort status: 0x371

Sorry to say, this indicates the controller has become unresponsive.
You usually see "timeout" messages in batches, though, so I wonder if
only the one IO command timed out or if the controller just doesn't
support an abort command limit.

You can try throttling the queue depth and see if the problem goes away.
The lowest possible depth can be set with kernel param
"nvme.io_queue_depth=2".

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
