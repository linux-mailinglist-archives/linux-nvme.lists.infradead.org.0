Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1928144568
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Jan 2020 20:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIV2ozLYnnOlNOkVlnvb0sb5lXo/HljYFHkShqMkp+k=; b=JRJI4F0+FQFFKv
	LDVncVJGT38S3MdWEY6MyNADBhVv8+BMgowI0dIdss9JjnFSTUX+oSf0IvsHhXrDE0UihLHbT3drz
	zKb0VllNAMTOl+VJNJaqBEGhsLSZFxsJI+Ou3nFkbIxKSQxGbLUrZr9QwDdSvxHWte0TS30YDc0nq
	Z7Mn3DmAdWG/siQ8ggfdPbVJ+gIWmM+J48tl2RyRMWbRvW+pV2inIWCHmzG2YPDaBQE0VkSSKdUZl
	wjW0RICIu2drfidl5awiR4Z2XoyjNyzhiiCQc1b1jqsFsUfb+/LJwU9VKVohwhSybRG0Y7whxr7ul
	UYkJ63ekxSkVwmAjQTJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itzZz-0006xQ-3w; Tue, 21 Jan 2020 19:52:51 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itzZW-0006kv-EQ
 for linux-nvme@lists.infradead.org; Tue, 21 Jan 2020 19:52:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1579636343; x=1611172343;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=XmzH6UUhf2fq7wRQ6JDGuAiXl76NE0nd9fhU95gyxxs=;
 b=m9q3IEtjv4VAW8lc3PWK+1jquXikc21Xc0VE9vlIlMFOfVT8l/N0qY14
 lINRI0DOjNnQWidLshr7hP7bSXt+Bu6qgw68R9qvgGKpMH5Wy/tNVrF+A
 ac8t820Dh0Ka9Ooc4ovdnx0/4lw+jsf6GMLt2GuT7L/XJOYrE+WZBAmLz M=;
IronPort-SDR: cUrWtJYzh5SkjSAWnROiY1GCaVFVcrwkJBLQYslWMGOqBtqCnoh+iGPltozsC/AFszrvhLxt4b
 VZ6W6RyVqaPQ==
X-IronPort-AV: E=Sophos;i="5.70,347,1574121600"; d="scan'208";a="20200140"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2b-4ff6265a.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 21 Jan 2020 19:52:09 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2b-4ff6265a.us-west-2.amazon.com (Postfix) with ESMTPS
 id 9F5ECA05E3; Tue, 21 Jan 2020 19:52:07 +0000 (UTC)
Received: from EX13D11UWB002.ant.amazon.com (10.43.161.20) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 21 Jan 2020 19:52:07 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13D11UWB002.ant.amazon.com (10.43.161.20) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 21 Jan 2020 19:52:07 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Tue, 21 Jan 2020 19:52:07 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [resend v1 4/5] drivers/nvme/host/core.c: Convert to use
 disk_set_capacity
Thread-Topic: [resend v1 4/5] drivers/nvme/host/core.c: Convert to use
 disk_set_capacity
Thread-Index: AQHVwUG1iZmE8Pm/G0CenFe4gZ349afc0u0AgAQUfoCAFL6VAA==
Date: Tue, 21 Jan 2020 19:52:06 +0000
Message-ID: <40580ebc0991c4ffc3be67d60aeaf269703854ac.camel@amazon.com>
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-5-sblbir@amazon.com>
 <BYAPR04MB57490FFCC025A88F4D97D40A86220@BYAPR04MB5749.namprd04.prod.outlook.com>
 <1b88bedc6d5435fa7154f3356fa3f1a3e6888ded.camel@amazon.com>
 <20200108150447.GC10975@lst.de>
In-Reply-To: <20200108150447.GC10975@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.8]
Content-ID: <6425CB2DE728D54BA14C729788634425@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_115222_526948_94DB9E94 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "mst@redhat.com" <mst@redhat.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "Sangaraju,
 Someswarudu" <ssomesh@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 2020-01-08 at 16:04 +0100, hch@lst.de wrote:
> On Mon, Jan 06, 2020 at 12:46:26AM +0000, Singh, Balbir wrote:
> > On Sat, 2020-01-04 at 22:27 +0000, Chaitanya Kulkarni wrote:
> > > Quick question here if user executes nvme ns-rescan /dev/nvme1
> > > will following code result in triggering uevent(s) for
> > > the namespace(s( for which there is no change in the size ?
> > > 
> > > If so is that an expected behavior ?
> > > 
> > 
> > My old code had a check to see if old_capacity != new_capacity as well.
> > I can redo those bits if needed.
> > 
> > The expected behaviour is not clear, but the functionality is not broken,
> > user
> > space should be able to deal with a resize event where the previous
> > capacity
> > == new capacity IMHO.
> 
> I think it makes sense to not bother with a notification unless there
> is an actual change.

[Sorry for the delayed response, just back from LCA]

Agreed!

Balbir Singh
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
