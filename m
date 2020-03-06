Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0175117B3AD
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Mar 2020 02:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UrhCNJMHH2s18qe4xf6se2cqdgnOgABXJfNPWAOgAHo=; b=Andx7YExN7LeIf3XEthXHfG0R
	JRV8AXVaxe78BA7ugKzfZqiVqcHU0tNjNcBXpkbFxTsaWm5x35GJ9ik0e3osz4IGxSDKJZzEKms0H
	41bdjNFTdj16bLC+qCgFd4EeB2cE3Fz0cwjD1EJvkokMEJSVUi+5SadYwa/vFNlclwJblQDrVHgYw
	fn+Q9bUXAzhMAfV0Qo/0Td2TZnAB8TVNQOIgbtRUUwGgoC/CwGmZZ64EsmKl9+S9SDTIf2S/RxSc0
	kdBHM4zxx2IgTzBhSZ4vPbYqCiL5P69OATSX2xDTiLgKW+G+u0dQRMKjmegCFwod0Fnxt2STdpntt
	lYhc3K5sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA1e1-000498-3n; Fri, 06 Mar 2020 01:19:17 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA1dx-00048n-7o
 for linux-nvme@lists.infradead.org; Fri, 06 Mar 2020 01:19:14 +0000
Received: by mail-ot1-f67.google.com with SMTP id x19so878901otp.7
 for <linux-nvme@lists.infradead.org>; Thu, 05 Mar 2020 17:19:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qeWroIS2a1rdWArivSfqdZE6An6mIPOhb0v6w8xUyvM=;
 b=FqRi8hIwNPXySyhZK4JI3XkQSOPCrUm02D8En3DwRdvDcGPC18nZpfrqir1yjeYmL4
 dl1cdwqDFJHqkoYkTrBrlBxdCV4DfN/tJ5fqUEncW6MML6cZvcwyvJ/rkMrvrIbxM5jK
 GXLeHzv9/MeV2HVSsi2v98V/I38ISASLG8GW2ijq/VYJGnEGY2lrdEkQ6odJvjFD7F0F
 xkhtOaKnB9CRg4+CXqjcQmYkWaetTw744Oe9hiDyPD5ROii805pPLxlrCLBfGN320qfH
 7sqqie8VCh099BPzrc+Z+yh15Ny7PwBtThFRjuZ+A6iFDUoT2lfVhHJBumwYBV9QAaC2
 72Ig==
X-Gm-Message-State: ANhLgQ1x4gMI31oEt4k/ABUQAo2hugtQV1kN+GZYgaA22nQtGzSkXh1E
 HVRTaaesshOvoCN+7qKiak4=
X-Google-Smtp-Source: ADFU+vuIlIiifH7pI0aSW49H788jxwj88gIaEbW2gt/AisYjjlCyp7mrQMBPJSA0tV59FY3neZYI6Q==
X-Received: by 2002:a9d:5e04:: with SMTP id d4mr591692oti.36.1583457552081;
 Thu, 05 Mar 2020 17:19:12 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id w126sm6419057oif.16.2020.03.05.17.19.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 17:19:11 -0800 (PST)
Subject: Re: [PATCH V2 3/3] nvmet-rdma: allocate RW ctxs according to mdts
To: Max Gurtovoy <maxg@mellanox.com>, jgg@mellanox.com,
 linux-nvme@lists.infradead.org, hch@lst.de, kbusch@kernel.org,
 Chaitanya.Kulkarni@wdc.com
References: <20200305095530.132858-1-maxg@mellanox.com>
 <20200305095530.132858-3-maxg@mellanox.com>
 <c776b5bc-8b7c-ce8a-19a8-4a0ec976d923@grimberg.me>
 <5e905274-385e-58a6-6e1a-9da005a4af1e@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0e63c728-1b26-0849-05c4-463a1af93c7a@grimberg.me>
Date: Thu, 5 Mar 2020 17:19:09 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5e905274-385e-58a6-6e1a-9da005a4af1e@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_171913_282773_7080D2E6 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
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
Cc: krishna2@chelsio.com, bharat@chelsio.com, nirranjan@chelsio.com,
 bvanassche@acm.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3RhcmdldC9yZG1hLmMgYi9kcml2ZXJzL252
bWUvdGFyZ2V0L3JkbWEuYwo+Pj4gaW5kZXggZDEyZWYwZC4uZGFhYjY1NiAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvbnZtZS90YXJnZXQvcmRtYS5jCj4+PiArKysgYi9kcml2ZXJzL252bWUvdGFy
Z2V0L3JkbWEuYwo+Pj4gQEAgLTk3Niw3ICs5NzYsNyBAQCBzdGF0aWMgaW50IG52bWV0X3JkbWFf
Y3JlYXRlX3F1ZXVlX2liKHN0cnVjdCAKPj4+IG52bWV0X3JkbWFfcXVldWUgKnF1ZXVlKQo+Pj4g
wqAgewo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaWJfcXBfaW5pdF9hdHRyIHFwX2F0dHI7Cj4+PiDC
oMKgwqDCoMKgIHN0cnVjdCBudm1ldF9yZG1hX2RldmljZSAqbmRldiA9IHF1ZXVlLT5kZXY7Cj4+
PiAtwqDCoMKgIGludCBjb21wX3ZlY3RvciwgbnJfY3FlLCByZXQsIGk7Cj4+PiArwqDCoMKgIGlu
dCBjb21wX3ZlY3RvciwgbnJfY3FlLCByZXQsIGksIGZhY3RvcjsKPj4+IMKgIMKgwqDCoMKgwqAg
LyoKPj4+IMKgwqDCoMKgwqDCoCAqIFNwcmVhZCB0aGUgaW8gcXVldWVzIGFjcm9zcyBjb21wbGV0
aW9uIHZlY3RvcnMsCj4+PiBAQCAtMTAwOSw3ICsxMDA5LDkgQEAgc3RhdGljIGludCBudm1ldF9y
ZG1hX2NyZWF0ZV9xdWV1ZV9pYihzdHJ1Y3QgCj4+PiBudm1ldF9yZG1hX3F1ZXVlICpxdWV1ZSkK
Pj4+IMKgwqDCoMKgwqAgcXBfYXR0ci5xcF90eXBlID0gSUJfUVBUX1JDOwo+Pj4gwqDCoMKgwqDC
oCAvKiArMSBmb3IgZHJhaW4gKi8KPj4+IMKgwqDCoMKgwqAgcXBfYXR0ci5jYXAubWF4X3NlbmRf
d3IgPSBxdWV1ZS0+c2VuZF9xdWV1ZV9zaXplICsgMTsKPj4+IC3CoMKgwqAgcXBfYXR0ci5jYXAu
bWF4X3JkbWFfY3R4cyA9IHF1ZXVlLT5zZW5kX3F1ZXVlX3NpemU7Cj4+PiArwqDCoMKgIGZhY3Rv
ciA9IHJkbWFfcndfbXJfZmFjdG9yKG5kZXYtPmRldmljZSwgcXVldWUtPmNtX2lkLT5wb3J0X251
bSwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMSA8PCBOVk1FVF9S
RE1BX01BWF9NRFRTKTsKPj4KPj4gTWF5YmUgSSdtIG1pc3Npbmcgc29tZXRoaW5nLCBidXQgYXJl
bid0IHlvdSBtaXNzaW5nIHRoZSBtcHNtaW4KPj4gbXVsdGlwbGllcj8geW91ciBtYXhwYWdlcyBp
cyBub3QgKDEgPDwgOCkgYnV0IHJhdGhlciAoMSA8PCAyMCkgaXNuJ3QgaXQ/Cj4gCj4gd2h5ID8K
PiAKPiB3ZSBzdXBwb3J0IDI1NiBwYWdlcyB3aXRoIDRLQiBzaXplIGVhY2ggdG8gZ2V0IDFNQiAi
bWR0cyIuCj4gCj4gVGhlIGZhY3RvciBpcyBpbiB1bml0cyBvZiBSVyBhcGkgY29udGV4dCAodGhh
dCBtaWdodCBsaW1pdCB0aGUgc2l6ZSBvZiAKPiB0aGUgTVJzIGFjY29yZGluZyB0byBzb21lIGxv
Z2ljKS4KCllvdSdyZSByaWdodCwgbmV2ZXIgbWluZC4uLgoKUmV2aWV3ZWQtYnk6IFNhZ2kgR3Jp
bWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1udm1lCg==
