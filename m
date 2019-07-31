Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CB47C102
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 14:19:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8quftx9HfkVDMqyo5RdBGjF0jgwgbk6qM/e0qcKEIw=; b=WN7jobiV1RC9c/
	NQSy+IjbYEM2bI5sCH/Re6zTsq27LLI8xbQPMuyC68HWRJ0Uy3JxRCHnZ69wFvshKTeQmBq1W4+FG
	fuhdmtA/KezhAOtAUYsvcpQ7UzYOpeBEmU32MLfnGcHb7fLF5DJu2IpcD65E+G1mTnAg1qjs2PiyA
	kzOLeAqBux2Ukp8944OsrnFJKOZYLBxx6feaS/QNBdgAzrMGuhrjdDScDOpzhx6q7rMGH0sV2Tase
	LOYYpzb/vFdp3C50dyvgGTdipHqZhn3JcU0ksbKAG051GG82aEYrXy2UfIQ8c9bvBAr7i9QnuGfyd
	qO/sIO/AXi/pe2oaoxsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnZO-00013U-Ng; Wed, 31 Jul 2019 12:19:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnZJ-000138-IH
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 12:18:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1E7C5AF38;
 Wed, 31 Jul 2019 12:18:56 +0000 (UTC)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <993aee4e-9f9e-4af1-07e6-69218a12bc1b@suse.de>
Date: Wed, 31 Jul 2019 14:18:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190729233201.27993-2-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_051857_896741_29AF2099 
X-CRM114-Status: GOOD (  24.77  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8zMC8xOSAxOjMyIEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IElmIGEgY29udHJvbGxl
ciByZXNldCBpcyByYWNpbmcgd2l0aCBhIG5hbWVzcGFjZSByZXZhbGlkYXRpb24sIHRoZQo+IHJl
dmFsaWRhdGlvbiBJL08gd2lsbCBzdXJlbHkgZmFpbCwgYnV0IHdlIHNob3VsZCBub3QgcmVtb3Zl
IHRoZQo+IG5hbWVzcGFjZSBhcyB3ZSB3aWxsIGV4ZWN1dGUgdGhlIEkvTyB3aGVuIHRoZSBjb250
cm9sbGVyIGlzIExJVkUgYWdhaW4uCj4gU3BlY2lmaWNhbGx5IGNoZWNrIGlmIHRoZSBjb250cm9s
bGVyIGlzIExJVkUgYmVjYXVzZSBhcwo+IFJFU0VUVElORy9DT05ORUNUSU5HIGFyZSB0cmFuc2ll
bnQgYW5kIERFTEVUSU5HL0RFQUQgd2lsbCBldmVudHVhbGx5Cj4gcmVtb3ZlIHRoZSBuYW1lc3Bh
Y2UgaW4gdGhlIHJlbW92YWwgY29kZSBwYXRoLgo+IAo+IFRoaXMgZml4ZXMgc3BvcmlvdXMgSS9P
IGVycm9ycyBpbiBwYXRoIGZhaWxvdmVyIGNvZGl0aW9ucyB3aGVyZSB0aGUKPiBjb250cm9sbGVy
IHJlc2V0IGlzIHJhY2luZyB3aXRoIHRoZSBuYW1lc3BhY2Ugc2NhbiB3b3JrLgo+IAo+IFJlcG9y
dGVkLWJ5OiBIYW5uZXMgUmVpbmVja2UgIDxoYXJlQHN1c2UuZGU+Cj4gU2lnbmVkLW9mZi1ieTog
U2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiAtLS0KPiAgZHJpdmVycy9udm1lL2hv
c3QvY29yZS5jIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgYi9k
cml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiBpbmRleCBmYTMxZGEwNzYyYjkuLjVmNjk3MGU3YmE3
MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiArKysgYi9kcml2ZXJz
L252bWUvaG9zdC9jb3JlLmMKPiBAQCAtMzQyOCw3ICszNDI4LDggQEAgc3RhdGljIHZvaWQgbnZt
ZV92YWxpZGF0ZV9ucyhzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCB1bnNpZ25lZCBuc2lkKQo+ICAK
PiAgCW5zID0gbnZtZV9maW5kX2dldF9ucyhjdHJsLCBuc2lkKTsKPiAgCWlmIChucykgewo+IC0J
CWlmIChucy0+ZGlzayAmJiByZXZhbGlkYXRlX2Rpc2sobnMtPmRpc2spKQo+ICsJCWlmIChucy0+
ZGlzayAmJiByZXZhbGlkYXRlX2Rpc2sobnMtPmRpc2spICYmCj4gKwkJICAgIGN0cmwtPnN0YXRl
ICE9IE5WTUVfQ1RSTF9MSVZFKQo+ICAJCQludm1lX25zX3JlbW92ZShucyk7Cj4gIAkJbnZtZV9w
dXRfbnMobnMpOwo+ICAJfSBlbHNlCj4gClRoZSB0aGluZyBJJ20gd29ycmllZCBhYm91dCBoZXJl
IGlzIGNvbmN1cnJlbmN5ICh0aGlzIHdhcyBhbHNvIHdoYXQKY2F1c2VkIG15IGVhcmxpZXIgYXR0
ZW1wdHMgdG8gYmUgcmVqZWN0ZWQpLgpUaGluZyBpcywgdGhlIGNvbnRyb2xsZXIgc3RhdGUgY2Fu
IGJlIHNldCBhc3luY2hyb25vdXNseS4gV2hpY2ggaW4KaXRzZWxmIGlzIHByb3RlY3RlZCBieSBj
dHJsLT5sb2NrLCBidXQgaGVyZSB3ZSdyZSBub3QgdGFraW5nIHRoZSBsb2NrIGF0CmFsbC4gSGVu
Y2Ugd2UgbWlnaHQgYmUgc2VlaW5nIGEgc3RhbGUgdmFsdWUsIGNhdXNpbmcgdXMgdG8gbWFrdCB0
aGUKd3JvbmcgZGVjaXNpb24uCgpJIGhhdmUgYSBwYXRjaHNldCBjaGVja2luZyAnY3RybC0+c3Rh
dGUnIHVuZGVyIGxvY2s7IHdpbGwgYmUgcG9zdGluZyBpdApsYXRlci4KCkFuZCBhbm90aGVyIHRo
aW5nOiB3aGVyZSdzIHRoZSBwb2ludCBpbiAncmV2YWxpZGF0ZV9kaXNrKCknIHRvIGJlIGNhbGxl
ZAppZiB0aGUgY29udHJvbGxlciBpcyBub3QgbGl2ZT8gQXQgYmVzdCBpdCB3b24ndCBkbyBhbnl0
aGluZzsgYXQgd29yc3QKd2UnbGwgc3RhbGwgaWYgd2UgaGF2ZSB0byBkbyBtb3JlIHRoYW4gb25l
IEkvTyAodGhlIHJlc2V0IGN5Y2xlIHdpbGwKYWJvcnQgX29uZV8gSS9PLCBidXQgaWYgd2UgaGF2
ZSB0byBzdWJtaXQgbW9yZSB0aGFuIG9uZSB3ZSdsbCBiZSBzdHVjaywKdG9vKS4KCkNoZWVycywK
Ckhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5l
dHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgK
U1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4
IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8
cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
