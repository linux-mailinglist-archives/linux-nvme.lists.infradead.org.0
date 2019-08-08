Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9119B8665F
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 17:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uD/TwKcGd+Q6/YRn/iKKTS51AbOFmykeMDqyX5C1Pbs=; b=ZOwgj1xpqZOy6j
	t0FSLHguXSSRpdZ0vQ2Bu88GMiEA9MBrkbhZegN+Ot+FlEw4fSHsOsRyaCajHJWhuIGpum8CS2rg4
	x+2PBlEO7BwPQ4ME3QYdNDZ4QrpFXjroQxrjuUL42RXUyzCI7o40jylHnRnxl9EAb9/bvzG3IG/fx
	75v+hqRJC+3mAZ+o5CHN0Hkrt7BqEUWd3BTWp36yE1cHH0BxJC/wziJfDfvdhZF2zvruyq8xrIlaC
	fYcXJv3rG7kqI9AEFK3bNK+2iY/rJc62YMZXlpeYy6MWqgU+ITN7SKZx0lw47VbCR0PgMvQw+kwBK
	NULyvN+laSFprV3MVbkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkp5-0004yD-Qo; Thu, 08 Aug 2019 15:59:27 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkoz-0004wZ-B5
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 15:59:22 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hvkoc-00029F-KI; Thu, 08 Aug 2019 09:58:59 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190730163545.4915-1-logang@deltatee.com>
 <20190730163545.4915-4-logang@deltatee.com> <20190807055455.GA6627@lst.de>
 <4b0c012a-c3a1-a1c0-b098-8b350963aed1@deltatee.com>
 <20190808073109.GC29852@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <ae77f630-81dc-62e8-727c-add3578ca002@deltatee.com>
Date: Thu, 8 Aug 2019 09:58:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808073109.GC29852@lst.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: sbates@raithlin.com, epilmore@gigaio.com,
 dan.j.williams@intel.com, axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me,
 jgg@mellanox.com, Christian.Koenig@amd.com, bhelgaas@google.com,
 linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, hch@lst.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 03/14] PCI/P2PDMA: Add constants for not-supported
 result upstream_bridge_distance()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_085921_455671_43C27505 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Eric Pilmore <epilmore@gigaio.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Stephen Bates <sbates@raithlin.com>,
 Christian Koenig <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-08-08 1:31 a.m., Christoph Hellwig wrote:
> On Wed, Aug 07, 2019 at 09:58:06AM -0600, Logan Gunthorpe wrote:
>> We only calculate it at the same time as we calculate the distance. This
>> is necessary because, to calculate the type, we have to walk the tree
>> and check the ACS bits. If we separated it, we'd have to walk the tree
>> twice in a very similar way just to determine both the distance and the
>> mapping type.
> 
> Calculating it together makes perfect sense.  What I find odd is the
> overloading of a single return value.  Why not return the map type as
> the return value, and the distance as a by reference argument to keep
> them properly separated?

Ok, understood. I'll make that change and send some incremental patches
to Bjorn tomorrow.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
