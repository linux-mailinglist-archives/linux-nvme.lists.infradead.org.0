Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346C0A9853
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 04:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+kRw2fKlQb+Wop36Q9Iep+HZUJcfdquflwUAfZW06Dc=; b=S915HZzKVBn+7fcxBm/yijvJU
	SYBUy29XrDfcQMwgYltWawWWSIKxZxmDtyLKhTi3L2Kc6w6KcOS8FRCdntMPGOHD/ZI9cAiFQXynI
	w2l4hc25Bc10VDFQVKbeRZ6KwNKRo+TuiWgoosayz9bVYd01Arw5BLQeGd+XdMogVjOHNxa1wYKza
	EoaPAdv5zIGrNStJvoFh/WzQmmaMN5P4AtrB76/p02pCPIvKa3W0KySoHdvi4rFPZew8skYClJqt+
	hDIfjc1QlL4ZYFMz0BFrFyRrBhJvngaKmX+yg04hZXfZCpM7XxYl5RBfUN2KO13RGKp8TAmGin8kz
	4Gg3rvt2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5hW1-0007c2-Dk; Thu, 05 Sep 2019 02:28:53 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5hVw-0007bf-5q
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 02:28:49 +0000
Received: by mail-wm1-f67.google.com with SMTP id c10so837194wmc.0
 for <linux-nvme@lists.infradead.org>; Wed, 04 Sep 2019 19:28:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w9jvx6RZiCwxjATl3nwH8r9O5c036bv5+owihL4SsPE=;
 b=OeHJ11iEeZ4bSwP/4kB/9qBevWfiXziP0CjI26+OYd7HlmRduit7n0A1TjTgFKBWnm
 2aEuJ/PcO0IzYYZ5FdYsiu5qIecwXhdHUvFbFa6dD7LbKEEjlG2/w0Qo+u5aV+xsbXyM
 AEEZzbb+scpmiLTHKlHD0glTzs6pgo+3jc6h23dSzSmQcQbW+3B+IYxhTNziHzQTPLgh
 4w4uauwbfp0xX77fVapAU9GGfxr6JnX/pbP6ruptUyM/rmOY6fU4wt+7xPbwbdvKnECu
 6ZDCezYmLyXUcmwtN/IoS5bm3FmF/LIWsqSMbf0gjK5iCHR43O6jZhkMq0y5Ie2OI2u1
 QeqA==
X-Gm-Message-State: APjAAAWiK5QV21wonl30QKI1phv/EZVl23BAo/JSGOvcAfhveDkJ6kPi
 qFMXAFax7CkXESIAdWMvxXA=
X-Google-Smtp-Source: APXvYqzjBJmOe7kh/CZLL7BdC9z6NCtcR6MUiYB0EkIbaA5szbCI+x6EyyO+NT+xV11bMWoaOUfljg==
X-Received: by 2002:a1c:7a10:: with SMTP id v16mr836995wmc.2.1567650526219;
 Wed, 04 Sep 2019 19:28:46 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id i93sm660313wri.57.2019.09.04.19.28.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 19:28:45 -0700 (PDT)
Subject: Re: [PATCH] nvme: include admin_q sync with nvme_sync_queues
To: James Smart <james.smart@broadcom.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>, linux-nvme@lists.infradead.org,
 keith.busch@intel.com
References: <20190903200847.3378-1-edmund.nadolski@intel.com>
 <72e9ffb3-fdad-5624-12d5-b1fd38258413@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4753c18d-1122-20e0-d3d1-64745018078d@grimberg.me>
Date: Wed, 4 Sep 2019 19:28:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <72e9ffb3-fdad-5624-12d5-b1fd38258413@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_192848_221416_D36812DC 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gT24gOS8zLzIwMTkgMTowOCBQTSwgRWRtdW5kIE5hZG9sc2tpIHdyb3RlOgo+PiBudm1lX3N5
bmNfcXVldWVzIGN1cnJlbnRseSBzeW5jcyBhbGwgbmFtZXNwYWNlIHF1ZXVlcywgYnV0IHNob3Vs
ZAo+PiBhbHNvIHN5bmMgdGhlIGFkbWluIHF1ZXVlLCBpZiBwcmVzZW50Lgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBFZG11bmQgTmFkb2xza2kgPGVkbXVuZC5uYWRvbHNraUBpbnRlbC5jb20+Cj4+IC0t
LQo+PiDCoCBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgfCAzICsrKwo+PiDCoCAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9z
dC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPj4gaW5kZXggNDY2MDUwNWVkZWQ5
Li40M2MxMmY4YzAzMGYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+
PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPj4gQEAgLTM5NzQsNiArMzk3NCw5IEBA
IHZvaWQgbnZtZV9zeW5jX3F1ZXVlcyhzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKQo+PiDCoMKgwqDC
oMKgIGxpc3RfZm9yX2VhY2hfZW50cnkobnMsICZjdHJsLT5uYW1lc3BhY2VzLCBsaXN0KQo+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgYmxrX3N5bmNfcXVldWUobnMtPnF1ZXVlKTsKPj4gwqDCoMKgwqDC
oCB1cF9yZWFkKCZjdHJsLT5uYW1lc3BhY2VzX3J3c2VtKTsKPj4gKwo+PiArwqDCoMKgIGlmIChj
dHJsLT5hZG1pbl9xKQo+PiArwqDCoMKgwqDCoMKgwqAgYmxrX3N5bmNfcXVldWUoY3RybC0+YWRt
aW5fcSk7Cj4+IMKgIH0KPj4gwqAgRVhQT1JUX1NZTUJPTF9HUEwobnZtZV9zeW5jX3F1ZXVlcyk7
Cj4gd2hpY2ggcHJvYmFibHkgbWVhbiB0aGUgbmV3IHJlcXVlc3RfcSBzaG91bGQgYmUgdGhlcmUg
dG9vLi4uLgoKR2l2ZW4gdGhhdCBvbmx5IHBjaSB1c2VzIGl0IEkgdGhpbmsgd2UgZG9uJ3QgbmVl
ZCBpdCBmb3Igbm93Li4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1u
dm1lCg==
