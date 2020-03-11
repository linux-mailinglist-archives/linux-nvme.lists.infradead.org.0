Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88751182571
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Mar 2020 23:58:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hYkhcK+v1gB6gVDMp3vKTG/fOilroTlevD12WrPEVgY=; b=dQ5VgJwNDgDOYgvMv2stLH4Ga
	tMPGHR1Q1dZeZpQvQuvkdwEW+VVtgBb/BBV6CkXrzYTzYuNyhwWQknUmcUusC2/2HAqeFI/NQpvzf
	wp0ni6b0lOCISq4rRwUHsAW2Y7Q1fRGOBMamWdYJoA98S7PIECD2bk3GaBn4wFU1i+NGvm5f+DJu5
	xrMAZdh9uOicYDHE64zn9NzDzM7zBKTjCrnCUrEh3mEDqOF1yUzCoL9wJaGHK+uwBKqTVSk+xwXhO
	pNbW+y2/HZ02mXJqzDzyCbn9OA9rC/wUCUUivnUOPVJp+pcwuKYBCiuLy9ya5ZmmhiQy3hr5D8Lr9
	YnhPUp7UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCAJ7-0002H2-Bg; Wed, 11 Mar 2020 22:58:33 +0000
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCAGu-0008PV-Q4
 for linux-nvme@lists.infradead.org; Wed, 11 Mar 2020 22:56:18 +0000
Received: by mail-wr1-f53.google.com with SMTP id r15so4926251wrx.6
 for <linux-nvme@lists.infradead.org>; Wed, 11 Mar 2020 15:56:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=T3PUoapcGbyObdohGxIkdJjTEs0bzV7JevLC9VEHnAU=;
 b=Jpcm6ax9MzitvXBaKfuRd1GUr3bB2pxz31XSfrMfQOTH4lIooq8TxC2Ubc64WWtNJO
 rE1ZFLLCXzBO70Emnaz1oNGszmZjQZR5DBga+ufOR9bpTTOp+VoaKbiEFjJ0fXJ+M0r5
 C7brpr7X9hsxti2HjvEnxDSTZ69Uevn0i6v3TL9aniQpwythWQ12iZbpi6y3KzbZNSKy
 NjibfW2tCmqK66FlRGAR+bUoot84bDi380FUqChIwsiwuGDeAghOhCEX0YUceI13ZXED
 tMYFYnR0yhtkEelWpdICqd9NKfP/lfHKAKpmm0sEk0bz6+NmcUDD5YjxBCL+4QWPENUT
 Fhww==
X-Gm-Message-State: ANhLgQ0s7tHFlwzOLURiCSOAbmYUuAEWf87xQiWVpww6asq9C0Panqed
 S1Yue76rrvkOFfuKs51leX0=
X-Google-Smtp-Source: ADFU+vvPaURSsf8XvrLqZSWD7QYIo03GKhTXAis7KomvkhUNomsLbGhE9r17BqdwEHcB1HcvWBNDQA==
X-Received: by 2002:a5d:54c9:: with SMTP id x9mr6685536wrv.256.1583967374739; 
 Wed, 11 Mar 2020 15:56:14 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0::21? ([2600:1700:65a0:78e0::21])
 by smtp.gmail.com with ESMTPSA id o3sm10738736wme.36.2020.03.11.15.56.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Mar 2020 15:56:13 -0700 (PDT)
Subject: Re: Sighting: Use of 'disable_sqflow' option shows drastic reduced
 I/O rate for small Queue Depths
From: Sagi Grimberg <sagi@grimberg.me>
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <CY4PR11MB1351F4B992E207DCFD610FE6E5FE0@CY4PR11MB1351.namprd11.prod.outlook.com>
 <79eb6f31-1c65-7920-5e66-8ee9a6e81aae@grimberg.me>
 <CY4PR11MB1351F639D6B6582D5EEBA74DE5FE0@CY4PR11MB1351.namprd11.prod.outlook.com>
 <7ad247fc-4c42-2712-c324-d257505eb0d0@grimberg.me>
Message-ID: <5732ea78-3b36-890d-70b8-e91edbebae47@grimberg.me>
Date: Wed, 11 Mar 2020 15:56:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7ad247fc-4c42-2712-c324-d257505eb0d0@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_155616_861590_78F66BC1 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.53 listed in wl.mailspike.net]
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
Cc: Jens Axboe <axboe@kernel.dk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IEBAIC01MzMsOSArNTM0LDE2IEBAIHN0YXRpYyBpbnQgbnZtZXRfdHJ5X3NlbmRfZGF0YShz
dHJ1Y3QgCj4+IG52bWV0X3RjcF9jbWQgKmNtZCkKPj4gwqDCoMKgwqDCoMKgwqDCoCB3aGlsZSAo
Y21kLT5jdXJfc2cpIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0
IHBhZ2UgKnBhZ2UgPSBzZ19wYWdlKGNtZC0+Y3VyX3NnKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgdTMyIGxlZnQgPSBjbWQtPmN1cl9zZy0+bGVuZ3RoIC0gY21kLT5vZmZz
ZXQ7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBmbGFncyA9IE1TR19ET05U
V0FJVDsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoY21kLT53Ynl0
ZXNfZG9uZSArIGxlZnQgPCBjbWQtPnJlcS50cmFuc2Zlcl9sZW4gfHwKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICghbGFzdF9pbl9iYXRjaCAmJiBjbWQt
PnF1ZXVlLT5zZW5kX2xpc3RfbGVuKSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGZsYWdzIHw9IE1TR19NT1JFOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBlbHNlIGlmIChxdWV1ZS0+bnZtZV9zcS5zcWhkX2Rpc2FibGVkKQo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmxhZ3MgfD0gTVNHX0VP
UjsKPiAKPiBJcyB0aGUgTVNHX0VPUiBuZWNlc3NhcnkgaGVyZT8gQ2FuIHlvdSBjaGVjayB3aXRo
b3V0IGl0PwoKTWFyaz8gRGlkIHlvdSBnZXQgYSBjaGFuY2UgdG8gY2hlY2sgdGhhdD8KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFp
bGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
