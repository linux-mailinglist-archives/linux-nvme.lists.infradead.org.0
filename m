Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687BA130AFC
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Jan 2020 01:46:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyl9zpYAzNXWa2NNpwwwxDwC/7cFtY2AefEreeIAqQU=; b=PzgraJ7l9NoUyi
	d0EO70viKZPmFEYFRVk4s8A/XvqhWu0wQqoowvIFi0f4aHNe0eHk3CZA9Ub/dIoRBSnu0BByRWSrL
	8G0XyOVBdf/Fg6G9OG4bOc+NvvgIohxP5CHWS9GuMuhhokWfvJHepuE7XlCRMQLH80ZFEwrypG0EI
	pvgLDcttUHSMnECw07t2GM3t+zUjcZFBXuUsRV2zLBPJ+wia3wqRSFKt2+2421w2h9+2lRqAeTNsG
	ESdPCpuWTwnB7Ct9MrWspt3IzXMVcSDY7ZGCaLXq/gRQfn67t4IkWlIuDUsPsfeli0Wg5FXvo4TAz
	e5IvkiRFA39jnlo58nJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioGXj-0000dA-AU; Mon, 06 Jan 2020 00:46:51 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioGXd-0000cE-1N
 for linux-nvme@lists.infradead.org; Mon, 06 Jan 2020 00:46:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1578271606; x=1609807606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Nm1HPLZ/VpXMl1rLxnlZl6cpUugevRClIBZqy2h1HHY=;
 b=BxmKKRG2UINK/fc8cNRAfUEYxQ/PuAOL2Po2yytKThinKXIe4LRbpz8k
 zhMm3jNhjnDpokonbTmd+nvNOddOG6gz1e0KJEDGUkPrBakm5wbrz0ZO8
 7Yg5fJRTVnCp55GoqSpn7wuqKkseDnZB8EHWNBhHfiRS8xnBXSkylA9qS k=;
IronPort-SDR: mP9tPbE7gNPbslPChUuDQUv3q5kWneKRt1xJ5Ul5rKiNjptAkUCHBrrVMXtgfjYNLC0ld1s6Tr
 yS6oCCP0FIXg==
X-IronPort-AV: E=Sophos;i="5.69,400,1571702400"; d="scan'208";a="16874826"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1e-c7c08562.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 06 Jan 2020 00:46:32 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1e-c7c08562.us-east-1.amazon.com (Postfix) with ESMTPS
 id 000F72497BB; Mon,  6 Jan 2020 00:46:27 +0000 (UTC)
Received: from EX13D11UWB001.ant.amazon.com (10.43.161.53) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 6 Jan 2020 00:46:27 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13D11UWB001.ant.amazon.com (10.43.161.53) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 6 Jan 2020 00:46:27 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Mon, 6 Jan 2020 00:46:26 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [resend v1 4/5] drivers/nvme/host/core.c: Convert to use
 disk_set_capacity
Thread-Topic: [resend v1 4/5] drivers/nvme/host/core.c: Convert to use
 disk_set_capacity
Thread-Index: AQHVwUG1iZmE8Pm/G0CenFe4gZ349afc0u0A
Date: Mon, 6 Jan 2020 00:46:26 +0000
Message-ID: <1b88bedc6d5435fa7154f3356fa3f1a3e6888ded.camel@amazon.com>
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-5-sblbir@amazon.com>
 <BYAPR04MB57490FFCC025A88F4D97D40A86220@BYAPR04MB5749.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB57490FFCC025A88F4D97D40A86220@BYAPR04MB5749.namprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.101]
Content-ID: <50ECDC6CF5780E44B2534B78D9303263@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_164645_122244_14D5D319 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>, "Sangaraju,
 Someswarudu" <ssomesh@amazon.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "hch@lst.de" <hch@lst.de>, "mst@redhat.com" <mst@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, 2020-01-04 at 22:27 +0000, Chaitanya Kulkarni wrote:
> Quick question here if user executes nvme ns-rescan /dev/nvme1
> will following code result in triggering uevent(s) for
> the namespace(s( for which there is no change in the size ?
> 
> If so is that an expected behavior ?
> 

My old code had a check to see if old_capacity != new_capacity as well.
I can redo those bits if needed.

The expected behaviour is not clear, but the functionality is not broken, user
space should be able to deal with a resize event where the previous capacity
== new capacity IMHO.

Balbir Singh.


> On 01/01/2020 11:54 PM, Balbir Singh wrote:
> > block/genhd provides disk_set_capacity() for sending
> > RESIZE notifications via uevents. This notification is
> > newly added to NVME devices
> > 
> > Signed-off-by: Balbir Singh <sblbir@amazon.com>
> > ---
> >   drivers/nvme/host/core.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index 667f18f465be..cb214e914fc2 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -1808,7 +1808,7 @@ static void nvme_update_disk_info(struct gendisk
> > *disk,
> >   	    ns->lba_shift > PAGE_SHIFT)
> >   		capacity = 0;
> > 
> > -	set_capacity(disk, capacity);
> > +	disk_set_capacity(disk, capacity);


> > 
> >   	nvme_config_discard(disk, ns);
> >   	nvme_config_write_zeroes(disk, ns);
> > 
> 
> 
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
