Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5C110D262
	for <lists+linux-nvme@lfdr.de>; Fri, 29 Nov 2019 09:25:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmiQSnnE8liEILwwtH0TT8MLBpx35Dwsq90fEUMANEY=; b=qv1ghfTmnxQq9k
	MjSOqqO/uTVLjo/LPL79BXodRaz2VH3mUJaSMTk+QZH+vcn8sLDob7E3KY42Ib8MTDbC5qxLdSHwf
	6yDAtxzBMkPlpM6ZqRQPh1Gf3RxoZX9wYguANy4gIqi8LwBjnb6sZOmue3I42k4GWmSTxjP6ShME4
	u8uvkLw3B+bV1j8GG/MrENzHu4BiVAR5LWOm4/xaZlYZpA4lqUw0xxKHF5rFQwgKhUVCVPKEvreJH
	cLEhsNlQvC4RKwSUD7rBqOuEkM0Wd4jQjXRDnkC9Bhr//7m5n3Nkv36pmaGAEM4pfMsl9VPr0QIZc
	QhgnHNAjYGuAwTqhEIxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iabaG-00027i-Vv; Fri, 29 Nov 2019 08:25:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iabaD-00027E-BQ
 for linux-nvme@lists.infradead.org; Fri, 29 Nov 2019 08:24:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E65FC68AFE; Fri, 29 Nov 2019 09:24:49 +0100 (CET)
Date: Fri, 29 Nov 2019 09:24:49 +0100
From: Christoph Hellwig <hch@lst.de>
To: Balbir Singh <sblbir@amazon.com>
Subject: Re: [RFC][PATCH] nvme/core: Notify udev about capacity change
Message-ID: <20191129082449.GA9953@lst.de>
References: <20191129002746.6622-1-sblbir@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129002746.6622-1-sblbir@amazon.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_002457_537984_A1E5A612 
X-CRM114-Status: UNSURE (   6.75  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Someswarudu Sangaraju <ssomesh@amazon.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I don't think this makes sense, and they way it has been done in
virtio_blk and xen-blkfront is an utter hack.  Please first add a
properly documented block helper, and then make sure it doesn't send the
even for the first call that moves from a 0 capacity.  SCSI also will
need updating to use the helper.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
