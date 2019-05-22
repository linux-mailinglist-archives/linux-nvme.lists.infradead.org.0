Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F314270DB
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 22:33:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52vmr1ZEc+xu+2cUELwMfxR1iDdjCH+OiiReKiJPul8=; b=QITggJJsggnKU6
	4i7L/l1bdWPKBSXm8zcEeuZaUl3B2aDpCn9Q50jZZgVm/Ednd3nHADMLI1g4NjSEJKp4L+p0HqIWT
	yOeQ2PtOS0tGoI2Scq0bjNABUBmYaHnNbQU3LwTrCUg5yYi1XykJRBujKhVr6Pe625kamRu2peu/n
	n0m/Xjl2NxYZwo+6G5vpP/oD2ekyyZ7gXkVZKGv0RC0TeUDa2I9tUt2wbym0cGDV5uau6a+5nk44F
	IP4sBgeFkQ8MRPEOoszoDgxUfUYzXecTW5KgAwizoMyoFLN+nRhBQSny+PvMdYAFGnVm1x7rD6lhk
	9ttgLLRxrlYC7WRAhT+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXvG-0006Mq-Gc; Wed, 22 May 2019 20:33:14 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXvB-0006MH-VF
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 20:33:11 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 13:33:09 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2019 13:33:08 -0700
Date: Wed, 22 May 2019 14:28:05 -0600
From: Keith Busch <kbusch@kernel.org>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH 0/2] Reset timeout for paused hardware
Message-ID: <20190522202805.GA5781@localhost.localdomain>
References: <20190522174812.5597-1-keith.busch@intel.com>
 <721e059e-ed88-734c-fea2-3637e6d31f4c@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <721e059e-ed88-734c-fea2-3637e6d31f4c@acm.org>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_133310_094004_B1F7DFFA 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 10:20:45PM +0200, Bart Van Assche wrote:
> On 5/22/19 7:48 PM, Keith Busch wrote:
> > Hardware may temporarily stop processing commands that have
> > been dispatched to it while activating new firmware. Some target
> > implementation's paused state time exceeds the default request expiry,
> > so any request dispatched before the driver could quiesce for the
> > hardware's paused state will time out, and handling this may interrupt
> > the firmware activation.
> > 
> > This two-part series provides a way for drivers to reset dispatched
> > requests' timeout deadline, then uses this new mechanism from the nvme
> > driver's fw activation work.
> 
> Hi Keith,
> 
> Is it essential to modify the block layer to implement this behavior
> change? Would it be possible to implement this behavior change by
> modifying the NVMe driver only, e.g. by modifying the nvme_timeout()
> function and by making that function return BLK_EH_RESET_TIMER while new
> firmware is being activated?

Good question.

We can't just do this from nvme_timeout(), though. That introduces races
between timeout_work and fw_act_work if that fw work clears the
condition that timeout needs to observe to return RESET_TIMER.

Even if we avoid that race, the rq->deadline needs to be adjusted to
the current time after the h/w unpause because the time accumulated while
h/w halted itself should not be counted against the request.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
