Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A84B12BFA
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 13:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qt32djeVXJdScCZYnc5+tolK8esYSQ4NO+Yk3BR4RPw=; b=mYjWhSKSkWgbo9VzJUScrR0T1
	iEIhzy/lPTdeAHtnDw06Ko+9gwUkJrrq/Zn6/+hzem1IcYRwnEVKGr7OwZ6CEBpxMSXhd3br0Dfa5
	0RwjjWCtGq3WtD3ah+5u4jORJXi4G1kuJj8XzefIaVMZA8o9f4AlG9NmrGfgUXC5KmauLn1IWK57C
	MqJ5ogMk31CqiGRy3viSb5WQGxYQoad9Q69/831oegGU++3ld6aOzUE83c66/fwgc2X/54O3IyJ6D
	OMh5tZ81Ly1pgoaZcV7MC0ln+c2W2AjUGxLXJByV1jzt6z0YUDINHAEMLRtZoefL+oL7yfJo83e2f
	os3RxKc4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVzr-0007T8-1c; Fri, 03 May 2019 11:04:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVzm-0007Si-OL
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 11:04:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E30C1ACAC;
 Fri,  3 May 2019 11:04:48 +0000 (UTC)
Subject: Re: [PATCH 1/2] nvme-multipath: avoid crash on invalid subsystem
 cntlid enumeration
To: Christoph Hellwig <hch@lst.de>
References: <20190403224158.58106-1-hare@suse.de>
 <20190403224158.58106-2-hare@suse.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <6bb989cf-19a2-9f19-caa4-dd77f90aa6e0@suse.de>
Date: Fri, 3 May 2019 13:04:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190403224158.58106-2-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_040450_942928_76BE2D40 
X-CRM114-Status: GOOD (  20.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNC80LzE5IDEyOjQxIEFNLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4gQSBwcm9jZXNzIGhv
bGRpbmcgYW4gb3BlbiByZWZlcmVuY2UgdG8gYSByZW1vdmVkIGRpc2sgcHJldmVudHMgaXQKPiBm
cm9tIGNvbXBsZXRpbmcgZGVsZXRpb24sIHNvIGl0cyBuYW1lIGNvbnRpbnVlcyB0byBleGlzdC4g
QSBzdWJzZXF1ZW50Cj4gZ2VuZGlzayBjcmVhdGlvbiBtYXkgaGF2ZSB0aGUgc2FtZSBjbnRsaWQg
d2hpY2ggcmlza3MgY29sbGlzaW9uIHdoZW4KPiB1c2luZyB0aGF0IGZvciB0aGUgbmFtZS4gVXNl
IHRoZSB1bmlxdWUgY3RybC0+aW5zdGFuY2UgaW5zdGVhZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBI
YW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL252bWUvaG9z
dC9tdWx0aXBhdGguYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9tdWx0aXBh
dGguYyBiL2RyaXZlcnMvbnZtZS9ob3N0L211bHRpcGF0aC5jCj4gaW5kZXggZjA3MTZmNmNlNDFm
Li4yNTUxMjY0ZWYyYjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvbXVsdGlwYXRo
LmMKPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9tdWx0aXBhdGguYwo+IEBAIC0zMSw3ICszMSw3
IEBAIHZvaWQgbnZtZV9zZXRfZGlza19uYW1lKGNoYXIgKmRpc2tfbmFtZSwgc3RydWN0IG52bWVf
bnMgKm5zLAo+ICAgCQlzcHJpbnRmKGRpc2tfbmFtZSwgIm52bWUlZG4lZCIsIGN0cmwtPmluc3Rh
bmNlLCBucy0+aGVhZC0+aW5zdGFuY2UpOwo+ICAgCX0gZWxzZSBpZiAobnMtPmhlYWQtPmRpc2sp
IHsKPiAgIAkJc3ByaW50ZihkaXNrX25hbWUsICJudm1lJWRjJWRuJWQiLCBjdHJsLT5zdWJzeXMt
Pmluc3RhbmNlLAo+IC0JCQkJY3RybC0+Y250bGlkLCBucy0+aGVhZC0+aW5zdGFuY2UpOwo+ICsJ
CQkJY3RybC0+aW5zdGFuY2UsIG5zLT5oZWFkLT5pbnN0YW5jZSk7Cj4gICAJCSpmbGFncyA9IEdF
TkhEX0ZMX0hJRERFTjsKPiAgIAl9IGVsc2Ugewo+ICAgCQlzcHJpbnRmKGRpc2tfbmFtZSwgIm52
bWUlZG4lZCIsIGN0cmwtPnN1YnN5cy0+aW5zdGFuY2UsCj4gClBpbmc/CgpXaGF0J3MgdGhlIHN0
YXR1cyBvZiB0aGlzIHBhdGNoPwoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5l
Y2tlCQkgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAg
ICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIu
IDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMs
IFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
