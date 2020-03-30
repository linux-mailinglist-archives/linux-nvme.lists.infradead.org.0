Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCED919771C
	for <lists+linux-nvme@lfdr.de>; Mon, 30 Mar 2020 10:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=isN/9HoLHDsY4tuFVMXaKlDXkTV4/MSv0l9va+Gn+pA=; b=evIKXF3yg4brv36s5Wq7p1zSv
	u8I2KOybIqRaN70NH32hkilFFajVQeijcbl0XTbHlDjDX6sVJnezllkvSifXFZuw2sILGjkzR9/R3
	bwOUIsQeC4ytZBzRxO5aAmFsxapTGfEHG/99ERx0pDG9J6Vn6TA4veSLsk05x0zxVPDd/7L0EU5Jx
	bSokW2EbAMg+K/iWjISAWNyptfjnIpfolbkJPZ19R4Cs5SiCnPhe3ILOj0slqQ+xUrtUWhoem9S2d
	9k7yD6CEuMOm6tHE0Or8T9VKPRHDx4/hRTePqrKpimJgK4LPFPoDNVfDCS6fz4H4Lu0yrnlKqO9o1
	DNT56oqTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIqDb-0004GW-ES; Mon, 30 Mar 2020 08:56:27 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqDW-0004FT-6W
 for linux-nvme@lists.infradead.org; Mon, 30 Mar 2020 08:56:23 +0000
Received: by mail-pl1-f196.google.com with SMTP id w3so6469514plz.5
 for <linux-nvme@lists.infradead.org>; Mon, 30 Mar 2020 01:56:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Wm0bJjSF2oT/C5G6jXzst/HWIQhoAPvWsvnSws8cX5w=;
 b=pppfhAJ26cVsOYeieQ6Zuz9SfuvXoai+2VXP6jTTs4JFhKcD7D+o0UcqoaNRhst6L+
 jhmye4iDD+d928QVAIRsdkJrWFm4FbAsvMolFXxhuekntIIpnrcVMaZcFf1SLGdYvabB
 etfZ+cUp3Mjfxyr2oCluoKpOVNiVMvysZevWoBXbUG9EMg8kXzlF2TMtvDr0tE0NBuvk
 YRmJzxNr0SRSVOdBQBW1zi46sd+eb6XYZINqP4myxGimGTNDNkRbHdGQVUY3aOzCyuGa
 yviO6I1FkQkDD7byNp+oOqO5cgklFd2KAQsDuMZwcvUXJkMRFVeIKU9Bfeecf3hj1qyI
 KElw==
X-Gm-Message-State: ANhLgQ32ZO1QIS3jp13/OfLov/lcCIDZd5B7hFd/vWYOWlYsfIJS1UFp
 r1jRvMTRmuE0MQE7xobwhQM=
X-Google-Smtp-Source: ADFU+vuFxWZmqsC4eEtLmL5gQD9Cf4V2TybrdI7fJ5VXUwvpe2TNsyt7W3l+EbVa5ZAd0FRAv+j4rw==
X-Received: by 2002:a17:90a:2f03:: with SMTP id
 s3mr15125002pjd.120.1585558581085; 
 Mon, 30 Mar 2020 01:56:21 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:b015:431e:549a:54d?
 ([2601:647:4802:9070:b015:431e:549a:54d])
 by smtp.gmail.com with ESMTPSA id h64sm9551813pfg.191.2020.03.30.01.56.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Mar 2020 01:56:20 -0700 (PDT)
Subject: Re: [PATCH] nvmet-rdma: Fix double free of rdma queue
To: Max Gurtovoy <maxg@mellanox.com>, Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
References: <1585477302-4307-1-git-send-email-israelr@mellanox.com>
 <39a9e27b-51fa-6c87-8e5f-17f4f7318bd0@grimberg.me>
 <05c7907c-9c43-2a2b-c760-bff0364892d9@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f356a0d4-2e05-f629-ebab-a55e7e0c369b@grimberg.me>
Date: Mon, 30 Mar 2020 01:56:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <05c7907c-9c43-2a2b-c760-bff0364892d9@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_015622_240454_0579D540 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3RhcmdldC9yZG1hLmMgYi9kcml2ZXJzL252
bWUvdGFyZ2V0L3JkbWEuYwo+Pj4gaW5kZXggMzdkMjYyYS4uNTkyMDllMyAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvbnZtZS90YXJnZXQvcmRtYS5jCj4+PiArKysgYi9kcml2ZXJzL252bWUvdGFy
Z2V0L3JkbWEuYwo+Pj4gQEAgLTEzODAsMTMgKzEzODAsMTQgQEAgc3RhdGljIHZvaWQgCj4+PiBu
dm1ldF9yZG1hX3F1ZXVlX2Nvbm5lY3RfZmFpbChzdHJ1Y3QgcmRtYV9jbV9pZCAqY21faWQsCj4+
PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIFdBUk5fT05fT05DRShxdWV1ZS0+c3RhdGUgIT0gTlZNRVRf
UkRNQV9RX0NPTk5FQ1RJTkcpOwo+Pj4gwqAgK8KgwqDCoCBwcl9lcnIoImZhaWxlZCB0byBjb25u
ZWN0IHF1ZXVlICVkXG4iLCBxdWV1ZS0+aWR4KTsKPj4+ICsKPj4+IMKgwqDCoMKgwqAgbXV0ZXhf
bG9jaygmbnZtZXRfcmRtYV9xdWV1ZV9tdXRleCk7Cj4+PiAtwqDCoMKgIGlmICghbGlzdF9lbXB0
eSgmcXVldWUtPnF1ZXVlX2xpc3QpKQo+Pj4gK8KgwqDCoCBpZiAoIWxpc3RfZW1wdHkoJnF1ZXVl
LT5xdWV1ZV9saXN0KSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGxpc3RfZGVsX2luaXQoJnF1
ZXVlLT5xdWV1ZV9saXN0KTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBzY2hlZHVsZV93b3JrKCZxdWV1
ZS0+cmVsZWFzZV93b3JrKTsKPj4KPj4gVGhpcyBoYXMgYSBoaWRkZW4gYXNzdW1wdGlvbiB0aGF0
IHRoZSBjb25uZWN0IGhhbmRsZXIgYWxyZWFkeQo+PiBzY2hlZHVsZWQgdGhlIHJlbGVhc2UuCj4+
Cj4+IFdoeSBkb24ndCB3ZSBzaW1wbHkgbm90IHF1ZXVlIHRoZSByZWxlYXNlX3dvcmsgaW4gdGhl
IGFjY2VwdAo+PiBmYWlsdXJlIGFuZCByZXR1cm4gYSBuZWdhdGl2ZSBzdGF0dXMgY29kZSB0byBp
bXBsaWNpdGx5IHJlbW92ZSB0aGUKPj4gY21faWQ/IHRoaXMgd2F5IHdlIHdpbGwgbmV2ZXIgc2Vl
IGFueSBjbSBldmVudHMgYW5kIHdlIGRvbid0Cj4+IG5lZWQgdG8gaGFuZGxlIGl0Lgo+IAo+IFRo
aXMgY2hhbmdlcyB0aGUgZmxvdyBidXQgSSBndWVzcyB3ZSBjYW4gY2hlY2sgdGhpcyBvdXQuCj4g
Cj4gQnV0IHN0aWxsLCB0aGlzIGZsb3cgY2FuIGJlIGNhbGxlZCBmcm9tIDMgZGlmZmVyZW50IGV2
ZW50cyAKPiAoUkRNQV9DTV9FVkVOVF9SRUpFQ1RFRCwgUkRNQV9DTV9FVkVOVF9VTlJFQUNIQUJM
RSwgCj4gUkRNQV9DTV9FVkVOVF9DT05ORUNUX0VSUk9SKSBzbyBJIHByZWZlciB0byBsb2NhdGUg
dGhlIHNjaGVkdWxlX3dvcmsgCj4gdW5kZXIgdGhlICJpZiIuCgpUaGlzIGlmIGlzIG9ubHkgY2hl
Y2tlZCBpbiBjb25uZWN0IGVycm9yLiBBbnl3YXksIGlmIHlvdSBmZWVsIHRoYXQKdGhpcyBmbG93
IGlzIHJhY3ksIHBlcmhhcHMgaW1wbGVtZW50IGEgcHJvcGVyIHNlcmlhbGl6YXRpb24sIGluc3Rl
YWQKb2YgY2hlY2tpbmcgYSByYW5kb20gImlmIiB0aGF0IG1ha2VzIHRoZSByZWFkZXIgdGhpbmsg
d2h5IGFyZSB0aGV5CmV2ZW4gcmVsYXRlZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW52bWUK
