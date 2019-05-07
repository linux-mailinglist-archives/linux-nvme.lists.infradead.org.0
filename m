Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF0016854
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 18:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ma+uvzUja8R/XZ6BEOEo9lw5BIWeShURvj7kMqcrcoc=; b=Spbxx/I6SO9xl3l9S/oDQJR5O
	yvheXDQzkDG7QdIzcEL6LY8oDPxxqAKjvfZCs+O6GbMheGsRh3kxjbLeU76d0QKhyRYH97uGpREzI
	gi0D04qWa8niQoninBQOlwXXeSsn9aYvoItKNgHnxkdYJHoc89ogA/TX5s4v4Exokj+dVZZljhuOM
	DSte07vpZMz3oAcfCnabzMCKL0nBQA4ekySOvzcC/2bD6DypnKJlvJVK8BDAjWCVUzW1diT4fFK1/
	p9XG4XzKbFxXwqxGQX6gZwGDGk6s18wkaTUNK3DF9YdeJbxVbviAP4naRqg6iEHRMfzbSadvvnxVL
	tFm6sYmAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3Fl-000353-6E; Tue, 07 May 2019 16:47:41 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3Fg-00034k-88
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 16:47:38 +0000
Received: by mail-pl1-x643.google.com with SMTP id a59so8458234pla.5
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 09:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=LTHjrRrhslqs0Gp6zRS1w3xVwGCaeznaGL2gF8M8uZM=;
 b=WrobunHH4N3yiWtaysHfqi5FoVnbXhnBSHrIPbrtF2Z4c20/Uwus2bTXwM8wEVy6lI
 4FrP56fu4BqmNlWPsoytgjju7RFKcqFCajOL36LDMg04bhUEpKQm+QnSiRXe8FvDFyom
 UoK+I26CPh/bLNg1vuI6Ygk7RI3Nf8K0TXIxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=LTHjrRrhslqs0Gp6zRS1w3xVwGCaeznaGL2gF8M8uZM=;
 b=sDS0rPsPgWe2Vi9KFEGKjlKn1AseIRzitSOPk+BxVHuD3ufxBjXMnVJxablE7U8K06
 r8g1FX5+hfb75MgTCz99yPlHuraBf2c3MHbuYdM/Nw1gGhZoBscmee1Y+suH7Njmwugm
 R5NwZggX+4OaBImkzsmLukgoNiE8EfwZdWEjAFZkdhD8/OKZ7XiCigY/6k4EcqaqmUVD
 xQ2SymUei14qRN2aEydnDfk+KrxCNJY0v+FQzx6xX+BaICueng8X9pcBxN4sdh2u7Zfo
 ayVZ7L3vmRDHRArqhx3dSjh7VpPWN5J5NxQSm5YlSlwDCSA5Kn5UP3fesj0Aqqnfq6X8
 w1Fw==
X-Gm-Message-State: APjAAAUp+jx+1wIf7nZEqyDaahZoXBEA5LKczfEWQ0myQlKcl9l+piZQ
 LbzxwlFOi2ta6iXoWxaKEacUsw==
X-Google-Smtp-Source: APXvYqxcz1wACbyHvOi5GQCDAPfJ2G4u2A2HjpFHsdhJ9utEWlci9THJNLZstqJbqgGoDE1HIEoFog==
X-Received: by 2002:a17:902:4683:: with SMTP id
 p3mr39875630pld.42.1557247655160; 
 Tue, 07 May 2019 09:47:35 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id a18sm13443290pfr.22.2019.05.07.09.47.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 09:47:34 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc 0/6] Support discovery log change events
To: Arun Easi <aeasi@marvell.com>
References: <20190223023257.21227-1-sagi@grimberg.me>
 <d4012891-8bc7-00cf-ab96-7828270d25af@suse.de>
 <e7423c76-6425-4020-2074-b977fc87866f@grimberg.me>
 <d1742744-1109-e7e8-3586-fca6556c803b@broadcom.com>
 <d7bbfc2a-92ea-315d-bbd6-cd3847449f7b@grimberg.me>
 <3b524b54-8f13-24f5-4367-34a4d02c59b3@broadcom.com>
 <5c64286b-3fbf-9dfe-ef8a-3f72e630f11d@broadcom.com>
 <a4f8ca74-7777-9e80-3209-ef9ce27ad2d8@suse.de>
 <44f637f2-0c0d-cef4-05b3-c5e67ec907bb@grimberg.me>
 <f0e112f7-0db5-4928-0859-8b3b6b797432@grimberg.me>
 <9d0e3080-baa7-6f55-2548-097523bb3a83@suse.de>
 <03163041-9b14-3662-edb8-1d69f20f681f@grimberg.me>
 <f4594084-4f2a-33ca-77b4-d7075bbb12af@broadcom.com>
 <2a08f760-0aeb-d788-3210-72ec9d6eb9bc@grimberg.me>
 <3b7117cf-db69-01a3-d286-a2f98f3e8f5b@broadcom.com>
 <alpine.LRH.2.21.9999.1905061528390.19585@mvluser05.qlc.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <a6c04837-bcf1-0fb6-12c2-0d1f140d6ce9@broadcom.com>
Date: Tue, 7 May 2019 09:47:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.9999.1905061528390.19585@mvluser05.qlc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_094736_956604_A4C99D12 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzYvMjAxOSAzOjM4IFBNLCBBcnVuIEVhc2kgd3JvdGU6Cj4gSGkgSmFtZXMsCj4KPiBP
biBGcmksIDI2IEFwciAyMDE5LCAxOjE0cG0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+Cj4+IE9uIDQv
MjYvMjAxOSAxMjoxMCBQTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPj4+IEdpdmVuIHRoYXQgRkMg
ZG9lcyBub3QgbmVlZCBhIHBlcnNpc3RlbnQgZGlzY292ZXJ5IGNvbnRyb2xsZXIgdG8gZ2V0IHRo
ZQo+Pj4gZXZlbnQsIGl0cyBmaW5lIHRoYXQgaXQgd2lsbCBjcmVhdGUgYSB0ZW1wb3JhcnkgZGlz
Y292ZXJ5IGNvbnRyb2xsZXIuCj4+PiBHaXZlbiB0aGF0IEZDIGFuZCBJUCBkbyBkaWZmZXJlbnQg
dGhpbmdzLCB3ZSBjYW4gc2VwYXJhdGUgdGhlbS4gQnV0IHdoYXQKPj4+IEkgd2FudGVkIHRvIHVu
ZGVyc3RhbmQsIGlzIGlmIEkgZXhwb3J0IGEgc2Vjb25kIHN1YnN5c3RlbSBvbiB0aGUgc2FtZQo+
Pj4gRkMgcG9ydCwgd2lsbCBpdCBnZW5lcmF0ZSBhbiBGQyBldmVudD8KPj4gV2VsbCAtIEZDIGRv
ZXMgaGF2ZSBhbiBSU0NOIG5vdGlmaWNhdGlvbiB0byBjYXVzZSB0aGUgcmVzY2FuIG9mIHRoZSBG
Qwo+PiBwb3J0LCBpZiB0aGUgRkMgcG9ydCBhcyB0aGUgTlZNRSBEaXNjb3ZlcnkgYXR0cmlidXRl
LCBidXQgQ2hyaXN0b3BoCj4+IHJlamVjdGVkIHRoZSAzIHBhdGNoZXMgYWJvdXQgYSB5ZWFyIGFn
by4gSSdsbCBiZSByZXBvc3RpbmcgaXQuIFNvIHRoZQo+PiBhbnN3ZXIgc2hvdWxkIGV2ZW50dWFs
bHkgYmUgLSB5ZXMsIGl0IHdpbGwgZ2V0IGFuIEZDIGV2ZW50IGlmIHRoZQo+PiBzdWJzeXN0ZW0g
bGlzdCBhdCB0aGUgRkMgcG9ydCBjaGFuZ2VzLgo+Pgo+IFNvLCBqdXN0IHdvbmRlcmluZywgZm9y
IHRoZSBjYXNlIG9mIHN1YnN5c3RlbSBhZGRpdGlvbiB0byBhbiBleGlzdGluZyBGQwo+IHBvcnQs
IGlzIGl0IHJlY29tbWVuZGVkIG9yIG1hbmRhdGVkIGluIHRoZSBzcGVjIHRoYXQgdGhlIHRhcmdl
dCBGQyBwb3J0Cj4gc2VuZCBvdXQgYSBSU0NOPyBUaGUgUlNDTiBzaG91bGQgYmUgZnJvbSB0aGUg
dGFyZ2V0IEZDIHBvcnQsIG5vdCB0aGUKPiBzd2l0Y2gsIHJpZ2h0PyBJIGNvdWxkIG5vdCBmaW5k
IHN1Y2ggYSByZWZlcmVuY2UgaW4gdGhlIEZDLU5WTUUgc3BlYwo+IHZlcnNpb24gSSBoYXZlIChy
MS4xNSkuCj4KPiBPbiBhIHJlbGF0ZWQgbm90ZSwgZnJvbSBhIEZDIExMREQgcGVyc3BlY3RpdmUs
IHRoZW4sIGFyZSB0aGV5IHJlcXVpcmVkIHRvCj4gaW52b2tlIG52bWVfZmNfcmVzY2FuX3JlbW90
ZXBvcnQoKSB1cG9uIFJTQ04gcmVjZXB0aW9uPwo+Cj4gUmVnYXJkcywKPiAtQXJ1bgoKVGhlcmUn
cyBubyByZXF1aXJlbWVudCwgYnV0IHRoZXJlIGlzIGEgcmVjb21tZW5kYXRpb24uIFNob3VsZCBi
ZSBpbiAKc2VjdGlvbiBDLsKgIFJTQ04gc2hvdWxkIGJlIGZyb20gdGhlIEZDIHBvcnQsIGJ1dCBp
dCBjYW4gYWRkcmVzcyB0aGUgCmZhYnJpYyBhbmQgaGF2ZSB0aGUgZmFicmljIGRlbGl2ZXIgaXQg
dG8gdGhlIHJlY2lwaWVudHMuCgp5b3UgbmVlZCB0byBiZSBsb29raW5nIGF0IGF0IGxlYXN0IHIx
LjE5ICsgYW1tZW5kbWVudCAxLgoKRm9yIHRoZSBGQyBMTEREIHBlcnNwZWN0aXZlIC0gSSBoYWQg
cHVzaGVkIHRoZSBhcGkgaW50byB0aGUgaW5pdGlhdG9yIAp0cmFuc3BvcnQgd2hlcmUgdGhlIGRy
aXZlciBjYW4gaW52b2tlIHRoZSByZXNjYW4sIGJ1dCBpdCB3YXNuJ3QgcGlja2VkIAp1cC4gSSdt
IGFib3V0IHRvIHJlcG9zdCBhZnRlciBtZXJnaW5nIHdpdGggc2ltaWxhciB3b3JrIGRvbmUgd2l0
aCB0aGUgCmRpc292ZXJ5IEFFTiB3b3JrIG9uIHRoZSBudm1ldCBzaWRlLsKgwqAgQWxzbywgZm9y
IHByb3BlciAxLjE5K2FtbWVuZG1lbnQgCjEgc3VwcG9ydCwgSSB3aWxsIGJlIGFkZGluZyBhbiBM
Uy1yZWNlaXZlIGludGVyZmFjZSB0byB0aGUgdHJhbnNwb3J0IC0gCnNvIHRoYXQgRGlzY29ubmVj
dHMgYW5kIChzb29uKSBEaXNjb25uZWN0IEkvTyBDb25uZWN0aW9ucyBjYW4gYmUgcGFzc2VkIHVw
LgoKLS0gamFtZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1l
Cg==
