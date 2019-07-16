Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D626A234
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 08:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ko1XzU57iuG9cxnY2QQGPixqGmIhEOP5xPWSoIBah4=; b=RhP501zW93f36w
	1LM6w29fMtY0qrjFm0yJ+2EabMogtZ9o1qr0ZpPgHWKLBKxftZq1eS1Mdr9h4gpS3j3vUazWIvpbp
	HVT67Ng8DLd28KkNMLJ8VvOHcxWBhHCanA8/KNFtlg+DkHvukRKtuRNMxFt2YYzbXjLmCztEXK2E8
	6aQzAY+1XbpJUPrFkBBEIkYOpAc0CJ1jVCH0MesUTXa3cnSji+rY6seUukxnxCn7g2pWSAgnl6eb5
	m89GXRfmZ0QzxSWneO9N1a2qK0W8uQc0Bc9QQcXVM0sLJvq3lgSJlVf/MMRQ606L/5CDaIRGSFIBm
	wvrELUXWVx3SMxIYPcog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnGqD-0000nq-QG; Tue, 16 Jul 2019 06:21:34 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnGq6-0000nT-7J
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 06:21:27 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6G6LEHB010814;
 Tue, 16 Jul 2019 01:21:16 -0500
Message-ID: <ad18ff8d004225e102076f8e1fb617916617f337.camel@kernel.crashing.org>
Subject: Re: [PATCH 2/3] nvme: Retrieve the required IO queue entry size
 from the controller
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Tue, 16 Jul 2019 16:21:14 +1000
In-Reply-To: <20190716060430.GB29414@lst.de>
References: <20190716004649.17799-1-benh@kernel.crashing.org>
 <20190716004649.17799-2-benh@kernel.crashing.org>
 <20190716060430.GB29414@lst.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_232126_414575_985AA9AE 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Paul Pawlowski <paul@mrarm.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-07-16 at 08:04 +0200, Christoph Hellwig wrote:
> > 
> > +		/*
> > +		 * If our IO queue size isn't the default, update the setting
> > +		 * in CC:IOSQES.
> > +		 */
> > +		if (ctrl->iosqes != NVME_NVM_IOSQES) {
> > +			ctrl->ctrl_config &= ~(0xfu << NVME_CC_IOSQES_SHIFT);
> > +			ctrl->ctrl_config |= ctrl->iosqes << NVME_CC_IOSQES_SHIFT;
> > +			ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC,
> > +						     ctrl->ctrl_config);
> > +			if (ret) {
> > +				dev_err(ctrl->device,
> > +					"error updating CC register\n");
> > +				goto out_free;
> > +			}
> > +		}
> 
> Actually, this doesn't work on a "real" nvme controller, to change CC
> values the controller needs to be disabled.

Not really. The specs says that MPS, AMD and CSS need to be set before
enabling, but IOCQES and IOSQES can be modified later as long as there
is no IO queue created yet.

This is necessary otherwise there's a chicken and egg problem. You need
the admin queue to do the controller id in order to get the sizes and
for that you need the controller to be enabled.

Note: This is not a huge issue anyway since I only update the register
if the required size isn't 6 which is probably never going to be the
case on non-Apple HW.

>   So back to the version
> you circulated to me in private mail that just sets q->sqes and has a
> comment that this is magic for The Apple controller.  If/when we get
> standardized large SQE support we'll need to discover that earlier or
> do a disable/enable dance.  Sorry for misleading you down this road and
> creating the extra work.  

I think it's still ok, let me know...

Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
