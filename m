Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CB975371
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 18:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+pT6Ax7rWX6LqtffvF22ZqB1pFnaTo1kBzybbAA87s=; b=G6JX6HQD4otgvH
	8iRUpYSS1t09m/obB4+ApRl48ua66YV6OSNsJP2zUAJ0uw2nh3Wmk3p/THiZ5uIgzz9O+XiDDiYeK
	frGpWjCo/47ylT3CNn8uxBy60pjN2kdCIJl0w8kSbw9E9F1kEuvmBod2DrKpHequ4v8QCoRxD+eXz
	+NBgdTNxmGwnwGyH3HwnKUcXvL4yZg6q/zaWEG+6SYnPbtDXsBSVbDDqCdHUDtltTkMfxyN+UF8/g
	SpFZBD+QTVQ6J0aV3BTFF5+HwpJavzTPVMpN1bhyUWfuLDQnfpjMo7H138FCTwTm9K6+Jw6hFQpyo
	msAJYnF5gOZVNMvvpFbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgBE-0002Il-Mt; Thu, 25 Jul 2019 16:01:20 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgB2-0002HJ-Av
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 16:01:09 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqgAp-00081n-6V; Thu, 25 Jul 2019 10:00:56 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-15-logang@deltatee.com> <20190724063235.GC1804@lst.de>
 <57e8fc1a-de70-fb65-5ef1-ffa2b95c73a6@deltatee.com>
 <20190725115038.GC31065@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <3d5400df-f109-9ffa-3e79-8f6bb8d7de34@deltatee.com>
Date: Thu, 25 Jul 2019 10:00:54 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725115038.GC31065@lst.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
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
Subject: Re: [PATCH 14/14] PCI/P2PDMA: Introduce pci_p2pdma_[un]map_resource()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_090108_788222_7FFD32A5 
X-CRM114-Status: GOOD (  14.90  )
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



On 2019-07-25 5:50 a.m., Christoph Hellwig wrote:
> On Wed, Jul 24, 2019 at 10:06:22AM -0600, Logan Gunthorpe wrote:
>> Yes. This is the downside of dealing only with a phys_addr_t: we have to
>> look up against it. Unfortunately, I believe it's possible for different
>> BARs on a device to be in different windows, so something like this is
>> necessary unless we already know the BAR the phys_addr_t belongs to. It
>> might probably be sped up a bit by storing the offsets of each bar
>> instead of looping through all the bridge windows, but I don't think it
>> will get you *that* much.
>>
>> As this is an example with no users, the answer here will really depend
>> on what the use-case is doing. If they can lookup, ahead of time, the
>> mapping type and offset then they don't have to do this work on the hot
>> path and it means that pci_p2pdma_map_resource() is simply not a
>> suitable API.
> 
> Ok.  So lets just keep this out as an RFC and don't merge it until an
> actual concrete user shows up.


Yup, that was my intention and I mentioned that in the commit message.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
