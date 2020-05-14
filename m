Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D911D25AC
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 06:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoUljaAuY+hwoZDiI1Gnmemnk8CQ23gb+w/AnH1BtLY=; b=gMIKOHqXsLXOBw
	kR0TBSZ/2Kah00rsn8utSOaSzQPX9ri5kJBoV+gLZHSiSJQR9JkPVw1rmxgAsOcUAAEEnLogGxvlk
	5dozFM0/NzoX2ZX6iD0BGO0Vl96s8Gvd2J8yG4rzEQjsF7xjtaSOWbHgt08bl8FL7WFxkFbSgnSvb
	c7sS4psckUC7DOhLgTvA2SV5FgPUU8BHXj36MBOxRtXD7jMQJqyaC7g0iYbIqJWumlk0g64Olsr04
	BTdziUeX0Uv+6ztz2aS5mf/5rFnwtW7fSSq88A2f7XqqJT8NIdLa6uevWhDHZwy7jICl5G0uJxDej
	Kun2M1YBC/BOC7psOHqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ5ER-0003EX-JU; Thu, 14 May 2020 04:12:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ5EO-0003EB-CT
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 04:12:25 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F31A520659;
 Thu, 14 May 2020 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589429544;
 bh=PUjf1aR0rPZ/Cl0phAE4zoz2LvgkASqdLLeOWwiku0U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yFnSMkP6ZoSc5CNoPQmvzr4VXycQyc5xIqoHkDHs31TgHEC419M9MNk5k/igYboUP
 n8rom+D+EFQSLTlhpQ4vh0IxOmakr6uhN8/ynAbuQrloO326daBs4bu8PDybFK3al/
 4prJ8boOdC6YZctP9I/eJfaS/QyXIiigtTLnJ83U=
Date: Thu, 14 May 2020 13:12:15 +0900
From: Keith Busch <kbusch@kernel.org>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: [PATCH] nvme: Fix io_opt limit setting
Message-ID: <20200514041215.GA1900@redsun51.ssa.fujisawa.hgst.com>
References: <20200514015452.1055278-1-damien.lemoal@wdc.com>
 <20200514034033.GB1833@redsun51.ssa.fujisawa.hgst.com>
 <BY5PR04MB6900584D1F292E65425827F4E7BC0@BY5PR04MB6900.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR04MB6900584D1F292E65425827F4E7BC0@BY5PR04MB6900.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_211224_440039_F91F99EF 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 03:47:56AM +0000, Damien Le Moal wrote:
> On 2020/05/14 12:40, Keith Busch wrote:
> > On Thu, May 14, 2020 at 10:54:52AM +0900, Damien Le Moal wrote:
> >> Currently, a namespace io_opt queue limit is set by default to the
> >> physical sector size of the namespace and to the the write optimal
> >> size (NOWS) when the namespace reports this value. This causes problems
> >> with block limits stacking in blk_stack_limits() when a namespace block
> >> device is combined with an HDD which generally do not report any optimal
> >> transfer size (io_opt limit is 0). The code:
> >>
> >> /* Optimal I/O a multiple of the physical block size? */
> >> if (t->io_opt & (t->physical_block_size - 1)) {
> >> 	t->io_opt = 0;
> >> 	t->misaligned = 1;
> >> 	ret = -1;
> >> }
> >>
> >> results in blk_stack_limits() to return an error when the combined
> >> devices have different but compatible physical sector sizes (e.g. 512B
> >> sector SSD with 4KB sector disks).
> >>
> >> Fix this by not setting the optiomal IO size limit if the namespace does
> >> not report an optimal write size value.
> > 
> > Won't this continue to break if a controller does report NOWS that's not
> > a multiple of the physical block size of the device it's stacking with?
> 
> When io_opt stacking is handled, the physical sector size for the stacked device
> is already resolved to a common value. If the NOWS value cannot accommodate this
> resolved physical sector size, this is an incompatible stacking, so failing is
> OK in that case.

I see, though it's not strictly incompatible as io_opt is merely a hint
that could continue to work if the stacked limit was recalculated as:

	if (t->io_opt & (t->physical_block_size - 1))
	 	t->io_opt = lcm(t->io_opt, t->physical_block_size);

Regardless, your patch does make sense, but it does have a merge
conflict with nvme-5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
