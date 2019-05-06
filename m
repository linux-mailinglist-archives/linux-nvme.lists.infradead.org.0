Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B9D15172
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4MAWcCz2UQuC9mTbb3YuezVBJz5WyaBe0RV/Q+y68w=; b=O2te0c8/WqWh14
	vrW8RBBDY3xl/3gHySFyXK1Nq8z41Ag7mRO1MZsJp21iVtBPU2ztHlDcamwlhqrG6IGjFBfaiIXak
	210pDJro87J6go1A+s6RhWBtqoiow07ZPsCZLGtnIfvg+zrYEwhibRpJn07v0FT6ek1wWwAqeFEjc
	NDDzBbwgXrJJnqKBI7XxX07ydF6I033ZTD5nyD/P3lqr8uT0ARK27+bocxkjl3mbvM4ryDY6RgNkg
	+avs+bQrKMl3mPZQuPQ00G1c8jyTSEtbg/nLHG7VuZp1QBgk43ehg7vpU61SbX78pSBYyboytWOoe
	L5TyqQrBEvUftfxr25uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgXQ-0007x0-5Y; Mon, 06 May 2019 16:32:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWh-00075v-Tm
 for linux-nvme@bombadil.infradead.org; Mon, 06 May 2019 16:31:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RB+2B6I5tj/8TOxOAVi8qJciMIZqlBRDhDgxOPNEly8=; b=fY17WfcboMCwxchXccKIlX6uO
 lqu09GYxh32TobH1vMDvFlz1TrYYdcxcMEnGtKf+sf9+Lp2zPCyRCBCsUw+N4nkFoBcjpqh8gwB6S
 2yAAa/+LYES+KuxMwxNyIl+0T15kfQ2/gqEpXgdrkydagQvdxVU5lHhzkhziMLj7101m9y73QCDTZ
 1ANodHIRCLRmiJA8qRd8WH4CFw1yf3Lgs/9zrkWW7wEiu6Hyt2Ez81aIFJnOB7/zFqpwajQtJnFm8
 c/aOsVCJy9VkDO3yeR+1t4wthxEuDc3hKmOzpbhBMOLISN/MF+0laRsK/C5nHUCMgEBS2ZSJMa/wU
 VO5D9m9cw==;
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWe-0007xF-2x
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:31:37 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id AB7A868BFE; Mon,  6 May 2019 18:31:15 +0200 (CEST)
Date: Mon, 6 May 2019 18:31:14 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH] nvme-trace: Add fabrics command opcode name
Message-ID: <20190506163114.GA9468@lst.de>
References: <20190505152201.23830-1-minwoo.im.dev@gmail.com>
 <SN6PR04MB45270E164CBC599246428CE386300@SN6PR04MB4527.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB45270E164CBC599246428CE386300@SN6PR04MB4527.namprd04.prod.outlook.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_173136_188686_FA878350 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 04:29:12PM +0000, Chaitanya Kulkarni wrote:
> Please do not mix admin and fabric commands.

Well, "the" fabrics command is an opcode that can show up on
admin or I/O queues.  "the" because it actually is a multiplexer,
and we probably want to decode it instead of just saying fabrics
command in the traces.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
