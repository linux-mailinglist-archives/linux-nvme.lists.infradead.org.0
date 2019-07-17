Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2656B58E
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 06:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysWfGCm2mCzU+Y5h8oUfkjFzyQbXfHFyzqjcVx73Z9A=; b=r6FTIoBBubRjH7
	/Mv9QEVZBhLcqpISK1LIGArGidTdduzVPpW58uDLv9pxXLmS7GZUDvQorfB2OZw8ZY5sfcRjVopgR
	4lVuYu0SFJVavQC2Hc/GgH96ecSRqhHi29w1QRgB7PYxTsKFqhZS1GEycZSmUS3hAMCHtPDMEC4Hi
	ntxW3Mw/hiJgcaJfv0O/V5elDMh7u5tsjp0uV/VIqQKZHeTMonh93BA/u5Af6zgiDBPH4gbOxzooM
	dytpu8D5hBk2I2VHtIQkC45wYp3HAZTxeLhCuyv5lg9U3IyhZGxvW2EweWJHP8QA0TGJPPwZBhh0u
	XMuYBggdavmzbRvsrQNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnbWv-0007qr-Ee; Wed, 17 Jul 2019 04:27:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnbWj-0007qK-Js
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 04:26:51 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1C09968B05; Wed, 17 Jul 2019 06:26:47 +0200 (CEST)
Date: Wed, 17 Jul 2019 06:26:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: nvme-5.3 ssd performance regression
Message-ID: <20190717042646.GA4583@lst.de>
References: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
 <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
 <6863e5fa43409c370395cc66e7499dd7c150c497.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6863e5fa43409c370395cc66e7499dd7c150c497.camel@kernel.crashing.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_212649_806775_CDB71481 
X-CRM114-Status: UNSURE (   4.52  )
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
Cc: Jens Axboe <axboe@fb.com>, Ming Lei <tom.leiming@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 10:15:00AM +1000, Benjamin Herrenschmidt wrote:
> Yes. Reverting this brings the speed back to 2GB/s

Thanks.  Can you try this series as well:

http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-max-mapping-size-fix

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
