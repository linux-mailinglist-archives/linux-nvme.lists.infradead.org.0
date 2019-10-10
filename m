Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8DCD2C05
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 16:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cio+HnnsKUV1t6ixNQm8GB5EFHF64JxFc9OMHWul4FY=; b=oiZ8SPMyRmMQ+O
	q3Hldv+FmZmzabs6OIrRl5vny/oxbmPNw9LCgV72oAXVlC4+EXo5hYXxNv53h0nK6tKJnRLFvmHx1
	RXu5PtgERSgjx555ZWIeVb5GbTMtcwkCuoIRIWJPveka6BMfWpGE/JJjE0MsheZ/yZTOW862A6Y7J
	m/y0qTuymOaGJMFF0W2aVNGpXz1kMAUGVO2Q+rM+ydRmmG5UN8JLFudnu4KmynPx6FdDnF8sh6RYt
	6sq3nEJYaJPJjDzcqGNUX+sFnzuu57m6IbPS+FRETNJWG20WEElhnpmWflCpfJJq8QWoUOx9v87Ei
	PDIkuO3+i5vh/dOd9+NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIZ2C-0005Rq-M2; Thu, 10 Oct 2019 14:03:16 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIZ27-0005RQ-5P
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 14:03:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E9B1068C65; Thu, 10 Oct 2019 16:03:07 +0200 (CEST)
Date: Thu, 10 Oct 2019 16:03:07 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2 5/6] nvme: Prevent resets during paused states
Message-ID: <20191010140307.GA31915@lst.de>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-6-kbusch@kernel.org> <20190927214121.GK16819@lst.de>
 <20190928002349.GA17232@C02WT3WMHTD6>
 <CGME20191010120317uscas1p1e4483ca19dbb0e550c413c18c5928537@uscas1p1.samsung.com>
 <2f876efff1484f5f95b852584b27efc6@samsung.com>
 <20191010135914.GB56376@C02WT3WMHTD6.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010135914.GB56376@C02WT3WMHTD6.wdl.wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_070311_354286_B30B8BBD 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Edmund Nadolski <edmund.nadolski@intel.com>,
 Judy Brock <judy.brock@samsung.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 07:59:14AM -0600, Keith Busch wrote:
> Christoph, are you okay with my explanation for not introducing another ctrl
> state? We could add a paused state, but I think it's a bit risky for no real
> gain.

I don't particularly like it, but I also can't come up with a better
idea..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
