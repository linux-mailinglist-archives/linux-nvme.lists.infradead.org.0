Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5771F4E74
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jun 2020 08:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SB3pJOKIogyuA/8YPSv27PxNeU5DsLFU7oMmQFnpP8I=; b=XFT5yGXLEfQn2o
	2vWU03A+/lqJ0PExKnDrjr+Mq/u3DZIwsMoTJDMqO615G9VR+l1MbAfYWCxjhYguOR2Nsn9JALFHp
	eSmwbbK9Mkj2uy0Daii6/+wirrhY4BkGSrMkEK6Iw07bWNmmIJmhh8HXeGiFcyC89oKJip/DPEDEa
	d9u7VGtfqbVRh16D9DSxhOTv+PIpD9fiUNfvQBLoI5r8w9QomRIZCzGhSqXkSd37mfjfd+4lizYKh
	J7XTHh0FwLq+mq5dXLIiSnU79DYTrzP1sV1Rdv+cAalGwQSq1fbvy3iGf7PtfA7aOE445aiJOqKrh
	D6/WrPq05kM4XLP2Y2vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiucM-0007gK-Tr; Wed, 10 Jun 2020 06:53:46 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiucI-0007fw-1g
 for linux-nvme@lists.infradead.org; Wed, 10 Jun 2020 06:53:43 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8025C68AFE; Wed, 10 Jun 2020 08:53:36 +0200 (CEST)
Date: Wed, 10 Jun 2020 08:53:36 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-pci: use simple suspend when a HMB is enabled
Message-ID: <20200610065336.GA1397@lst.de>
References: <20200609161053.46493-1-hch@lst.de>
 <20200609162953.GA2278@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609162953.GA2278@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_235342_233804_CB168FFE 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 01:29:53AM +0900, Keith Busch wrote:
> On Tue, Jun 09, 2020 at 06:10:53PM +0200, Christoph Hellwig wrote:
> > While the NVMe specification allows the device to access the host memory
> > buffer in host DRAM from all power states, hosts will fail access to
> > DRAM during S3 and similar power states.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> Looks good. Stable ought to pick this up too.

I've added a:

Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")

and added it to nvme-5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
