Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11EB7BA13
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 09:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UV+fdKaGRBLhOyHu4CcSMQlyYCohZGkIh33Yn5P4W04=; b=FAiV+sx8mi6Rvu
	hGlEUZwDkgW4tQjDs3JqITw4JLb4dynr5V0vyrKCU6ktUDC/vrVnxGq22/BD39vfIPRumWvd3inY9
	v0UKBKKmVMwP3OPOi6SSFbHqNF7L4/l4418DsVFUCnPjJeF4SCUymYsanxegjh5YPxPWRR4g9uh68
	PlllSarJt9dxN/ieI97n6jBo4zAhu3t+by9eVGq3KFc2PYOtFb+C5kAJPAdGvK454vj5ZVeOODSgU
	cjQ/5ot9r1H+ZRO0Eg3ODvt8zU4Hx/Gpksh8XQQCi2erqpG3W9LLRjcidlghYf4ubmiI168iFn/F3
	eaWvx4oP/jwZCOGtpVug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsidK-0007ZL-QR; Wed, 31 Jul 2019 07:02:47 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsicb-0007Yy-2L
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 07:02:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4F706AFC3;
 Wed, 31 Jul 2019 07:01:59 +0000 (UTC)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
Date: Wed, 31 Jul 2019 09:01:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190730173048.GC13948@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_000202_385925_C0D66E65 
X-CRM114-Status: GOOD (  21.02  )
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8zMC8xOSA3OjMwIFBNLCBLZWl0aCBCdXNjaCB3cm90ZToKPiBPbiBUdWUsIEp1bCAzMCwg
MjAxOSBhdCAxMDoxMjo0MkFNIC0wNzAwLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Pgo+Pj4+IFll
cywgYW5kIGFnYWluLCBhZGRyZXNzZXMgdGhlIGNhc2UgdGhhdCB0aGUgbmFtZXNwYWNlIGlzIGdv
aW5nIGF3YXkuCj4+Pj4KPj4+PiBTbyBJIHRoaW5rIHdlIGFyZSBpbiBhZ3JlZW1lbnQ/IEkgb25s
eSBuZWVkIHRvIGNoYW5nZSB0aGUgY29tbWl0Cj4+Pj4gbWVzc2FnZSBmcm9tOiAidGhlIHJldmFs
aWRhdGlvbiBJL08iIHRvICJ0aGUgYWRtaW4gSS9PIiA/Cj4+Pgo+Pj4gVGhhdCB3b3JkcyBvZiAn
YWRtaW4gSS9PJyBpc24ndCByZWxhdGVkIHdpdGggdGhlIHBhdGNoIG9yIGlzc3VlLgo+Pgo+PiBC
dXQgaXQgaXMsIHRoZSBvcmlnaW5hbCBpc3N1ZSB3YXMgZHVlIHRvIHRoZSBmYWN0IHRoYXQKPj4g
bnZtZV9yZXZhbGlkYXRlX2Rpc2soKSBJL09zIHN1Y2ggYXMgbnZtZV9pZGVudGlmeV9ucygpIG9y
Cj4+IG52bWVfaWRlbnRpZnlfbnNfZGVzY3MoKS4gVGhpcyB3YXMgdGhlIG9yaWdpbmFsIGlzc3Vl
Lgo+Pgo+Pj4+IFllYSwgdGhpcyBzaG91bGQgZG8gdGhlIHRyaWNrIEkgZ3Vlc3M6Cj4+Pj4gLS0K
Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1l
L2hvc3QvY29yZS5jCj4+Pj4gaW5kZXggZmEzMWRhMDc2MmI5Li5kMDE5NzZjOTMxNjAgMTAwNjQ0
Cj4+Pj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4+Pj4gKysrIGIvZHJpdmVycy9u
dm1lL2hvc3QvY29yZS5jCj4+Pj4gQEAgLTM0MjgsNyArMzQyOCw4IEBAIHN0YXRpYyB2b2lkIG52
bWVfdmFsaWRhdGVfbnMoc3RydWN0IG52bWVfY3RybAo+Pj4+ICpjdHJsLCB1bnNpZ25lZCBuc2lk
KQo+Pj4+Cj4+Pj4gICAgICAgICAgIG5zID0gbnZtZV9maW5kX2dldF9ucyhjdHJsLCBuc2lkKTsK
Pj4+PiAgICAgICAgICAgaWYgKG5zKSB7Cj4+Pj4gLSAgICAgICAgICAgICAgIGlmIChucy0+ZGlz
ayAmJiByZXZhbGlkYXRlX2Rpc2sobnMtPmRpc2spKQo+Pj4+ICsgICAgICAgICAgICAgICBpZiAo
bnMtPmRpc2sgJiYgY3RybC0+c3RhdGUgPT0gTlZNRV9DVFJMX0xJVkUgJiYKPj4+PiArICAgICAg
ICAgICAgICAgICAgIHJldmFsaWRhdGVfZGlzayhucy0+ZGlzaykKPj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgIG52bWVfbnNfcmVtb3ZlKG5zKTsKPj4+PiAgICAgICAgICAgICAgICAgICBu
dm1lX3B1dF9ucyhucyk7Cj4+Pj4gICAgICAgICAgIH0gZWxzZQo+Pj4KPj4+IElmIFJFU0VUIGlz
IHRyaWdnZXJlZCBqdXN0IGluc2lkZSByZXZhbGlkYXRlX2Rpc2soKSwgYW5kIG5vdCBkb25lIGFm
dGVyCj4+PiByZXZhbGlkYXRlX2Rpc2soKSByZXR1cm5zLCAgdGhlcmUgaXMgc3RpbGwgcmFjZSBi
ZXR3ZWVuIHJlc2V0IGFuZCBzY2FuIHdvcmsuCj4+Pgo+Pgo+PiBZb3UgYXJlIGNvcnJlY3QsIHRo
aXMgd2FzIHdoeSBJIGhhZCB0aGUgY3RybC0+c3RhdGUgY2hlY2sgYWZ0ZXIKPj4gcmV2YWxpZGF0
ZV9kaXNrIHNvIGlmIGl0IGZhaWxlZCBiZWNhdXNlIHdlIGFyZSBpbiBhIHJlc2V0IHdlIHNob3Vs
ZAo+PiBub3QgcmVtb3ZlIHRoZSBuYW1lc3BhY2UuCj4+Cj4+IFdlIG5lZWQgYSByZWxpYWJsZSB3
YXkgdG8gTk9UIHJlbW92ZSB0aGUgbmFtZXNwYWNlIGlmIHJldmFsaWRhdGVfZGlzawo+PiBmYWls
ZWQgYmVjYXVzZSB0aGUgY29udHJvbGxlciBpcyByZXNldHRpbmcgYW5kIHdlIGRvbid0IGhhdmUg
YSBjaGFubmVsCj4+IHRvIHRoZSBjb250cm9sbGVyIGF0IHRoaXMgdmVyeSBtb21lbnQuLi4KPj4K
Pj4gS2VpdGgsCj4+Cj4+IEFzIGZvciB0aGUgZmFpbHVyZSBkdXJpbmcgcmVzZXQgc2NlbmFyaW8s
IHRoaXMgaXMgaGFwcGVuaW5nIG9ubHkgd2hlbgo+PiB0aGUgbmFtZXNwYWNlIGlzIGFib3V0IHRv
IGdvIGF3YXkgb3Igc29tZXRoaW5nIGlzIHNlcmlvdXNseSB3cm9uZyByaWdodAo+PiAobG9va2lu
ZyBmcm9tIHdoZXJlIG52bWVfa2lsbF9xdWV1ZXMgaXMgY2FsbGVkKS4KPj4KPj4gRG8geW91IHN0
aWxsIHRoaW5rIHdlIHNob3VsZCBhdm9pZCBjYWxsaW5nIHRoZSByZXZhbGlkYXRlX2Rpc2sgaWYg
dGhlCj4+IGNvbnRyb2xsZXIgaXMgcmVzZXR0aW5nPwo+IAo+IEkgd2FzIGNvbnNpZGVyaW5nIGlm
IGEgcmVzZXQgaGFwcGVucyB0byB0cmlnZ2VyIHdoZW4gbnZtZSdzCj4gcmV2YWxpZGF0ZV9kaXNr
IHRyaWVzIHRvIHJlYWQgaWRlbnRpZnkgbmFtZXNwYWNlLiBJdCdzIHBvc3NpYmxlIHRoYXQKPiBj
b21tYW5kIGdldHMgYWJvcnRlZCwgYW5kIHdlIGRvbid0IHJldHJ5IGFkbWluIGNvbW1hbmRzLCBz
byB3ZSdkIHJldHVybgo+IC1FTk9ERVYgYW5kIG52bWVfdmFsaWRhdGVfbnMoKSByZW1vdmVzIGFu
IG90aGVyd2lzZSBoZWFsdGh5IG5hbWVzcGFjZS4KPiAKPiBJJ20gbm90IHRvbyBjb25jZXJuZWQg
YWJvdXQgdGhpcyBjb3JuZXIgY2FzZSBhY3R1YWxseSBvY2N1cmluZyBpbgo+IHByYWN0aWNlLCB0
aG91Z2guCj4gCi4uLiBkaXNjYXJkaW5nIHRob3NlIHBvb3IgZm9sa3MgaGF2aW5nIHRvIGh1bnQg
ZG93biB0aGlzIHZlcnkgc2FtZSBpc3N1ZQpmb3Igc2V2ZXJhbCBtb250aHMgbm93IC4uLgoKWWVz
LCBpdCBfZG9lc18gb2NjdXIuCk5vdCBvbiBQQ0ksIG1pbmQsIGJ1dCBkZWZpbml0ZWx5IGZvciBG
Qy4gUkRNQSBtaWdodCBoYXZlIGEgc2xpZ2h0bHkKYmV0dGVyIGNoYW5jZSBvZiBub3QgaGl0dGlu
ZyBpdCwgYnV0IGV2ZW4gdGhlcmUgd2UgaGF2ZSBzZWVuIGl0LgoKQ2hlZXJzLAoKSGFubmVzCi0t
IApEci4gSGFubmVzIFJlaW5lY2tlCQkgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpo
YXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVY
IEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJm
ZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1l
IG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
