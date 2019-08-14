Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4648DE79
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 22:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1U7FqQERhMGSQxdxFZN5fzAs2qWjauChU8Jb4Bqmh0=; b=cv9ztXUcXKai2W
	tw3dvCPeXMO5X8bJZdNLckvzMr3PwlSKLYPA6G/nkIk876Tmn0Ho7prV8B72mzo+Fm/cMkjx5+5TT
	Jk0V77G6k2a3GpzDgWC3FmH+lKgOl0xffD+iPAeAz2JTW8TXDLHBw9Su+fuj1VRcgc8cEhyWit79Q
	7xYIoS+jvv0ZxRBj9asE1g7kP4VjovfUMO6aSqZIu5thg44tGW3WCRVsSpPtODlqX53l3qGRTeyH8
	kljdi73zrlVS+/uZixWRmRiLcTMP+itSKnHAOP5jTz+XIB5fDeoMAlukOwm2nNuHT2Vl+EeU5x9Yu
	P+UsyKKDi9lefOwr0RJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzc3-0006zz-Bh; Wed, 14 Aug 2019 20:11:15 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzbs-0006zI-Vd
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 20:11:07 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 13:11:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,386,1559545200"; d="scan'208";a="200992982"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga004.fm.intel.com with ESMTP; 14 Aug 2019 13:11:02 -0700
Date: Wed, 14 Aug 2019 14:08:47 -0600
From: Keith Busch <kbusch@kernel.org>
To: Mario Limonciello <mario.limonciello@dell.com>
Subject: Re: [PATCH v2] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
Message-ID: <20190814200847.GA3504@localhost.localdomain>
References: <1565813304-16710-1-git-send-email-mario.limonciello@dell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565813304-16710-1-git-send-email-mario.limonciello@dell.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_131105_885172_A774B360 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Crag Wang <Crag.Wang@dell.com>, Sagi Grimberg <sagi@grimberg.me>,
 "sjg@google.com" <sjg@google.com>, LKML <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Ryan Hong <Ryan.Hong@Dell.com>,
 Jared Dominguez <jared.dominguez@dell.com>,
 Charles Hyde <charles.hyde@dellteam.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 01:08:24PM -0700, Mario Limonciello wrote:
> One of the components in LiteON CL1 device has limitations that
> can be encountered based upon boundary race conditions using the
> nvme bus specific suspend to idle flow.
> 
> When this situation occurs the drive doesn't resume properly from
> suspend-to-idle.
> 
> LiteON has confirmed this problem and fixed in the next firmware
> version.  As this firmware is already in the field, avoid running
> nvme specific suspend to idle flow.
> 
> Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
> Link: http://lists.infradead.org/pipermail/linux-nvme/2019-July/thread.html
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> Signed-off-by: Charles Hyde <charles.hyde@dellteam.com>

Looks fine to me.

Reviewed-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
