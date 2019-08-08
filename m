Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9E786A9C
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 21:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RXNxYRNiP8kPLdcFaP4yXIwgkg0PLpKInmfFlNjwCxI=; b=DLEQUNft02JcBZR3WE4HsnGU+
	WzFK6KJ3xPcVf266LKfJpaFLgCk0yXzrGG6XQ0TcCwlOgw0NmZ+iJ+xEuU2XHZmkeilGDeWUuVPLe
	GUx5PwWe216ZqYMNOPD9qXISvbyiALsH+Pjb2cucnkrJUDxJ/QsS85ozHf/O1JV99NJzTZn713TCb
	oxfhowqa/lewiYOLe+UilMCmFLjJ9x69EuYOE6MVx+AqaFgDQwj4AhLpABv9CrpfIC90WTxV3P44G
	MWdrc40vRpGH2OyEGpRWKBAGvVIAWRt7mVsreA/+vveBvrShsPXSZpAEEKX0/KWnvStOCdrSMQA9P
	CA34edzZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvo8l-0006V1-JU; Thu, 08 Aug 2019 19:31:59 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvo8f-0006UN-HK
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 19:31:55 +0000
Received: by mail-ot1-f66.google.com with SMTP id x21so29971792otq.12
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 12:31:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fLSzlcT8jvRgxR0yy55pOha0QrIQA9uy85uM/+9DeBs=;
 b=ED6wLNjAa7SVWKCeQxpp/Gb6BJRUZozjOVY4Cj9n8L43dcvEJn7IlDr3YAxND/dlKL
 THt+NUa3tsLKbffAQttuoZ1PONxQVkkmo8vPgIYCyNDy11qM08Uvehb3ZtpjZBmGx7Qo
 TWJFnd+H9v1rwKLuk8SN6NrAy2Zx7KELhIOy3phkZP7DfJW8IJb3tnf4oSBcw1uCILRT
 FTRXepOY+XWH6Tw78/LiO+tbHBnNjYykFx24U7kBYk1NJ9mlwwRC6BozJJwPRDCGTLYH
 8W9rDXl6pyhXczMQ2kKJkt/eWYlBMttJqqQ09AZahj05SLM2L41gTM3gOnUF06KO6tM/
 qVow==
X-Gm-Message-State: APjAAAULjN0OmarQsjO+YBYYWBi2wmmBgAEQ9JloyiMMCbQ0ewybd2EY
 FEwnklBTYZ65H+bS9BrRqKo=
X-Google-Smtp-Source: APXvYqyAwjLGl29qCeFla7tufreZmmTsekDyHN1gYJqy7HXdKOQEG4/62nWFzib76RheVQPJTuxjTA==
X-Received: by 2002:a05:6830:120e:: with SMTP id
 r14mr2934924otp.4.1565292712478; 
 Thu, 08 Aug 2019 12:31:52 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id d27sm1263344otf.25.2019.08.08.12.31.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 12:31:51 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
 <04c776f4-a04a-8256-c659-daa11fe78a29@grimberg.me>
 <806d9809-2c24-fcf9-e4c0-e07eaac88d13@mellanox.com>
 <e2a4fa0c-cba1-c044-768f-b9c249e5a5e5@grimberg.me>
 <bbab005d-a1c2-02a6-0716-fd74e5c8150f@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <ff091196-93b9-f240-d44a-b0d79762acbe@grimberg.me>
Date: Thu, 8 Aug 2019 12:31:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <bbab005d-a1c2-02a6-0716-fd74e5c8150f@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_123153_573413_48A9555F 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+PiBIaSBTYWdpLAo+Pj4KPj4+IEkgaW1wbGVtZW50ZWQgeW91ciBzdWdnZXN0aW9uIGJ1dCBp
dCBkb2Vzbid0IHdvcmsgZm9yIG1lLgo+Pj4KPj4+IFRoZSBrZXJuZWxfc2V0c29ja29wdCgpIHN1
Y2NlZWQgYW5kIEkgc2VlIHRoYXQKPj4+IHF1ZXVlLT5zb2NrLT5zay0+c2tfcHJpb3JpdHkgd2Fz
IGNoYW5nZWQgdG8gdGhlIGNvcnJlY3QgdmFsdWUsCj4+Pgo+Pj4gYnV0IEkgZG9uJ3Qgc2VlIHRo
YXQgdGhlIHByaW9yaXR5IHdhcyBjaGFuZ2VkIG9uIFdpcmVzaGFyay4KPj4+Cj4+PiBEbyBJIG1p
c3MgYW55dGhpbmc/Cj4+Cj4+IFNob3VsZCB3b3JrLCBjYW4geW91IGluc3RydW1lbnQgdG8gc2Vl
IHRoYXQgdGhlIHNrYi0+cHJpb3JpdHkgZG9lcwo+PiBnZXQgYXNzaWduZWQgY29ycmVjdGx5Pwo+
IAo+IEkgZGlkIHRoZSBmb2xsb3dpbmcgaW5zdGVhZCBhbmQgaXQgd29ya3MhIDopCj4gCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0ga2VybmVsX3NldHNvY2tvcHQocXVldWUt
PnNvY2ssIFNPTF9JUCwgSVBfVE9TLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGNoYXIgKikmb3B0LCBzaXplb2Yob3B0KSk7
Cj4gCj4gSXQgYWZmZWN0cyBvbmx5IHRoZSBvdXRnb2luZyBwYWNrZXRzIGZyb20gdGhlIGluaXRp
YXRvciBzaWRlICh1bmxpa2UKPiByZG1hLWNtIHRoYXQgYWZmZWN0cyBib3RoIHNpZGVzKS4KPiAK
PiBJIGFkZGVkIHRoZSBzYW1lIGtlcm5lbF9zZXRzb2Nrb3B0KCkgdG8gdGhlIHRhcmdldCBhdAo+
IG52bWV0X3RjcF9hZGRfcG9ydCgpIGFuZCBpdCB3b3JrcyBvbiBib3RoIHNpZGVzLgo+IAo+IERv
IHlvdSB0aGluayB3ZSBuZWVkIHRvIGFkZCBwb3J0IGNvbmZpZ3VyYXRpb24gb24gdGhlIHRhcmdl
dCBzaWRlIGZvcgo+IG52bWV0IHRjcD8KCkFic29sdXRlbHkgbm90IDopCgpXZSBzaG91bGQgY2hl
Y2sgb3VyIHJlY2VpdmVkIHRvcyBhbmQgc2V0IGFjY29yZGluZyB0byB0aGF0LgoKQ2FuIHlvdSB0
ZXN0IHNvbWV0aGluZyBsaWtlOgotLQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3RhcmdldC90
Y3AuYyBiL2RyaXZlcnMvbnZtZS90YXJnZXQvdGNwLmMKaW5kZXggNzZlNDM3NTBiOWU1Li5hMmY3
ZTFlZWM0NDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbnZtZS90YXJnZXQvdGNwLmMKKysrIGIvZHJp
dmVycy9udm1lL3RhcmdldC90Y3AuYwpAQCAtMTQxNSw2ICsxNDE1LDcgQEAgc3RhdGljIHZvaWQg
bnZtZXRfdGNwX3N0YXRlX2NoYW5nZShzdHJ1Y3Qgc29jayAqc2spCiAgc3RhdGljIGludCBudm1l
dF90Y3Bfc2V0X3F1ZXVlX3NvY2soc3RydWN0IG52bWV0X3RjcF9xdWV1ZSAqcXVldWUpCiAgewog
ICAgICAgICBzdHJ1Y3Qgc29ja2V0ICpzb2NrID0gcXVldWUtPnNvY2s7CisgICAgICAgc3RydWN0
IGluZXRfc29jayAqaW5ldCA9IGluZXRfc2soc29jay0+c2spOwogICAgICAgICBzdHJ1Y3QgbGlu
Z2VyIHNvbCA9IHsgLmxfb25vZmYgPSAxLCAubF9saW5nZXIgPSAwIH07CiAgICAgICAgIGludCBy
ZXQ7CgpAQCAtMTQ0OCw2ICsxNDQ5LDE1IEBAIHN0YXRpYyBpbnQgbnZtZXRfdGNwX3NldF9xdWV1
ZV9zb2NrKHN0cnVjdCAKbnZtZXRfdGNwX3F1ZXVlICpxdWV1ZSkKICAgICAgICAgc29jay0+c2st
PnNrX3dyaXRlX3NwYWNlID0gbnZtZXRfdGNwX3dyaXRlX3NwYWNlOwogICAgICAgICB3cml0ZV91
bmxvY2tfYmgoJnNvY2stPnNrLT5za19jYWxsYmFja19sb2NrKTsKCisgICAgICAgaWYgKGluZXQt
PnJjdl90b3MgPiAwKSB7CisgICAgICAgICAgICAgICBpbnQgb3B0ID0gaW5ldC0+cmN2X3RvczsK
KworICAgICAgICAgICAgICAgcmV0ID0ga2VybmVsX3NldHNvY2tvcHQoc29jaywgU09MX0lQLCBJ
UF9UT1MsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKGNoYXIgKikmb3B0LCBzaXpl
b2Yob3B0KSk7CisgICAgICAgICAgICAgICBpZiAocmV0KQorICAgICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gcmV0OworICAgICAgIH0KKwogICAgICAgICByZXR1cm4gMDsKICB9Ci0tCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1h
aWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
