Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6B91350AA
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Jan 2020 01:52:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzNXdyA5A5eiPn7Qz3d8Mu00/AeKM9D4w9iCDVWOV1M=; b=oiIRCHPRmyybNe
	SLG4qh/QYg1+vqnHHZQIiZz6tp8tym34Zzyxr30im0AY2XaAWRrzpEK9OTe6Nhq85h+/u6My+EtPe
	ph9q5sJyj1tU1OLJ68dYcO3HhCXzoD0K61kamnfd3GCoFJWOZokGtnQ+85Cc1/RoOVQKoH96kNrT1
	KfrTnpjx1qGsjU7oxuLzEdT8NWARRcLOIjDIHT17YbbG7RSuIUURJ4oBJOtoGeiLs7vBAUQkm35AI
	/v34RdSDritUy0p1Z5jgamJgtAj4Du+7O4QY7KK4My/VWyyHs9oeFaaxIBNoHHHqSm6D2KvjplUBs
	hFh42cLIF3MglyWotaXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipM3T-0006cn-Kc; Thu, 09 Jan 2020 00:52:07 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipM3J-0006cG-RC
 for linux-nvme@lists.infradead.org; Thu, 09 Jan 2020 00:52:03 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1ipM2z-0004er-Vz; Wed, 08 Jan 2020 17:51:38 -0700
To: =?UTF-8?Q?Javier_Gonz=c3=a1lez?= <javier@javigon.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
References: <BYAPR04MB5749820C322B40C7DBBBCA02863F0@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20200108101759.32gkjxakxigolail@mpHalley.local>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <7b3cc17c-6a34-56b9-8353-f86a4015669d@deltatee.com>
Date: Wed, 8 Jan 2020 17:51:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200108101759.32gkjxakxigolail@mpHalley.local>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: stephen@eideticom.com, joshi.k@samsung.com,
 Matias.Bjorling@wdc.com, frederick.knight@netapp.com, rwheeler@redhat.com,
 roland@purestorage.com, zach.brown@ni.com, mpatocka@redhat.com,
 msnitzer@redhat.com, sbates@raithlin.com, hch@lst.de, kbusch@kernel.org,
 martin.petersen@oracle.com, hare@suse.de, bvanassche@acm.org, axboe@kernel.dk,
 lsf-pc@lists.linux-foundation.org, dm-devel@redhat.com,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-block@vger.kernel.org, Chaitanya.Kulkarni@wdc.com, javier@javigon.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [LSF/MM/BFP ATTEND] [LSF/MM/BFP TOPIC] Storage: Copy Offload
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_165157_880644_D284E1CE 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "roland@purestorage.com" <roland@purestorage.com>,
 "msnitzer@redhat.com" <msnitzer@redhat.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Matias Bjorling <Matias.Bjorling@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Stephen Bates <sbates@raithlin.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "stephen@eideticom.com" <stephen@eideticom.com>,
 "dm-devel@redhat.com" <dm-devel@redhat.com>,
 "mpatocka@redhat.com" <mpatocka@redhat.com>, "hare@suse.de" <hare@suse.de>,
 Kanchan Joshi <joshi.k@samsung.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Keith Busch <kbusch@kernel.org>,
 "lsf-pc@lists.linux-foundation.org" <lsf-pc@lists.linux-foundation.org>,
 "rwheeler@redhat.com" <rwheeler@redhat.com>, Christoph Hellwig <hch@lst.de>,
 "frederick.knight@netapp.com" <frederick.knight@netapp.com>,
 "zach.brown@ni.com" <zach.brown@ni.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLTAxLTA4IDM6MTcgYS5tLiwgSmF2aWVyIEdvbnrDoWxleiB3cm90ZToKPiBJIHRo
aW5rIHRoaXMgaXMgZ29vZCB0b3BpYyBhbmQgSSB3b3VsZCBsaWtlIHRvIHBhcnRpY2lwYXRlIGlu
IHRoZQo+IGRpc2N1c3Npb24gdG9vLiBJIHRoaW5rIHRoYXQgTG9nYW4gR3VudGhvcnBlIHdvdWxk
IGFsc28gYmUgaW50ZXJlc3RlZAo+IChDYykuIEFkZGluZyBLYW5jaGFuIHRvbywgd2hvIGlzIGFs
c28gd29ya2luZyBvbiB0aGlzIGFuZCBjYW4gY29udHJpYnV0ZQo+IHRvIHRoZSBkaXNjdXNzaW9u
Cj4gCj4gV2UgZGlzY3Vzc2VkIHRoaXMgaW4gdGhlIGNvbnRleHQgb2YgUDJQIGF0IGRpZmZlcmVu
dCBTTklBIGV2ZW50cyBpbiB0aGUKPiBjb250ZXh0IG9mIGNvbXB1dGF0aW9uYWwgb2ZmbG9hZHMg
YW5kIGFsc28gYXMgdGhlIGJhY2tlbmQgaW1wbGVtZW50YXRpb24KPiBmb3IgU2ltcGxlIENvcHks
IHdoaWNoIGlzIGNvbWluZyBpbiBOVk1lLiBEaXNjdXNzaW5nIHRoaXMgKGFnYWluKSBhdAo+IExT
Ri9NTSBhbmQgZmluZGluZyBhIHdheSB0byBmaW5hbGx5IGdldCBYQ09QWSBtZXJnZWQgd291bGQg
YmUgZ3JlYXQuCgpZZXMsIEkgd291bGQgZGVmaW5pdGVseSBiZSBpbnRlcmVzdGVkIGluIGRpc2N1
c3NpbmcgY29weSBvZmZsb2FkCmVzcGVjaWFsbHkgaW4gdGhlIGNvbnRleHQgb2YgUDJQLiBTb3J0
aW5nIG91dCBhIHVzZXJzcGFjZSBpbnRlcmZhY2UgZm9yCnRoaXMgdGhhdCBzdXBwb3J0cyBhIFAy
UCB1c2UgY2FzZSB3b3VsZCBiZSB2ZXJ5IGJlbmVmaWNpYWwgdG8gYSBsb3Qgb2YKZm9sa3MuCgpU
aGFua3MsCgpMb2dhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
