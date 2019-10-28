Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3753E6D65
	for <lists+linux-nvme@lfdr.de>; Mon, 28 Oct 2019 08:40:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qHCHOQu3921nLWBH9pJvdUH2DVa3eJ3kwz9GYO8SR0=; b=UZbqAU6pGrzyu6
	z9GS1CPh+LpwbMu8RCIZRavB2+snb1jpo8qf6Bfgmrk1x4m+KP9q4RT9uQeyhByMI9ub9iKZODDa1
	153EAmuL40mBMhZtksOoii2Tr5Z/w5NLkHki7j9eg3vmBDu/SZ5nDI8cg5btRCs3nKrQ7uBst48sj
	49kD7BDkf4p6lBiUGP1OuRmFtKwTfpCSl2MAbSmDxSZwr63fpW+hDDn35Q+EqibkeVksE4+UnFXor
	6Fh4Ri1xxAM1pjulSk7Q3f+89c33v6t5p62VkTdMg4ZNl4zkBonEG1bTA9SKdNmgrEmexr1lw7kTv
	hmyPUFIsgWPZ2PilQscA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzdB-0006Zy-KR; Mon, 28 Oct 2019 07:40:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzd6-0006ZO-1F
 for linux-nvme@lists.infradead.org; Mon, 28 Oct 2019 07:39:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 480AA68C65; Mon, 28 Oct 2019 08:39:53 +0100 (CET)
Date: Mon, 28 Oct 2019 08:39:53 +0100
From: Christoph Hellwig <hch@lst.de>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] nvme: Add hardware monitoring support
Message-ID: <20191028073953.GA20443@lst.de>
References: <20191028024156.23964-1-linux@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028024156.23964-1-linux@roeck-us.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_003956_220611_AD22C842 
X-CRM114-Status: GOOD (  14.38  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Chris Healy <Chris.Healy@zii.aero>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Oct 27, 2019 at 07:41:56PM -0700, Guenter Roeck wrote:
> nvme devices report temperature information in the controller information
> (for limits) and in the smart log. Currently, the only means to retrieve
> this information is the nvme command line interface, which requires
> super-user privileges.
> 
> At the same time, it would be desirable to use NVME temperature information
> for thermal control.
> 
> This patch adds support to read NVME temperatures from the kernel using the
> hwmon API and adds temperature zones for NVME drives. The thermal subsystem
> can use this information to set thermal policies, and userspace can access
> it using libsensors and/or the "sensors" command.

So these reported values seem to generate some interest.  Adding Akinobu
Mita who also planned to wire them up to the thermal framework.  I don't
really know either upper layer so I'm not sure which is the right one,
but with this just like with the previous series I am quite worried that
we add a lot of kernel boilerplate code for information people can
trivially get using nvme-cli.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
