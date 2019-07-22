Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F055D70847
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 20:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T92wmxPjOJig/567Jwn5vB3pXeA5QEa18A9Xkl6mdXI=; b=UYlj9PPLWb7OCFsgCsM9GcnIt
	0hRXgqK3T5AGsGlvF80znO5+lFSWsBiq0/MutnFCbNRFnFDR0eyE7cVZcRRu1MxTFCGQI79dxeqNk
	G2cm4r76g/Ds/BT5xGXb12ihGfipk8YTcmz6DNE5onhKqtXDe7o5vcyv3t7xXRlS92cLj8/dbbY5w
	OqPn8JqoDvuL/G3A59JFaTFESMyycpX3id27yXCn7l/8S8vf4sw8XYEV/xUjuENRpW++A3avo/HH3
	hSssnZQRykfUwb9TaXR07euoy3Q0HQ3shrGybJfxw7FnMfrK4uvKIKYWc9BARIxy3u4IOJBTHLEON
	Mq7cAJ2Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpctd-0006cq-Hk; Mon, 22 Jul 2019 18:18:49 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpctR-0006c7-SB
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 18:18:39 +0000
Received: by mail-oi1-f195.google.com with SMTP id a127so30276028oii.2
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 11:18:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=R7VEfrngpuMVbqzZkG+ReP0bflkmK9QEbC1EqxpcPGY=;
 b=qvfNJQluBoAZcLHqhIP9MK0a2KsEiezs/dLrMKyP/kGXYXUgMUAhBhXCRscJ8FcDk3
 WJwQm3YrdNJXirWM5hmyPuGY1rjHyidOQMUds+Tbu2buI3H4cJMHiQbTogJHaYSWg3k7
 /GuGNVInbQT7ftOCdAOLFvdIED/bJQrxfPzl2HUw5c18/XWpne9a2rM08Y+J9WHQQZ4g
 EeUV4+JCX8UK7AORnxKt/f01Vvnetzsb2UbyIzkygsrlmNJ8IEkSV3flr8BwNzUwnzaE
 kREXMqAwVZRB0In72yvW2GvZl0+22NeUSUKAapPkD9E6j64ebyQuESkob/vKqwaFu+4Z
 pRwA==
X-Gm-Message-State: APjAAAUF6VH2KAASYACqBT1iO1t8MLHnq03fmbR83Tf2oVsgRL/VdemA
 kGSDtIZtrvRBhLaLSdVVuz8=
X-Google-Smtp-Source: APXvYqwkDvt8owuk0npAiscQJDiIp7VvfuoLQsuRMFu5HzNwrazFZfgc9yzVY6kw6OCBQnWxmQKO4g==
X-Received: by 2002:aca:ccd2:: with SMTP id
 c201mr31310656oig.119.1563819516726; 
 Mon, 22 Jul 2019 11:18:36 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e205sm14327512oia.23.2019.07.22.11.18.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 11:18:36 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: fix probe and remove race
To: Keith Busch <keith.busch@gmail.com>
References: <20190719194256.23618-1-sagi@grimberg.me>
 <CAOSXXT7z4+pScQ+Kf0VauTCvPdRDEXX=H7jQN-Dkk=M2hkTFsA@mail.gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5426a9fd-ef5b-0ee5-8f65-1f49d5fb2290@grimberg.me>
Date: Mon, 22 Jul 2019 11:18:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAOSXXT7z4+pScQ+Kf0VauTCvPdRDEXX=H7jQN-Dkk=M2hkTFsA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_111837_912057_5A73AD5E 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Li Zhong <lizhongfs@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA3LzIwLzE5IDc6NDYgUE0sIEtlaXRoIEJ1c2NoIHdyb3RlOgo+IE9uIEZyaSwgSnVsIDE5
LCAyMDE5IGF0IDE6NDMgUE0gU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZSAKPiA8bWFp
bHRvOnNhZ2lAZ3JpbWJlcmcubWU+PiB3cm90ZToKPiAgPiBJdCBpcyBwb3NzaWJsZSB0aGF0IG52
bWVfcmVtb3ZlKCkgYmVpbmcgcmFuIGNvbmN1cnJlbnRseSB3aXRoCj4gID4gbnZtZV9yZXNldF93
b3JrKCksIHdpdGggZm9sbG93aW5nIHNlcXVlbmNlOgo+ICA+Cj4gID4gbnZtZV9wcm9iZSgpCj4g
ID4gwqAgbnZtZV9pbml0X2N0cmwoKQo+ICA+IMKgIMKgIC8vc2V0IHRvIE5FVwo+ICA+IMKgIG52
bWVfYXN5bmNfcHJvYmUoKQo+ICA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIG52bWVfcmVtb3Zl
KCkKPiAgPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAvL2NhbiBub3QgCj4gY2hhbmdlIHRv
Cj4gID4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgLy9ERUxFVElORyAKPiBmcm9tIE5FVwo+
ICA+IMKgIMKgIG52bWVfcmVzZXRfY3RybF9zeW5jKCkKPiAgPiDCoCDCoCDCoCDCoCBudm1lX3Jl
c2V0X2N0cmwoKQo+ICA+IMKgIMKgIMKgIMKgIMKgIC8vY2hhbmdlIGZyb20gTkVXCj4gID4gwqAg
wqAgwqAgwqAgwqAgLy90byBSRVNFVFRJTkcKPiAgPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGZsdXNoIHJlc2V0X3dvcmsoKQo+ICA+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgLy9ub3Qg
eWV0IHF1ZXVlZAo+ICA+IMKgIMKgIMKgIMKgIMKgIHF1ZXVlIHJlc2V0X3dvcmsKPiAgPiDCoCDC
oCDCoCDCoCDCoCDCoCBudm1lX3Jlc2V0X3dvcmsoKQo+ICA+IMKgIMKgIMKgIMKgIMKgIMKgIMKg
IC4uLi4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgLi4uLgo+ICA+Cj4gID4gV2l0aCB0aGUgYWJvdmUgcnVubmluZyBjb25jdXJyZW50bHksIHRo
ZW4gaXQgaXMgcG9zc2libGUgdG8gY2F1c2Ugc29tZQo+ICA+IHN0cmFuZ2UgaXNzdWVzLCBsaWtl
IGtlcm5lbCBjcmFzaCB3aXRoIGlsbGVnYWwgbWVtb3J5IGFjY2Vzc2luZwo+ICA+IG9yIHNvbWV0
aGluZyBsaWtlOgo+ICA+IGtlcm5lbDogcGNpIDAwMDA6MDA6MWYuMDogY2FuJ3QgZW5hYmxlIGRl
dmljZTogQkFSIDAKPiAgPiDCoFttZW0gMHhjMDAwMDAwMC0weGMwMDAzZmZmXSBub3QgY2xhaW1l
ZAo+ICA+Cj4gID4gRml4IHRoaXMgYnkgd2FpdGluZyBmb3IgdGhlIGFzeW5jIHByb2JlIHRvIGNv
bXBsZXRlIGJlZm9yZSBhbGxvd2luZwo+ICA+IHJlbW92ZSB0byBtYWtlIGZvcndhcmQgcHJvZ3Jl
c3MuCj4gCj4gSGkgU2FnaSwKPiAKPiBUaGUgb25seSBwcm9ibGVtIGlzIHRoZSBhc3luYyBwcm9i
ZSBtYXkgYmUgc3R1Y2sgaWYgaXRzIGRldmljZSB3YXMgaG90IAo+IHJlbW92ZWQsIGFuZCBuZWVk
cyBudm1lX3JlbW92ZSB0byBtYWtlIGl0IHVuc3R1Y2sgaW1tZWRpYXRlbHkuIE90aGVyd2lzZSAK
PiBpdCB3YWl0cyBmb3IgdGltZW91dCB3b3JrIHRvIGZpeCBpdCB1cCwgd2hpY2ggY2FuIGJlIGEg
dmVyeSBsb25nIHRpbWUuCgpHaXZlbiB0aGF0IHRoaXMgaXMgYW4gZXJyb3IgY2FzZSwgSSBkb24n
dCB0aGluayB0aGF0IHRoZSB0aW1lb3V0IGlzIGEKYmlnIGlzc3VlLgoKPiBXZSBvbmx5IHJlYWxs
eSBuZWVkIHRvIHdhaXQgZm9yIHRoZSBzdGF0ZSB0byBub3QgYmUgbmV3PyBBbmQgaWYgc28sIGlz
IAo+IHRoZSBhdHRhY2hlZCBvaz8KCkkgZG9uJ3QgaGF2ZSBhIGZpcm0gcmVwcm9kdWNlciwgSSB3
YXMgaG9waW5nIHRoYXQgTGkgd291bGQgaGF2ZSBzaW5jZQpoZSByZXBvcnRlZCB0aGUgcHJvYmxl
bS4KClRoaXMgd291bGQgd29yayBiZWNhdXNlIG52bWVfZGV2X2Rpc2FibGUgaXMgc2VyaWFsaXpl
ZCB3aXRoIHRoZQpzaHV0ZG93bl9sb2NrLi4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
