Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FCF1ACB5
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E+GM9NuST8UVq37OI1neVmi6HhiUQXCjIk6e3wtDw+Q=; b=FuKkFXWOmbFKcTR8Zfj1ZbfMo
	XR15jGg7utf67JxHNkjfP1VWfoAxCOaiiAQa7M6egTvElaqXkVw0xDLeAqW7pFfPazcAiSWaqotKb
	7pYLgbhC3SHkpftZJYOy5gUBP66ntquR6XN+ByN+eahyY5hfaMK9Ua9O9opMFjyGwuplWb2uwhuvJ
	pyu3cPs7CFmCzOahuPJj6sQziHhldEY7H3JKSLrF4C5/uJwUFZdjD8Vkuu+O5GqXmJglGpV+xrjQ1
	dCxEyUo3ztDOXWOpdEKj3IKvF9FRmsFaPxYW7P8J4pIW8iCpDOUYn0dWeIGeIMNcYYDaKiv/bEP4T
	nNemZCHwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPpyb-000517-OA; Sun, 12 May 2019 15:01:21 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPpyJ-000508-6N
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:01:05 +0000
Received: by mail-wr1-f65.google.com with SMTP id r7so11823097wrr.13
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:01:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QhfkuM/gPLfwit7CYXYD/9MAlY4V01M5E9KgSIVbbvE=;
 b=ro7azHr8dE4HmuJdArDqKabJ/Ged8BNiqGa5Lfqq9+DlJe9Mi82+Q4jQBTzJ7uR8kL
 ySVUXq4UkGTvhkGghJ9cP9TW25LUJGygYFS17weYsMvj0B1YJ6ybl5DpHxpDZ3Sv3lxM
 9/J5/LZ/ioFxQPd0E/cAxWZ9xQnfuuGSzFJeUSpNpcmPQtr65gvoNEsDaeMB25nt8UFU
 C1wavPpyg30rYG+6TqEBSL3PXtqz6oA1uXFmj7apyCYtngLsRfjGtywpF98rWZQul3Cm
 wGPe1fw82qdeiVU71gfINB/5lfzXn4G7Q4CFp8FLECXECK1GBi/5BSq12urnz8Wl1zFM
 odxg==
X-Gm-Message-State: APjAAAVTdH+2aHCrP4PO6eGQ1om9jkboDZh7atL81HJoTDI+yoFNvTDc
 1caJG5Na6+tM5UY2jhzlMONbrrKC
X-Google-Smtp-Source: APXvYqxYn/+w31gj/esbtNWM52Ut3bcuNk+2YmNSRcsM704vtJiEPJemFR5o0unT2eoZ9kfTs5hXgQ==
X-Received: by 2002:a5d:4a87:: with SMTP id o7mr14168958wrq.207.1557673260629; 
 Sun, 12 May 2019 08:01:00 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id e12sm2105777wrs.8.2019.05.12.08.00.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 08:00:59 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc 3/5] fabrics: allow discover to address
 discovery controller by persistent name
To: James Smart <james.smart@broadcom.com>, Hannes Reinecke <hare@suse.de>,
 James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-4-jsmart2021@gmail.com>
 <28e1e9a8-671d-e3ff-6111-7561e0f56fa9@suse.de>
 <1154a16f-222e-7a28-96c0-3a22052e2bef@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8253dfc5-0782-94a7-11fa-972d0d7657ef@grimberg.me>
Date: Sun, 12 May 2019 08:00:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1154a16f-222e-7a28-96c0-3a22052e2bef@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_080103_236990_A9629461 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IEFjdHVhbGx5LCBJIHdvdWxkIHJhdGhlciBzY2FuIGV4aXN0aW5nIGNvbnRyb2xsZXJzLCBh
bmQgdXNlIHRoZSBmaXJzdCAKPj4gb25lIHRoYXQgbWF0Y2hlcyB0aGUgYXJndW1lbnRzLgo+PiBX
aXRoIHRoZSBjdXJyZW50IGRlc2lnbiB3ZSB3b3VsZCBoYXZlIGRpZmZlcmVudCBjYWxsaW5nIHNl
cXVlbmNlcywgCj4+IGRlcGVuZGluZyBvbiB3aGV0aGVyIGl0J3MgdGhlIGZpcnN0IGNhbGwgKHdo
aWNoIGNyZWF0ZSB0aGUgCj4+IGNvbnRyb2xsZXIpLCBvciBhbnkgc3Vic2VxdWVudCBjYWxsLgo+
PiBJZiB3ZSB3ZXJlIGxvb2tpbmcgdXAgdGhlIGV4aXN0aW5nIGNvbnRyb2xsZXIgZnJvbSB0aGUg
YXJndW1lbnRzIHdlIAo+PiBjb3VsZCBiZSB1c2luZyB0aGUgc2FtZSBjb21tYW5kbGluZSB0aHJv
dWdob3V0Lgo+Pgo+IAo+IFdlbGwsIHRoaXMgaXMgd2hlcmUgd2UncmUgYXQgb2Rkcy7CoCBXZSBu
ZWVkIHRvIGRlY2lkZSBpZiB3ZSBzaG91bGQgCj4gY3JlYXRlIGFub3RoZXIgZnVsbCBjb250cm9s
bGVyIGluc3RhbmNlIHdoZW4gdGhlIGV2ZW50IG9jY3Vycywgd2hpY2ggaXMgCj4gd2hhdCBGQyBk
b2VzIHRvZGF5IChjYW4gaGF2ZSBtdWx0aXBsZSBydW5uaW5nIGNvbmN1cnJlbnRseSksIG9yIHdo
ZXRoZXIgCj4gd2Ugd2FudCB0byByZXVzZSB0aGUgcGVyc2lzdGVudCBvbmUuIEkgd291bGQgdGhp
bmsgaW1wbGVtZW50ZXJzIG9mIHRoZSAKPiBwZXJzaXN0ZW50IGRpc2NvdmVyeSBjb250cm9sbGVy
IHdvdWxkIHdhbnQgeW91IHRvIHJldXNlIGl0IGFuZCBub3QgaGF2ZSAKPiB0byBzdXBwb3J0IG1v
cmUgY29uY3VycmVudCBkaXNjb3ZlcnkgY29udHJvbGxlciBpbnN0YW5jZXMuwqAgVGhlICJyZXVz
ZSIgCj4gY2FzZSBpcyB3aHkgcGFzc2luZyB0aGUgLS1kZXZpY2UgYXJnIG1ha2VzIGl0IHZlcnkg
c3RyYWlnaHQgZm9yd2FyZC7CoCBXZSAKPiBjb3VsZCBhbHdheXMgaGF2ZSB0aGUgdXRpbGl0eSBn
ZXQgdGhlIGFkZHJlc3NpbmcgaW5mbyBhbmQgbG9vayBhdCAKPiBleGlzdGluZyBjb250cm9sbGVy
IGFuZCBkZWNpZGUgdG8gdXNlIGFuIGV4aXN0aW5nIG9uZSAtIEkgYXNzdW1lIHdlIAo+IHdvdWxk
IG9ubHkgc2VsZWN0IHBlcnNpc3RlbnQgb25lcyBpbiBvcmRlciB0byBhdm9pZCBkZWxldGUgcmFj
ZSAKPiBjb25kaXRpb25zLCBidXQgc2VlbXMgbGlrZSBhIGxvdCBvZiB3b3JrIGZvciB3aGF0IHRo
ZSBBRU4gYWxyZWFkeSAKPiBrbm93cy4KCkl0IHNlZW1zIGJhY2t3YXJkcyB0byBpbnN0YW50aWF0
ZSBhIG5ldyBkaXNjb3ZlcnkgY29udHJvbGxlciB3aGVuIHlvdQphbHJlYWR5IGhhdmUgYSB1c2Fi
bGUgb25lLi4uCgo+wqAgSSBkbyBoYXZlIGEgbGl0dGxlIGNvbmNlcm4gdGhhdCB0aGVyZSdzIGFs
d2F5cyBhIHdpbmRvdyBmcm9tIAo+IHdoZW4gdGhlIGV2ZW50IGlzIHBvc3RlZCB0byB3aGVuIHRo
ZSAvZGV2IGRldmljZW5hbWUgaXMgb3BlbmVkLCB3aGljaCAKPiBhbGxvd3MgZm9yIHRoZSBkZXZp
Y2UgbmFtZSB0byBiZSB0ZXJtaW5hdGVkIGFuZCBwb3NzaWJseSByZXVzZWQgZm9yIAo+IHNvbWV0
aGluZyBlbHNlLCBidXQgSSBndWVzcyB3ZSdyZSB3aWxsaW5nIHRvIGxpdmUgd2l0aCB0aGlzLgoK
TGV0cyBzdGFydCBieSBkZWZpbmluZyB0aGUgZXhwZWN0ZWQgYmVoYXZpb3IgaW4gdGhpcyBjYXNl
LiBJIHdvdWxkCmV4cGVjdCB0aGF0IGl0IHdpbGwgZXhlY3V0ZSB0aGUgZGlzY292ZXJ5IGlmIGFu
IHRoZSBkZXZpY2Ugbm9kZSBleGlzdHMKYW5kIGZhaWwgaWYgaXQgc29tZXRoaW5nIGVsc2UuCgpJ
ZiB0aGUgZGlzY292ZXJ5IGRldmljZSBub2RlIHdlbnQgYXdheSAtIHdlIHNob3VsZCBub3QgbWFr
ZSBhbiBlZmZvcnQKdG8gY29ubmVjdCBhY2NvcmRpbmcgdG8gdGhlIGRpc2NvdmVyeSBsb2cgcGFn
ZSBieSBkZWZpbml0aW9uIChpZiB0aGUKZGV2aWNlIG5vZGUgd2FzIGRlbGV0ZWQgdGhlbiBkaXNj
b3ZlcnkgbG9nIGNoYW5nZSBldmVudHMgYXJlIG5vdAppbnRlcmVzdGluZykuCgpTbyB3ZSBjb3Vs
ZCBoYXZlIGRpc2NvdmVyIHZhbGlkYXRlIHRyYWRkci90cnN2Y2lkIGlmIC0tZGV2aWNlIHdhcyBn
aXZlbgpidXQgc3RpbGwgdXNlIHRoZSBleGlzdGluZyBkZXZpY2Ugbm9kZS4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBs
aXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
