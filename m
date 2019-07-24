Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44F7728BD
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 09:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otO2j/+oj+ZotSAdpQ+GhbsF7g0vG7vsl2KnHSlOCDA=; b=OiQ2oMsWys1byB
	kDu5ZzvQQBAIG/Gzwr2vbqJgBfsM8z+S8ZUFRBsb4qRlwOWN0PmfGSwXPAyvoN53xro8GiTcsKZFD
	rg6IdaX2p5NM86ysdk4SP2fS/t8WKr7B5bHPp5P+lmFQPzwW5Cj+6M8qyi3vfRilmL4DRCC2KYSnE
	xcvodJXeId/sS9lM81SjPHx1NtmU5NtDG2t5udR28i7Q+owAiKzc/PXtvqLYUR/Ci2piRTkLMEMBo
	DMIb2U7XkDhEv2i2HgS3bXghk6Hg2PcUsc6D18q39zPScxOd2VOrPgzUCZ1JbF9kNv1qaF3oGpFjm
	JI339lCjgL0geo0p7d7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBHG-0008ND-Rg; Wed, 24 Jul 2019 07:01:30 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBGw-0008Mc-0t
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 07:01:11 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DCC5768B20; Wed, 24 Jul 2019 09:01:07 +0200 (CEST)
Date: Wed, 24 Jul 2019 09:01:07 +0200
From: Christoph Hellwig <hch@lst.de>
To: Potnuri Bharat Teja <bharat@chelsio.com>
Subject: Re: [PATCH] nvme-tcp: Use protocol specific operations while
 reading socket
Message-ID: <20190724070107.GA2450@lst.de>
References: <20190708095200.15921-1-bharat@chelsio.com>
 <20190724062836.GA25058@chelsio.com> <20190724063324.GA1999@lst.de>
 <20190724065858.GA25528@chelsio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724065858.GA25528@chelsio.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_000110_225138_E0CA14BA 
X-CRM114-Status: UNSURE (   9.31  )
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
Cc: werner@chelsio.com, nirranjan@chelsio.com, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 12:28:59PM +0530, Potnuri Bharat Teja wrote:
> > > Hi Sagi/Christoph,
> > > Can this be queued for rc?
> > 
> > How is this a -rc candidate?  I was planning on queuing it up for 5.4444.
> I believe its a trivial one, so was hoping it could get into immediate rc(rc-2).
> If you think otherwise I am fine with 5.4 also.

It does look trivial, but that isn't really the criteria for rc time
inclusion, the prime criteria is if is an important bug fix.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
