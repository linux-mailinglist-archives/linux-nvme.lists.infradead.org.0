Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AA9755E6
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+u0aKGg8tm12TK2UQ1TpYIlpLQDzMLF+GLxeal9kUYw=; b=OBenYYhCrB772X
	TQO4F+IHh02NCDcIgCMmJWnmvm0CrUEnLllge1wqUgORrig0CkNx1PaAcmR+1xyqt2RwvGPFsMPHm
	rilzfgAsviSHMcvQ5pIb2x0izsDDBrneoobzwUJdO6iwGRa/6sAFmlTMeW5cX5yyTHkngYm0c65Ij
	h2jvCsMXqqezzrFkYoqaWdRNu0bXRqOJwAzNvoIyT/8EUrwPRoYHijPfzQ6mJTn1CGesTnFutzDxk
	AanlHoATO54O+FCMSUHwv+G0EsxfkBGNGZ/YEMkoJvZzchK5y79GypLMosy24tqyHvCAOdVsNYy5n
	yU9hNWKY7WryJxUMncXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhjR-0006Hp-RW; Thu, 25 Jul 2019 17:40:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhjH-0006GZ-Ly
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:40:36 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79AF422BE8;
 Thu, 25 Jul 2019 17:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564076435;
 bh=v5yXlm0ySbjH9KYVN6Nqcko2ymh4rZfsF2TdFPmyY7A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cf0NrbzxwN1M9j7L43mP+u3u8SJKAyjDsM0cOYEdgJvIpWskctistAzocLZjDHkEN
 ba/45n2CQ0Z0Vu5YE8bZ1WQSq7k3lFsVvFslO0EgJItOxPoN3cpbF0XLhnLZMiHACv
 SqahQYWRTwQbD+2RwOPjk7Yu0qf8B7tBjUz8+4cA=
Date: Thu, 25 Jul 2019 19:40:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
Message-ID: <20190725174032.GA27818@kroah.com>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725172335.6825-3-logang@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_104035_783400_061D46C3 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 11:23:21AM -0600, Logan Gunthorpe wrote:
> cdev_get_by_path() attempts to retrieve a struct cdev from
> a path name. It is analagous to blkdev_get_by_path().
> 
> This will be necessary to create a nvme_ctrl_get_by_path()to
> support NVMe-OF passthru.

Ick, why?  Why would a cdev have a "pathname"?

What is "NVMe-OF passthru"?  Why does a char device node have anything
to do with NVMe?

We have way too many ways to abuse cdevs today, my long-term-wish has
always been to clean this interface up to make it more sane and unified,
and get rid of the "outliers" (all created at the time for a good
reason, that's not the problem.)  But to add "just one more" seems
really odd to me.

thanks,

greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
