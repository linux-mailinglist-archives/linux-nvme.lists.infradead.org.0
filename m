Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAF71B7AF
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 16:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6iwAe47w5sZrqHr3MdO2KubpT5qHQuone9+yHsTU+M=; b=W0gwQS9FVkPpta
	mTHmpLv2SM2GCHHOXik/ny6LhmXdCtnqCzpxAQ4WCLSjfuIpvUncVfBai3WNc8yUEOxu1WMYLRUG9
	EX1BF5Rq0luXBDzJ8wAtm/ibvgvwxQwu8LIC/fZWFcrJiI8S8GPGpNbNyDLTYeHOeAiqtSxZNTxxO
	rfaVd81oRMBJotcV3u9x0aYh9bOSgShV/gB3yeD43irOslJ561r1jjM9IFMareuTLXZ/9Yjkcyg5J
	0NGP6N+387ZZDT5t/Y1RcIPPWJPDIEWz0DQpDkPAOTgx6B3QkT0Mvl2Q7MvYI/59qX1UKCB8KyEf5
	2U4PcwZC10G42ivNuiQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBXs-00080y-7S; Mon, 13 May 2019 14:03:12 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBXn-00080W-NB
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 14:03:08 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 7DDA168AFE; Mon, 13 May 2019 16:02:47 +0200 (CEST)
Date: Mon, 13 May 2019 16:02:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 5/7] nvme-pci: add device coredump infrastructure
Message-ID: <20190513140246.GB24840@lst.de>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-6-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557676457-4195-6-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_070307_899874_56E15F94 
X-CRM114-Status: UNSURE (   7.94  )
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Usage of a scatterlist here is rather bogus as we never use
it for dma mapping.  Why can't you store the various pages in a
large bio_vec and then just issue that to the device in one
get log page command?  (or at least a few if MDTS kicks in?)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
