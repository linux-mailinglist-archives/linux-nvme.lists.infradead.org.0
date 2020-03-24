Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C853C1914F2
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 16:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4i/K9i/HjsfKagJFjxajbeXZ9g+ZLbHSJ2EQu3LNAIs=; b=WvRverR26Wu4iL
	POiB+tiyaejo2wdJTcjpB6G0TbENTi0JrI906CdJodr5HuBvBHyC3ok7pD/w1I0RgPV3QUfYdCnpK
	ygtIY0TsTA/L2sn/DEqJgviPSjXrqlqTJb5HysfMRB2kHHYU18m1WrGI11LuJSlHl7WcjaUl046Cr
	iuzx7cL92/+XV2bk5phtECAejDKzw+/DdLjpUSj0+0Ajm8rWm5IwBDepJ0Xze7IIj/JGkGvk0PjoA
	aWIEbLL//eWxDqfFPv6Awf71XK3RpEoR+7JUde5mGRiXsABKra/UL+BLv9Rvv7qQF8Yy4DwWI/2av
	NI2dXdhRSIMKmCx/0ZPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlhO-00037h-A5; Tue, 24 Mar 2020 15:42:38 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlhK-00037G-1H
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 15:42:35 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 33AE268AFE; Tue, 24 Mar 2020 16:42:32 +0100 (CET)
Date: Tue, 24 Mar 2020 16:42:31 +0100
From: Christoph Hellwig <hch@lst.de>
To: Israel Rukshin <israelr@mellanox.com>
Subject: Re: [PATCH 3/7] nvme: Fix ctrl use-after-free during sysfs deletion
Message-ID: <20200324154231.GB22197@lst.de>
References: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
 <1585063785-14268-4-git-send-email-israelr@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585063785-14268-4-git-send-email-israelr@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_084234_218131_1A189A16 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 05:29:41PM +0200, Israel Rukshin wrote:
> In case nvme_sysfs_delete() is called by the user before taking the ctrl
> reference count, the ctrl may be freed during the creation and cause the
> bug. Take the reference as soon as the controller is externally visible,
> which is done by cdev_device_add() in nvme_init_ctrl(). Also take the
> reference count at the core layer instead of taking it on each transport
> separately.
> 
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
