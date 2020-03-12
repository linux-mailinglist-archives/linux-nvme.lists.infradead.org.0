Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CE7183CCF
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Mar 2020 23:52:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Udz8RFtLrnUo/Ty2sn959soZktc6igBWAWFJlWE2xN8=; b=CoL3wqNqqyTGLz
	AkarsNVgivEl6ustD167NYLqguH13KKqD+Fm5ozzPk5BB72RQu/vwsa91eIplXPeT5B64vFlqMtQC
	dQgTZExKxH6JbZpk3Sx3rkLZRNd6Ib07IQhnRhUx1V/a4avgG9spu6dw+mzfoMwDP8xrVbCqqjjmR
	/Vy6jQ08AogFbpSl+HkS/kqyxBv0HCf6TM/gLaWoiFlqrKN4f8Ij4BsRaAkH5bmjSHsMtYt5zDAFr
	MqJQUpoez1VVK7Qh2wywxJ8yULVxYZG6Uf0zOar0yhPYYqxEj2i18qlD0rsx7RQl9bV2asewA89vD
	J5Oa7qxFCcu+lOOWrUug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWgK-0006Fu-Mk; Thu, 12 Mar 2020 22:52:00 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWgF-0006Eq-Hu
 for linux-nvme@lists.infradead.org; Thu, 12 Mar 2020 22:51:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1584053516; x=1615589516;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=APmuTEj00jSwH9UdKFoz86SYSwY6N2q5esvdw5Bdl+o=;
 b=XgHhBMIC3QeKYb9psHYTKUdgpHTaPoIb0cnbh08ZQHnx1K1+z5QZwU93
 JCIZvlwHut8BGW/4tKJdZaY4Ncoi5dB+CeBBN6Yr0Pn1gH3LWFERD8s9v
 xowtHEvCx391qrpuOqL4TAkxEd69qFXON9JISoyOqzNgsk8xm8fiUyn1e 8=;
IronPort-SDR: ugjucCAlacrlOlBoX7R+p/ruO8wypS9aieV7ZL/kdFBMiPo3e2F7WuMI4vhcZCTvJ8GlrtvpiT
 e4ImMoCq71Cg==
X-IronPort-AV: E=Sophos;i="5.70,546,1574121600"; d="scan'208";a="22562882"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1e-303d0b0e.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 12 Mar 2020 22:51:50 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-303d0b0e.us-east-1.amazon.com (Postfix) with ESMTPS
 id C14F3A277A; Thu, 12 Mar 2020 22:51:46 +0000 (UTC)
Received: from EX13D01UWB001.ant.amazon.com (10.43.161.75) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 12 Mar 2020 22:51:46 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13d01UWB001.ant.amazon.com (10.43.161.75) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 12 Mar 2020 22:51:45 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1497.006;
 Thu, 12 Mar 2020 22:51:45 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>
Subject: Re: [PATCH v2 0/5] Add support for block disk resize notification
Thread-Topic: [PATCH v2 0/5] Add support for block disk resize notification
Thread-Index: AQHV+MDObGy8ubWnEEm2OFraTMxGPw==
Date: Thu, 12 Mar 2020 22:51:45 +0000
Message-ID: <3c43712ebbd3d4e5c301677a17ec7a301487faa4.camel@amazon.com>
References: <20200225200129.6687-1-sblbir@amazon.com>
 <f2b805c1a420a07aa9449ee0ef77766a10e9ff20.camel@amazon.com>
 <05bb1606-4cf1-dba3-22a0-5f8624b43767@kernel.dk>
In-Reply-To: <05bb1606-4cf1-dba3-22a0-5f8624b43767@kernel.dk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.162.115]
Content-ID: <FAD689968AC0AB42B571A46AC6393DEB@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_155155_634455_69F54E2C 
X-CRM114-Status: GOOD (  23.31  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "jejb@linux.ibm.com" <jejb@linux.ibm.com>, "hch@lst.de" <hch@lst.de>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "mst@redhat.com" <mst@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2020-03-12 at 08:06 -0600, Jens Axboe wrote:
> 
> On 3/2/20 9:03 PM, Singh, Balbir wrote:
> > On Tue, 2020-02-25 at 20:01 +0000, Balbir Singh wrote:
> > > Allow block/genhd to notify user space about disk size changes using a
> > > new helper set_capacity_revalidate_and_notify(), which is a wrapper
> > > on top of set_capacity(). set_capacity_revalidate_and_notify() will only
> > > notify
> > > iff the current capacity or the target capacity is not zero and the
> > > capacity really changes.
> > > 
> > > Background:
> > > 
> > > As a part of a patch to allow sending the RESIZE event on disk capacity
> > > change, Christoph (hch@lst.de) requested that the patch be made generic
> > > and the hacks for virtio block and xen block devices be removed and
> > > merged via a generic helper.
> > > 
> > > This series consists of 5 changes. The first one adds the basic
> > > support for changing the size and notifying. The follow up patches
> > > are per block subsystem changes. Other block drivers can add their
> > > changes as necessary on top of this series. Since not all devices
> > > are resizable, the default was to add a new API and let users
> > > slowly convert over as needed.
> > > 
> > > Testing:
> > > 1. I did some basic testing with an NVME device, by resizing it in
> > > the backend and ensured that udevd received the event.
> > > 
> > > 
> > > Changelog v2:
> > > - Rename disk_set_capacity to set_capacity_revalidate_and_notify
> > > - set_capacity_revalidate_and_notify can call revalidate disk
> > >   if needed, a new bool parameter is passed (suggested by Bob Liu)
> > > 
> > 
> > Ping? It's not an urgent patchset, I am happy to wait if nothing else is
> > needed.
> 
> It doesn't apply to the 5.7 branches, can you resend against for-5.7/block?
> 

Thanks, I'll take a look. I used the latest next (next-20200312) and rebased
on it. I got a three way merge success on xen-blkfront

Using index info to reconstruct a base tree...
M       drivers/block/xen-blkfront.c
Falling back to patching base and 3-way merge...

I presume you are running into the same thing.

I will resend the patches on top of next shortly

Balbir

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
