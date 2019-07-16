Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5736A02A
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 03:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EPzRSGz/a4os7xr2czCsc2bphpkMBHC0AcIx+sqs4Kw=; b=cMrB8Ds6FsVzgCk6FTpVBwk1m
	C2fwAzGG45ABqRjP3QsYXQTRmeAyZj4AzY94XzriaFIR/IbhJoOscwKBqKi7fdS/2yTfAzwHI7lEd
	zjw49z3pek0vkUKxwUsiabiCSRo1RqO3z1FG/HYV9wjDJisJJwr+bvgUPFTDtXw6HY5SsPNTUj3Ws
	Kz5iUBnJCr7pXMQNfJgYo3SwJ+urYdzQPd1Ow+PXuydusNzGuUPlu1SkwXtw/wvJmrRnt0JhjBQba
	AWDJI1VYPQigCmSe05qkIusl4tq39xQ5ykryByRKu9/5suX7ogELxuMo0GFP8QQfBFhv29vlySJ72
	o4z913opw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnC29-0000Pl-TW; Tue, 16 Jul 2019 01:13:33 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnC1z-0000PM-Gg
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 01:13:25 +0000
Received: by mail-pf1-f194.google.com with SMTP id b13so8248411pfo.1
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 18:13:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qh6ETEnJhVwpR3IdNn26emWYrEJScf0QlizjzNQ7V4I=;
 b=QgTlbK8myRmBrs6gpH0AhmtmsNgHJr/g1k832+e51OkDgMANrtoqeHkbNNZFAz7fyk
 zASkF183jaZ/snzPKuSUN6BUWTewisLFUuHdtJ0KWiDEtEBTrXU2PL3x7YIo9fma7zRw
 iRyv9F4vKYK8cW1MkagVlW4le3qtbRvU3xf45cnx8WR4zCwZyMyB4bwOf4YLYiExz/5J
 Ul3Xk48E9HSw5KxBO1Oa84wtFrnuqQr+baujNx6yIqwWMeeWUEtwz4N1VcPNtdw8KCp0
 rhXbqxlv0FuhTU7IDS4ctJzVlcPS47NVGI1bC1U+XznkQRLA/NUW0vVJ9cRpAQBdpoOq
 TkmA==
X-Gm-Message-State: APjAAAXIVP8nELa2E3xp6WVWwHWTytXU+41812yT/uV1uFDka6SmB4DW
 qGVH8PPA951zX/VDImQ64/MxR9LZ
X-Google-Smtp-Source: APXvYqytR+wpxjhafQbc5Hy0UtDQKMADAhkSoN/BQD0wlRzhFQ+OMkBZh+nLO5SmZSDyq2x0+Zifmg==
X-Received: by 2002:a63:dd17:: with SMTP id t23mr3441078pgg.295.1563239601206; 
 Mon, 15 Jul 2019 18:13:21 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id g66sm18855750pfb.44.2019.07.15.18.13.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 18:13:20 -0700 (PDT)
Subject: Re: [PATCH rfc v2 05/10] nvme-cli: extend ctrl_list_item for connect
 attributes
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-6-jsmart2021@gmail.com>
 <6647e40b-cfc9-46e3-cd11-aeaaec8eeff6@grimberg.me>
 <721a6054-6e49-0fcb-2928-127470b798f6@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <a6f99081-0c14-6de8-7a93-45ebdec8377f@grimberg.me>
Date: Mon, 15 Jul 2019 18:13:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <721a6054-6e49-0fcb-2928-127470b798f6@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_181323_558901_18013C83 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Hannes Reinecke <hare@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+PiArY2hhciAqX19wYXJzZV9jb25uZWN0X2FyZyhjaGFyICpjb25hcmdzLCBjb25zdCBjaGFy
IGRlbGltLCBjb25zdCAKPj4+IGNoYXIgKmZpZWxkbm0pCj4+PiArewo+Pj4gK8KgwqDCoCBjaGFy
ICpzLCAqZTsKPj4+ICvCoMKgwqAgc2l6ZV90IGNudDsKPj4+ICsKPj4+ICvCoMKgwqAgLyoKPj4+
ICvCoMKgwqDCoCAqIFRoZXJlIGFyZSBmaWVsZCBuYW1lIG92ZXJsYXBzOiB0cmFkZHIgYW5kIGhv
c3RfdHJhZGRyLgo+Pj4gK8KgwqDCoMKgICogQnkgY2hhbmNlLCBib3RoIGNvbm5lY3QgYXJnIHN0
cmluZ3MgYXJlIHNldCB1cCB0bwo+Pj4gK8KgwqDCoMKgICogaGF2ZSB0cmFkZHIgZmllbGQgZm9s
bG93ZWQgYnkgaG9zdF90cmFkZHIgZmllbGQuIFRodXMgZmllbGQKPj4+ICvCoMKgwqDCoCAqIG5h
bWUgbWF0Y2hpbmcgZG9lc24ndCBvdmVybGFwIGluIHRoZSBzZWFyY2hlcy4gVGVjaG5pY2FsbHks
Cj4+PiArwqDCoMKgwqAgKiBhcyBpcywgdGhlIGxvb3AgYW5kIGRlbGltaXRlciBjaGVja2luZyBp
c24ndCBuZWNlc3NhcnkuCj4+PiArwqDCoMKgwqAgKiBIb3dldmVyLCBiZXR0ZXIgdG8gYmUgcHJl
cGFyZWQuCj4+PiArwqDCoMKgwqAgKi8KPj4+ICvCoMKgwqAgZG8gewo+Pj4gK8KgwqDCoMKgwqDC
oMKgIHMgPSBzdHJzdHIoY29uYXJncywgZmllbGRubSk7Cj4+Cj4+IEFueSByZWFzb24gbm90IHRv
IHVzZSB0aGUgbm9ybWFsIHN0cnNlcCBmb3IgbG9vcD8KPiAKPiBzdHJzZXAgd2Fzbid0IHVzZWQg
YXMgSSBkaWRuJ3Qgd2FudCB0byBtb2RpZnkgdGhlIGFyZ3Mgc3RyaW5nLgo+IAo+IEkgY291bGQg
Y29udmVydCwgYnV0IGl0IG1lYW5zIEkgbmVlZCB0byBkdXBsaWNhdGUgdGhlIGFyZ3Mgc3RyaW5n
IGJvdGggCj4gaW4gZG9fZGlzY292ZXIgYW5kIGluIHRoZSBudm1lX2N0cmxfbGlzdGl0ZW0gcm91
dGluZSBvciBoYXZlIHRoZSBwYXJzZQo+IHJvdXRpbmUgZHVwbGljYXRlIGl0IHRoZW4gdGhyb3cg
aXQgYXdheS4gVXNpbmcgc3Ryc2VwIHdvdWxkIGFsc28gbWVhbiBJIAo+IGhhdmUgdG8gY29udGlu
dWUgdG8gaGF2ZSB0aGUgY2hlY2sgZm9yICc9JyB0b2tlbiBhbmQgZXh0cmFjdGluZyB0aGUgCj4g
dmFsdWUuIE5vdCBzdXJlIEkgZ2FpbiBtdWNoIGNvZGUgcmVkdWN0aW9uLgo+IAo+IEFueSBwcmVm
ZXJlbmNlIG92ZXIgbGVhdmluZyBhcyBpcyBvciBoYXZpbmcgdGhlIHBhcnNlIHJvdXRpbmUgZHVw
bGljYXRlIAo+IGl0ID8KCk5vIGhhcmQgZW1vdGlvbnMgb24gdGhpcywganVzdCB0aG91Z2h0IGl0
IHdvdWxkIGJlIGxlc3MgY29udm9sdXRlZCBhbmQKbW9yZSBjb21tb24gd2l0aCBvdGhlciBwYXJz
ZXJzLCBidXQgaWYgaXRzIGNyZWF0ZSBhIG1vcmUgY29udm9sdXRlZCBjb2RlCndlIGRvbid0IGhh
dmUgdG8gZ28gdGhlcmUuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
