Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2437F6D7F5
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 02:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZKlzGnCaUdF2k4HbLEHzdFz37GaVPO5FHTMMolml3mE=; b=s7wHZii4zJWH9CKEoMN8j+9Dz
	tXtLdV6DgFbuZsecqgcUvrAd/YTbnVWapi6gcx5Q+ALu+kVSPLU5VBSR5rVS3fNAoi6QgwI6chF86
	Fp6NHcIFoNR+wCyIUFo/QYikkklyi1sbgBT4UatuNRK9L039mfZr36LXWHnbMI3Pxc+zwfetXSCJD
	+tKJyFQAqdn5D0xGRGo6X8UC2XksUGIWP6a2HLmQ+LiAGI6WQ/knn9FXhc7JTJeMn017U4fJWYF6/
	9bf/ZSK111ny9kdcUpE4wajKOYdT2SC8dYXYAFp/zrk6JbvmaKJPdiLIz3rITgnvpG/afc0lcRCZ9
	i909KtYcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoH6O-00017Q-4v; Fri, 19 Jul 2019 00:50:24 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoH6E-00016d-PW
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 00:50:16 +0000
Received: by mail-ot1-f68.google.com with SMTP id z23so2712416ote.13
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 17:50:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PzPhqLPpEUKBPHY1ltp2gvt4lZLhIfUB77x+xjeBTiY=;
 b=XwlrxrVztalFp/wrvWRInpZ27WnmDe5FWCFeMwIzYyfGgWkWX1p2BGL6tlvb2iJWj0
 xoW0kaXkjrI4XOMMo9TXjyPA5Bo5yAqhxlmXgFcrF9+7PGc4y8lT/6LUp/fs2V430rTv
 k/DAGxfzdKw/Np9Uiam0gpUOE4RwZ/PD2kvKAx235tMzOGC4a9CTyRjqD7rxaxh2WJUs
 6H9LOJsCqcMvy0xqfSW/I85QFEC+dAkh6ObhSSPJB1beSjrMHksh4IPB/H4gSoh9P6g0
 LaIWGfUW8nxgJiwl8g1t92KmiCehlwe+SV9CEdLdLgbCPSLWCLMBBMQprwZapSQBJNqR
 oU4Q==
X-Gm-Message-State: APjAAAWirYWaqlb1i13NZ4yJrI8PG9hEtIgz9QA4TbBLOgZUUXSeQuAM
 xMnxY2Ie2Al5pxEcLG8snBI=
X-Google-Smtp-Source: APXvYqz+UUlpBFQEjfLv29MELFRuVYRLZkrpe0wSEvFuao+OnOlMnRYW3xSpeUDi3SDe5XPUDgB1tw==
X-Received: by 2002:a9d:71d7:: with SMTP id z23mr39077704otj.100.1563497413877; 
 Thu, 18 Jul 2019 17:50:13 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id s4sm10308815otp.3.2019.07.18.17.50.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:50:13 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme-core: Fix deadlock when deleting the ctrl while
 scanning
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190718225132.5865-1-logang@deltatee.com>
 <20190718225132.5865-2-logang@deltatee.com>
 <c52f80b1-e154-b11f-a868-e3209e4ccb2d@grimberg.me>
 <6deea9e7-ff3c-e115-b2f2-8914df0b6da7@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <dd287560-2cb3-28ab-c22d-fe9f3682c609@grimberg.me>
Date: Thu, 18 Jul 2019 17:50:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <6deea9e7-ff3c-e115-b2f2-8914df0b6da7@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_175014_832659_90911D0C 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+PiBXaXRoIG11bHRpcGF0aCBlbmFibGVkLCBudm1lX3NjYW5fd29yaygpIGNhbiByZWFkIGZy
b20gdGhlCj4+PiBkZXZpY2UgKHRocm91Z2ggbnZtZV9tcGF0aF9hZGRfZGlzaygpKS4gSG93ZXZl
ciwgd2l0aCBmYWJyaWNzLAo+Pj4gb25jZSBjdHJsLT5zdGF0ZSBpcyBzZXQgdG8gTlZNRV9DVFJM
X0RFTEVUSU5HLCB0aGUgcmVhZHMgd2lsbCBoYW5nCj4+PiAoc2VlIG52bWZfY2hlY2tfcmVhZHko
KSkuCj4+Pgo+Pj4gQWZ0ZXIgc2V0dGluZyB0aGUgc3RhdGUgdG8gZGVsZXRpbmcsIG52bWVfcmVt
b3ZlX25hbWVzcGFjZXMoKSB3aWxsCj4+PiBoYW5nIHdhaXRpbmcgZm9yIHNjYW5fd29yayB0byBm
bHVzaCBhbmQgdGhlc2UgdGFza3Mgd2lsbCBoYW5nLgo+Pj4KPj4+IFRvIGZpeCB0aGlzLCBlbnN1
cmUgd2UgdGFrZSBzY2FuX2xvY2sgYmVmb3JlIGNoYW5naW5nIHRoZSBjdHJsLXN0YXRlLgo+Pj4g
QWxzbywgZW5zdXJlIHRoZSBzdGF0ZSBpcyBjaGVja2VkIHdoaWxlIHRoZSBsb2NrIGlzIGhlbGQK
Pj4+IGluIG52bWVfc2Nhbl9sb2NrX3dvcmsoKS4KPj4KPj4gVGhhdCdzIGEgYmlnIGhhbW1lci4u
Lgo+IAo+IEkgZGlkbid0IHRoaW5rIHRoZSBzY2FuX2xvY2sgd2FzIHRoYXQgY29udGVzdGVkIG9y
IHRoYXQKPiBudm1lX2NoYW5nZV9jdHJsX3N0YXRlKCkgd2FzIHJlYWxseSBjYWxsZWQgdGhhdCBv
ZnRlbi4uLgoKaXQgc2hvdWxkbid0IGJlLCBidXQgSSB0aGluayBpdCBtYWtlcyB0aGUgZmxvdyBt
b3JlIGNvbnZvbHV0ZWQKYXMgd2Ugc2VyaWFsaXplIGJ5IGZsdXNoaW5nIHRoZSBzY2FuX3dvcmsg
cmlnaHQgYWZ0ZXIuLi4KClRoZSBkZXNpZ24gcHJpbmNpcGFsIGlzIG1ldCBhcyB3ZSBkbyBnZXQg
dGhlIEkvTyBmYWlsaW5nLApidXQgaXRzIGp1c3QgdGhhdCB3aXRoIG1wYXRoIHdlIHNpbXBseSBx
dWV1ZSB0aGUgSS9PIGFnYWluCmJlY2F1c2UgdGhlIGhlYWQtPmxpc3QgaGFwcGVucyB0byBub3Qg
YmUgZW1wdHkuClBlcmhhcHMgdGFraW5nIGNhcmUgb2YgdGhhdCBjaGVjayBpcyBjbGVhbmVyLgoK
Pj4gQnV0IHRoaXMgaXMgSS9PIHRoYXQgd2UgY2Fubm90IGhhdmUgcXVldWVkIHVudGlsIHdlIGhh
dmUgYSBwYXRoLi4KPj4KPj4gSSB3b3VsZCByYXRoZXIgaGF2ZSBudm1lX3JlbW92ZV9uYW1lc3Bh
Y2VzKCkgcmVxdWV1ZSBhbGwgSS9PcyBmb3IKPj4gbmFtZXNwYWNlcyB0aGF0IHNlcnZlIGFzIHRo
ZSBjdXJyZW50X3BhdGggYW5kIGhhdmUgdGhlIG1ha2VfcmVxdWVzdAo+PiByb3V0aW5lIHRvIGZh
aWwgSS9PIGlmIGFsbCBjb250cm9sbGVycyBhcmUgZGVsZXRpbmcgYXMgd2VsbC4KPj4KPj4gV291
bGQgc29tZXRoaW5nIGxpa2UgWzFdICh1bnRlc3RlZCkgbWFrZSBzZW5zZSBpbnN0ZWFkPwo+IAo+
IEknbGwgaGF2ZSB0byBnaXZlIHRoaXMgYSB0cnkgbmV4dCB3ZWVrIGFuZCBJJ2xsIGxldCB5b3Ug
a25vdyB0aGVuLiBJdAo+IGtpbmQgb2YgbWFrZXMgc2Vuc2UgdG8gbWUgYnV0IGEgbnVtYmVyIG9m
IHRoaW5ncyBJIHRyaWVkIHRvIGZpeCB0aGlzCj4gdGhhdCBJIHRob3VnaHQgbWFkZSBzZW5zZSBk
aWQgbm90IHdvcmsuCgpUaGFua3MuIERvIHlvdSBoYXZlIGEgZmlybSByZXByb2R1Y2VyIGZvciBp
dD8KCj4+PiArwqDCoMKgIG11dGV4X2xvY2soJmN0cmwtPnNjYW5fbG9jayk7Cj4+PiArCj4+PiAg
wqDCoMKgwqDCoCBpZiAoY3RybC0+c3RhdGUgIT0gTlZNRV9DVFJMX0xJVkUpCj4+PiAgwqDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybjsKPj4KPj4gdW5sb2NrCj4gCj4gSWYgd2UgdW5sb2NrIGhlcmUg
YW5kIHJlbG9jayBiZWxvdywgd2UnZCBoYXZlIHRvIHJlY2hlY2sgdGhlIGN0cmwtPnN0YXRlCj4g
dG8gYXZvaWQgYW55IHJhY2VzLiBJZiB5b3UgZG9uJ3Qgd2FudCB0byBjYWxsIG52bWVfaWRlbnRp
ZnlfY3RybCB3aXRoCj4gdGhlIGxvY2sgaGVsZCwgdGhlbiBpdCB3b3VsZCBwcm9iYWJseSBiZSBi
ZXR0ZXIgdG8gbW92ZSB0aGUgc3RhdGUgY2hlY2sKPiBiZWxvdyBpdC4KCk1lYW50IGJlZm9yZSB0
aGUgcmV0dXJuIHN0YXRlbWVudC4KCj4gCj4+PiAgwqAgQEAgLTM1NDcsNyArMzU1NCw2IEBAIHN0
YXRpYyB2b2lkIG52bWVfc2Nhbl93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdAo+Pj4gKndvcmspCj4+
PiAgwqDCoMKgwqDCoCBpZiAobnZtZV9pZGVudGlmeV9jdHJsKGN0cmwsICZpZCkpCj4+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4KPj4gdW5sb2NrCgpTYW1lIGhlcmUuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxp
bmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
