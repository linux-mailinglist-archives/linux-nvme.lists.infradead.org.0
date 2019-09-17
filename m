Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4120BB5335
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Sep 2019 18:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5D4Nul/K+wtILIPY5H9Q/vFSO2wrCi4+csm/6uWOKI=; b=D35WY7CJsYVKNB
	gRtMGciNcCGAgzSNLvNqPtJ4qKk5f5DMntcCqsyA0IMT7SrQuk9ZSJwPYXwSrwJmFPpY7SLi1+c0C
	LBU6AWuhGnTkMUnm/c5BvYszGriTo9qmBJO5yM1SJGomEG2Ut95oD81ZmHhCeab7Q0Qto6VRFEnTd
	YdXhzsuZGbROu0f5te/gdvKa7CKzyYfPiCOF0ss3anBGdf7S6ApN9+VRhlwz0V3l/BKFVlCfU8t69
	3pdjtb1rwGDXNtd9oIXWqMBfGjsbpBzuYrIJ33Y1EZez8RYhxILoiqBCSIZgrE/kEiJdsnnUfR19o
	qSZVBi1iv6O5TUamDiXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGVh-0002sO-IA; Tue, 17 Sep 2019 16:39:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGVT-0002s1-Ql
 for linux-nvme@lists.infradead.org; Tue, 17 Sep 2019 16:39:13 +0000
Received: from C02WT3WMHTD6.wdl.wdc.com (unknown [199.255.45.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFFC3206C2;
 Tue, 17 Sep 2019 16:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568738351;
 bh=CJxuDIir/Q8qXCQsVobRaYKJz6i9TOdPwNr3MjspfMg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yQUKQKjV9hD3GAAYiBCBQC5OaXd06dpPbVwPiNd179rfVNFSA/T+nndAMhG+CmRYz
 PtPN80U8+yBQeRv1/AXBF18O2gbnYnQRNW00W/IwftXCYLr4XfGS3h6NtvJMC1HYNe
 OOGO6MqOIQ0T0OF033dOsYWy0Qk/kZBnLliND/0Y=
Date: Tue, 17 Sep 2019 10:39:09 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Baldyga, Robert" <robert.baldyga@intel.com>
Subject: Re: [PATCH 0/2] nvme: Add kernel API for admin command
Message-ID: <20190917163909.GB34045@C02WT3WMHTD6.wdl.wdc.com>
References: <20190913111610.9958-1-robert.baldyga@intel.com>
 <20190913143709.GA8525@lst.de>
 <850977D77E4B5C41926C0A7E2DAC5E234F2C9C09@IRSMSX104.ger.corp.intel.com>
 <20190916073455.GA25515@lst.de>
 <850977D77E4B5C41926C0A7E2DAC5E234F2C9D03@IRSMSX104.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <850977D77E4B5C41926C0A7E2DAC5E234F2C9D03@IRSMSX104.ger.corp.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_093911_889183_1E725AEC 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>, "axboe@fb.com" <axboe@fb.com>, "Rakowski,
 Michal" <michal.rakowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 12:13:24PM +0000, Baldyga, Robert wrote:
> Ok, fair enough. We want to keep things hidden behind certain layers,
> and that's definitely a good thing. But there is a problem with these
> layers - they do not expose all the features. For example AFAIK there
> is no clear way to use 512+8 format via block layer (nor even a way 
> to get know that bdev is formatted to particular lbaf). It's impossible
> to use it without layering violations, which nobody sees as a perfect
> solution, but it is the only one that works.

I think your quickest path to supporting such a format is to consider
each part separately, then bounce and interleave/unmix the data +
metadata at another layer that understands how the data needs to be laid
out in host memory. Something like this RFC here:

  http://lists.infradead.org/pipermail/linux-nvme/2018-February/015844.html

It appears connecting to infradead lists is a bit flaky at the moment,
so not sure if you'll be able to read the above link right now.

Anyway, the RFC would have needed a bit of work to be considered, like
using a mempool for the purpose, but it does generically make such
formats usable through the block stack so maybe try flushing out that
idea.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
