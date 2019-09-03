Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6A7A6D9C
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Sep 2019 18:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeRRIUCwZpjmVfrCXs3xldJCEKPctGP/95pDDDxu2C4=; b=qeqhsONXwkamhU
	Y/RRJ9I0dTN8ZK7xt/v8pouveS3pdP845VsaJtUK2RRbfH6Ne2zFA3PaRwZNKy2G7CP3D4laLmvg3
	a7Zoks9PwaKbPmpfc3A4N0Yf6dcRV8QwzU1kF7cX5Ihf2Y6dZLIiNCI/doms1RsNvBkCh16PRgFLk
	TXQXHVit2Kd0p7flSXuDWRy14RZuefltz05j6LJoyd56ttK7xHOEeGbpNFZNkOrRQokD2EITc/PKD
	sF7DWVZ5tY+fpBaUvSjJF/umtVjUP+h6qNo3elQUNc2/Ax94KwHODuQdjGy5tlBTz1nekzWQVTS2v
	hubsB7/uDcqGujJPnACw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5BMo-0002V4-2W; Tue, 03 Sep 2019 16:09:14 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5BMH-0002UJ-II
 for linux-nvme@lists.infradead.org; Tue, 03 Sep 2019 16:08:43 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1i5BLi-0007Ci-LT; Tue, 03 Sep 2019 10:08:08 -0600
To: Keith Busch <keith.busch@intel.com>
References: <20190831000139.7662-1-logang@deltatee.com>
 <20190831152910.GA29439@localhost.localdomain>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <33af4d94-9f6d-9baa-01fa-0f75ccee263e@deltatee.com>
Date: Tue, 3 Sep 2019 10:08:01 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190831152910.GA29439@localhost.localdomain>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: martin.petersen@oracle.com, hare@suse.com, kbusch@kernel.org,
 axboe@fb.com, sagi@grimberg.me, hch@lst.de, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, keith.busch@intel.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvme-core: Fix subsystem instance mismatches
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_090842_011567_3700B5C3 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-08-31 9:29 a.m., Keith Busch wrote:
> On Fri, Aug 30, 2019 at 06:01:39PM -0600, Logan Gunthorpe wrote:
>> To fix this, assign the subsystem's instance based on the instance
>> number of the controller's instance that first created it. There should
>> always be fewer subsystems than controllers so the should not be a need
>> to create extra subsystems that overlap existing controllers.
> 
> The subsystem's lifetime is not tied to the controller's. When the
> controller is removed and releases its instance, the next controller
> to take that available instance will create naming collisions with the
> subsystem still using it.
> 

Hmm, yes, ok.

So perhaps we can just make the subsystem prefer the ctrl's instance
when allocating the ID? Then at least, in the common case, the
controller numbers will match the subsystem numbers. Only when there's
random hot-plugs would the numbers get out of sync.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
