Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CC91D275D
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 08:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nLftPATWbniweqpmIaIic9gozliETO1pYzVD8n5MbqE=; b=Tw3mgbZdU/GvDkPd/KdiIIEXj
	pMgNfhdkLWko1wuy4pKsYiuFp786daDqJlYmMFCllsg4bVB0n9EjuFtp4VPtLTs9mF98/ID6sl2gl
	UiydEGSlsXY8Ne9iHqXB7Uug6QPA7A3OJJ6lG6SzyaL2Oh2pHQbmIG2XfLoSh6Jk0lQCT+4NRMCu2
	6Nd1JZs5YIGQVv9dGmOiW/pmpXCxSFxOqEheYzoXSMFxYWdYcwTGSZBagcL+a80xHx3tIwyfqx2aC
	Y9Yk/OIo/qNVbMP5jfiuUK1dp2bSygwxJhltVGM5jTc1QQKd/36Y2+I25t3wSomj5kv5KHrnlCI01
	ExcCykkrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ7Bw-0002fL-Nq; Thu, 14 May 2020 06:18:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ7Bq-0002ey-Om
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 06:17:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A70EDABD0;
 Thu, 14 May 2020 06:17:55 +0000 (UTC)
Subject: Re: [PATCH] nvme: set 'io_opt' to '0' if not specified
To: Christoph Hellwig <hch@lst.de>
References: <20200514060514.85309-1-hare@suse.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <c7c22c31-3915-f344-6161-fdc34689956f@suse.de>
Date: Thu, 14 May 2020 08:17:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200514060514.85309-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_231754_950762_4A950107 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Damien LeMoal <damien.lemoal@wdc.com>, Mike Snitzer <snitzer@redhat.com>,
 Keith Busch <keith.busch@wdc.com>, linux-nvme@lists.infradead.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xNC8yMCA4OjA1IEFNLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4gV2hlbiBubyBvcHRp
bWFsIEkvTyBzaXplIGlzIHJlcG9ydCB3ZSBzaG91bGQgc2V0IHRoZSB2YWx1ZSBvZgo+IGlvX29w
dCB0byAnMCcsIG5vdCB0aGUgYmxvY2sgc2l6ZS4KPiBUaGlzIGF2b2lkcyBhbnkgcG90ZW50aWFs
IG1pc2NhbGN1bGF0aW9uIG9mIHRoZSBibG9jayBsaW1pdHMKPiBmb3Igc3RhY2tpbmcgZGV2aWNl
cy4KPiAKPiBSZXBvcnRlZC1ieTogRGFtaWVuIExlTW9hbCA8ZGFtaWVuLmxlbW9hbEB3ZGMuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmRlPgo+IC0tLQo+
ICAgZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIHwgNCArKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L252bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBpbmRleCBhNGQ4
YzkwZWU3Y2MuLjZhOGE4ZTc0OWQxMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9j
b3JlLmMKPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBAQCAtMTc4NSwxMiArMTc4
NSwxMiBAQCBzdGF0aWMgdm9pZCBudm1lX3VwZGF0ZV9kaXNrX2luZm8oc3RydWN0IGdlbmRpc2sg
KmRpc2ssCj4gICAJCWF0b21pY19icyA9IGJzOwo+ICAgCX0KPiAgIAlwaHlzX2JzID0gYnM7Cj4g
LQlpb19vcHQgPSBiczsKPiArCWlvX29wdCA9IDA7Cj4gICAJaWYgKGlkLT5uc2ZlYXQgJiAoMSA8
PCA0KSkgewo+ICAgCQkvKiBOUFdHID0gTmFtZXNwYWNlIFByZWZlcnJlZCBXcml0ZSBHcmFudWxh
cml0eSAqLwo+ICAgCQlwaHlzX2JzICo9IDEgKyBsZTE2X3RvX2NwdShpZC0+bnB3Zyk7Cj4gICAJ
CS8qIE5PV1MgPSBOYW1lc3BhY2UgT3B0aW1hbCBXcml0ZSBTaXplICovCj4gLQkJaW9fb3B0ICo9
IDEgKyBsZTE2X3RvX2NwdShpZC0+bm93cyk7Cj4gKwkJaW9fb3B0ID0gYnMgKiAxICsgbGUxNl90
b19jcHUoaWQtPm5vd3MpOwo+ICAgCX0KPiAgIAo+ICAgCWJsa19xdWV1ZV9sb2dpY2FsX2Jsb2Nr
X3NpemUoZGlzay0+cXVldWUsIGJzKTsKPiAKUmlnaHQ7IERhbWllbiBiZWF0IG1lIHRvIGl0LgpQ
bGVhc2UgaWdub3JlIHRoaXMgcGF0Y2guCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMg
UmVpbmVja2UgICAgICAgICAgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1
c2UuZGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VT
RSBTb2Z0d2FyZSBTb2x1dGlvbnMgR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJn
CkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKSwgR2VzY2jDpGZ0c2bDvGhyZXI6IEZlbGl4IEltZW5k
w7ZyZmZlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
