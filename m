Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE0917B8E4
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Mar 2020 10:02:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OopVAz68Qn95/zqa8pNadcKxbfq/0hXYEW6cS6YcO9o=; b=Nv6SKNZ4/lxfkf
	t6BLpoGCffvoAnpFtFsS12h5dFdEosbzcdyxr8NqxjyDXwK3uscTjc21T3ixLlOC6GJC2BtRrHUWl
	VRPmfDXNH0hyWyoAM85q5KpCQgvU/xtHH5n/TFqQlvfC8Ixvx59RYTDE67La+5PQu5oMv8Sbcf3SD
	0cQ3oufe5v80eJzya4jMg73XCRQHruT4AL2oihzHUWfrbJZiFp9vBHEyK/EqIXwfluPy5qccBVMFC
	EeOy35T7r6AAi3pC6Pmyy2o1HiICCLDVIGdHFBqW0Bc1/zmTtQbp7E/w7YCS9vJmFG0AX6lxjAvVh
	kMjouJ7G1lC0c7LhZMtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA8rn-0001EI-Fj; Fri, 06 Mar 2020 09:01:59 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA8ri-0001Dy-Dl
 for linux-nvme@lists.infradead.org; Fri, 06 Mar 2020 09:01:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 33AFCAFE8;
 Fri,  6 Mar 2020 09:01:53 +0000 (UTC)
Subject: Re: [PATCH 14/29] nvmet-fc: perform small cleanups on unneeded checks
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200205183753.25959-1-jsmart2021@gmail.com>
 <20200205183753.25959-15-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <bfc66228-fb9c-59fc-5ce9-48c50175e864@suse.de>
Date: Fri, 6 Mar 2020 10:01:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200205183753.25959-15-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_010154_749947_6ACA7C2E 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: martin.petersen@oracle.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMi81LzIwIDc6MzcgUE0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+IFdoaWxlIGNvZGUgcmV2aWV3
aW5nIHNhdyBhIGNvdXBsZSBvZiBpdGVtcyB0aGF0IGNhbiBiZSBjbGVhbmVkIHVwOgo+IC0gSW4g
bnZtZXRfZmNfZGVsZXRlX3RhcmdldF9xdWV1ZSgpLCB0aGUgcm91dGluZSB1bmxvY2tzLCB0aGVu
IGNoZWNrcwo+ICAgYW5kIHJlbG9ja3MuICBSZW9yZ2FuaXplIHRvIGF2b2lkIHRoZSB1bmxvY2sv
cmVsb2NrLgo+IC0gSW4gbnZtZXRfZmNfZGVsZXRlX3RhcmdldF9xdWV1ZSgpLCB0aGVyZSdzIGEg
Y2hlY2sgb24gdGhlIGRpc2Nvbm5lY3QKPiAgIHN0YXRlIHRoYXQgaXMgdW5uZWNlc3NhcnkgYXMg
dGhlIHJvdXRpbmUgdmFsaWRhdGVzIHRoZSBzdGF0ZSBiZWZvcmUKPiAgIHN0YXJ0aW5nIGFueSBh
Y3Rpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFtZXMgU21hcnQgPGpzbWFydDIwMjFAZ21haWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL252bWUvdGFyZ2V0L2ZjLmMgfCAxMSArKysrLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL252bWUvdGFyZ2V0L2ZjLmMgYi9kcml2ZXJzL252bWUvdGFyZ2V0
L2ZjLmMKPiBpbmRleCBhOTFjNDQzYzkwOTguLjM1YjVjYzBkMjI0MCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL252bWUvdGFyZ2V0L2ZjLmMKPiArKysgYi9kcml2ZXJzL252bWUvdGFyZ2V0L2ZjLmMK
PiBAQCAtNjg4LDIwICs2ODgsMTggQEAgbnZtZXRfZmNfZGVsZXRlX3RhcmdldF9xdWV1ZShzdHJ1
Y3QgbnZtZXRfZmNfdGd0X3F1ZXVlICpxdWV1ZSkKPiAgCQlpZiAoZm9kLT5hY3RpdmUpIHsKPiAg
CQkJc3Bpbl9sb2NrKCZmb2QtPmZsb2NrKTsKPiAgCQkJZm9kLT5hYm9ydCA9IHRydWU7Cj4gLQkJ
CXdyaXRlZGF0YWFjdGl2ZSA9IGZvZC0+d3JpdGVkYXRhYWN0aXZlOwo+IC0JCQlzcGluX3VubG9j
aygmZm9kLT5mbG9jayk7Cj4gIAkJCS8qCj4gIAkJCSAqIG9ubHkgY2FsbCBsbGRkIGFib3J0IHJv
dXRpbmUgaWYgd2FpdGluZyBmb3IKPiAgCQkJICogd3JpdGVkYXRhLiBvdGhlciBvdXRzdGFuZGlu
ZyBvcHMgc2hvdWxkIGZpbmlzaAo+ICAJCQkgKiBvbiB0aGVpciBvd24uCj4gIAkJCSAqLwo+IC0J
CQlpZiAod3JpdGVkYXRhYWN0aXZlKSB7Cj4gLQkJCQlzcGluX2xvY2soJmZvZC0+ZmxvY2spOwo+
ICsJCQlpZiAoZm9kLT53cml0ZWRhdGFhY3RpdmUpIHsKPiAgCQkJCWZvZC0+YWJvcnRlZCA9IHRy
dWU7Cj4gIAkJCQlzcGluX3VubG9jaygmZm9kLT5mbG9jayk7Cj4gIAkJCQl0Z3Rwb3J0LT5vcHMt
PmZjcF9hYm9ydCgKPiAgCQkJCQkmdGd0cG9ydC0+ZmNfdGFyZ2V0X3BvcnQsIGZvZC0+ZmNwcmVx
KTsKPiAtCQkJfQo+ICsJCQl9IGVsc2UKPiArCQkJCXNwaW5fdW5sb2NrKCZmb2QtPmZsb2NrKTsK
PiAgCQl9Cj4gIAl9Cj4gIAond3JpdGVkYXRhYWN0aXZlJyBpcyBub3cgdW51c2VkLCBhbmQgc2hv
dWxkIGJlIHJlbW92ZWQuCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJ
CSAgICAgICAgICAgS2VybmVsIFN0b3JhZ2UgQXJjaGl0ZWN0CmhhcmVAc3VzZS5kZQkJCSAgICAg
ICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdl
cm1hbnkgR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkhSQiAzNjgwOSAoQUcg
TsO8cm5iZXJnKSwgR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbnZtZQo=
