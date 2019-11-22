Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F80107425
	for <lists+linux-nvme@lfdr.de>; Fri, 22 Nov 2019 15:40:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+WFT4isk/l29/m890M/hn9z6ixJ8APMzqXuxbq0Iqvw=; b=dm5rheyuHCeFowlYIVgOJF/vBM
	5QOWebPuIru73xTqAeE2wHSapavlxG2vrsSDT25hiT/G6z970dkLdwnzNyFsyeYtWo0F+rl2a+NVo
	UruSPC8oTHjlTrbVECD9yadUAeacNlQRRQDliEZ8MNMOHCnbizFU29US/bA4ky71RWGBF2ZVj+GQQ
	aUclYReuc+OiFH7u3wQzSjvV9gjOIcpfPhH6UsRjiQK70mfVs51/HzTddMarZ7Qk2M9CLoaqpRFtn
	LUWar0mL/3nNt/Wy3xEMj+8iWv5p1tTuKLjwiAEGUuuxbII0/0KSVuE5VtJA+irEMJmBDdNOggD84
	5i7Hs6UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYA6V-0002Fd-GR; Fri, 22 Nov 2019 14:40:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYA6P-0001Io-04
 for linux-nvme@lists.infradead.org; Fri, 22 Nov 2019 14:40:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B88BCB1F0
 for <linux-nvme@lists.infradead.org>; Fri, 22 Nov 2019 14:40:00 +0000 (UTC)
Subject: Re: [PATCH] nvme: add error message on mismatching controller ids
To: linux-nvme@lists.infradead.org
References: <20191121175810.19501-1-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <a127cc4a-3f50-ce39-8acb-035bc32fd895@suse.de>
Date: Fri, 22 Nov 2019 15:40:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191121175810.19501-1-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_064005_332611_A435E2A1 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTEvMjEvMTkgNjo1OCBQTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4gV2UndmUgc2VlbiBhIGZl
dyBkZXZpY2VzIHRoYXQgcmV0dXJuIGRpZmZlcmVudCBjb250cm9sbGVyCj4gaWQncyB0byB0aGUg
RmFicmljIENvbm5lY3QgY29tbWFuZCB2cyB0aGUgSWRlbnRpZnkoY29udHJvbGxlcikKPiBjb21t
YW5kLiBJdCdzIGN1cnJlbnRseSBoYXJkIHRvIGlkZW50aWZ5IHRoaXMgZmFpbHVyZSBieQo+IGV4
aXN0aW5nIGVycm9yIG1lc3NhZ2VzLiBJdCBjb21lcyBhY3Jvc3MgYXMgYSAocmUpY29ubmVjdAo+
IGF0dGVtcHQgaW4gdGhlIHRyYW5zcG9ydCB0aGF0IGZhaWxzIHdpdGggYSAtMjIgKC1FSU5WQUwp
Cj4gc3RhdHVzLiBUaGUgaXNzdWUgaXMgY29tcG91bmRlZCBieSBvbGRlciBrZXJuZWxzIG5vdCBo
YXZpbmcKPiB0aGUgY29udHJvbGxlciBpZCBjaGVjayBvciBoYWQgdGhlIGlkZW50aWZ5IGNvbW1h
bmQgb3ZlcndyaXRlCj4gdGhlIGZhYnJpY3MgY29udHJvbGxlciBpZCB2YWx1ZSBiZWZvcmUgaXQg
Y2hlY2tlZC4gQm90aCByZXN1bHRlZAo+IGluIGNhc2VzIHdoZXJlIHRoZSBkZXZpY2VzIGFwcGVh
cmVkIGZpbmUgdW50aWwgbW9yZSByZWNlbnQga2VybmVscy4KPiAKPiBDbGFyaWZ5IHRoZSByZWpl
Y3QgYnkgYWRkaW5nIGFuIGVycm9yIG1lc3NhZ2Ugb24gY29udHJvbGxlcgo+IGlkIG1pc21hdGNo
ZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFtZXMgU21hcnQgPGpzbWFydDIwMjFAZ21haWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgfCA0ICsrKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9z
dC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBpbmRleCA5Njk2NDA0YTYxODIu
LmMyNzJhZmIwODRkMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiAr
KysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBAQCAtMjgyNCw2ICsyODI0LDEwIEBAIGlu
dCBudm1lX2luaXRfaWRlbnRpZnkoc3RydWN0IG52bWVfY3RybCAqY3RybCkKPiAgCQkgKiBhZG1p
biBjb25uZWN0Cj4gIAkJICovCj4gIAkJaWYgKGN0cmwtPmNudGxpZCAhPSBsZTE2X3RvX2NwdShp
ZC0+Y250bGlkKSkgewo+ICsJCQlkZXZfZXJyKGN0cmwtPmRldmljZSwKPiArCQkJCSJNaXNtYXRj
aGluZyBjbnRsaWQ6IENvbm5lY3QgJXUgdnMgSWRlbnRpZnkgIgo+ICsJCQkJIiV1LCByZWplY3Rp
bmdcbiIsCj4gKwkJCQljdHJsLT5jbnRsaWQsIGxlMTZfdG9fY3B1KGlkLT5jbnRsaWQpKTsKPiAg
CQkJcmV0ID0gLUVJTlZBTDsKPiAgCQkJZ290byBvdXRfZnJlZTsKPiAgCQl9Cj4gCkluZGVlZCwg
d2UndmUgc2VlbSB0aGVtIHRvby4KClJldmlld2VkLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVA
c3VzZS5kZT4KCkNoZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgICAg
VGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAg
ICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBH
bWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKSFJCIDM2ODA5IChBRyBOw7xybmJl
cmcpLCBHRjogRmVsaXggSW1lbmTDtnJmZmVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
