Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE75C70CCC
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 00:38:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PUYkjf5xhdFwuD4pD2KE072JlRyyeqAcocB8LdIZQYA=; b=uZlcjQsBRQ0RrRnNj4W1GUB5+
	aP6G00mVoooHPVPwDy3bt1iIbWdrpIrgWB3IO538wtdghOrdPWUUytrMMmcf/8/hTygLOyxZJNMm8
	7V1wbURsRfgzmOZ09ABhWhPyw5gsZphEX7qdz70AT7LxXbjMYGIFbpGtnJyuJwaBn8kQuuxIFboPI
	8oGZX3O1OkBtZqRL844UnmXDSfjFat9pBMlOZnDE/ZOAmYKg01iSaBrZxcHhV4qhO4bheS3jGjVtd
	Wh3MTBK9HFW8wtLUw2N27cHJiIrC2PUJlaAbLMoHO3tilJ0wcd6nXsFJwFYpaJ7qUiPktjmv8CEuO
	OOqrSusqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgwo-0006XB-RE; Mon, 22 Jul 2019 22:38:22 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgwY-0006Wl-FY
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 22:38:07 +0000
Received: by mail-oi1-f177.google.com with SMTP id v186so30824363oie.5
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 15:38:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W1RJVAjmVnV2hVZq3fQII4ZZTsTyiXciNzToDzAECd0=;
 b=CxvSyU7javILIsnWogneVHeb2R4uwrENfnQBtS0elOG8JhCMynBwPgWfLxD5s8tPOv
 wbe/+oS8Y1xrOAWlZ2+f0d1cUx1IoYvVb+ueqpeL+Kqqv+mFV43wps98+doTPfCFQ5JU
 Nw1skSaBGhQq5hAflwETyGbLQJu2q3Xs5LwusNYlwpnmc6moAzZSupm6HbEKepqzmtz0
 d8ZzF5YtLeqDRi5scI6J0AOUVD/i82+c1ubyDVcMroEn9ZIKBnhSdQT5bUncR03G3NF+
 9aHXKMs71iQWYZF7ufr1Zx98kQIGn1X/HWKUQfhnXf8nYcAgWpHjw+PP3F5Evdtp1UAB
 8iQg==
X-Gm-Message-State: APjAAAUGhIHNXBEhAH9Nt5DPDz7fmmZI1h+40DuuNHuFEnPGbZ80IFRz
 zJcGmqvsnpKNIHw+70Gny1wlCdFH
X-Google-Smtp-Source: APXvYqz1O63LeUnwTch4jNL9PV0IC2eOV0GDvluytOk83Dc7sPAFu5nlWIpXW92Awbd9YD/KCrcHmw==
X-Received: by 2002:aca:4383:: with SMTP id q125mr37083831oia.29.1563835084288; 
 Mon, 22 Jul 2019 15:38:04 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e5sm13729870otl.60.2019.07.22.15.38.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 15:38:03 -0700 (PDT)
Subject: Re: nvme-tcp: 'page must not be a Slab one'
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <B33B37937B7F3D4CB878107E305D4916D14FD1@ORSMSX104.amr.corp.intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6a2eedf1-8629-c5b5-257b-94cf7b3c7ae6@grimberg.me>
Date: Mon, 22 Jul 2019 15:38:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <B33B37937B7F3D4CB878107E305D4916D14FD1@ORSMSX104.amr.corp.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_153806_521915_1D6046BD 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.177 listed in list.dnswl.org]
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

Cj4gTmV3IHRvIHRoaXMgbGlzdCwgbm90IHRvIE5WTWVfb0YuwqAgQXBvbG9naXplIHVwIGZyb250
IGlmIHRoaXMgaXMgbm90IGFuIGFwcHJvcHJpYXRlIHVzZSBvZiB0aGlzIGZvcnVtLCBwbGVhc2Ug
c2xhcCB3cmlzdCBhcHByb3ByaWF0ZWx5IGlmIHNvLgoKVGhpcyBpcyBleGFjdGx5IHRoZSBjb3Jy
ZWN0IGZvcnVtLgoKPiBBbSBkZXZlbG9waW5nIGZvciBOVk1lX29GL1RDUCwgYW5kIHNlZWluZyB0
aGUgZmFpbHVyZSBtZXNzYWdlIGluIHN1YmplY3QgbGluZSBkdXJpbmcga2VybmVsX3NlbmRwYWdl
Lgo+IFRoaXMgZmFpbHVyZSBuZXcgdG8gbWUgc3RhcnRpbmcgd2l0aCB2NS4xLsKgIFNlZSBpdCBp
biB2NS4yIGFuZCBzdGFibGUgNS4yLjEKPiAKPiBXb25kZXJpbmcgaWYgdGhpcyBpcyByZWxhdGVk
IHRvICdudm1lLXRjcDogcmVwbGFjZSBzZW5kcGFnZSBjYWxscyB3aXRoIHNlbmRtc2cgY2FsbHMg
Zm9yIFNMQUIgY2h1bmtzJz8uwqAgSWYgc28sIGlzIHRoZXJlIHBhdGNoIGluIHRoZSB3b3JrcyB0
byBhZGRyZXNzIGl0LCBvciBkaWQgSSBtaXNzIGl0LgoKWWVzLCB0aGlzIGlzIHNwZWNpZmljIHRv
IENPTkZJR19ERUJVR19WTS4KCmRvIHlvdSBoYXZlIHRoaXMgcGF0Y2ggYXBwbGllZD8KMzdjMTUy
MTk1OTlmICgibnZtZS10Y3A6IGRvbid0IHVzZSBzZW5kcGFnZSBmb3IgU0xBQiBwYWdlcyIpCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1l
IG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
