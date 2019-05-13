Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA751B04A
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 08:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtVLL6LkL5Ks+T1NQhkXlBf1TC5Dt72+fTu7hE8gwKA=; b=Gt32ZZr78bvkLw
	uijx+BjL6/ypOUkQztb8QiYNufzZICO9hlEvEy0OovhcOfKxqpGDQPOPRNYLtATheLeQkYoQxFSEy
	32AA5A1HH6la/W+smRmWcC+80fWggg0G5nNhblwD77EIwB8zC0daWrrdWjFPh1H0aTwO8pXJFngLb
	ugqCTIibRK3t2aYxPM1bnS60RnGRcD/2WkEzfONxJgGiLdzqCyyjv5BIo0oUP1CycGvaElqrVK/bk
	XBHLjL9OilzJUlvcFOi4/Rh6+eqYZTYe9Owaej0fMsH4FdTaCJ4QMb4mRZ3df6ZYcAgectrRbfpkh
	k0g05XTjp+aJK7l3qeyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4QA-0003gQ-Dr; Mon, 13 May 2019 06:26:46 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4Q4-0003fd-FN
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 06:26:42 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 7D8CE68AA6; Mon, 13 May 2019 08:26:15 +0200 (CEST)
Date: Mon, 13 May 2019 08:26:15 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH] nvme-pci: fix single segment detection
Message-ID: <20190513062615.GA18152@lst.de>
References: <20190509110409.19647-1-hch@lst.de>
 <20190509112410.GA20711@ming.t460p> <20190509123406.GB21483@lst.de>
 <20190509133120.GA22059@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509133120.GA22059@ming.t460p>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_232640_658415_AECA9300 
X-CRM114-Status: UNSURE (   6.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, axboe@fb.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 linux-block@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

So actually, after running out ways to make any of my complex block
layer fix ideas work I have a simple fix for the block layer now.

Lets see if is acceptable..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
