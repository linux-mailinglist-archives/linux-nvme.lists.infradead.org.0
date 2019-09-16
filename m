Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF37B3616
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 10:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUaocTagvAkMQ0mQTAUZqQTPC3px+EzPbJWN8FocRbw=; b=Gbtrys4gmO83dY
	YwC5OQJLYnTf/HZQyRb2HBJ90AkjmQ2Y65qbauGQUi5msGZ+bsPkVU0ZG4eXVrb2EKQ4nYuPcyt1B
	egoIm5u7bAyUv/22Ale2c+ef1rZLHCk/EHmTxS42dDNY/HZBdo+lAdGI/25yg8y9G7Nz+zeuGaS5Z
	i+MtyHluWiSL2evm8giwxtw+km9Ajf6I8vyrEKH66hqHtEcVJ42P0VoBtNkmOj8fl1q9w4L0o5aPm
	ac1A5VzDBvI8yZC4jLBlMd5Jubm3kdlDS5B4HTG4wDG1ifWIMtAdkYyVDEpjgVHwD0pbqtHsWKGzZ
	BSGb1A3zvPNREgozsacw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lxM-0004qh-10; Mon, 16 Sep 2019 08:01:56 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lxC-0004qI-BF
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 08:01:47 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C377A68B05; Mon, 16 Sep 2019 10:01:42 +0200 (CEST)
Date: Mon, 16 Sep 2019 10:01:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: Re: [PATCH v5 2/2] block: centralize PI remapping logic to the
 block layer
Message-ID: <20190916080142.GA25898@lst.de>
References: <1568215397-15496-1-git-send-email-maxg@mellanox.com>
 <1568215397-15496-2-git-send-email-maxg@mellanox.com>
 <380932df-2119-ad86-8bb2-3eccb005c949@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <380932df-2119-ad86-8bb2-3eccb005c949@kernel.dk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_010146_539805_866935A9 
X-CRM114-Status: UNSURE (   7.86  )
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
Cc: keith.busch@intel.com, sagi@grimberg.me, martin.petersen@oracle.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, shlomin@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 04:01:11PM -0600, Jens Axboe wrote:
> While I like the idea of centralizing stuff like this, I'm also not
> happy with adding checks like this to the fast path. But I guess it's
> still better than stuff it in drivers.

Let's put it that way - we move the check from our two most commonly
drivers (one of those also is our most performance sensitive) to common
code.  I think this should generally be a net win?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
