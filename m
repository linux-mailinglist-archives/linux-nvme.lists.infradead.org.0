Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 295451300CC
	for <lists+linux-nvme@lfdr.de>; Sat,  4 Jan 2020 05:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TA+Xd+HdsNMMblS0OJ2CaHoFo372YqOt2XYQnp3PJM=; b=Q4zUFANAhY3DFY
	DJLD6xdveDP9oJ4+Wf4FYqmK/vUvratlFoeofBygYd/mQcLd6nZ6hx4OMgwy1jobwJCzrwmDS6d8Z
	6844+/yapP/ZiRkjJh/o479qesq87BeMldMrI7eR9oo2yGMvEeOppcfSE4vkzs2HPufyuhgM7jkJO
	SqMh9GrsouEPRINZdJz/od0m6e4BEjkJhflC7k9FqxHkJ1csiB+fGnEUTHSfC8En8/h/Xx2FoW9Pj
	fu52vxHNBlUcLyugljAhtw+vqm6K0yFhYDKvk4qLFE6tEikihVu3IiIwLNrqSsZIRKqYOiA8pOIWU
	oXsVfgpx7gb0ejQAdhdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inbIM-00082h-VR; Sat, 04 Jan 2020 04:44:14 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inbIG-00081i-L0
 for linux-nvme@lists.infradead.org; Sat, 04 Jan 2020 04:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1578113049; x=1609649049;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6PbhxeTDWYd0BHsgnPYTKzEdogHiPsarjxMpVsbqZlg=;
 b=oO7/76TSi4SK2cwZZmCOoX9n5EqCeG/XHgzfXK0mtYj7Ags+AGzbQ+oX
 XF1XdSYxr0tN6DiHAB7A99r9k+WqV5x+NEHs1baW/uU8BfndK0k8B9ckb
 wrFH+3U4o8BD1MJ6N78iT9YK5Ai7UbD91Ld/OehlV5q0R5VEsnDuhHeVY A=;
IronPort-SDR: TC7lly0pc+bSxupt3pGE5Cft10567HDJooGTlo64P63jna1Ra/d1nDhyo5Ap9RjqexATMd83a9
 wJG+mtW+MlrA==
X-IronPort-AV: E=Sophos;i="5.69,393,1571702400"; d="scan'208";a="10045365"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2a-90c42d1d.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 04 Jan 2020 04:44:04 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2a-90c42d1d.us-west-2.amazon.com (Postfix) with ESMTPS
 id C2A70A1FD5; Sat,  4 Jan 2020 04:44:02 +0000 (UTC)
Received: from EX13D11UWB003.ant.amazon.com (10.43.161.206) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Sat, 4 Jan 2020 04:44:02 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13D11UWB003.ant.amazon.com (10.43.161.206) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Sat, 4 Jan 2020 04:44:02 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Sat, 4 Jan 2020 04:44:02 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [resend v1 1/5] block/genhd: Notify udev about capacity change
Thread-Topic: [resend v1 1/5] block/genhd: Notify udev about capacity change
Thread-Index: AQHVwUGyydawp/BwQkuXvP0PUEOjWqfZ8KeA
Date: Sat, 4 Jan 2020 04:44:01 +0000
Message-ID: <e5d7e25798d679ea4ba070950cdb5a14f9818eff.camel@amazon.com>
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-2-sblbir@amazon.com>
 <BYAPR04MB5749EE1549B30FCECEC1154B86230@BYAPR04MB5749.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB5749EE1549B30FCECEC1154B86230@BYAPR04MB5749.namprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.161.115]
Content-ID: <B534D67D190ADB40B32312F45C0A7A7E@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_204408_819802_393DABF6 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, 2020-01-03 at 06:16 +0000, Chaitanya Kulkarni wrote:
> On 01/01/2020 11:53 PM, Balbir Singh wrote:
> > Allow block/genhd to notify user space (via udev) about disk size changes
> > using a new helper disk_set_capacity(), which is a wrapper on top
> > of set_capacity(). disk_set_capacity() will only notify via udev if
> > the current capacity or the target capacity is not zero.
> > 
> > Suggested-by: Christoph Hellwig<hch@lst.de>
> > Signed-off-by: Someswarudu Sangaraju<ssomesh@amazon.com>
> > Signed-off-by: Balbir Singh<sblbir@amazon.com>
> > ---
> 
> Since disk_set_capacity(() is on the same line as set_capacity()
> we should follow the same convention, which is :-
> 
> 1. Avoid exporting symbol.
> 2. Mark new function in-line.
> 
> Unless there is a very specific reason for breaking the pattern.
> 

I don't see the benefit of marking it as inline. I expect this code to be
potentially expanded to provide callbacks into file system code for expansion
(something you brought up), marking it as inline might be a limitation.

I'd rather not clutter the headers with this code, but I am open to what the
maintainers think as well.

Balbir Singh.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
