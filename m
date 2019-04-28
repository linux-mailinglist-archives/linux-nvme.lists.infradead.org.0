Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F75CB5F0
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Apr 2019 14:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6D5vyh3EOmc0+Y8Um6AEnkXsZxkVE4LUGnmcnhB/Ogg=; b=D4Fu/mcyWh24L/
	K4ywQlw16S749CPYfvl07geXndlY9JEpZ3odMZYd5QV1IzAhEksPFTVl6ODfFCfqCLNengxItr/Uk
	o484qP+6SQwODwJwZVkn3EAG9xtD41BxOb2d8/gVofDL5cI7UzqiOiqKpoUhd8FYCpwjX5atGgvjG
	VnhFOX6CLNNNE2mtVGaHhoeZ2Sp/cHbOdRmEyYrVJvo4dP2V0LG3wRGF3EsKoxgAk0h8AjZypQS2N
	2f1Y1G1liW4JeTbNM8+B3KfFHqVhYaAms/vajfpLlCerJz7ofyvGWyPk8tJi5Tx0XyJZMvQ7LN8BJ
	v11y8mEdHtbptX5az+lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKid4-0004Rv-8d; Sun, 28 Apr 2019 12:09:58 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hKid1-0004Ri-A1; Sun, 28 Apr 2019 12:09:55 +0000
Date: Sun, 28 Apr 2019 05:09:55 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH 2/2] nvme-multipath: improve logging
Message-ID: <20190428120955.GC9759@infradead.org>
References: <20190425024041.17657-1-chaitanya.kulkarni@wdc.com>
 <20190425024041.17657-3-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190425024041.17657-3-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: hare@suse.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gV2VkLCBBcHIgMjQsIDIwMTkgYXQgMDc6NDA6NDFQTSAtMDcwMCwgQ2hhaXRhbnlhIEt1bGth
cm5pIHdyb3RlOgo+IFRoaXMgcGF0Y2ggaW1wcm92ZXMgdGhlIGxvZ2dpbmcgZm9yIG52bWUtbXVs
dGlwYXRoIGNvZGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1
c2UuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENoYWl0YW55YSBLdWxrYXJuaSA8Y2hhaXRhbnlhLmt1
bGthcm5pQHdkYy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbnZtZS9ob3N0L211bHRpcGF0aC5jIHwg
OSArKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9tdWx0aXBhdGguYyBiL2Ry
aXZlcnMvbnZtZS9ob3N0L211bHRpcGF0aC5jCj4gaW5kZXggZjA3MTZmNmNlNDFmLi43MjFhYTJl
YTQzNjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvbXVsdGlwYXRoLmMKPiArKysg
Yi9kcml2ZXJzL252bWUvaG9zdC9tdWx0aXBhdGguYwo+IEBAIC04MSw2ICs4MSw5IEBAIHZvaWQg
bnZtZV9mYWlsb3Zlcl9yZXEoc3RydWN0IHJlcXVlc3QgKnJlcSkKPiAgCQkgKiBSZXNldCB0aGUg
Y29udHJvbGxlciBmb3IgYW55IG5vbi1BTkEgZXJyb3IgYXMgd2UgZG9uJ3Qga25vdwo+ICAJCSAq
IHdoYXQgY2F1c2VkIHRoZSBlcnJvci4KPiAgCQkgKi8KPiArCQlkZXZfaW5mbyhucy0+Y3RybC0+
ZGV2aWNlLAo+ICsJCQkibnZtZSBzdGF0dXMgMHglMDR4LCByZXNldHRpbmcgY29udHJvbGxlclxu
IiwKPiArCQkJc3RhdHVzKTsKCkRvIHdlIG5lZWQgc29tZXRoaW5nIGluZNGWY2F0aW5nIHRoaXMg
aXMgdGhlIG11bHRpcGF0aCBkcml2ZXIgZmFpbGluZwpvdmVyPwoKPiAtCWRldl9pbmZvKGN0cmwt
PmRldmljZSwgIkFOQSBncm91cCAlZDogJXMuXG4iLAo+ICsJaWYgKGRlc2MtPnN0YXRlIDwgQVJS
QVlfU0laRShudm1lX2FuYV9zdGF0ZV9uYW1lcykpCj4gKwkJZGV2X2RiZyhjdHJsLT5kZXZpY2Us
ICJBTkEgZ3JvdXAgJWQ6ICVzLlxuIiwKPiAgCQkJbGUzMl90b19jcHUoZGVzYy0+Z3JwaWQpLAo+
ICAJCQludm1lX2FuYV9zdGF0ZV9uYW1lc1tkZXNjLT5zdGF0ZV0pOwo+ICsJZWxzZQo+ICsJCWRl
dl9kYmcoY3RybC0+ZGV2aWNlLCAiQU5BIGdyb3VwICVkOiB1bmtub3duLlxuIiwKPiArCQkJbGUz
Ml90b19jcHUoZGVzYy0+Z3JwaWQpKTsKCkkgZG9uJ3QgdGhpbmsgd2UgbmVlZCB0aGUgdW5rbm93
biBjYXNlIGhlcmUgYXMgbnZtZV9wYXJzZV9hbmFfbG9nCnJlamVjdHMgaW52YWxpZCBzdGF0ZXMg
YWxyZWFkeS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
