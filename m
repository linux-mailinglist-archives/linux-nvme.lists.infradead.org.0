Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED34136498
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 21:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXqHJ0PSkwZA/xPpoKgv5PKUyjY7Y2gOe82WMg9Odj4=; b=Hi8GJTLbUFQrUq
	SDHFMrIrKV5hMf1VAkcos/oJ7P0vMJLLoOIarNS/GULf2yHIujAVw7JYhumBPt9/HhCvwruDW6iAh
	+jJHfAYG8o6H7QpVa2RkC8j/F71Q1Very0Q1KTSYLWGD7R3GuPJiqy6nzs6x52V+kcNgp8sB0yGJ+
	fsgAQreTu5N/wrexn6iL5ALW4hSNU23P297SHPuwmNBy+yuy9DEKiAXzvTekjX0t/qymb5xpu9Cfn
	XvoEGHU2qQCqEhOI7GdWyA7VX5llv6hHwRVOVGjZjgeveUjdR3AZ5/imp2+DIAHbVWROYW/Taikfq
	GGal/CqLiE/6AkL+i76w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbWa-0004mJ-6c; Wed, 05 Jun 2019 19:24:40 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbWV-0004lw-45
 for linux-nvme@lists.infradead.org; Wed, 05 Jun 2019 19:24:36 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 3B6D0227A81; Wed,  5 Jun 2019 21:24:05 +0200 (CEST)
Date: Wed, 5 Jun 2019 21:24:05 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: Re: properly communicate queue limits to the DMA layer
Message-ID: <20190605192405.GA18243@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
 <591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a@kernel.dk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_122435_310274_922BBAEC 
X-CRM114-Status: UNSURE (   8.01  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Bart Van Assche <bvanassche@acm.org>, Sebastian Ott <sebott@linux.ibm.com>,
 linux-rdma@vger.kernel.org, Oliver Neukum <oneukum@suse.com>,
 linux-mmc@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>, linux-scsi@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, MPT-FusionLinux.pdl@broadcom.com,
 Christoph Hellwig <hch@lst.de>, megaraidlinux.pdl@broadcom.com,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 01:17:15PM -0600, Jens Axboe wrote:
> Since I'm heading out shortly and since I think this should make
> the next -rc, I'll tentatively queue this up.

The SCSI bits will need a bit more review, and possibly tweaking
fo megaraid and mpt3sas.  But they are really independent of the
other patches, so maybe skip them for now and leave them for Martin
to deal with.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
