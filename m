Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E923177091
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 19:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvtbkJlkmqAn4mw5Yz8rOmzYP6BI1P//2EhuZ3F75X0=; b=fc9NYPfuYa5Jg2
	1oR1sJCvlMIavpwNg7SmOzLi4oLVVgRwMzjKHxcEuqPbp2tuaEu68+/11XTv3q9ObX5qZPBrhCUoE
	S7Ph6XwT1/P1lJfNp2sEUpiBFKXjkHNf5zfncvp4dde8ptPjyKqNsKBy3nzDfM4JaMZQvxzHtYXjZ
	GOhd53spxdS7eN81mjU3jF3nFS/p+M9oaCvdI3f9P3Mvl2jRXnvT0Bq1zqJEPf+JjO+TAnaRhApoA
	IZeRRhG48xapQPz/rmUqvfWoQF09LbFRpsb1xAsGivFgVa8CLr4u0rJGO9sxq55NiQO8ZgptqdMB5
	NSiDjexFQwpa6VeapLtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr4MO-0004hG-2S; Fri, 26 Jul 2019 17:50:28 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr4MH-0004gt-71
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 17:50:22 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hr4MC-000533-1S; Fri, 26 Jul 2019 11:50:17 -0600
To: Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org
References: <20190725185657.9025-1-sagi@grimberg.me>
 <a5ce0b2d-e4d5-ab79-442c-4c3795fdb0fd@suse.de>
 <93c38a70-3500-b1eb-38c7-41419c8f64c8@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <2ba25e11-1f37-4a91-8de8-2344157e96cb@deltatee.com>
Date: Fri, 26 Jul 2019 11:50:14 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <93c38a70-3500-b1eb-38c7-41419c8f64c8@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: hch@lst.de, keith.busch@intel.com,
 linux-nvme@lists.infradead.org, hare@suse.de, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] nvme: fix controller removal race with scan work
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_105021_595388_C7593B57 
X-CRM114-Status: GOOD (  20.75  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-26 11:39 a.m., Sagi Grimberg wrote:
> 
>> Weellll ... I'm not sure if I totally agree with this one.
> 
> That's fair...
> 
>> As you might know I'm chasing down the mysterious reset/rescan issue,
>> too, and still haven't been able to resolve is properly.
> 
> Have you tried the patch that I proposed to you?
> 
> This is a different problem than what you reported, this is
> addressing the scenario that the host connects and quickly
> disconnects from a client before the scan is completed AND
> multipath is enabled.
> 
>> But looking at this patch the hunk for clearing the current path on
>> removing namespaces looks like a good idea on itself.
>> Care to separate this out?
> 
> Sure, although its designed to address this issue and not very
> effective without the other part.
> 
>> Thing is, I had been notified on a regression caused by commit
>> 525aa5a705d86e ("nvme-multipath: split bios with the ns_head..."),
>> which manifests itself by a spurious I/O error during failover.
> 
> Hmm, this is interesting. Not sure how this specific commit would
> introduce such an issue.
> 
>> This is hitting precisely the code path in nvme multipath; we're
>> seeing the message 'No path, failing I/O' during failover despite
>> paths having been reconnected previously.
> 
> Can we understand what are the controller states in this scenario?
> 
>> So your patch would indeed increase the likelyhood here, and I'm not
>> sure if that's the correct way to go.
> 
> Well, we are clearly doing the wrong thing if we're queueing I/O if all
> the paths that we have are either DELETING or DEAD controllers. That
> is precisely why we suffer from I/O hangs. This patch corrects this
> wrong behavior. We must only requeue I/O if we have an available path
> that is expected to sometime to resume (i.e. RESETTING/CONNECTING).

Agreed. I think this is the key point and why I think this patch is the
right thing to do.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
