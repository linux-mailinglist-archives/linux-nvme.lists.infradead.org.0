Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E894910FE16
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 13:52:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/Q1SgklwrV6u9rBubudidb+Dc8v4FpdBsoMhEfiYVI=; b=WR7nFf4QCFs+Sf
	YXXF6DHgfoQvDGYZkiGUxZOQQ+a+UHoSLG+zJyqYbF9scihef5lNGdvM+2UpJfIbyO1BS3HLSvQr0
	UuwW5SU5rQ/BkopOT9xeLtPUie+drSf7Eo9bzp/Z3Ek1Erojbg92+TtYHeEF0OfBUAeL5sMxYUKym
	C2PwN4dYMIaOgRc2JKphXpMT4NyViAPg0ijt8asaLLQ228VRUzIprkvKt+oeWCusDdDBg9O2Y2H5o
	neOGz0J//wTaGxyjXiVcRJ59DSI3+d5aDaMA5izBy7jj5Ajti4czBLh+MI4SCNgENzlUiD1YV/h14
	BVkZJNqF8UAOa68kXyYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7fO-0002nV-9Y; Tue, 03 Dec 2019 12:52:34 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7fI-0002mh-P7
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 12:52:30 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 211C968BFE; Tue,  3 Dec 2019 13:52:24 +0100 (CET)
Date: Tue, 3 Dec 2019 13:52:23 +0100
From: "hch@lst.de" <hch@lst.de>
To: Johannes Thumshirn <jthumshirn@suse.de>
Subject: Re: [RFC][PATCH] nvme/core: Notify udev about capacity change
Message-ID: <20191203125223.GA29831@lst.de>
References: <20191129002746.6622-1-sblbir@amazon.com>
 <20191129082449.GA9953@lst.de>
 <0a5fc287a4ac392b9b192402e6786e7129b9d5f2.camel@amazon.com>
 <20191203065421.GA23032@lst.de>
 <BYAPR04MB57497F5F024F3E5F2200835F86420@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20191203073447.GA23426@lst.de>
 <20191203124351.GE21721@Johanness-MacBook-Pro.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203124351.GE21721@Johanness-MacBook-Pro.local>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_045228_966482_1C550DD1 
X-CRM114-Status: UNSURE (   8.08  )
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>, "Sangaraju, Someswarudu" <ssomesh@amazon.com>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "Singh, Balbir" <sblbir@amazon.com>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 01:43:51PM +0100, Johannes Thumshirn wrote:
> I had this on my TODO List but one thing stopped my endeavors, having a
> "notifier" for resize is easy when we only grow the block-device, but what
> should the FS do when we shrink it?

Assuming this is a "normal" fs and not something fancy with built
in redundancy - shut the file system down and stop any new access to
it as that would just make things worse.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
