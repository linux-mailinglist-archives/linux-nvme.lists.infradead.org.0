Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3704D302B8
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 21:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yi+QSJ5ZlKBBMAKzo4urXFTYiIuge66ZO4gF4ikYY1I=; b=Ub41QY2y+16xz4IueJhO5im8B
	Rdat7clh1AiMQNwTGiMRyey8WhoaeOfSqs9Y+EcsbmKo/KpfA0D+PbaJEJacmlmRjV/kW/PT85HaL
	qm9XqgWdl1qzYO46OVkhyPuoxNviR9LxT51BXjVpBP8D4rr6yjAD0fvV2RcicykcqGQ9hpGZjW5v9
	OORXsyASTBEcF2gqF7DA9Q0kn09Us5nw2/Yc7k/fq+HiMPKEfqTTHe/Hl+NxvnkHATzVjMkPSYFx7
	xG8pRK+d/6aD40Dw8YS+YysTF7LqixnfKtheinM5XFSbmX9Lx/TSeEjpn4OFz2A2enQOFzcBCx690
	f/WNj5juA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWQcO-00054e-1o; Thu, 30 May 2019 19:21:40 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWQcI-00054B-PM
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 19:21:36 +0000
Received: by mail-pf1-x42a.google.com with SMTP id c6so4561577pfa.10
 for <linux-nvme@lists.infradead.org>; Thu, 30 May 2019 12:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=s473gZnaBJEm0epd7S/G+EOzzdQBjRHOGK3g5uwgIzE=;
 b=O4QyHikLwNtBuUtzjM/dnwbZN05/o78YquKvlGYChPvtudzWehTXpj2IhUaCs4jKCk
 0VBBYrYhfyfPlM9bMQRxEmHcCtB+PR6UYM+t5bW3Ugb9rW9nsi6lzI6LBLSYgvMf90E8
 S+qsKZOBmB1Ywm6B0qjLqZMhy0G7/c9fxvJz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=s473gZnaBJEm0epd7S/G+EOzzdQBjRHOGK3g5uwgIzE=;
 b=SLavhTLD0AN5BU0PfxX23Ad2K2p1eV6NQPBkjWtZQtrSnl6qezKRpoB7okU/hUNXdA
 Npe6XUdVH1TCwejUaq+IwlnNMfwgEsfZKI8YwuLnTm9pCmubuTnlxpowSM6cmVv4Vz+R
 LEBe6MKVaWPBIzakFaJoK8YCyusqSe1p/D/Yv1hZ5xj3fIYcVBODP1pFuvy/vK7SkraA
 3X7qyE5hWN0WFxLv9mSvZrzHK2FRnNfuP2XlmRET+PHKoIaco8gocULD9gqPFgIJic20
 APxPCw0JiCy2oMOhYPCvik4lXtnEoWqWY0WGpntS7DgSPoe7jFrmSxisBTFsCq+JAO/o
 JqcA==
X-Gm-Message-State: APjAAAWb4Db6z7h9saioZLnW8ZZG3LjESiohgZxZTzAXsw/bSsAEE91n
 ds55Bf/ud8J+2sjRLuccSk0cOW8Tr2forThOkQl46I+FVKTLXioVg5YlljYkIuQbKu02Jl4jnMY
 ipvSWRTM+whZa1WM3+s/4jG5iHISpCeaGKdiJUmsbThC7OaQpVd520j0TfN3g8AiJi07IlYhf1T
 DDaqTQOA==
X-Google-Smtp-Source: APXvYqy5xRCS1iu9XEaSpi1hM9dKVCe3VSV/AFwaWgGQbnQrp7RahmVHgb6Pw1+xH5qr1Xb/842nOQ==
X-Received: by 2002:a63:9a52:: with SMTP id e18mr5147062pgo.335.1559244093313; 
 Thu, 30 May 2019 12:21:33 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u20sm7190761pfm.145.2019.05.30.12.21.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 12:21:32 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.2
To: Sagi Grimberg <sagi@grimberg.me>,
 John Donnelly <john.p.donnelly@oracle.com>
References: <20190516082541.GA19383@infradead.org>
 <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
 <FA7D2A4E-6CEF-467C-8153-F1DBCA624626@oracle.com>
 <0eb19967-e0bc-ed16-c2a1-39e624e2d7ab@grimberg.me>
 <18AE3540-5173-4A25-A28E-F0B644BA0AAF@oracle.com>
 <4cab00ed-e56f-f963-921d-87d5156eea63@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <12ddd385-22a3-d109-7997-31d7ed4f0ee6@broadcom.com>
Date: Thu, 30 May 2019 12:21:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4cab00ed-e56f-f963-921d-87d5156eea63@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_122134_832959_DB529E07 
X-CRM114-Status: GOOD (  26.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzMwLzIwMTkgMTE6MzUgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4KPj4gSEkgU2Fn
aTsKPj4KPj4gwqDCoMKgwqAgUHJpb3IgdG8gaW1wbGVtZW50aW5nIHRoZSBub3RlZCBjb21taXRz
IHdlIG5ldmVyIGdvdHRlbiB0aGlzIGZhciAKPj4gYmVmb3JlIGluIHJlY292ZXJ5IGJlY2F1c2Ug
dGhlIHN5c3RlbSBlbmNvdW50ZXJlZCB0aGUgT09QUyBhcyBub3RlZCAKPj4gaW4gdGhvc2UgY29t
bWl0cyBhbmQgZmVsbCBhcGFydCB3aXRoIGp1c3Qgb25lIG5hbWVzcGFjZS4gTm93IHRoaXPCoCAK
Pj4gb2NjdXJzIGR1cmluZyBwYXRoIGZhaWxvdmVyIHRlc3Rpbmcgd2hpbGUgdHJ5aW5nIHRvIHJl
Y29ubmVjdCB0d28gCj4+IG5hbWUgc3BhY2VzLMKgIGFuZCBpdMKgIGVuZGVkIHVwIHdpdGggbWF4
IHJlY29ubmVjdCBhdHRlbXB0cyBvZiA2MCB0aGF0IAo+PiBwcm9kdWNlZCBhwqAgZGlmZmVyZW50
IHN0YWNrIHRyYWNlLgo+Cj4gSSBzZWUuCj4KPj4gQSBtZXNzYWdlIGRpZCBhcHBlYXIgaW4gdGhl
IGxvZyB3aXRoIHRoZSBuYW1lIOKAnG52bWUw4oCdICwgYnV0IEkgY2Fu4oCZdCAKPj4gdGVsbCBp
ZiB0aGF0IGlzIHRoZSBkZXZpY2UgbmFtZSB0aGF0IHdhc8KgIGJlaW5nIGRlbGV0ZWQgLCBvciB0
aGUgbmV4dCAKPj4gb25lIDrCoCBudm1lMTvCoCBJIGhhdmUgbm8gZmFydGhlciBleHBsYW5hdGlv
biB3aHkgdGhlwqAgT09QUyB3b3VsZCAKPj4gb2NjdXIgaW4gdGhlIHByaW50IHN0YXRlbWVudCB1
bmxlc3Mg4oCcbmFtZeKAnSB3YXMgbnVsbCzCoMKgIGRvIHlvdSA/Cj4KPiBUaGlzIGRvZXMgbm90
IHJlYWx0ZSB0byB0aGUgZGV2aWNlIG5hbWUsIGJ1dCByYXRoZXIgdG8gdGhlIGRldmljZSBwYXJl
bnQKPiB0aGF0IHNlZW1zIHRvIGJlIE5VTEwgKHdlIGhhdmUgYSB2YWxpZCBrb2JqIGJ1dCBpdCBw
b2ludHMgdG8gYSBOVUxMCj4gcGFyZW50LiBUaGlzIHVzdWFsbHkgaGFwcGVucyBpbiBhIHVzZS1h
ZnRlci1mcmVlIGNvbmRpdGlvbnMuCj4KPiBXaGF0IGlzIHRoZSBGQyBkZXZpY2UgcGFyZW50PyB0
aGUgRkMgYWRhcHRlciBkZXZpY2U/IG9yIHRoZSAKPiAvZGV2L252bWUtZmFicmljcyBkZXZpY2U/
CgpXYXJuaW5nOsKgwqAgdHJhY2tpbmcgZG93biBhbiBpc3N1ZSBiYXNlZCBvbiAyIGluZGl2aWR1
YWwgY29tbWl0cyB0aGF0IAp3ZXJlIHB1bGxlZCBpbnRvIGEga2VybmVsIGJhc2UgdGhhdCBkb2Vz
IG5vdCBjb250YWluIHRoZSBvdGhlciBjb21taXRzIApmb3VuZCBpbiB0aGUgdXBzdHJlYW0gdHJl
ZSwgaXMgZGFuZ2Vyb3VzLgoKSXQncyByZWNvbW1lbmRlZCB0aGF0IHRoZSBpc3N1ZSBiZSByZXBv
cnRlZCB3aGVuIHJ1bm5pbmcgd2hhdCBpcyBpbiB0aGUgCnVwc3RyZWFtIHRyZWUgKGF0IGxlYXN0
IHRoZSBpbmZyYWRlYWQgYnJhbmNoKS4KCkFsc28sIHJlbGF0aXZlIHRvOgogPsKgIEl0IGFwcGVh
cnMgdG8gbWUgdGhlIGNhbGxlciBudm1lX2ZyZWVfY3RybCgpwqAgaXMgdXNpbmcgYSBkZXZpY2Ug
bmFtZSAKdGhhdCBoYXMgYmVlbiBjbGVhcmVkIDoKID7CoCDCoCDCoMKgIHN5c2ZzX3JlbW92ZV9s
aW5rKCZzdWJzeXMtPmRldi5rb2JqLCBkZXZfbmFtZShjdHJsLT5kZXZpY2UpKTsKID7CoCBUaGUg
bmFtZSBwYXNzZWQgaW4gaXMgbnVsbCBpbiBrZXJuZnNfcmVtb3ZlX2J5X25hbWVfbnMoKSA6CiA+
CiA+wqAgaWYgKCFwYXJlbnQpIHsKID7CoCDCoCDCoCBXQVJOKDEsIEtFUk5fV0FSTklORyAia2Vy
bmZzOiBjYW4gbm90IHJlbW92ZSAnJXMnLCBubyAKZGlyZWN0b3J5XG4iLMKgwqAgbmFtZSk7CgpU
aGlzIGlzIHRoZSBudm1lIGNvbnRyb2xsZXIgZGV2aWNlLCByZWZlcmVuY2luZyBpdCdzIG93biBk
ZXZpY2Ugc3RydWN0IAp3aGljaCBpdCBjcmVhdGVkIGl0J3Mgb3duIG5hbWUgZm9yLCB3aGljaCBo
YXMgaXRzIHBhcmVudCBzZXQgdG8gdGhlIHRoZSAKbnZtZl9kZXZpY2UgcGFzc2VkIHRocm91Z2gg
bnZtZl9jcmVhdGVfY3RybCgpIHRvIHRoZSB0cmFuc3BvcnQgCm9wcy0+Y3JlYXRlX2N0cmwoKSB0
byBudm1lX2luaXRfY3RybCgpLgoKCj4KPj4gSGVyZSBpcyB0aGUgcHJlYW1ibGUgdG8gdGhlIHBy
ZXZpb3VzIHN0YWNrIHRyYWNlLgo+Pgo+PiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEg
a2VybmVsOiBudm1lIG52bWUwOiBOVk1FLUZDezB9OiByZXNldDogCj4+IFJlY29ubmVjdAo+PiBh
dHRlbXB0IGZhaWxlZCAoLTIyKQo+PiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0xNjEga2Vy
bmVsOiBudm1lIG52bWUwOiBOVk1FLUZDezB9OiBNYXggCj4+IHJlY29ubmVjdAo+PiBhdHRlbXB0
cyAoNjApIHJlYWNoZWQuCj4+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6
IG52bWUgbnZtZTA6IFJlbW92aW5nIGN0cmw6IE5RTgo+PiAibnFuLjE5OTItMDguY29tLm5ldGFw
cDpzbi4zZDkwMzdjNTNmZWQxMWU5OTIyMjAwYTA5ODZhOGI2MDpzdWJzeXN0ZW0ub2xfbnZtZTFf
c3MxIiAKPj4KPj4gTWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDoga2VybmZz
OiBjYW4gbm90IHJlbW92ZSAKPj4gJ252bWUwJywgbm8gZGlyZWN0b3J5Cj4+IE1heSAyNCAyMTow
OTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6IC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgCj4+IF0t
LS0tLS0tLS0tLS0KPj4gTWF5IDI0IDIxOjA5OjMxIGludGVyb3AtNTctMTYxIGtlcm5lbDogV0FS
TklORzogQ1BVOiA2IFBJRDogMTQyMDYgYXQKPj4gZnMva2VybmZzL2Rpci5jOjE0ODEga2VybmZz
X3JlbW92ZV9ieV9uYW1lX25zKzB4N2UvMHg4Nwo+Pgo+PiBXZSBhcmUgbm90IHNlZWluZyBmYWls
b3ZlciB3b3JrIGF0IGFsbCB1c2luZyB0aGUgbHBmYyBkcml2ZXIuIFRoZSAKPj4gY29ubmVjdGlv
bnMgYXJlIGVzdGFibGlzaGVkIG9uIGJvb3QsIGJ1dCB3aGVuIG9uZSBvZiB0aGUgcGF0aHMgYXJl
IAo+PiBkaXNhYmxlZCBvbiB0aGUgTmV0QXBwIHRhcmdldCB0aGUgc3lzdGVtIG5ldmVyIGlzIGFi
bGUgdG8gcmVzdG9yZXMgCj4+IHRoZSBwYXRocy4KPgo+IFNvIEkvTyBmYWlsb3ZlciBpcyBub3Qg
d29ya2luZyB3aXRoIGxwZmM/IHRoYXQgc2VlbXMgdG8gYmUgYSBkaWZmZXJlbnQKPiBpc3N1ZSB0
byBtZS4gV2hhdCBkbyB5b3UgbWVhbiB0aGF0IHRoZSBOZXRBcHAgdGFyZ2V0IG5ldmVyIGlzIGFi
bGUgdG8KPiByZXN0b3JlIHRoZSBwYXRocz8gVGhhdCBpcyBqdXN0IGFuIGV4cGxhbmF0aW9uIHRv
IHdoYXQgdHJpZ2dlcnMgdGhlCj4gYnVnIG9yIGlzIHRoYXQgc29tZWhvdyByZWxhdGVkPwoKdG9v
IG1hbnkgbGVhcHMgYW5kIGJvdW5kcyBhcmUgYmVpbmcgc3RhdGVkIHdoZW4gdGhlIGJhc2Ugc291
cmNlcyBhcmVuJ3QgCmNvbnNpc3RlbnQuwqDCoCBUaGluZ3Mgd29yayB3aGVuIGFsbCB0aGUgZGVw
ZW5kZW5jaWVzIGFyZSBwdXQgdG9nZXRoZXIuwqAgCldoZW4gYml0cyBhcmUgY2hlcnJ5IHBpY2tl
ZCAtIGl0J3MgYSBiKiMlQCB0byBmaWd1cmUgb3V0IHdoaWNoIHBpZWNlIGlzIAptaXNzaW5nIHRv
IGdldCBldmVyeXRoaW5nIHdvcmtpbmcgdG9nZXRoZXIuCgotLSBqYW1lcwoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
