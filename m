Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9D811BD20
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Dec 2019 20:36:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hwgOE/yqZ6xfN6Qr/UOEehFt9jivklNBhoYZKNaA64=; b=VSSdyBWsTGGQGd
	KbPb9gvJPYw4JlYvi9DYxCUv2Y8pYm8rLt6Fc3MRlHVsRTbicMTvfw3kahaR0i+nYo+jzL2VyORKT
	K0qwh9WlKxGw9xCnd4eTLEosKGu/5CSWPhMpcuPhd9ayQW+sicpJSbJgoooUdp+/RV5ju21p/WhTU
	rEIPNhegDWWM0h1/BKCkdoFjg1xhClOGTQYAgDj6ODwdHonMhEw8Oz0lRsTUlxzJXbXsc7yuUHlko
	3kEuHfyexr0rL9svbCp+cGnaSQytqnbT33T1baHTKBtW82uNnoV7V659acu3xyAmRxb531f30+sxG
	F744Ru0QpgjTUMPiS7fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7mf-0000qE-Uc; Wed, 11 Dec 2019 19:36:29 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7mb-0000p4-Hl
 for linux-nvme@lists.infradead.org; Wed, 11 Dec 2019 19:36:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1576092986; x=1607628986;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=D/AQrht491ZPuSkniyC8AF1uSsDZTxSScktHXQ9tcas=;
 b=gRHyiZSh4bZQ678Onj+vyHZJfNRnv5NMdL2aYgfJBaM38Ywd+6bgoIEZ
 mR0HxB1EM0NTAeIhS4hx+pPUnsCFDkm5pJX7kgvtJl9phV/gY26hyzu6R
 JN57e0cE73ccDdzmuTHPI/AZyzOCeFd1C8rYfsHlpOQlVaE8vB+OZiNQz g=;
IronPort-SDR: 7kOHZMP+PPKT5dumufzq2UMtwAG5aP/xGikeM+OabQlSKdSYXfor3mTs9QQCWKGTMkgOm2ZvsG
 ZPnHUPl7HBFQ==
X-IronPort-AV: E=Sophos;i="5.69,303,1571702400"; d="scan'208";a="12985776"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2a-e7be2041.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 11 Dec 2019 19:36:11 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2a-e7be2041.us-west-2.amazon.com (Postfix) with ESMTPS
 id 2B294A22B0; Wed, 11 Dec 2019 19:36:10 +0000 (UTC)
Received: from EX13D11UWB003.ant.amazon.com (10.43.161.206) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Wed, 11 Dec 2019 19:36:09 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13D11UWB003.ant.amazon.com (10.43.161.206) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Wed, 11 Dec 2019 19:36:09 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Wed, 11 Dec 2019 19:36:09 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>
Subject: Re: [RFC PATCH] block/genhd: Notify udev about capacity change
Thread-Topic: [RFC PATCH] block/genhd: Notify udev about capacity change
Thread-Index: AQHVrwYjh2l0GmmZOEmELsmopgOsAqe1Vm2A
Date: Wed, 11 Dec 2019 19:36:09 +0000
Message-ID: <3e23c39e2d6c99ce8bdae370de36f7479b6dab95.camel@amazon.com>
References: <20191210030131.4198-1-sblbir@amazon.com>
In-Reply-To: <20191210030131.4198-1-sblbir@amazon.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.162.171]
Content-ID: <04931DD686A9514F94F948B5E992FB49@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_113625_631313_2860A256 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>, "mst@redhat.com" <mst@redhat.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Sangaraju,
 Someswarudu" <ssomesh@amazon.com>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-12-10 at 03:01 +0000, Balbir Singh wrote:
> Allow block/genhd to notify user space (via udev) about disk size changes
> using a new helper disk_set_capacity(), which is a wrapper on top
> of set_capacity(). disk_set_capacity() will only notify via udev if
> the current capacity or the target capacity is not zero.
> 
> disk_set_capacity() is not enabled for all devices, just virtio block,
> xen-blockfront, nvme and sd. Owners of other block disk devices can
> easily move over by changing set_capacity() to disk_set_capacity()
> 
> Background:
> 
> As a part of a patch to allow sending the RESIZE event on disk capacity
> change, Christoph (hch@lst.de) requested that the patch be made generic
> and the hacks for virtio block and xen block devices be removed and
> merged via a generic helper.
> 
> Testing:
> 1. I did some basic testing with an NVME device, by resizing it in
> the backend and ensured that udevd received the event.
> 
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Balbir Singh <sblbir@amazon.com>
> Signed-off-by: Someswarudu Sangaraju <ssomesh@amazon.com>
> 

Any feedback on the RFC?

Balbir Singh.
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
