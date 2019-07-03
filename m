Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7855EB51
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 20:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Hld1RgK3iVGuur2MMPzIdzcxnMaAPagbywcacbv/XM=; b=dL0v+/v/EVHpi/
	KYmjfJ1jaSvq9t5Wgrna1utxhPezJ4o1CDdHM8PwcqIMjdQoco9wk/wJjpE4+zTy+yy+1DwTDzIFw
	ceRMUzIaoAp5Va/zpnxz1WIBR1teOi25NYViT7d5lJ75jJDGSHb1xLWTAiNx1xeMG254niHAZB2c3
	8DXwHTZzb786yiicJP02ndzbn9ujIpxNdTvbK4rZfzQi4bdVepS0RNxrkJCw4rKx8X++j4dY/ooMI
	7OZZxw5F6nmIjZjRUFBGX5gHFg12neY1wQBqUf0r1vZ+UukqVsIDitXUd4HSkGsh7LR6lmlbZrml/
	qehvhMjpJcDHLCe0ZKQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijl5-00046z-T6; Wed, 03 Jul 2019 18:13:31 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hijkx-00046S-5C
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 18:13:24 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hijks-0001bI-IX; Wed, 03 Jul 2019 12:13:19 -0600
To: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
References: <20190703170136.21515-1-logang@deltatee.com>
 <e88bed6b-c487-e224-1434-ba9912495a33@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <c072210c-1f44-2803-4781-15ff6f72a07a@deltatee.com>
Date: Wed, 3 Jul 2019 12:13:13 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <e88bed6b-c487-e224-1434-ba9912495a33@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, hch@lst.de,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [PATCH 0/2] Fix use-after-free bug when ports are removed
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_111323_539520_C2E11F00 
X-CRM114-Status: GOOD (  18.92  )
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
Cc: Stephen Bates <sbates@raithlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-03 11:33 a.m., Sagi Grimberg wrote:
>> NVME target ports can be removed while there are still active
>> controllers. Largely this is fine, except some admin commands
>> can access the req->port (for example, id-ctrl uses the port's
>> inline date size as part of it's response). This was found
>> while testing with KASAN.
>>
>> Two patches follow which disconnect active controllers when the
>> ports are removed for loop and rdma. I'm not sure if fc has the
>> same issue and have no way to test this.
>>
>> Alternatively, we could add reference counting to the struct port,
>> but I think this is a more involved change and could be done later
>> after we fix the bug quickly.
> 
> I don't think that when removing a port the expectation is that
> all associated controllers remain intact (although they can, which
> was why we did not remove them), so I think its fine to change that
> if it causes issues.
> 
> Can we handle this in the core instead (also so we'd be consistent
> across transports)?

Yes, that would be much better if we can sort out some other issues below...

> How about this untested patch instead?

I've found a couple of problems with the patch:

1) port->subsystems will always be empty before nvmet_disable_port() is
called. We'd have to restructure things a little perhaps so that when a
subsystem is removed from a port, all the active controllers for that
subsys/port combo would be removed.

2) loop needs to call flush_workqueue(nvme_delete_wq) somewhere,
otherwise there's a small window after the port disappears while
commands can still be submitted. We can actually still hit the bug with
a tight loop.

Maybe there's other cleanup that could be done to solve this: it does
seem like all three transports need to keep their own lists of open
controllers and loops through them to delete them. In theory, that could
be made common so there's common code to manage the list per transport
which would remove some boiler plate code. If we want to go this route
though, I'd suggest using my patches as is for now and doing the cleanup
in the next cycle.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
