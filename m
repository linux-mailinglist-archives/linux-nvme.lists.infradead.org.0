Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 878BE1F0369
	for <lists+linux-nvme@lfdr.de>; Sat,  6 Jun 2020 01:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ORqo0MeF5S0fK65o6EzM225RAht7oFFuZLmr0WTdcuM=; b=alxd2QtIFCt2DqZ0CTFlonIxC
	QSH1JPQ9IMipKf8v/+4j8CAvko7i5cJUhW5hpMJZb8UFS5pDx9u+Sp1cqf/LTXs7h3z0LNb9BatRp
	JlVNNJjcS0W/JBti4AnnF7xFD3crI3PqeCMc2B/0TartZ2U8h3vVJMMTeYzgfX4bAHt9IKtjR5lvp
	PW41TyPEYfNtMjO1TePKf0wClAVGlksf+2xKtXgZCYvKiT0fKfD449cY6SfZ1lfWWBs+TK9KLoMgY
	irGpk9Z7nSsXarQKmsuS6FkISDSklmjlWYXYYpBBt93FguvCZeSK3X146ulm6WzL+yD8yOBfu/vYX
	CeFObcaWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhLYs-0003DW-Eq; Fri, 05 Jun 2020 23:15:42 +0000
Received: from mail-pl1-f175.google.com ([209.85.214.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhLYo-0003Cj-7e
 for linux-nvme@lists.infradead.org; Fri, 05 Jun 2020 23:15:39 +0000
Received: by mail-pl1-f175.google.com with SMTP id bh7so4270815plb.11
 for <linux-nvme@lists.infradead.org>; Fri, 05 Jun 2020 16:15:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HrbwPMmhJHreuUxSimgYCw6ioxYjKXpFHkqk1RTM8EE=;
 b=ogWihvrbQUHiuwCMhAxjyeMteEtXAHA0R7fEwlUn4BRUYN1xCqVmuXhfdRIdRFTp2c
 VEmrlOrlyNHIF4euF/eZyUKVnAAtWxvUHipZS/zgYKl4oTvYQ9KiiUTH2CK1nHw/Agqg
 HKIVWKrHsvWBWFsOurOCrMfArvykYso5qogzeH+jTFfpM/VE90wKRkLfKNt9FBLqW8LA
 nO/JEbuppcQMQRlo7KP4r145HNsBzzohR5yrkwIeyKTyIV5SlRxB4UkF7tMlTOMmBPel
 2domFOk/H9cdmFPoA0h55DbBcO9SKkeO3zr79pOk+FL1itZH6PZSeECpfMMBrLkBmbrA
 B4Xw==
X-Gm-Message-State: AOAM5338WST+jmBmWL5pLJ1JGH2CO6XY9f5kweWH7tFKHd5PfDPgbpn/
 TUe/nCEEJQ4+OxJYiu83f1uIrCkgHBs=
X-Google-Smtp-Source: ABdhPJyj2V7Dkqjr11AtHsZp0cq2t7hH9uaNSR2ZZ1YOF3BVNi/xWvAT91708Axd/v5yCQB1sCo45g==
X-Received: by 2002:a17:902:684e:: with SMTP id
 f14mr12133423pln.328.1591398936817; 
 Fri, 05 Jun 2020 16:15:36 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:29e8:cf62:7c9b:35c2?
 ([2601:647:4802:9070:29e8:cf62:7c9b:35c2])
 by smtp.gmail.com with ESMTPSA id g29sm591154pfr.47.2020.06.05.16.15.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 16:15:35 -0700 (PDT)
Subject: Re: blktests test nvme/003 fails
From: Sagi Grimberg <sagi@grimberg.me>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
References: <a2b9e92a-f499-b54c-a275-c08a23467866@acm.org>
 <BYAPR04MB49651040C77627E3A70FF86886880@BYAPR04MB4965.namprd04.prod.outlook.com>
 <fddde27a-eb61-7031-a067-5538e0fe3243@grimberg.me>
 <BYAPR04MB49651CF1169CD33108A484B386880@BYAPR04MB4965.namprd04.prod.outlook.com>
 <BYAPR04MB4965217373E87DFEE2398D3F86890@BYAPR04MB4965.namprd04.prod.outlook.com>
 <96530c68-0cc0-8b88-4d3e-c2a66be44167@grimberg.me>
Message-ID: <e110c297-a357-5e8d-754b-09a5faec7399@grimberg.me>
Date: Fri, 5 Jun 2020 16:15:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <96530c68-0cc0-8b88-4d3e-c2a66be44167@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_161538_274761_D8B5F83B 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.175 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.175 listed in wl.mailspike.net]
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IMKgwqAgdm9pZCBudm1ldF9zcV9kZXN0cm95KHN0cnVjdCBudm1ldF9zcSAqc3EpCj4+IMKg
wqAgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgdTE2IHN0YXR1cyA9IE5WTUVfU0NfSU5URVJOQUwg
fCBOVk1FX1NDX0ROUjsKPj4gQEAgLTc4Niw4ICs4MDAsMTYgQEAgdm9pZCBudm1ldF9zcV9kZXN0
cm95KHN0cnVjdCBudm1ldF9zcSAqc3EpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgICogSWYgdGhp
cyBpcyB0aGUgYWRtaW4gcXVldWUsIGNvbXBsZXRlIGFsbCBBRVJzIHNvIHRoYXQgb3VyCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgICogcXVldWUgZG9lc24ndCBoYXZlIG91dHN0YW5kaW5nIHJlcXVl
c3RzIG9uIGl0Lgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+PiAtwqDCoMKgwqDCoMKgIGlm
IChjdHJsICYmIGN0cmwtPnNxcyAmJiBjdHJsLT5zcXNbMF0gPT0gc3EpCj4+ICvCoMKgwqDCoMKg
wqAgaWYgKGN0cmwgJiYgY3RybC0+c3FzICYmIGN0cmwtPnNxc1swXSA9PSBzcSkgewo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG52bWV0X2FzeW5jX2V2ZW50c19wcm9jZXNz
KGN0cmwsIHN0YXR1cyk7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBUYXJnZXQgY29udHJvbGxlcidzIGhvc3Qg
cG9zdGVkIGV2ZW50cyBuZWVkcyB0byBiZQo+PiBleHBsaWNpdGx5Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKiBjaGVja2VkIGFuZCBjbGVhcmVkIHNpbmNlIHRoZXJlIGlzIG5v
IDEgOiAxIG1hcHBpbmcKPj4gYmV0d2Vlbgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICogaG9zdCBwb3N0ZWQgQUVOIHJlcXVlc3RzIGFuZCB0YXJnZXQgZ2VuZXJhdGVkIEFFTnMg
Cj4+IG9uIHRoZQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogdGFyZ2V0IGNv
bnRyb2xsZXIncyBhZW5fbGlzdC4KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAq
Lwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudm1ldF9hc3luY19ldmVudHNfZnJl
ZV9ob3N0X3JlcShjdHJsKTsKPiAKPiBDYWxsIGl0IG52bWV0X2FzeW5jX2V2ZW50c19mYWlsX2Fs
bChjdHJsKTsKPiAKPiBJIHRoaW5rIHRoZSBvbGRlciB3YXMgYmV0dGVyIHRob3VnaC4uIENhbiB5
b3Ugc2VuZCB0aGUgbGF0ZXN0IG9uZSB0byBzZWUKPiBpdCBzaWRlIGJ5IHNpZGU/CgpBcmUgeW91
IHNlbmRpbmcgYSBwYXRjaCBDaGFpdGFueWE/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
