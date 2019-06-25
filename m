Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B41CC55A3F
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 23:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QoqfX/gE5gYXiVihvFRtsfyQ7lPFQAKXSZ0vXbUHCSo=; b=brvbRHyw766Mel6affzdSLXma
	3OZFYplnh/RuVW9haCQdNf4BEHHGHGKARc3/Uc6JfA8aIT3wYxFTw9hgtchB33vUjy0MusA6B9pzD
	mgogREWC9kVNDQfzOKypQUGvlvYzhOtz5dum0581vBrubKv5Sw57Ac3xxk9Eqr0BboeZHfEgZs/pl
	piSjLXY/EXbrX7Y/eOtJK2M3fkkuQMw2EFR9o9d/qxNLPqTKbrco6SIKuz1fpiPnSbZ3bIe8papVC
	cA2uIpy1ICGtaWQ+RYzNqsDFyWGXqr94tnm53khXz0gTyHyWtKopxbk+rYE0vRWsL0yuGY4fwNYs7
	DrC/psrgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftLI-0000c2-Bk; Tue, 25 Jun 2019 21:51:08 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftLA-0000bh-Jr
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 21:51:02 +0000
Received: by mail-ot1-f65.google.com with SMTP id r6so427859oti.3
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 14:51:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mIeY2KDLA/5Et0+PX1Jb0hLSEQFy4ZJWZUchZ9ZbeQQ=;
 b=MVygENL8RnaNW9xr93DvELj0YkP1fOD6qIOoP+aoRWXksZPpc0x1hX2VpHel1wJRq/
 r14NAcMwFh73wxN0CEg+u+eMQNHTsxNcWDjFRDN0TWbeDK/0XC/Rd+SCxcpsyi2Iwjq6
 420MIKi0F3fUC4qpgwYsHjc7e8jbk83bl0viVFC5TMMG3/7EEuWHe+Kohi9StQYRUQxP
 owGExWHPrm64HIPWGBFk3wUnfaU/mEaVPqbpjZTSwwIjTxPS/PmCTKlSZ444VmzN/63o
 exVbfCWb4YP43WHAPQJuQFWgFueOFDpo+ES2oIoFhOZYz7qVJtn4+Ili7UXy7PWkgcyZ
 I+Dg==
X-Gm-Message-State: APjAAAWP85pQ8xb8EIPVxoxqWT5x3Lp6aXfqHGayriwoXPNGsBHBGBQJ
 Ju5T45UoNb7cEzRriopVKZZ9OI8A
X-Google-Smtp-Source: APXvYqyuLMIHCxzzkFaaFBsG63KcyemnZDSwqG3thBviqidfGnXVDqwSl5s7kKFz1rNmhgmrPoHnow==
X-Received: by 2002:a9d:7697:: with SMTP id j23mr513780otl.128.1561499459128; 
 Tue, 25 Jun 2019 14:50:59 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id i63sm3003670oih.18.2019.06.25.14.50.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 14:50:58 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Hannes Reinecke <hare@suse.de>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
 <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
 <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
 <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
 <68599577-450a-ade1-451c-f310e5094317@grimberg.me>
 <66f3dd84-77cd-fc45-025c-4082cf3df7ec@suse.de>
 <2a6168f3-37f6-1acf-2e89-48a3b9cac8e1@grimberg.me>
 <ff13e243-da8f-f04c-d31b-f7c46d3a4375@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <960997d6-9ce3-5730-00e6-5b2639502eaa@grimberg.me>
Date: Tue, 25 Jun 2019 14:50:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <ff13e243-da8f-f04c-d31b-f7c46d3a4375@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_145100_657052_218D03EE 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+Pj4+PiBUaGF0J3Mgd2hhdCBJIHRob3VnaHQgaW5pdGlhbGx5LCB0b28sIGJ1dCBpdCB0dXJu
ZWQgb3V0IHRvIGJlIG5vdAo+Pj4+Pj4gc3VmZmljaWVudC4KPj4+Pj4KPj4+Pj4gTm90IHN1ZmZp
Y2llbnQgYmVjYXVzZSBpdCBoYW5ncz8gb3IgcGFuaWNzPwo+Pj4+Pgo+Pj4gSXQgaGFuZ3MsIGFu
ZCB3ZSdyZSBzZWVpbmcgYSB3YXJuaW5nOgo+Pj4KPj4+IGtlcm5lbDogWzY3MDg4LjM0NDAzNF0g
V0FSTklORzogQ1BVOiA0IFBJRDogMjUwMjAgYXQKPj4+IC4uL2xpYi9wZXJjcHUtcmVmY291bnQu
YzozMzQgcGVyY3B1X3JlZl9raWxsX2FuZF9jb25maXJtKzB4N2EvMHhhMAo+Pj4gWyAuLiBdCj4+
PiBrZXJuZWw6IFs2NzA4OC4zNDQxMDZdIENhbGwgVHJhY2U6Cj4+PiBrZXJuZWw6IFs2NzA4OC4z
NDQxMTJdwqAgYmxrX2ZyZWV6ZV9xdWV1ZV9zdGFydCsweDJhLzB4NDAKPj4+IGtlcm5lbDogWzY3
MDg4LjM0NDExNF3CoCBibGtfZnJlZXplX3F1ZXVlKzB4ZS8weDQwCj4+PiBrZXJuZWw6IFs2NzA4
OC4zNDQxMThdwqAgbnZtZV91cGRhdGVfZGlza19pbmZvKzB4MzYvMHgyNjAgW252bWVfY29yZV0K
Pj4+IGtlcm5lbDogWzY3MDg4LjM0NDEyMl3CoCBfX252bWVfcmV2YWxpZGF0ZV9kaXNrKzB4Y2Ev
MHhmMCBbbnZtZV9jb3JlXQo+Pj4ga2VybmVsOiBbNjcwODguMzQ0MTI1XcKgIG52bWVfcmV2YWxp
ZGF0ZV9kaXNrKzB4YTYvMHgxMjAgW252bWVfY29yZV0KPj4+IGtlcm5lbDogWzY3MDg4LjM0NDEy
N13CoCA/IGJsa19tcV9nZXRfdGFnKzB4YTMvMHgyMjAKPj4+IGtlcm5lbDogWzY3MDg4LjM0NDEz
MF3CoCByZXZhbGlkYXRlX2Rpc2srMHgyMy8weGMwCj4+PiBrZXJuZWw6IFs2NzA4OC4zNDQxMzNd
wqAgbnZtZV92YWxpZGF0ZV9ucysweDQzLzB4ODMwIFtudm1lX2NvcmVdCj4+PiBrZXJuZWw6IFs2
NzA4OC4zNDQxMzddwqAgPyB3YWtlX3VwX3ErMHg3MC8weDcwCj4+PiBrZXJuZWw6IFs2NzA4OC4z
NDQxMzldwqAgPyBibGtfbXFfZnJlZV9yZXF1ZXN0KzB4MTJhLzB4MTYwCj4+PiBrZXJuZWw6IFs2
NzA4OC4zNDQxNDJdwqAgPyBfX252bWVfc3VibWl0X3N5bmNfY21kKzB4NzMvMHhlMCBbbnZtZV9j
b3JlXQo+Pj4ga2VybmVsOiBbNjcwODguMzQ0MTQ1XcKgIG52bWVfc2Nhbl93b3JrKzB4MmIzLzB4
MzUwIFtudm1lX2NvcmVdCj4+PiBrZXJuZWw6IFs2NzA4OC4zNDQxNDldwqAgcHJvY2Vzc19vbmVf
d29yaysweDFkYS8weDQwMAo+Pj4KPj4+ICDCoEZyb20gd2hpY2ggSSd2ZSBpbmZlcnJlZCB0aGF0
IHdlJ3JlIHN0aWxsIHJ1bm5pbmcgYSBzY2FuIGluIHBhcmFsbGVsIHRvCj4+PiByZXNldCwgYW5k
IHRoYXQgdGhlIHNjYW4gdGhyZWFkIGlzIGNhbGxpbmcgJ2Jsa19mcmVlemVfcXVldWUoKScgb24g
YQo+Pj4gcXVldWUgd2hpY2ggaXMgYWxyZWFkeSB0b3JuIGRvd24uCj4+Cj4+Cj4+IFdoZXJlIGlz
IHRoZSBzY2FuIHRyaWdnZXJlZCBmcm9tPyB0aGVyZSBpcyBubyBzY2FuIGNhbGwgZnJvbSB0aGUg
cmVzZXQKPj4gcGF0aC4KPj4KPiBJdCdzIHRyaWdnZXJlZCBmcm9tIEFFTiwgYmVpbmcgcmVjZWl2
ZWQgYXJvdW5kIHRoZSBzYW1lIHRpbWUgd2hlbiByZXNldAo+IHRyaWdnZXJzLgo+IFRoZXJlJ3Mg
YWN0dWFsbHkgYSBjaGFuZ2UgdGhhdCB0aGUgQUVOIGhhbmRsaW5nIGl0c2VsZiB0cmlnZ2VyZWQg
dGhlCj4gcmVzZXQsIGJ1dCBJIGhhdmVuJ3QgYmUgYWJsZSB0byBkZWNpcGhlciB0aGF0IGZyb20g
dGhlIGNyYXNoIGR1bXAuCj4gCj4+IElzIHRoZXJlIGEgbmFtZXNwYWNlIHJlbW92YWwgb3Igc29t
ZXRoaW5nIGVsc2UgdGhhdCB0cmlnZ2VycyBBRU4KPj4gdG8gbWFrZSB0aGlzIGhhcHBlbj8KPj4K
Pj4gV2hhdCBleGFjdGx5IGlzIHRoZSBzY2VuYXJpbz8KPiAKPiBUaGUgc2NlbmFyaW8gaXMgbXVs
dGlwbGUgc3RvcmFnZSBmYWlsb3ZlciBvbiBOZXRBcHAgT25UQVAgd2hpbGUgSS9PIGlzCj4gcnVu
bmluZy4KCkhhbm5lcywKCkknbSBzdGlsbCBub3QgY29udmluY2VkIHRoYXQgdGhlIHRyYW5zcG9y
dHMgbmVlZCB0byBmbHVzaCB0aGUgc2NhbiB3b3JrCm9uIHJlc2V0cy4KCkRvZXMgdGhlIGJlbG93
IGhlbHAgYXMgYW4gYWx0ZXJuYXRpdmU6Ci0tCmRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9z
dC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKaW5kZXggMDI0ZmIyMTlkZTE3Li4w
NzRiY2IxZTc5N2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYworKysgYi9k
cml2ZXJzL252bWUvaG9zdC9jb3JlLmMKQEAgLTE2NjUsNiArMTY2NSwxMCBAQCBzdGF0aWMgdm9p
ZCBfX252bWVfcmV2YWxpZGF0ZV9kaXNrKHN0cnVjdCBnZW5kaXNrIAoqZGlzaywgc3RydWN0IG52
bWVfaWRfbnMgKmlkKQogIHsKICAgICAgICAgc3RydWN0IG52bWVfbnMgKm5zID0gZGlzay0+cHJp
dmF0ZV9kYXRhOwoKKyAgICAgICAvKiBpZiBucyBpcyByZW1vdmluZyB3ZSBjYW5ub3QgbWFuZ2xl
IHdpdGggdGhlIHJlcXVlc3QgcXVldWUgKi8KKyAgICAgICBpZiAodGVzdF9iaXQoTlZNRV9OU19S
RU1PVklORywgJm5zLT5mbGFncykpCisgICAgICAgICAgICAgICByZXR1cm47CisKICAgICAgICAg
LyoKICAgICAgICAgICogSWYgaWRlbnRpZnkgbmFtZXNwYWNlIGZhaWxlZCwgdXNlIGRlZmF1bHQg
NTEyIGJ5dGUgYmxvY2sgc2l6ZSBzbwogICAgICAgICAgKiBibG9jayBsYXllciBjYW4gdXNlIGJl
Zm9yZSBmYWlsaW5nIHJlYWQvd3JpdGUgZm9yIDAgY2FwYWNpdHkuCi0tCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlz
dApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
