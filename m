Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4036193894
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Mar 2020 07:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F5My+uuY/FfIqa+hbwaxggsvwBDIi9mM0+ZMMiVW/xU=; b=IrYYVUpRyVKpt7yre/F8e+tIF
	HZkx3LabzH+sQwAcaifUW1UCfKuYrEQX0Wtsf1FA07mc41i5R+9rBTpMN2+VOFOFf4fpAM5+IWqWM
	Kh33ZD2bNT+JyiPhXpKKjwauETKDiETwZey4UP1UGxME0zRvlpL8iStW7zb108hZ5RElH2gcEXovb
	mgynYRPVDmu4H3D2zG5cqxspleLxn/lAhceituz/B4FaAsFr6zlNGM3yAa0zAny4W46FMFd8oYosz
	v3q9nbvF//jIxBgQHNxwlht+3cdRT9jQrd8q31R59ID+va/5z156Oj46gxc7zb3N5+/TXz9ppFSlN
	RPNTsfT/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHM0z-0000DT-IR; Thu, 26 Mar 2020 06:29:17 +0000
Received: from mail-pf1-f169.google.com ([209.85.210.169])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHM0t-0000D1-VE
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 06:29:13 +0000
Received: by mail-pf1-f169.google.com with SMTP id f206so2272650pfa.10
 for <linux-nvme@lists.infradead.org>; Wed, 25 Mar 2020 23:29:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+x3aLOvO8LSwyYdljf9MvvhRLaLas6TcsY7Cbg7tdcE=;
 b=kv+gvJHIT904spLbVWNWs7xovQp3yIbGpraxUrZbQcb2w6QBwQVXQHvQ4zIBFHcat5
 wvr2WA0eiJZ5Jz2AGOJC4jY6azTwj4j0s3Z3l2cnaT8FtYYJPuUBdWtngEVVSotGPXzG
 8m/KOnRN4DgTFHQhnU44eaGAQdnHBjJCT/I99MXvlhNzLz7s96lvqeTq5x1anJutqYPl
 612xYfKKxqAZht2ln9DOwSiDGBkqBNTOG16f6KpLPlQ+VQwRM8ibMubkA4yjuYVdUjlz
 Jq4yFwhtnbxNcfJeme+PT7tphGEQuduzfmeSRpj/A6zSu6Ij/yySE1tPRkiUERAJBuzK
 Hatg==
X-Gm-Message-State: ANhLgQ1UtQflz2W5CTGomj7fx7YWow0775uy0aHqf4j6+ffPvZ1GAXzv
 nvK2pHkNhEdNS+UN4O3c81I=
X-Google-Smtp-Source: ADFU+vv8wvHooqEzEr35Ghfn29fxwpHw0IXeQwgdvNa6LQtn5mdCdVbu4f9GW4YOzwfhiToh3ffxqQ==
X-Received: by 2002:aa7:9888:: with SMTP id r8mr7383912pfl.293.1585204150676; 
 Wed, 25 Mar 2020 23:29:10 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:2c87:e6f8:1c11:1d73?
 ([2601:647:4802:9070:2c87:e6f8:1c11:1d73])
 by smtp.gmail.com with ESMTPSA id v25sm823410pgl.55.2020.03.25.23.29.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Mar 2020 23:29:10 -0700 (PDT)
Subject: Re: nvme deadlock with ANA
From: Sagi Grimberg <sagi@grimberg.me>
To: Christoph Hellwig <hch@lst.de>, Keith Busch <kbusch@kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Anton Eidelman <anton@lightbitslabs.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <james.smart@broadcom.com>
References: <5e38c566-3f26-288d-1004-161d1084b468@grimberg.me>
Message-ID: <d2d05ef0-55fd-12ee-978d-f53086dd4fd9@grimberg.me>
Date: Wed, 25 Mar 2020 23:29:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5e38c566-3f26-288d-1004-161d1084b468@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_232912_009782_FFADE40A 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.169 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

QWRkaW5nIEphbWVzIGFzIHRoaXMgY2FuIGJlIGFsc28gcmVsZXZhbnQgZm9yIEZDIChvciBtYXli
ZSBpdAppc24ndCkuLi4KCk9uIDMvMjUvMjAgMTE6MjMgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6
Cj4gSGV5LAo+IAo+IEkgd2FudCB0byBjb25zdWx0IHdpdGggeW91IGd1eXMgb24gYSBkZWFkbG9j
ayBjb25kaXRpb24gSSdtIGFibGUgdG8KPiBoaXQgd2l0aCBhIHRlc3QgdGhhdCBpbmNvcnBvcmF0
ZSBjb250cm9sbGVyIHJlY29ubmVjdCwgYW5hIHVwZGF0ZXMKPiBhbmQgbGl2ZSBJL08gd2l0aCB0
aW1lb3V0cy4KPiAKPiBUaGlzIGlzIHRydWUgZm9yIE5WTWUvVENQLCBidXQgY2FuIGFsc28gaGFw
cGVuIGluIHJkbWEgb3IgcGNpIGRyaXZlcnMgYXMKPiB3ZWxsLgo+IAo+IFRoZSBkZWFkbG9jayBj
b21iaW5lcyA0IGZsb3dzIGluIHBhcmFsbGVsOgo+IC0gbnMgc2Nhbm5pbmcgKHRyaWdnZXJlZCBm
cm9tIHJlY29ubmVjdCkKPiAtIHJlcXVlc3QgdGltZW91dAo+IC0gQU5BIHVwZGF0ZSAodHJpZ2dl
cmVkIGZyb20gcmVjb25uZWN0KQo+IC0gRlMgSS9PIGNvbWluZyBpbnRvIHRoZSBtcGF0aCBkZXZp
Y2UKPiAKPiAoMSkgbnMgc2Nhbm5pbmcgdHJpZ2dlcnMgZGlzayByZXZhbGlkYXRpb24gLT4gdXBk
YXRlIGRpc2sgaW5mbyAtPgo+ICDCoMKgwqAgZnJlZXplIHF1ZXVlIC0+IGJ1dCBibG9ja2VkLCB3
aHk/Cj4gCj4gKDIpIHRpbWVvdXQgaGFuZGxlciByZWZlcmVuY2UgdGhlIGdfdXNhZ2VfY291bnRl
ciAtID4gYnV0IGJsb2NrcyBpbgo+ICDCoMKgwqAgdGhlIHRpbWVvdXQgaGFuZGxlciwgd2h5Pwo+
IAo+ICgzKSB0aGUgdGltZW91dCBoYW5kbGVyIChpbmRpcmVjdGx5KSBjYWxscyBudm1lX3N0b3Bf
cXVldWUoKSAtPiB3aGljaAo+ICDCoMKgwqAgdGFrZXMgdGhlIG5hbWVzcGFjZXNfcndzZW0gLSA+
IGJ1dCBibG9ja3MsIHdoeT8KPiAKPiAoNCkgQU5BIHVwZGF0ZSB0YWtlcyB0aGUgbmFtZXNwYWNl
c19yd3NlbSAtPiBjYWxscyBudm1lX21wYXRoX3NldF9saXZlKCkKPiAgwqDCoMKgIC0+IHdoaWNo
IHN5bmNocm9uaXplIHRoZSBuc19oZWFkIHNyY3UgKHNlZSBjb21taXQgNTA0ZGIwODdhYWNjKSAt
Pgo+ICDCoMKgwqAgYnV0IGl0IGJsb2Nrcywgd2h5Pwo+IAo+ICg1KSBGUyBJL08gY2FtZSBpbnRv
IG52bWVfbXBhdGhfbWFrZV9yZXF1ZXN0IC0+IHRvb2sgc3JjdV9yZWFkX2xvY2sgLT4KPiAgwqDC
oMKgIGRpcmVjdF9tYWtlX3JlcXVlc3QgPiBibGtfcXVldWVfZW50ZXIgLT4gYnV0IGJsb2NrZWQs
IHdoeT8KPiAKPiA9PT4gYmVjYXVzZSBvZiAoMSksIHRoZSByZXF1ZXN0IHF1ZXVlIGlzIHVuZGVy
IGZyZWV6ZSAtPiBkZWFkbG9jay4KPiAKPiBOb3cgYXMgSSBzYWlkLCB0aGlzIHJlcHJvZHVjZWQg
d2l0aCBudm1lLXRjcCwgcmRtYSBkb2VzIHByZXR0eSBtdWNoIHRoZQo+IHNhbWUgdGhpbmcsIGFu
ZCBpZiB3ZSBsb29rIGF0IHBjaSwgaXQgYWxzbyBjYWxscyBudm1lX2Rldl9kaXNhYmxlIHdoaWNo
Cj4gYWxzbyBjYWxscyBudm1lX3N0b3BfcXVldWVzLCBhbmQgd2lsbCBhbHNvIGJsb2NrIGluIG52
bWVfc2V0X2xpdmUgKG5vdAo+IHNwZWNpZmljIHRvIEFOQSkuCj4gCj4gSSdtIHRyeWluZyB0byB0
aGluayBhYm91dCB3aGF0IGlzIHRoZSBwcm9wZXIgc29sdXRpb24gZm9yIHRoYXQsIHNvIEkKPiB0
aG91Z2h0IEknZCBzZW5kIGl0IGZvciBzb21lIGJyYWluc3Rvcm1pbmcuLi4KPiAKPiBBbnkgdGhv
dWdodHMgb24gdGhpcz8KPiAKPiAKPiBTZWUgc29tZSB0cmFjZXMgZm9yIHZpc3VhbGl6YXRpb246
Cj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gLSBuc19zY2FubmluZwo+IC0t
IAo+IENhbGwgVHJhY2U6Cj4gIMKgX19zY2hlZHVsZSsweDJiOS8weDZjMAo+ICDCoHNjaGVkdWxl
KzB4NDIvMHhiMAo+ICDCoGJsa19tcV9mcmVlemVfcXVldWVfd2FpdCsweDRiLzB4YjAKPiAgwqA/
IHdhaXRfd29rZW4rMHg4MC8weDgwCj4gIMKgYmxrX21xX2ZyZWV6ZV9xdWV1ZSsweDFiLzB4MjAK
PiAgwqBudm1lX3VwZGF0ZV9kaXNrX2luZm8rMHg2Mi8weDNhMCBbbnZtZV9jb3JlXQo+ICDCoF9f
bnZtZV9yZXZhbGlkYXRlX2Rpc2srMHhiOC8weDExMCBbbnZtZV9jb3JlXQo+ICDCoG52bWVfcmV2
YWxpZGF0ZV9kaXNrKzB4YTIvMHgxMTAgW252bWVfY29yZV0KPiAgwqByZXZhbGlkYXRlX2Rpc2sr
MHgyYi8weGEwCj4gIMKgbnZtZV92YWxpZGF0ZV9ucysweDQ5LzB4OTAwIFtudm1lX2NvcmVdCj4g
IMKgPyBibGtfbXFfZnJlZV9yZXF1ZXN0KzB4ZDIvMHgxMDAKPiAgwqA/IF9fbnZtZV9zdWJtaXRf
c3luY19jbWQrMHhiZS8weDFlMCBbbnZtZV9jb3JlXQo+ICDCoD8gX19zd2l0Y2hfdG9fYXNtKzB4
NDAvMHg3MAo+ICDCoD8gX2NvbmRfcmVzY2hlZCsweDE5LzB4MzAKPiAgwqA/IGRvd25fcmVhZCsw
eDEzLzB4YTAKPiAgwqBudm1lX3NjYW5fd29yaysweDI0Zi8weDM4MCBbbnZtZV9jb3JlXQo+ICDC
oHByb2Nlc3Nfb25lX3dvcmsrMHgxZGIvMHgzODAKPiAgwqB3b3JrZXJfdGhyZWFkKzB4NGQvMHg0
MDAKPiAtLSAKPiAKPiAtIHJlcXVlc3QgdGltZW91dAo+IC0tIAo+IENhbGwgVHJhY2U6Cj4gIMKg
X19zY2hlZHVsZSsweDJiOS8weDZjMAo+ICDCoHNjaGVkdWxlKzB4NDIvMHhiMAo+ICDCoHNjaGVk
dWxlX3RpbWVvdXQrMHgyMDMvMHgyZjAKPiAgwqA/IHR0d3VfZG9fYWN0aXZhdGUrMHg1Yi8weDcw
Cj4gIMKgd2FpdF9mb3JfY29tcGxldGlvbisweGIxLzB4MTIwCj4gIMKgPyB3YWtlX3VwX3ErMHg3
MC8weDcwCj4gIMKgX19mbHVzaF93b3JrKzB4MTIzLzB4MWQwCj4gIMKgPyB3b3JrZXJfZGV0YWNo
X2Zyb21fcG9vbCsweGIwLzB4YjAKPiAgwqBmbHVzaF93b3JrKzB4MTAvMHgyMAo+ICDCoG52bWVf
dGNwX3RpbWVvdXQrMHg2OS8weGIwIFtudm1lX3RjcF0KPiAgwqBibGtfbXFfY2hlY2tfZXhwaXJl
ZCsweDEzZC8weDE2MAo+ICDCoGJ0X2l0ZXIrMHg1Mi8weDYwCj4gIMKgYmxrX21xX3F1ZXVlX3Rh
Z19idXN5X2l0ZXIrMHgxYTQvMHgyZjAKPiAgwqA/IGJsa19wb2xsKzB4MzUwLzB4MzUwCj4gIMKg
PyBibGtfcG9sbCsweDM1MC8weDM1MAo+ICDCoD8gc3lzY2FsbF9yZXR1cm5fdmlhX3N5c3JldCsw
eGYvMHg3Zgo+ICDCoGJsa19tcV90aW1lb3V0X3dvcmsrMHg1OS8weDExMAo+ICDCoHByb2Nlc3Nf
b25lX3dvcmsrMHgxZGIvMHgzODAKPiAgwqB3b3JrZXJfdGhyZWFkKzB4NGQvMHg0MDAKPiAgwqBr
dGhyZWFkKzB4MTA0LzB4MTQwCj4gIMKgPyBwcm9jZXNzX29uZV93b3JrKzB4MzgwLzB4MzgwCj4g
IMKgPyBrdGhyZWFkX3BhcmsrMHg4MC8weDgwCj4gIMKgcmV0X2Zyb21fZm9yaysweDM1LzB4NDAK
PiAKPiAuLi4KPiAKPiBDYWxsIFRyYWNlOgo+ICDCoF9fc2NoZWR1bGUrMHgyYjkvMHg2YzAKPiAg
wqBzY2hlZHVsZSsweDQyLzB4YjAKPiAgwqByd3NlbV9kb3duX3JlYWRfc2xvd3BhdGgrMHgxNmMv
MHg0YTAKPiAgwqBkb3duX3JlYWQrMHg4NS8weGEwCj4gIMKgbnZtZV9zdG9wX3F1ZXVlcysweDIx
LzB4NTAgW252bWVfY29yZV0KPiAgwqBudm1lX3RjcF90ZWFyZG93bl9pb19xdWV1ZXMucGFydC4y
MSsweDE5LzB4ODAgW252bWVfdGNwXQo+ICDCoG52bWVfdGNwX2Vycm9yX3JlY292ZXJ5X3dvcmsr
MHgzMy8weDgwIFtudm1lX3RjcF0KPiAgwqBwcm9jZXNzX29uZV93b3JrKzB4MWRiLzB4MzgwCj4g
IMKgd29ya2VyX3RocmVhZCsweDRkLzB4NDAwCj4gIMKga3RocmVhZCsweDEwNC8weDE0MAo+ICDC
oD8gcHJvY2Vzc19vbmVfd29yaysweDM4MC8weDM4MAo+ICDCoD8ga3RocmVhZF9wYXJrKzB4ODAv
MHg4MAo+ICDCoHJldF9mcm9tX2ZvcmsrMHgzNS8weDQwCj4gLS0gCj4gCj4gLSBBTkEgdXBkYXRl
Cj4gLS0gCj4gQ2FsbCBUcmFjZToKPiAgwqBfX3NjaGVkdWxlKzB4MmI5LzB4NmMwCj4gIMKgc2No
ZWR1bGUrMHg0Mi8weGIwCj4gIMKgc2NoZWR1bGVfdGltZW91dCsweDIwMy8weDJmMAo+ICDCoD8g
X19xdWV1ZV93b3JrKzB4MTE3LzB4M2YwCj4gIMKgd2FpdF9mb3JfY29tcGxldGlvbisweGIxLzB4
MTIwCj4gIMKgPyB3YWtlX3VwX3ErMHg3MC8weDcwCj4gIMKgX19zeW5jaHJvbml6ZV9zcmN1LnBh
cnQuMCsweDgxLzB4YjAKPiAgwqA/IF9fYnBmX3RyYWNlX3JjdV91dGlsaXphdGlvbisweDEwLzB4
MTAKPiAgwqA/IGt0aW1lX2dldF9tb25vX2Zhc3RfbnMrMHg0ZS8weGEwCj4gIMKgc3luY2hyb25p
emVfc3JjdV9leHBlZGl0ZWQrMHgyOC8weDMwCj4gIMKgc3luY2hyb25pemVfc3JjdSsweDU3LzB4
ZTAKPiAgwqBudm1lX21wYXRoX3NldF9saXZlKzB4NGYvMHgxNDAgW252bWVfY29yZV0KPiAgwqBu
dm1lX3VwZGF0ZV9uc19hbmFfc3RhdGUrMHg1Yy8weDYwIFtudm1lX2NvcmVdCj4gIMKgbnZtZV91
cGRhdGVfYW5hX3N0YXRlKzB4Y2EvMHhlMCBbbnZtZV9jb3JlXQo+ICDCoG52bWVfcGFyc2VfYW5h
X2xvZysweGExLzB4MTgwIFtudm1lX2NvcmVdCj4gIMKgPyBudm1lX2FuYV93b3JrKzB4MjAvMHgy
MCBbbnZtZV9jb3JlXQo+ICDCoG52bWVfcmVhZF9hbmFfbG9nKzB4NzYvMHgxMDAgW252bWVfY29y
ZV0KPiAgwqBudm1lX2FuYV93b3JrKzB4MTUvMHgyMCBbbnZtZV9jb3JlXQo+ICDCoHByb2Nlc3Nf
b25lX3dvcmsrMHgxZGIvMHgzODAKPiAtLSAKPiAKPiBGUyBJL08KPiAtLSAKPiBDYWxsIFRyYWNl
Ogo+ICDCoF9fc2NoZWR1bGUrMHgyYjkvMHg2YzAKPiAgwqBzY2hlZHVsZSsweDQyLzB4YjAKPiAg
wqBibGtfcXVldWVfZW50ZXIrMHgxNjkvMHgyMTAKPiAgwqA/IHdhaXRfd29rZW4rMHg4MC8weDgw
Cj4gIMKgZGlyZWN0X21ha2VfcmVxdWVzdCsweDQ5LzB4ZDAKPiAgwqBudm1lX25zX2hlYWRfbWFr
ZV9yZXF1ZXN0KzB4YmMvMHgzZTAgW252bWVfY29yZV0KPiAgwqA/IGdldF91c2VyX3BhZ2VzX2Zh
c3QrMHhhNS8weDE5MAo+ICDCoGdlbmVyaWNfbWFrZV9yZXF1ZXN0KzB4Y2YvMHgzMjAKPiAgwqBz
dWJtaXRfYmlvKzB4NDIvMHgxNzAKPiAgwqA/IHNldF9wYWdlX2RpcnR5X2xvY2srMHg0MC8weDYw
Cj4gIMKgaW9tYXBfZGlvX3N1Ym1pdF9iaW8uaXNyYS4wKzB4NTUvMHg2MAo+ICDCoGlvbWFwX2Rp
b19iaW9fYWN0b3IrMHgxYzkvMHgzZDAKPiAgwqBpb21hcF9kaW9fYWN0b3IrMHg1OC8weDFjMAo+
ICDCoGlvbWFwX2FwcGx5KzB4ZDUvMHgxNDAKPiAgwqA/IGlvbWFwX2Rpb19iaW9fYWN0b3IrMHgz
ZDAvMHgzZDAKPiAgwqBpb21hcF9kaW9fcncrMHgyYzIvMHg0NDAKPiAgwqA/IGlvbWFwX2Rpb19i
aW9fYWN0b3IrMHgzZDAvMHgzZDAKPiAgwqA/IF9feDY0X3N5c19pb19jYW5jZWwrMHgxNTAvMHgx
NTAKPiAgwqB4ZnNfZmlsZV9kaW9fYWlvX3JlYWQrMHg2Ni8weGYwIFt4ZnNdCj4gIMKgPyB4ZnNf
ZmlsZV9kaW9fYWlvX3JlYWQrMHg2Ni8weGYwIFt4ZnNdCj4gIMKgeGZzX2ZpbGVfcmVhZF9pdGVy
KzB4YmYvMHhlMCBbeGZzXQo+ICDCoGFpb19yZWFkKzB4YzgvMHgxNjAKPiAtLSAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGlu
ZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
