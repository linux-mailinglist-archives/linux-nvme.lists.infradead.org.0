Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEE64E06F
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 08:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IP7iPckuOr/UAR+++WNaQeI207nn/GlOd2EpG1V+Bs=; b=NQQIae8vj0uyTG
	MIbFRWLhwNTcEmPQKpgMOJj9vTTOSRR0oJtWCgLMzTcIr/00sfQOZazyltF0uWAMCK73tqoq7UAUD
	2ZEO9xpvLhhpctU8mppdrkbYk3garEXc1OT8uN17jeHjzCEap4trjN/uO1m3G7egzIwEDMzTMsuIi
	mrasIVuj+urh115Yi4aISagO85qZ1P/EafaqFARXgsog59QuS3WDVDvrnmYNKWOZfY8Z/mg52iwUG
	Qufa0/bPn07Z7xW/y++CmC/5rvdTJ713odVE3IPF8hkJgpHnxeKkX10wfb1dyqueaC6Ol91XSMepM
	7v+OjNQA1O10zdEBC6Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heCp6-0007Dh-AT; Fri, 21 Jun 2019 06:14:56 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heCoz-0007Cv-TT
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 06:14:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4DD22AFF0;
 Fri, 21 Jun 2019 06:14:46 +0000 (UTC)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Ming Lei <ming.lei@redhat.com>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de> <20190620013650.GB31179@ming.t460p>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <3dbb8dc0-2491-6226-8715-b0f5b7f6a73a@suse.de>
Date: Fri, 21 Jun 2019 08:14:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190620013650.GB31179@ming.t460p>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_231450_248596_E7CA645B 
X-CRM114-Status: GOOD (  18.44  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi8yMC8xOSAzOjM2IEFNLCBNaW5nIExlaSB3cm90ZToKPiBPbiBUdWUsIEp1biAxOCwgMjAx
OSBhdCAxMjoxMDoyNVBNICswMjAwLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+IFdoZW4gcmVz
ZXR0aW5nIHRoZSBjb250cm9sbGVyIHRoZXJlIGlzIG5vIHBvaW50IHdoYXRzb2V2ZXIgdG8KPj4g
aGF2ZSBhIHNjYW4gcnVuIGluIHBhcmFsbGVsOyB3ZSBjYW5ub3QgYWNjZXNzIHRoZSBjb250cm9s
bGVyIGFuZAo+IAo+IHNjYW4gd29uJ3QgYmUgcnVuIGluIHBhcmFsbGVsLCBiZWNhdXNlIC5zY2Fu
X3dvcmsgaXMgZW1iZWRkZWQgaW4KPiAnc3RydWN0IG52bWVfY3RybCcgd2hpY2ggaXMgcGVyLUhC
QS4KPiAKV3JvbmcuIFdlIGRvLgpOb3Qgc3VyZSB3aHkgaGF2aW5nIGl0IGVtYmVkZGVkIGluIHRo
ZSBjb250cm9sbGVyIHN0cnVjdHVyZSBtaWdodApwcmV2ZW50IHRoaXMgZnJvbSBoYXBwZW5pbmc7
IGJvdGggcmVzZXQgYW5kIHNjYW4gYXJlIGVtYmVkZGVkLCBidXQKcnVubmluZyBvbiBkaWZmZXJl
bnQgcXVldWVzOgoKdm9pZCBudm1lX3F1ZXVlX3NjYW4oc3RydWN0IG52bWVfY3RybCAqY3RybCkK
ewoJLyoKCSAqIE9ubHkgbmV3IHF1ZXVlIHNjYW4gd29yayB3aGVuIGFkbWluIGFuZCBJTyBxdWV1
ZXMgYXJlIGJvdGggYWxpdmUKCSAqLwoJaWYgKGN0cmwtPnN0YXRlID09IE5WTUVfQ1RSTF9MSVZF
KQoJCXF1ZXVlX3dvcmsobnZtZV93cSwgJmN0cmwtPnNjYW5fd29yayk7Cn0KRVhQT1JUX1NZTUJP
TF9HUEwobnZtZV9xdWV1ZV9zY2FuKTsKCmludCBudm1lX3Jlc2V0X2N0cmwoc3RydWN0IG52bWVf
Y3RybCAqY3RybCkKewoJaWYgKCFudm1lX2NoYW5nZV9jdHJsX3N0YXRlKGN0cmwsIE5WTUVfQ1RS
TF9SRVNFVFRJTkcpKQoJCXJldHVybiAtRUJVU1k7CglpZiAoIXF1ZXVlX3dvcmsobnZtZV9yZXNl
dF93cSwgJmN0cmwtPnJlc2V0X3dvcmspKQoJCXJldHVybiAtRUJVU1k7CglyZXR1cm4gMDsKfQpF
WFBPUlRfU1lNQk9MX0dQTChudm1lX3Jlc2V0X2N0cmwpOwoKU28gdGhlcmUncyBub3RoaW5nIHN0
b3BwaW5nIHRoZW0gdG8gcnVuIGluIHBhcmFsbGVsLgoKPj4gd2UgY2Fubm90IHRlbGwgd2hpY2gg
ZGV2aWNlcyBhcmUgcHJlc2VudCBhbmQgd2hpY2ggbm90Lgo+PiBBZGRpdGlvbmFsbHkgd2UnbGwg
cnVuIGEgc2NhbiBhZnRlciByZXNldCBhbnl3YXkuCj4+IFNvIGZsdXNoIGV4aXN0aW5nIHNjYW5z
IGJlZm9yZSByZWNvbm5lY3RpbmcsIGVuc3VyaW5nIHRvCj4+IHNob3J0LWNpcmN1aXQgdGhlIHNj
YW4gd29ya3F1ZXVlIGZ1bmN0aW9uIGlmIHRoZSBjb250cm9sbGVyIHN0YXRlCj4+IGlzbid0IGxp
dmUgdG8gYXZvaWQgbG9ja3Vwcy4KPiAKPiBUaGlzIHdheSBtYXkgY2F1c2UgZGVhZC1sb2NrLgo+
IAo+IDEpIG52bWVfcmV2YWxpZGF0ZV9kaXNrKCkgbWlnaHQgZnJlZXplIHF1ZXVlIGluIGZsdXNo
IGNvbnRleHQsIGhvd2V2ZXIKPiBhbnkgaW4tZmxpZ2h0IHJlcXVlc3RzIHdvbid0IGJlIGNvbXBs
ZXRlZCB1bnRpbCByZXNldCBpcyBkb25lLCBzbwo+IGRlYWRsb2NrIG1heSBiZSBjYXVzZWQgYnkg
Zmx1c2hpbmcgc2NhbnMgaW4gcmVzZXQgY29udGV4dC4KPiAKV2hpY2ggaXMgd2h5IEknbSBjaGVj
a2luZyB0aGUgY29udHJvbGxlciBzdGF0ZTsgSSd2ZSBvYnNlcnZlZCB0aGUKZGVhZGxvY2sgcGxl
bnR5IG9mIHRpbWVzIGJlZm9yZSBpbnRyb2R1Y2luZyB0aGUgY29udHJvbGxlciBzdGF0ZSBjaGVj
ay4KCj4gMikgc3luYyBJTyBtYXkgYmUgaW52b2x2ZWQgaW4gcmV2YWxpZGF0ZV9kaXNrKCkgd2hp
Y2ggaXMgY2FsbGVkIGluCj4gc2NhbiBjb250ZXh0LCBzbyBkZWFkbG9jayBpcyBjYXVzZWQgZm9y
IHNhbWUgcmVhc29uIHdpdGggMSkuCj4gCkkvTyBkdXJpbmcgcmV2YWxpZGF0ZV9kaXNrKCkgaXMg
cHJvdGVjdGVkIGJ5IHRoZSBzdGF0ZSBjaGVjaywgdG9vLCBzbyB3ZQp3b24ndCBiZSBpc3N1aW5n
IGFueSBJL08gZHVyaW5nIHJlc2V0dGluZy4KClRvIGJlIHByZWNpc2U6IGFueSBJL08gaW4gZmxp
Z2h0IHdoZW4gcmVzZXQgaXMgdHJpZ2dlcmVkIHdpbGwgYmUKdGVybWluYXRlZCwgYW5kIGFueSBz
dWJzZXF1ZW50IEkvTyBpcyBzaG9ydC1jaXJjdWl0ZWQgYnkgdGhlIHN0YXRlIGNoZWNrLgoKQ2hl
ZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkgICBUZWFtbGVhZCBTdG9yYWdl
ICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAgICArNDkgOTExIDc0MDUz
IDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjog
RmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChB
RyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1l
Cg==
