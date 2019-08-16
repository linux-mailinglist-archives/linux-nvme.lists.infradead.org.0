Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59B1901C3
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 14:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j65zaaWoao6Z2+PmyOLDdWq885Emv+2rQmekw+tKnYw=; b=Ayncpl6ZC9tVyX
	jLNfTT00D1z0n7vopSiJQG4G5Ydw7rDiVG9wpCYLDs6LnvyrzQf1cuyLDUmwirnVDGuklGvr06cqm
	e+tipLRwKirXw3cIN+ZGPWuB0RKX+rtRYQT4jCANOrj3uP5mijTY+7CyJiwQd5ycwSWTvbjONsCC5
	7Bg2/5z8mvHFzF9s6CzisvmBIZbyETVj4UfoX0cdenYA25mwLG101lOUnOv/JBCdbGYLmCiPZlbL4
	5KDUfXcW4ykV/YLeU4x3Mq9iQnMIiGUIP292iPLdPT5VZ52F+v1gtBbrQ8+EFH43ez5q5q5jRz/ts
	UNdeDmDorWnRltFcQcMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybVV-0006kI-Vk; Fri, 16 Aug 2019 12:39:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hybVO-0006jw-02
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 12:38:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2E9B868B05; Fri, 16 Aug 2019 14:38:50 +0200 (CEST)
Date: Fri, 16 Aug 2019 14:38:50 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [PATCH] Revert "nvme-pci: use host managed power state for
 suspend"
Message-ID: <20190816123850.GA22923@lst.de>
References: <20190816121549.8754-1-chris@chris-wilson.co.uk>
 <20190816122644.GA21797@lst.de>
 <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_053854_192930_6B705F32 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 intel-gfx@lists.freedesktop.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 01:30:29PM +0100, Chris Wilson wrote:
> Quoting Christoph Hellwig (2019-08-16 13:26:44)
> > Please, report the actual problem.  Blindly reverting a patch without
> > even an explanation of your regressions is not the way to do it.
> 
> As stated, the system doesn't suspend.
> 
> If you would like to wait, you will get test results from our CI
> giving the current failed state and the outcome of the patch.

Platform type, SSD vendor and type, firmware version?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
