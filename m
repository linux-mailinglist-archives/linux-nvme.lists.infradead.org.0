Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B3C3402B
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 09:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSDqdiqP+oXxXlHQbDwUWFEpGD9GCj4+nN3hJNX4Jkw=; b=DOueTWkdW3gKpu
	D+JDrkaRa3pGUTVNaPLY9Tfr+FPAdSLKmQH7e7hHPTfObK2VeXZ3JLjIdEJCqppvvuojzK49jVLjV
	wZ7Ja65YnQqtKajRM/fNUp2jI6/M+DvoekVYcTr25uFvGtFPMfu1M2gXcMK3KUZQWDZulHSaBslLo
	NtcDf7Kta2YS6FuThrU4CulGe4UD1KLiBbSknN246rxdUtC8afYJk4QUr46hsc7mhErpXZvMZE58L
	pzQTCfbUEWde72lsm3PLkVZ3QcufZpnKftJr+6QTH992gh4Q5WmDazDun0hrpIfixrcFvhBEccJaS
	EijlYagfLee05XXlinDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3vZ-0002nv-2L; Tue, 04 Jun 2019 07:32:13 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3vT-0002jW-44
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 07:32:08 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 7DB5B68B02; Tue,  4 Jun 2019 09:31:40 +0200 (CEST)
Date: Tue, 4 Jun 2019 09:31:40 +0200
From: Christoph Hellwig <hch@lst.de>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 2/3] nvme: add thermal zone devices
Message-ID: <20190604073140.GH15680@lst.de>
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
 <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
 <20190601090238.GD6453@lst.de>
 <CAC5umyiBmD6-3BNLfG7sNOe9jde8Ct16a9N_Ao3T_1_G1K_DDA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyiBmD6-3BNLfG7sNOe9jde8Ct16a9N_Ao3T_1_G1K_DDA@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_003207_332588_E6C7909E 
X-CRM114-Status: GOOD (  14.01  )
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

On Sun, Jun 02, 2019 at 10:19:08PM +0900, Akinobu Mita wrote:
> As long as the user space thermal governor is used, there is nothing more
> than that from a functional perspective.  And I suppose that this is used
> with user_space governor (i.e. there is still some work to be able to bind
> actual thermal cooling device).
> 
> The main purpose of this is to turn on a fan when overheated without
> polling the device that could prevent the lower power state transitions.
> But as you noted, we could do that with the existing AEN notifications
> through uevent.
> 
> So frankly speaking, the benefit of this is providing generic thermal sysfs
> interface and the tools like tmon (linux/tools/thermal/tmon) can show the
> nvme temperatures.

I'm just a little worried about bloating the nvme driver with features
that look kinda nifty but don't buy us much.  I'd rather keep at least
the core and PCIe drivers as minimal.  Now the thermal device support
is pretty small and except for the smart uevents I can't find anything
actually bad, but I'm not exactly excited either.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
