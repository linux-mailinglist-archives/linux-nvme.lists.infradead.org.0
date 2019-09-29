Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71611C1742
	for <lists+linux-nvme@lfdr.de>; Sun, 29 Sep 2019 19:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yqo9iKQz97sPM7PPnv5KYVocD/U+9+gf0kw1TQOq39A=; b=jHNDE/U6MILxWe
	Trnw2zjPWk455+OuTkEg1BEC4teqyn87DuvBN8vRBixizQyaA791xsp36q/OGHqXygTwSIzA6lINN
	8S9rqzp5eLuhHblIi61sGJCFZ9X0xP/6BPxkdI6UFM5/JEGX77gG8Tx5WIQgSEmrckYOHNCEvYS94
	BHuRXmJyC3hAQNfUyFJLSxuwc7zOaM4iig0dEP9nLORoIvTSFc3Y2ZJpxOgcMkHEW58sVnjqeor+u
	dZCTOm+gB0ugymFaaUrtDX3AqpihKwb4BloMGVfrCi/csrzKzGIwlHCw9BYpPi495bRrMxc1Yc3At
	aNTVHUnbwnRvoJp6g7BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEd82-0008UY-Bt; Sun, 29 Sep 2019 17:37:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEd7w-0008TX-Qr
 for linux-nvme@lists.infradead.org; Sun, 29 Sep 2019 17:36:57 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E22A321906;
 Sun, 29 Sep 2019 17:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569778616;
 bh=RazS7jFCo4CSD3DZ338PdbdusdnyxnjqHW54FoDDjis=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qcFbJTW7+RA6M0ocux6obPpxaqk0+Pg5EZ313gvOI86qtaD6YdX6M9abM6pQZZqOX
 5y7NIcxjT9KUUr61xnbfnQ1mYbYY6CIZ+2GfdTTiOfKqKddxJk93hGcI1HRWNyqEOk
 QIVd5e022QSx+ScoyoZLrrNvRtjGIG3hlEPKKbpo=
Date: Sun, 29 Sep 2019 11:36:54 -0600
From: Keith Busch <kbusch@kernel.org>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH] nvme: look up proper namespace in NVME_IOCTL_IO_CMD
Message-ID: <20190929173654.GA1484@C02WT3WMHTD6>
References: <20190928021500.31382-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190928021500.31382-1-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103656_888299_0ED89F6B 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 11:15:00AM +0900, Minwoo Im wrote:
> NVME_IOCTL_IO_CMD is deprecated because IO request for a chardev is
> unsafe.  But in case userspace gives nsid, kernel should at least look
> up the proper namespace instance instead getting the first entry and
> checking whether if it's the last one.

This pretty much defeats the purpose of discouraging using this interface, and
possibly opens security issues if someone can issue IO to a device they
shouldn't be able to access.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
