Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABE985530
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 23:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNcqDefsS+gTkh+24eyXYD2fKokouKbxkVOYO6+lqt4=; b=QgpsblgyLQaypV
	PSwJPuEtW5naL8mpIwadfHeNzMwz4dCnV+Oj5O0Kxfb0YResi/mv+k5sqk0OiCgnRWk97x5gJ9WTS
	hGdh2Drlagl7iOERXwoIfPnVGVV+2tHhU+hWlr4w6zOuyH/CAeWCzNfkL2GKP++/+dPH6MR1qSuU7
	CddcYK3JrRzSiV4CefuGy8QZdppJJeX6MBjHlpIDFdKvlet1LUijWvUhaic9OPxwYEwTOdxZ+26dr
	7C3sq3elocFuYYgB4ZZ0F1KC2YYqB4Ennki0jGbQ7dzWNCFsH53kmSEAQFfFC9TBhpT4/CBdN3QN4
	uFGD8SlILsWYyjUhDzbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvTYb-0004v5-3n; Wed, 07 Aug 2019 21:33:17 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvTYT-0004ue-2c
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 21:33:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 14:33:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="186136588"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 07 Aug 2019 14:33:06 -0700
Date: Wed, 7 Aug 2019 15:30:40 -0600
From: Keith Busch <kbusch@kernel.org>
To: Jeff Johnson <jeff.johnson@aeoncomputing.com>
Subject: Re: inverting order of NVMe pci enable/disable device during
 boot/shutdown? Failing release.
Message-ID: <20190807213039.GA26026@localhost.localdomain>
References: <CAFCYAsfsCH+swCmpubto9od6dmJFsw0i+VDri9U+GVyZkOqcWg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCYAsfsCH+swCmpubto9od6dmJFsw0i+VDri9U+GVyZkOqcWg@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_143309_133565_E7361DD2 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 02:04:32PM -0700, Jeff Johnson wrote:
> Greetings,
> 
> Is there a way to invert the order of PCI device enable/disable during
> boot or shutdown?

There's no easy way to change that. It's not possible from the nvme
driver at least. Our shutdown notifications are initiated from the kernel,
so we don't control the device order at this level.

> I have an attached NVMe SSD chassis with 24 SSDs. I have discovered
> that on random host shutdowns that the last couple NVMe SSDs get left
> in a bad state after they are unregistered by the kernel. Out of 24
> SSDs all but the last one or two successfully remain at their
> negotiated speed and width after release. The last one, or sometimes
> two, SSDs to be released get stuck in a polling state (gen1, 0width)
> which will not clear or resolve unless the PCIe switch is reset.
> 
> Multiple backplanes and moving SSDs doesn't change the fact that it is
> always the last one or two SSDs to release on host orderly shutdown.
> 
> If I can swap the order of drive reserve/release on boot and shutdown
> then I could determine if the issue follows the physical path or the
> last drives in the release process.

Do you require all 24 slots be populated to observe the failure, or can
you repro with fewer?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
