Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B46931AAE
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 11:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/cKDMXABh3F8CIe8P5MUVEw4C2cAdnasbXK+S8mSQ8=; b=mSl5JAjPHYqtzt
	ozVz4DSP4ki5dNPNGVV81vIiOMaqvxJlfS7i0NIII/JyGUdXc0YTcMiv3/7IT8xiZOgqxGYiiRxxX
	rUNrUQEteotPQa1zXgApTUEpfTINstz67zEhoVnolZq/Am0WF/WwFyfTo+kmyApyTuX6qNJ9pHdNj
	A3y7gCKqgGeSPKCWx3LgZX1B+ovrRSMxb+5/C8txYvIxV1xvOjalUcz0u3GYDY3MQLDmkLG2Y+iDa
	agLs92JmysHSPSUjOuByjHfl7Kov722phavHCGdCzgg19ai5/VSfywG7Ann/bHv9fyYjHvaZKIp5i
	CiCIEOB9kmRPWyM3D1Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWzuu-0003UU-N8; Sat, 01 Jun 2019 09:03:08 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWzuq-0003U5-9T
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 09:03:05 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 63DD668AFE; Sat,  1 Jun 2019 11:02:38 +0200 (CEST)
Date: Sat, 1 Jun 2019 11:02:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 2/3] nvme: add thermal zone devices
Message-ID: <20190601090238.GD6453@lst.de>
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_020304_479686_23BA56B0 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Jens Axboe <axboe@fb.com>, Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 01:29:02AM +0900, Akinobu Mita wrote:
> The NVMe controller reports up to nine temperature values in the SMART /
> Health log page (the composite temperature and temperature sensor 1 through
> temperature sensor 8).
> 
> This provides these temperatures via thermal zone devices.

Can you explain a bit more why we'd do this?  I shows up some sysfs
files, but we could easily do that with nvme-cli, too.  Is there some
greater benefit of this integration?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
