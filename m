Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D2B1FC7B7
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jun 2020 09:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0rK5McjY1wVTJJdjw6QDjySBxntULFSSVeZCMRmp+M=; b=LhGCce4TBJkKct
	hjk7KbLZJYqn4gBAOd2avrTmLbnw6it37yH8GLYrYUDuAlyJQsC+3/yzQTsU/PWuFAEAlosOByo1R
	Qs+Zo5kmIV3dz4uXh1aPhv5ql65Ds3t8QRjUKHmvChP1leHM7y4p6yfZgZEoDF9HZ2tGiIt7jCD7M
	UsB9MiqFDEWdNaEt/2ppprCtI54rIOcmiTzepByx/lRyF1iCFCOqI+x+MkvkFVRmZX6Nth52ypI22
	jBUsTDQAXyfLlYCI/pFcaKTRFKAkO3D0lMNncwX7soW2NiMGtFDwIUWIH+MzKgKe9JUHAi8NxO+zf
	q9Y7ngkdHDU5WK9Zn1xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlSjQ-0005EN-Jy; Wed, 17 Jun 2020 07:43:36 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlSjL-0005Dh-Un
 for linux-nvme@lists.infradead.org; Wed, 17 Jun 2020 07:43:33 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D47BE68AEF; Wed, 17 Jun 2020 09:43:28 +0200 (CEST)
Date: Wed, 17 Jun 2020 09:43:28 +0200
From: Christoph Hellwig <hch@lst.de>
To: Javier =?iso-8859-1?Q?Gonz=E1lez?= <javier@javigon.com>
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
Message-ID: <20200617074328.GA13474@lst.de>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
 <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_004332_136580_DC64363D 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <niklas.cassel@wdc.com>,
 Damien Le Moal <damien.lemoal@wdc.com>, Ajay Joshi <ajay.joshi@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@wdc.com>,
 Dmitry Fomichev <dmitry.fomichev@wdc.com>,
 Aravind Ramesh <aravind.ramesh@wdc.com>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Hans Holmberg <hans.holmberg@wdc.com>,
 Christoph Hellwig <hch@lst.de>,
 Matias =?iso-8859-1?Q?Bj=F8rling?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 12:41:42PM +0200, Javier Gonz=E1lez wrote:
> On 16.06.2020 08:34, Keith Busch wrote:
>> Add support for NVM Express Zoned Namespaces (ZNS) Command Set defined
>> in NVM Express TP4053. Zoned namespaces are discovered based on their
>> Command Set Identifier reported in the namespaces Namespace
>> Identification Descriptor list. A successfully discovered Zoned
>> Namespace will be registered with the block layer as a host managed
>> zoned block device with Zone Append command support. A namespace that
>> does not support append is not supported by the driver.
>
> Why are we enforcing the append command? Append is optional on the
> current ZNS specification, so we should not make this mandatory in the
> implementation. See specifics below.

Because Append is the way to go and we've moved the Linux zoned block
I/O stack to required it, as should have been obvious to anyone
following linux-block in the last few months.  I also have to say I'm
really tired of the stupid politics tha your company started in the
NVMe working group, and will say that these do not matter for Linux
development at all.  If you think it is worthwhile to support devices
without Zone Append you can contribute support for them on top of this
series by porting the SCSI Zone Append Emulation code to NVMe.

And I'm not even going to read the rest of this thread as I'm on a
vacation that I badly needed because of the Samsung TWG bullshit.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
