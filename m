Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE7B7588B
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 22:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxhi5KVz0GE6JK3pfaI2WFZQi+8VGwUvpeYxTTlgm/Q=; b=du8kQxhJIzWeW9
	NCZtDaOEHkhaGaUcpgRP+wjeQWv4nenQiqF++e9CTp9GNaxw4ASPmU6oODIJ/y14ujpIkB6/J+Xvb
	BiJqFl+nYQ3yUAvOFmxNSoKb4NJMYLtRvtbwTe5DVVlF7B9ix7KzX3Oc1qdMgIriXo5LJ2GhbL49G
	u+9Q4wa+RGCgYjMlpX9rasFDZHp7wdCRvoZNxvFn2ddN4MZay3G9vnUMQrREHx7WYoKj/2Tvr+QKH
	e8rj1USdZDF1B5IBai5mHbqFXFBiCQh81o+6PG3Hule/vrKw5V27UcyJYqdictYiNe+/b7MLeufzr
	n68Btpdg6inJMPQtlpzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjvp-00026f-Hc; Thu, 25 Jul 2019 20:01:41 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjve-00025C-Bh
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 20:01:32 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 13:01:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="175361989"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 25 Jul 2019 13:01:28 -0700
Date: Thu, 25 Jul 2019 13:58:35 -0600
From: Keith Busch <kbusch@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v6 04/16] nvme-core: introduce nvme_get_by_path()
Message-ID: <20190725195835.GA7317@localhost.localdomain>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-5-logang@deltatee.com>
 <20190725175023.GA30641@bombadil.infradead.org>
 <da58f91e-6cfa-02e0-dd89-3cfa23764a0e@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da58f91e-6cfa-02e0-dd89-3cfa23764a0e@deltatee.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_130131_156559_5ADD4763 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 11:54:18AM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-07-25 11:50 a.m., Matthew Wilcox wrote:
> > On Thu, Jul 25, 2019 at 11:23:23AM -0600, Logan Gunthorpe wrote:
> >> nvme_get_by_path() is analagous to blkdev_get_by_path() except it
> >> gets a struct nvme_ctrl from the path to its char dev (/dev/nvme0).
> >>
> >> The purpose of this function is to support NVMe-OF target passthru.
> > 
> > I can't find anywhere that you use this in this patchset.
> > 
> 
> Oh sorry, the commit message is out of date the function was actually
> called nvme_ctrl_get_by_path() and it's used in Patch 10.

Instead of by path, could we have configfs take something else, like
the unique controller instance or serial number? I know that's different
than how we handle blocks and files, but that way nvme core can lookup
the cooresponding controller without adding new cdev dependencies.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
