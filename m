Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F30D728C1
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 09:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PiuUnnjdHJovcpvt/CXv6/oDedAEFS8tE008dQ0bhk=; b=C4czGkQgydsM/t
	nstsisvMH49QC04/uQRYODcZnRHCRPXZWj8sHdqdkNUoydfzIbk+4gDtHA2+oZXtDf5S4Xm5fdO4n
	iizNdceVKTY+ei8hn8F6g+nrvC8JlPMCNa3ZdqPbdrZP1FzGvtf3+kOKMAA34jtikAusDOWyejf3V
	2oqUXz20JTRk8YxhFyGK3vA+gNUN4AV7B1cKtgf2hfSlWrVMROvWh8ttcskN8Ky9RlD2d4XNzfxHA
	bgkFF1K5+hahbgYY402LgdQmmSwlrLfgA2D+4GddJEj+04qZAfaBrh0P7SVLLlkLjBiPmSGnvfE++
	hio+wWe/j2cpGJjH8eTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBJl-0002kM-6y; Wed, 24 Jul 2019 07:04:05 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBIm-0001xH-4y
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 07:03:12 +0000
Received: from localhost (mehrangarh.blr.asicdesigners.com [10.193.185.169])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id x6O72kZg028795;
 Wed, 24 Jul 2019 00:02:47 -0700
Date: Wed, 24 Jul 2019 12:32:45 +0530
From: Potnuri Bharat Teja <bharat@chelsio.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-tcp: Use protocol specific operations while reading
 socket
Message-ID: <20190724070244.GB25528@chelsio.com>
References: <20190708095200.15921-1-bharat@chelsio.com>
 <20190724062836.GA25058@chelsio.com> <20190724063324.GA1999@lst.de>
 <20190724065858.GA25528@chelsio.com> <20190724070107.GA2450@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724070107.GA2450@lst.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_000305_381153_C0076F3C 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [12.32.117.8 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: werner@chelsio.com, nirranjan@chelsio.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wednesday, July 07/24/19, 2019 at 09:01:07 +0200, Christoph Hellwig wrote:
> On Wed, Jul 24, 2019 at 12:28:59PM +0530, Potnuri Bharat Teja wrote:
> > > > Hi Sagi/Christoph,
> > > > Can this be queued for rc?
> > > 
> > > How is this a -rc candidate?  I was planning on queuing it up for 5.4444.
> > I believe its a trivial one, so was hoping it could get into immediate rc(rc-2).
> > If you think otherwise I am fine with 5.4 also.
> 
> It does look trivial, but that isn't really the criteria for rc time
> inclusion, the prime criteria is if is an important bug fix.
Agreed.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
