Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1AF1B2AF9
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Apr 2020 17:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPu3ccVcLq2+vov9+o+avvXYik+A9vnTf6BVRVs7AKk=; b=PRKXQ6NcysXDeK
	3uBntbRW7BMx5ZLm5calYXaCdxJKrkvNBnTPj58l0Bvf7cmgBeMkbjbJg88m9aMkC5TFdHDsBEC6m
	M8+75umG2o2PA69uhpTlh5jYn7zztVFDjv7IOUAvd0la0I79dW1ujYz4ufTSzEHu1YfeOzAu46BLg
	l9W3mO7WEQ7gaHIdyl9qed3Z07CFd/9FL1ZP9jXjQXJOHbzQB576f3y0IwBlYKcTARU+F4LAnLvCa
	JdvzE3xvOStrPxAZVSAf+A5poqIgOUwVefgIHRljshmPbuLyaHGhL9rZRwSz2+7KU4p0swK/FS3Pa
	hMHjmJBZqOy+JPvy35bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQueu-0005To-Lq; Tue, 21 Apr 2020 15:18:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQueo-0005KK-Nu
 for linux-nvme@lists.infradead.org; Tue, 21 Apr 2020 15:17:56 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A6D6668C4E; Tue, 21 Apr 2020 17:17:47 +0200 (CEST)
Date: Tue, 21 Apr 2020 17:17:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 05/17] nvme-fabrics: Allow user enabling
 metadata/T10-PI support
Message-ID: <20200421151747.GA10837@lst.de>
References: <20200327171545.98970-1-maxg@mellanox.com>
 <20200327171545.98970-7-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327171545.98970-7-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_081754_929831_1A6B5FAA 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, linux-rdma@vger.kernel.org,
 israelr@mellanox.com, vladimirk@mellanox.com, linux-nvme@lists.infradead.org,
 idanb@mellanox.com, jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 08:15:33PM +0300, Max Gurtovoy wrote:
> From: Israel Rukshin <israelr@mellanox.com>
> 
> Preparation for adding metadata (T10-PI) over fabric support. This will
> allow end-to-end protection information passthrough and validation for
> NVMe over Fabric.

So actually - for PCIe we enable PI by default.  Not sure why RDMA would
be any different?  If we have a switch to turn it off we probably want
it work similar (can't be the same due to the lack of connect) for PCIe
as well.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
