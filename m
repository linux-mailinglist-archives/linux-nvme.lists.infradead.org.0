Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C011A12AB
	for <lists+linux-nvme@lfdr.de>; Tue,  7 Apr 2020 19:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5voVdFaE4P7P3+vwLIFXEuVOquaL4CmvtIE2kPYbDFM=; b=JyJwoyPypPpBhN
	ItLWvHRJ+zVMtxo/6nwYi9aLVaI2LO7c6eS38JM5zSrjkpd618ydoIZ/RDs60ttlHpPg1UqaFmHf5
	RbgRMDmbhtrpnuzFV8JMRcC+YPvRDsWmh2iwYVTkFJGJvVP9bFw1WwiLwTcaGFRqLGOOLwM3ePdrG
	5nysI5HVgsldLyhJ57mhsSQLUvhaAKG/zH42j3vd8AWqq8sZT5RGHDDl1eu+0A+hZ0g4SLNv+3nyY
	jS79wVo94KsX5k1DPBqfpWgNQ4qLjHuimSo9Zr7ueeuOfBwCQPBBOnho7Y0R7JVnuBcaEE9PICG5R
	nr3LlC57cKKy/qOFT+yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLrzC-0004Qu-1Z; Tue, 07 Apr 2020 17:26:06 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLrz8-0004QP-BC
 for linux-nvme@lists.infradead.org; Tue, 07 Apr 2020 17:26:03 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6E30168C4E; Tue,  7 Apr 2020 19:25:59 +0200 (CEST)
Date: Tue, 7 Apr 2020 19:25:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2] nvme: define constants for identification values
Message-ID: <20200407172559.GA6876@lst.de>
References: <20200403175346.1571822-1-kbusch@kernel.org>
 <20200404070437.GA14423@lst.de> <20200404170742.GA53042@C02WT3WMHTD6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200404170742.GA53042@C02WT3WMHTD6>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_102602_530459_D6C765DA 
X-CRM114-Status: GOOD (  12.88  )
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

On Sat, Apr 04, 2020 at 11:07:42AM -0600, Keith Busch wrote:
> On Sat, Apr 04, 2020 at 09:04:37AM +0200, Christoph Hellwig wrote:
> > On Fri, Apr 03, 2020 at 10:53:46AM -0700, Keith Busch wrote:
> > > Improve code readability by defining the specification's constants that
> > > the driver is using when decoding identification payloads.
> > > 
> > > Signed-off-by: Keith Busch <kbusch@kernel.org>
> > 
> > I can't say I find this an improvement - the bit values allow you
> > to jump straight to the spec, while the names need a translation
> > (either to the actual bit or the spec name without underscores and co
> > first).
> 
> Named constants tell us what they are inline with the code that's
> using it. You can make sense of the code just by reading the code,
> no additional docs or code comments required.

Sometimes they do, but especially for nvme they often don't.  Anyway,
I'd like to hear from Sagi and/or Jens to see if we have more people
who like this or don't instead of just us two having different
preferences.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
