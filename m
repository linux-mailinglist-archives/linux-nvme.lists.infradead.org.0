Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEBFAAD3C
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 22:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBWYhFdIwXNmuN0mLXyVAaXZndOuo/XQpM6W7HoD8Pw=; b=ffGMaMDbfrws8W
	vdszljp0XCzXYEXGy5TBPPNUJSp4gl+1m/rlcKbwCTj4mfjeajvgVehyBVW2OdKNitS8IUPZlrrRu
	5ZjCQDY26l+frGzbb9yNseMqxqSwSJTOrT39GnkXWQdXD/J/wZD3CxJa3Om9op3rkpRxQBXUk1GzS
	qIlF9nOXITHOHlCg+OwObI3ZKC8q+AqLjEsfvfsO/2RySUGsXXdc0GbJNE0RTxeCv+FHkefTKcgxe
	TpL9Jud7lsn06xNZDT+UiRooULUkoiBQSEa26fDW32EKcZ8hM1Ll86cn9H0gZFdIjmMQT8KprdM0Q
	ZliEQH78dN10H0h1jDNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5yZl-0000Lw-4K; Thu, 05 Sep 2019 20:41:53 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5yZg-0000LU-1c
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 20:41:49 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 13:41:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,471,1559545200"; d="scan'208";a="383989247"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga006.fm.intel.com with ESMTP; 05 Sep 2019 13:41:46 -0700
Date: Thu, 5 Sep 2019 14:40:18 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 3/5] nvme-pci: Free tagset if no IO queues
Message-ID: <20190905204017.GC25467@localhost.localdomain>
References: <20190905142607.24897-1-kbusch@kernel.org>
 <20190905142607.24897-3-kbusch@kernel.org>
 <5183cfd8-5143-2378-13f5-02c7a70bf3e3@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5183cfd8-5143-2378-13f5-02c7a70bf3e3@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_134148_130887_2809AF62 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 01:24:43PM -0700, Sagi Grimberg wrote:
> 
> > If a controller becomes degraded after a reset, we will not be able to
> > perform any IO. We currently teardown all previously created request
> > queues and namespaces, but we had been keeping an unusable tagset. Free
> > it after all queues using it have been released.
> 
> Is this a resource thing? or is this causing actual troubles?

Yes, this is freeing an unusable resource so that we don't need to
unbind the driver in order to reclaim it.

I only noticed this though because PATCH 4/5 needs to observe the cleared
tagset to operate correctly.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
