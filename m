Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E187B516
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 23:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edTjahjY6D+6K/t8Gz1oTrMx89IUw2oB10QRUrtDK/g=; b=LYkks5h8Ss3XH7
	bMr9hXJ7P8dMx7tiPXO38sn/naLXGhYkNGx9cmrsAfOBuwYxSGuOrnhdWoYgN9Q20AJKd9SKMNDBm
	vJO2agD7qo71qvc3Xe9WSlZ9VCL9iR6dVWaRx4SHCkYe7oq41YmVosr0q23K7BYJM93gtpdlzWgdj
	fytX5czGw2AlJ8jQslL0LL7Qr/KZFh+FaPIXWioU0NqpMarBNJsw7WOlkhWyHd0+J+T11U94m0bB0
	Lw5fClEa1fnFTzS9wOmd3CG3gmK0ASJODplP4O/0+lbpsQ6OUk3cHYV0eofemgjKVV55ShcP6S7+f
	SBsL8h1hrgHJNy5lJNQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZnj-0007rd-EP; Tue, 30 Jul 2019 21:36:55 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZne-0007lq-BB
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 21:36:51 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 14:36:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="173893227"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga007.fm.intel.com with ESMTP; 30 Jul 2019 14:36:47 -0700
Date: Tue, 30 Jul 2019 15:34:04 -0600
From: Keith Busch <kbusch@kernel.org>
To: Charles.Hyde@dellteam.com
Subject: Re: [PATCH] drivers/nvme: save/restore HMB on suspend/resume
Message-ID: <20190730213404.GA14402@localhost.localdomain>
References: <362aad7f1cf547c2a73e1c4f564984db@AUSX13MPS303.AMER.DELL.COM>
 <20190730204829.GI13948@localhost.localdomain>
 <c90ac9850f944407b39e369dce2e1e72@AUSX13MPS303.AMER.DELL.COM>
 <20190730211044.GJ13948@localhost.localdomain>
 <8c5bfc2cee134ed392b5aa933827ed4e@AUSX13MPS303.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c5bfc2cee134ed392b5aa933827ed4e@AUSX13MPS303.AMER.DELL.COM>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_143650_396104_1DA0EC85 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: axboe@fb.com, sagi@grimberg.me, hch@lst.de, linux-nvme@lists.infradead.org,
 Mario.Limonciello@dell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 09:32:13PM +0000, Charles.Hyde@dellteam.com wrote:
> Without this change, I have observed 100% failure rate with LiteOn CL1
> devices.  I was informed yesterday the vendor is investigating a root
> cause of S0ix failures with their device, I have not heard anything
> further.  Like you, I would wish this patch is not needed, and maybe it
> will not be when the vendor finishes their failure analysis.

Okay, let's wait to hear root cause before considering work-arounds.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
