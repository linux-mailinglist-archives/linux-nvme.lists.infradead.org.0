Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9982C4C78C
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 08:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/Wj9Ne1M1N+28nlcCWeUrFlrvDbXpRqs3pgeDQkN14=; b=p69ZOCw8waTz1h
	ZikGrXZZG2xKShP3ZCTRS02mxDTVciuXvcUDWBdQrf6E5UEqxz5gFSWA7vR2lnBq8ZTOBza/KFcgs
	xGnTa7MuWr3R8WnmIZmlmZ7y5yAN2aYWJbPbS3LT/hRp5inukuzYu4YNiSsI33OeoSTDssW4tV/68
	zqaskEWd2n+4MS7+S0Jg997iwlKI/PoceKwbOiNn3XR0vag5r5mTlUKtyXJgv5d1OnZKMuo6rw1/h
	cgvhy+RjS3JodMYo9rrBk7YFsRCIYiRezppyUFmUVb0Jzflh+HORZAYIJ07mefWv4YH0pImCw7R6P
	RfGaKGcYbL756byhT9hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqgt-0004yn-Ta; Thu, 20 Jun 2019 06:37:00 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqgl-0004yI-Uc
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 06:36:53 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 6449368B05; Thu, 20 Jun 2019 08:36:20 +0200 (CEST)
Date: Thu, 20 Jun 2019 08:36:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v4 0/3] nvme: add thermal zone devices
Message-ID: <20190620063619.GA21034@lst.de>
References: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_233652_136278_EE5ACDE4 
X-CRM114-Status: UNSURE (   5.67  )
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

So the code looks perfectly fine to me.  But I'm still not convinced we
have an important enough use case, and I'm worried about the AEN uevent
implication.

Keith, Sagi, Jens, any opinion?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
