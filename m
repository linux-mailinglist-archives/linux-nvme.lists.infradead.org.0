Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C98D7C0AC
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 14:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AgMrIB2v43RFA4oVslLR7iE0IFZ4PJLznBsjRp0LqIo=; b=NJtya/OaUGskmu
	JZ6x+BmEkGI0NZpjvDyzdAYXFbCcVY43uCjamgYF6l0L2Tox1BGGci2+nKnO+Isftur251qQdsVNW
	cFbFnozwd3ta1uVTEaJYMNfJY7L/G35UO6jBh6c4vxEJ6vuEwx/PLOjxdTCr8iPRS83wC1+vBzSmJ
	cgRQIvmCx+FBVibU0NgoSM9ZRggOXaJ7Ple3HNWj3MsNxaLS+0guEykMY7lirJu6X1yxnE5PNMpwS
	jMBhPN1XFS9CpwmfZs6jyAyMjrMlkW0Km23nog8hWbOH8f6KYs8fp0fWQUgAvpBdpKHiPGXq0n+IG
	0VgzxUUSz6popfux9o2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnM0-0000zc-Or; Wed, 31 Jul 2019 12:05:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnLo-0000m9-Vh
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 12:05:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B5282AB9D;
 Wed, 31 Jul 2019 12:04:59 +0000 (UTC)
Subject: Re: [PATCH] nvme/multipath: revalidate nvme_ns_head gendisk in
 nvme_validate_ns
To: Anthony Iliopoulos <ailiopoulos@suse.com>, Keith Busch
 <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
References: <20190729124040.16581-1-ailiopoulos@suse.com>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <b85af4b7-bf17-709f-cf45-d1fbc7573131@suse.de>
Date: Wed, 31 Jul 2019 14:04:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190729124040.16581-1-ailiopoulos@suse.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_050501_316633_91567AB4 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Johannes Thumshirn <jthumshirn@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8yOS8xOSAyOjQwIFBNLCBBbnRob255IElsaW9wb3Vsb3Mgd3JvdGU6Cj4gV2hlbiBDT05G
SUdfTlZNRV9NVUxUSVBBVEggaXMgc2V0LCBvbmx5IHRoZSBoaWRkZW4gZ2VuZGlzayBhc3NvY2lh
dGVkCj4gd2l0aCB0aGUgcGVyLWNvbnRyb2xsZXIgbnMgaXMgcnVuIHRocm91Z2ggcmV2YWxpZGF0
ZV9kaXNrIHdoZW4gYQo+IHJlc2NhbiBpcyB0cmlnZ2VyZWQsIHdoaWxlIHRoZSB2aXNpYmxlIGJs
b2NrZGV2IG5ldmVyIGdldHMgaXRzIHNpemUKPiAoYmRldi0+YmRfaW5vZGUtPmlfc2l6ZSkgdXBk
YXRlZCB0byByZWZsZWN0IGFueSBjYXBhY2l0eSBjaGFuZ2VzIHRoYXQKPiBtYXkgaGF2ZSBvY2N1
cnJlZC4KPiAKPiBUaGlzIHByZXZlbnRzIG9ubGluZSByZXNpemluZyBvZiBudm1lIGJsb2NrIGRl
dmljZXMgYW5kIGluIGV4dGVuc2lvbiBvZgo+IGFueSBmaWxlc3lzdGVtcyBhdG9wIHRoYXQgd2ls
bCBhcmUgdW5hYmxlIHRvIGV4cGFuZCB3aGlsZSBtb3VudGVkLCBhcwo+IHVzZXJzcGFjZSByZWxp
ZXMgb24gdGhlIGJsb2NrZGV2IHNpemUgZm9yIG9idGFpbmluZyB0aGUgZGlzayBjYXBhY2l0eQo+
ICh2aWEgQkxLR0VUU0laRS82NCBpb2N0bHMpLgo+IAo+IEZpeCB0aGlzIGJ5IGV4cGxpY2l0bHkg
cmV2YWxpZGF0aW5nIHRoZSBhY3R1YWwgbmFtZXNwYWNlIGdlbmRpc2sgaW4KPiBhZGRpdGlvbiB0
byB0aGUgcGVyLWNvbnRyb2xsZXIgZ2VuZGlzaywgd2hlbiBtdWx0aXBhdGggaXMgZW5hYmxlZC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBBbnRob255IElsaW9wb3Vsb3MgPGFpbGlvcG91bG9zQHN1c2Uu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgfCAxICsKPiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0
L2NvcmUuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+IGluZGV4IDhmM2ZiZTVjYTkzNy4u
ODBjN2E3ZWUyNDBiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ICsr
KyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+IEBAIC0xNzE1LDYgKzE3MTUsNyBAQCBzdGF0
aWMgdm9pZCBfX252bWVfcmV2YWxpZGF0ZV9kaXNrKHN0cnVjdCBnZW5kaXNrICpkaXNrLCBzdHJ1
Y3QgbnZtZV9pZF9ucyAqaWQpCj4gIAlpZiAobnMtPmhlYWQtPmRpc2spIHsKPiAgCQludm1lX3Vw
ZGF0ZV9kaXNrX2luZm8obnMtPmhlYWQtPmRpc2ssIG5zLCBpZCk7Cj4gIAkJYmxrX3F1ZXVlX3N0
YWNrX2xpbWl0cyhucy0+aGVhZC0+ZGlzay0+cXVldWUsIG5zLT5xdWV1ZSk7Cj4gKwkJcmV2YWxp
ZGF0ZV9kaXNrKG5zLT5oZWFkLT5kaXNrKTsKPiAgCX0KPiAgI2VuZGlmCj4gIH0KPiAKUmV2aWV3
ZWQtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KCkNoZWVycywKCkhhbm5lcwot
LSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcK
aGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5V
WCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7Zy
ZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
