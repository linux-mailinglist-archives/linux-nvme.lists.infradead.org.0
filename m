Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40C06A834
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 14:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBJbc+sy/gE5O7AWqUBfuUI9c1nHEcxevrFE+wCHVt8=; b=P9eC0T8FxmBO6Y
	pOSwakLqR/oaW0NMVHPs5eGui/4EJLChWvlKkmtshJaHAlpKWMUnk0HEHSd07KnzHFJJO895auph4
	Dr0OYTi2Ahw05YZ6Xeu7lBIqiSGTbNHAAmA7dU2WU5cQ6u6Ps+6NStJg/st5yu6qpIckqgq0vSuk6
	OIAxNm6g3TBaOaloTfiMfk9Nf/wDXBhNZruC+yy7PJnMZ2qZHI8OdkfLeRKP0nEbOwgRne57jAIH/
	cjfO/eBmSWFyX+X3xjRgE4fZazWVAwVONF+zbsC4HDAGDs7o99xOYUkaIeXRK9iSw4Ey4/kM7H3Hn
	pJVU9PrXZ2dqKg9SPm7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMDX-0002f3-7M; Tue, 16 Jul 2019 12:05:59 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnMDO-0002eC-W5
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 12:05:52 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B9E3E227A81; Tue, 16 Jul 2019 14:05:47 +0200 (CEST)
Date: Tue, 16 Jul 2019 14:05:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 2/3] nvme: Retrieve the required IO queue entry size
 from the controller
Message-ID: <20190716120547.GA2388@lst.de>
References: <20190716004649.17799-1-benh@kernel.crashing.org>
 <20190716004649.17799-2-benh@kernel.crashing.org>
 <20190716060430.GB29414@lst.de>
 <ad18ff8d004225e102076f8e1fb617916617f337.camel@kernel.crashing.org>
 <20190716093301.GA32562@lst.de>
 <bfbc7352951d1adc714f699acb49e298c24fe7e3.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bfbc7352951d1adc714f699acb49e298c24fe7e3.camel@kernel.crashing.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050551_178157_538180FE 
X-CRM114-Status: UNSURE (   7.62  )
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
Cc: linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 08:58:28PM +1000, Benjamin Herrenschmidt wrote:
> The main risk is if existing controllers return crap in SQES and we try
> to then use that crap. The rest should essentially be NOPs.
> 
> Maybe I should add some kind of printk to warn in case we use/detect a
> non-standard size. That would help diagnosing issues.

Given that the spec currently requires bits 0 to 3 of SQES to be 6
we might as well not check SQES and just hardcode it to 6 or 7 depending
on the quirk.  That actually was my initial idea, I just suggested using
the SQES naming and indexing.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
