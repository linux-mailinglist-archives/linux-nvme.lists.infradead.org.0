Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E880830200
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 20:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gositW4GO8RCl46E/sn2vPCp0m3G9YDrNEV312IQ5eM=; b=nIDcWswXtCjjVtDEjz6773hJN
	DVP17goWZOsVwKQtMiF5N9P/nCvrexlFWkp4mnJW0yMht665IriHvIIreSbvNE371NHVTSXz+2m5v
	ILtVAYqVb7OkZRSHYJAG9G1HygSIDZOVg0/jRcDWhsiNJ4scswccl1TkwJvwUlIq8rLHtCtIoSr7P
	AdgSdNP8zQX+c3gM/9phtzanbN/6mcIkT3wbuD5cAnvj64oc8kK92s6AR59rAsVqkECFWMVmQhQaf
	vm67znpWIGBlSQ8vHV0ziimMhdwEyMPOiC+f5j/bM2TJh6hRpMyQEGgFGQEodaNaGMjdTKhvhrDI8
	Zjxryq+rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWPtW-0007lf-Ua; Thu, 30 May 2019 18:35:18 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWPtS-0007kv-PR
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 18:35:16 +0000
Received: by mail-ot1-f68.google.com with SMTP id l17so6639331otq.1
 for <linux-nvme@lists.infradead.org>; Thu, 30 May 2019 11:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jv5bb7PN9cwDH6BcM/Ghuf8S04gaeFf10N3XKxQUOec=;
 b=EYPpVYVyaavR66Vu9IQrL9DxSecLZCy1qlUNVi8awBGsCI42889fmkn7ELN14x1JzI
 MDaPvEsqji3258N/LwOMIynMyibUFcphQ6VvzyG3ehEkC7lcR1aeicpBFAipBk/XElau
 KSfK4ogLj+Zaal3kHSMN7dIZJuul7dlN5KTfQIqFDS5RUJBX6vUHaAq/1OtTdFMQK/ce
 NDLtg+KVEMBLcxLGlbakqem3iQ4IXgXGHKK5rSHQAE3iN/CtTQQHKWQyfaloR94N5/Lq
 WiG3cxW2kvcUpbkyNtmpwUQkx90xq9nEGgrUld14k2MOZzxhnWRnH6wMHT9K6wu5ltvP
 jtdA==
X-Gm-Message-State: APjAAAX/Yjf92BMSXxeWCMgGnbhbkfis/HZKuMG1VvLT1vumBnjcKP6k
 5jGdlWRf3Dh/i4Rc9+5bDr1YDtt3
X-Google-Smtp-Source: APXvYqxD5pJlI7nEra/wDD+IVZbLp5ftIU+QHSXdk2obA3rwCEgIPDw6fB3KXnFe1FqpC2FMa78hSw==
X-Received: by 2002:a9d:7a59:: with SMTP id z25mr3840206otm.77.1559241311714; 
 Thu, 30 May 2019 11:35:11 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id c24sm1234631otm.75.2019.05.30.11.35.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 11:35:11 -0700 (PDT)
Subject: Re: [GIT PULL] nvme fixes for 5.2
To: John Donnelly <john.p.donnelly@oracle.com>
References: <20190516082541.GA19383@infradead.org>
 <5175ce5c-1943-a167-52f5-094a3d2dc4a4@Oracle.com>
 <FA7D2A4E-6CEF-467C-8153-F1DBCA624626@oracle.com>
 <0eb19967-e0bc-ed16-c2a1-39e624e2d7ab@grimberg.me>
 <18AE3540-5173-4A25-A28E-F0B644BA0AAF@oracle.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4cab00ed-e56f-f963-921d-87d5156eea63@grimberg.me>
Date: Thu, 30 May 2019 11:35:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <18AE3540-5173-4A25-A28E-F0B644BA0AAF@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_113514_829729_B895E609 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gSEkgU2FnaTsKPiAKPiAgICAgIFByaW9yIHRvIGltcGxlbWVudGluZyB0aGUgbm90ZWQgY29t
bWl0cyB3ZSBuZXZlciBnb3R0ZW4gdGhpcyBmYXIgYmVmb3JlIGluIHJlY292ZXJ5IGJlY2F1c2Ug
dGhlIHN5c3RlbSBlbmNvdW50ZXJlZCB0aGUgT09QUyBhcyBub3RlZCBpbiB0aG9zZSBjb21taXRz
IGFuZCBmZWxsIGFwYXJ0IHdpdGgganVzdCBvbmUgbmFtZXNwYWNlLiBOb3cgdGhpcyAgb2NjdXJz
IGR1cmluZyBwYXRoIGZhaWxvdmVyIHRlc3Rpbmcgd2hpbGUgdHJ5aW5nIHRvIHJlY29ubmVjdCB0
d28gbmFtZSBzcGFjZXMsICBhbmQgaXQgIGVuZGVkIHVwIHdpdGggbWF4IHJlY29ubmVjdCBhdHRl
bXB0cyBvZiA2MCB0aGF0IHByb2R1Y2VkIGEgIGRpZmZlcmVudCBzdGFjayB0cmFjZS4KCkkgc2Vl
LgoKPiBBIG1lc3NhZ2UgZGlkIGFwcGVhciBpbiB0aGUgbG9nIHdpdGggdGhlIG5hbWUg4oCcbnZt
ZTDigJ0gLCBidXQgSSBjYW7igJl0IHRlbGwgaWYgdGhhdCBpcyB0aGUgZGV2aWNlIG5hbWUgdGhh
dCB3YXMgIGJlaW5nIGRlbGV0ZWQgLCBvciB0aGUgbmV4dCBvbmUgOiAgbnZtZTE7ICBJIGhhdmUg
bm8gZmFydGhlciBleHBsYW5hdGlvbiB3aHkgdGhlICBPT1BTIHdvdWxkIG9jY3VyIGluIHRoZSBw
cmludCBzdGF0ZW1lbnQgdW5sZXNzIOKAnG5hbWXigJ0gd2FzIG51bGwsICAgZG8geW91ID8KClRo
aXMgZG9lcyBub3QgcmVhbHRlIHRvIHRoZSBkZXZpY2UgbmFtZSwgYnV0IHJhdGhlciB0byB0aGUg
ZGV2aWNlIHBhcmVudAp0aGF0IHNlZW1zIHRvIGJlIE5VTEwgKHdlIGhhdmUgYSB2YWxpZCBrb2Jq
IGJ1dCBpdCBwb2ludHMgdG8gYSBOVUxMCnBhcmVudC4gVGhpcyB1c3VhbGx5IGhhcHBlbnMgaW4g
YSB1c2UtYWZ0ZXItZnJlZSBjb25kaXRpb25zLgoKV2hhdCBpcyB0aGUgRkMgZGV2aWNlIHBhcmVu
dD8gdGhlIEZDIGFkYXB0ZXIgZGV2aWNlPyBvciB0aGUgCi9kZXYvbnZtZS1mYWJyaWNzIGRldmlj
ZT8KCj4gSGVyZSBpcyB0aGUgcHJlYW1ibGUgdG8gdGhlIHByZXZpb3VzIHN0YWNrIHRyYWNlLgo+
IAo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6IG52bWUgbnZtZTA6IE5W
TUUtRkN7MH06IHJlc2V0OiBSZWNvbm5lY3QKPiBhdHRlbXB0IGZhaWxlZCAoLTIyKQo+IE1heSAy
NCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6IG52bWUgbnZtZTA6IE5WTUUtRkN7MH06
IE1heCByZWNvbm5lY3QKPiBhdHRlbXB0cyAoNjApIHJlYWNoZWQuCj4gTWF5IDI0IDIxOjA5OjMx
IGludGVyb3AtNTctMTYxIGtlcm5lbDogbnZtZSBudm1lMDogUmVtb3ZpbmcgY3RybDogTlFOCj4g
Im5xbi4xOTkyLTA4LmNvbS5uZXRhcHA6c24uM2Q5MDM3YzUzZmVkMTFlOTkyMjIwMGEwOTg2YThi
NjA6c3Vic3lzdGVtLm9sX252bWUxX3NzMSIKPiBNYXkgMjQgMjE6MDk6MzEgaW50ZXJvcC01Ny0x
NjEga2VybmVsOiBrZXJuZnM6IGNhbiBub3QgcmVtb3ZlICdudm1lMCcsIG5vIGRpcmVjdG9yeQo+
IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJuZWw6IC0tLS0tLS0tLS0tLVsgY3V0
IGhlcmUgXS0tLS0tLS0tLS0tLQo+IE1heSAyNCAyMTowOTozMSBpbnRlcm9wLTU3LTE2MSBrZXJu
ZWw6IFdBUk5JTkc6IENQVTogNiBQSUQ6IDE0MjA2IGF0Cj4gZnMva2VybmZzL2Rpci5jOjE0ODEg
a2VybmZzX3JlbW92ZV9ieV9uYW1lX25zKzB4N2UvMHg4Nwo+IAo+IFdlIGFyZSBub3Qgc2VlaW5n
IGZhaWxvdmVyIHdvcmsgYXQgYWxsIHVzaW5nIHRoZSBscGZjIGRyaXZlci4gICBUaGUgY29ubmVj
dGlvbnMgYXJlIGVzdGFibGlzaGVkIG9uIGJvb3QsIGJ1dCB3aGVuIG9uZSBvZiB0aGUgcGF0aHMg
YXJlIGRpc2FibGVkIG9uIHRoZSBOZXRBcHAgdGFyZ2V0IHRoZSBzeXN0ZW0gbmV2ZXIgaXMgYWJs
ZSB0byByZXN0b3JlcyB0aGUgcGF0aHMuCgpTbyBJL08gZmFpbG92ZXIgaXMgbm90IHdvcmtpbmcg
d2l0aCBscGZjPyB0aGF0IHNlZW1zIHRvIGJlIGEgZGlmZmVyZW50Cmlzc3VlIHRvIG1lLiBXaGF0
IGRvIHlvdSBtZWFuIHRoYXQgdGhlIE5ldEFwcCB0YXJnZXQgbmV2ZXIgaXMgYWJsZSB0bwpyZXN0
b3JlIHRoZSBwYXRocz8gVGhhdCBpcyBqdXN0IGFuIGV4cGxhbmF0aW9uIHRvIHdoYXQgdHJpZ2dl
cnMgdGhlCmJ1ZyBvciBpcyB0aGF0IHNvbWVob3cgcmVsYXRlZD8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0Ckxp
bnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
