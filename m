Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACF449B82
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 09:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9roZR2g8p5PkPCkbHl4+tqcfSE29S+fF34d+s5FbQIk=; b=gKhwPLKG1MjUJJ
	mezYCHPEmwsr9bkCp/9DK0uJcEEndmDUBFryN0ODSgA/f3qXsgCl8jUcCq00krD58r/C9s27cAbVl
	IpKujWAfw+LCcaEzRCFF3eGo8QCoSjLCCHzYK7BulIWAMpRSInL7milHOWoQqJ4bJBTg/DJBuPHYw
	5OOymKECXcf7BmGKtOF8LRYfqFE0vrKWx+K91mUeRZ3tR1Zo2AeetcxT/n/5UZtirnvv7uNEd6f23
	pEVb7Icm0ZwbKPwvQnJRNJ7AhYHV7vUrkvW7sluuzEhowhf09gIlVaPVHGhuLYC5hfFf3i+IaRPp3
	5Epj3xV5J6dR93HTtvxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8u8-0001Mj-OI; Tue, 18 Jun 2019 07:51:44 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8u2-0001M2-94
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 07:51:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 05C33AFE1;
 Tue, 18 Jun 2019 07:51:37 +0000 (UTC)
Subject: Re: [PATCH v3 3/3] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
To: Bart Van Assche <bvanassche@acm.org>, Christoph Hellwig <hch@lst.de>
References: <20190617161222.253849-1-bvanassche@acm.org>
 <20190617161222.253849-4-bvanassche@acm.org>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <3546169d-5ee5-82d6-be2b-c51a4fab47ae@suse.de>
Date: Tue, 18 Jun 2019 09:51:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617161222.253849-4-bvanassche@acm.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_005138_607493_3219006C 
X-CRM114-Status: GOOD (  22.25  )
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
Cc: Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi8xNy8xOSA2OjEyIFBNLCBCYXJ0IFZhbiBBc3NjaGUgd3JvdGU6Cj4gRnJvbSB0aGUgTlZN
ZSAxLjQgc3BlYzoKPiAKPiBOU0ZFQVQgYml0IDQgaWYgc2V0IHRvIDE6IGluZGljYXRlcyB0aGF0
IHRoZSBmaWVsZHMgTlBXRywgTlBXQSwgTlBERywgTlBEQSwKPiBhbmQgTk9XUyBhcmUgZGVmaW5l
ZCBmb3IgdGhpcyBuYW1lc3BhY2UgYW5kIHNob3VsZCBiZSB1c2VkIGJ5IHRoZSBob3N0IGZvcgo+
IEkvTyBvcHRpbWl6YXRpb247Cj4gWyAuLi4gXQo+IE5hbWVzcGFjZSBQcmVmZXJyZWQgV3JpdGUg
R3JhbnVsYXJpdHkgKE5QV0cpOiBUaGlzIGZpZWxkIGluZGljYXRlcyB0aGUKPiBzbWFsbGVzdCBy
ZWNvbW1lbmRlZCB3cml0ZSBncmFudWxhcml0eSBpbiBsb2dpY2FsIGJsb2NrcyBmb3IgdGhpcyBu
YW1lc3BhY2UuCj4gVGhpcyBpcyBhIDAncyBiYXNlZCB2YWx1ZS4gVGhlIHNpemUgaW5kaWNhdGVk
IHNob3VsZCBiZSBsZXNzIHRoYW4gb3IgZXF1YWwKPiB0byBNYXhpbXVtIERhdGEgVHJhbnNmZXIg
U2l6ZSAoTURUUykgdGhhdCBpcyBzcGVjaWZpZWQgaW4gdW5pdHMgb2YgbWluaW11bQo+IG1lbW9y
eSBwYWdlIHNpemUuIFRoZSB2YWx1ZSBvZiB0aGlzIGZpZWxkIG1heSBjaGFuZ2UgaWYgdGhlIG5h
bWVzcGFjZSBpcwo+IHJlZm9ybWF0dGVkLiBUaGUgc2l6ZSBzaG91bGQgYmUgYSBtdWx0aXBsZSBv
ZiBOYW1lc3BhY2UgUHJlZmVycmVkIFdyaXRlCj4gQWxpZ25tZW50IChOUFdBKS4gUmVmZXIgdG8g
c2VjdGlvbiA4LjI1IGZvciBob3cgdGhpcyBmaWVsZCBpcyB1dGlsaXplZCB0bwo+IGltcHJvdmUg
cGVyZm9ybWFuY2UgYW5kIGVuZHVyYW5jZS4KPiBbIC4uLiBdCj4gRWFjaCBXcml0ZSwgV3JpdGUg
VW5jb3JyZWN0YWJsZSwgb3IgV3JpdGUgWmVyb2VzIGNvbW1hbmRzIHNob3VsZCBhZGRyZXNzIGEK
PiBtdWx0aXBsZSBvZiBOYW1lc3BhY2UgUHJlZmVycmVkIFdyaXRlIEdyYW51bGFyaXR5IChOUFdH
KSAocmVmZXIgdG8gRmlndXJlCj4gMjQ1KSBhbmQgU3RyZWFtIFdyaXRlIFNpemUgKFNXUykgKHJl
ZmVyIHRvIEZpZ3VyZSA1MTUpIGxvZ2ljYWwgYmxvY2tzIChhcwo+IGV4cHJlc3NlZCBpbiB0aGUg
TkxCIGZpZWxkKSwgYW5kIHRoZSBTTEJBIGZpZWxkIG9mIHRoZSBjb21tYW5kIHNob3VsZCBiZQo+
IGFsaWduZWQgdG8gTmFtZXNwYWNlIFByZWZlcnJlZCBXcml0ZSBBbGlnbm1lbnQgKE5QV0EpIChy
ZWZlciB0byBGaWd1cmUgMjQ1KQo+IGZvciBiZXN0IHBlcmZvcm1hbmNlLgo+IAo+IENjOiBLZWl0
aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5vcmc+Cj4gQ2M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3Jp
bWJlcmcubWU+Cj4gQ2M6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBCYXJ0IFZhbiBBc3NjaGUgPGJ2YW5hc3NjaGVAYWNtLm9yZz4KPiAtLS0KPiAgZHJp
dmVycy9udm1lL2hvc3QvY29yZS5jIHwgMzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0t
Cj4gIGRyaXZlcnMvbnZtZS9ob3N0L252bWUuaCB8ICAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCAy
OSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IApSZXZpZXdlZC1ieTogSGFubmVzIFJl
aW5lY2tlIDxoYXJlQHN1c2UuY29tPgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJl
aW5lY2tlCQkgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkg
ICAgICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRz
dHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dp
bnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApM
aW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
