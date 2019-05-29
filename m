Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF8D2E613
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 22:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RXcpHByKVq4lyhSH6NQy7Bfn6nghdkPB0WUu8uaAHds=; b=dEmg6l1cfI3mS9fTJ+gQoCtZ6
	tN2CM7TKKG91KXwSWQFxd0BvLmXvHr3W/+P5k6gDJMNg9tZpbISjhPNmrOhV1/Y1uUT89bfE1Zezc
	xdD7ZlRZiKREPcEghxKzweeFinmPFpGaSI5mlV1MtervS9OK5CQ6RpZqvr7IlqpywiWDEW3dCjmjP
	G9keBlplkSZ5B+SuaS78iGZGUT7X5X/t7pGc4PfQeBKuClGyVkqpYxsScKGOAK9Ml5BWskgrGFAYY
	QluthT6K3hpIAtm4vWg8V5bF/O9iPc9L2gLroJI+j3pxm8XR262bmDj9vd5XmJTX/0NRKWvRd0rlp
	afEFEB4GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5BA-0005JH-1I; Wed, 29 May 2019 20:28:08 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5B4-0005AD-G9
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 20:28:03 +0000
Received: by mail-wm1-f65.google.com with SMTP id 7so2423945wmo.2
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 13:28:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tQkFLEfeECTEXsk4NflKtIBQUuwbp/mBEG0aIt9y+O8=;
 b=dni0EzyNTLBr3elF2kLqIGRXaBGmXsnkoKx3ZCmf+K6RauCKns+MrC1dZ1+NZA7x5I
 wOrIJFwUVaJbmwqAWKu3UKOPzwyiIko1kJ8GiSiHCoyqTUquzqjs9Jv/Tckr7Rhfv5pu
 Crw90XY0wBVkBoB8UqttCZyZJL4g7phkWkPfw2PUbfwsiFt4tWVopz8/nA+ytFEF/WOY
 XWPFV9k4+fsHxf+fGBsU7lDzygEnRUKemeJaNBgELBrxYaWVuj8+e3VYyzaRdGavo+vo
 oXTng+ikFea51Bgqi2mYtEslzqGXk0cFhHzPvaz47B/X0GQTTUQP0w3iF4utkXbtzF4r
 xEdg==
X-Gm-Message-State: APjAAAXjbZIGLQJWRWffEIFQOXXAhlfqBfFHDPZTctx8Gl2Ms6m57qz8
 82fIiE/P0lUff0tPara6Ncc=
X-Google-Smtp-Source: APXvYqyagZBcrnrf2medirmjKF0ggNb5fgo+Xo3ZnWIXOeDa/5g9+sILrF7n5NFzk81C3/VCX5T8BQ==
X-Received: by 2002:a7b:c24f:: with SMTP id b15mr7995241wmj.103.1559161679450; 
 Wed, 29 May 2019 13:27:59 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id l190sm643403wml.25.2019.05.29.13.27.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 13:27:58 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] nvme-rdma: fix queue mapping when queue count is
 limited
From: Sagi Grimberg <sagi@grimberg.me>
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org
References: <20190529054905.16279-1-sagi@grimberg.me>
 <83c239a0-69bd-9fa4-b7af-4cb01d20cc2c@mellanox.com>
 <c5fa88e8-f046-2d3b-7851-afbc1446fcbf@grimberg.me>
Message-ID: <bb65e190-527a-e660-3cda-8fc340b57ef7@grimberg.me>
Date: Wed, 29 May 2019 13:27:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c5fa88e8-f046-2d3b-7851-afbc1446fcbf@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_132802_541117_69272432 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 james.r.harris@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+PiBAQCAtMTc4MSwxNiArMTc5OCwyMiBAQCBzdGF0aWMgaW50IG52bWVfcmRtYV9tYXBfcXVl
dWVzKHN0cnVjdCAKPj4+IGJsa19tcV90YWdfc2V0ICpzZXQpCj4+PiDCoMKgwqDCoMKgIGJsa19t
cV9yZG1hX21hcF9xdWV1ZXMoJnNldC0+bWFwW0hDVFhfVFlQRV9SRUFEXSwKPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGN0cmwtPmRldmljZS0+ZGV2LCAwKTsKPj4+IC3CoMKgwqAgaWYg
KGN0cmwtPmN0cmwub3B0cy0+bnJfcG9sbF9xdWV1ZXMpIHsKPj4+ICvCoMKgwqAgaWYgKG9wdHMt
Pm5yX3BvbGxfcXVldWVzICYmIGN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUE9MTF0pIHsKPj4+
ICvCoMKgwqDCoMKgwqDCoCAvKiBtYXAgZGVkaWNhdGVkIHBvbGwgcXVldWVzIG9ubHkgaWYgd2Ug
aGF2ZSBxdWV1ZXMgbGVmdCAqLwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHNldC0+bWFwW0hDVFhf
VFlQRV9QT0xMXS5ucl9xdWV1ZXMgPQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1BPTExdOwo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgIHNldC0+bWFwW0hDVFhfVFlQRV9QT0xMXS5xdWV1ZV9vZmZzZXQgPQo+Pj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRd
Owo+Pj4gLcKgwqDCoMKgwqDCoMKgIGlmIChjdHJsLT5jdHJsLm9wdHMtPm5yX3dyaXRlX3F1ZXVl
cykKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNldC0+bWFwW0hDVFhfVFlQRV9QT0xMXS5x
dWV1ZV9vZmZzZXQgKz0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3RybC0+
aW9fcXVldWVzW0hDVFhfVFlQRV9SRUFEXTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN0
cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF0gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9SRUFEXTsKPj4KPj4gaW4gY2FzZSBvZiBz
aGFyZWQgcXVldWVzwqAgY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9SRUFEXSAhPSAKPj4gc2V0
LT5tYXBbSENUWF9UWVBFX1JFQURdLm5yX3F1ZXVlcy4KPj4KPj4gU2hvdWxkbid0IHdlIGp1bXAg
b3ZlciAodGhlIHF1ZXVlX29mZnNldCkgdGhlIHNldC0+bWFwIHZhbHVlcyA/Cj4gCj4gVGhpcyBp
cyBleGFjdGx5IHdoeSB3ZSBzaG91bGRuJ3QuIEluIHRoZSBzaGFyZWQgY2FzZSwgd2Ugb25seSBo
YXZlCj4gSENUWF9UWVBFX0RFRkFVTFQgYW5kIEhDVFhfVFlQRV9SRUFEIGlzIHplcm8gc28gdGhp
cyBjYXNlIGp1bXBzCj4gZXhhY3RseSBob3cgbXVjaCBpdCBuZWVkcyB0by4KCmJ0dywgSSB3YW50
IGEgcmV2aWV3IHRhZyBmcm9tIHlvdSBNYXggYmVmb3JlIHRha2luZyB0aGlzIGluLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
