Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138346D855
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 03:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b7RUJmvTytmwXKyzBRZcR2Z/rQuTkBBgArh7tKqJmJg=; b=ReMe3gEuzTRcukOR/Tq9eE3HA
	p7DmHNfytmaDNPVqP6CBho2x+M7SstvFfzE30h3crMjpmsx70pxcl6eV2K2B2aEbjQjy2UpGKIqT5
	cl4SD2u3iw5sRZyKNyyAO82oh/8aR3Rz4x6hpgqVkuDjuJKazt0lXh0KzEU3sR4nTjxEMIQXmeztx
	gtE0cliJm88Fe9UtDylDWQRGT/8Yn8QgEiVbZw3QTQ9ibf3APKEs894yDe6RRLaw3St8kpq4aiC1Z
	X0uFojkVkNAttkTgej98p73xTstKpvRnqwvV9tciAmS0mayQtKPR88LlVxVlzjj/a6pJi6R3bg8xl
	nItqNK6pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoHbl-00036r-3q; Fri, 19 Jul 2019 01:22:49 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoHbb-00036V-Ov
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 01:22:41 +0000
Received: by mail-oi1-x241.google.com with SMTP id m202so23063601oig.6
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 18:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AgPnGBNj1RH/lF27U2z3sjplbH83GLxpRaI1v+WHR14=;
 b=Fyql4ENrOerClyOWVCctUiLcwDIgjwxvpwnKhmkmx9WU782dXLtHK0kEy2w67lgCpd
 s5wl93tWrai8c+ydOwTJEnNV7hFBPAs/7dBFiE8TBclccSE23Y+A5+0wy7yH/+jLon2j
 PVB9j8PGYMs78H6YWm4MVD6smxxAe5vpMVsWZ03MrC9MS1+qq8+sGu3Gr0f0IMTGJFT4
 PogjXC5PFrq6Jl7dI9g1KMerzw26PraxCEKwGGii/t5vhzVwASj6oLFLSvFvuGbqwLbX
 foyiGFh4Ar8/sQZIAcPOnv/NreAiHHrg8I61gW+92HIkqC6UByL2o6XbU8a6+Mxqf7sV
 aROg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AgPnGBNj1RH/lF27U2z3sjplbH83GLxpRaI1v+WHR14=;
 b=Fgd8X4rmPOa5QTxqraoo9dn/Lb+J6hYG/UcwvI+bzY7EB0EazgpK2OiNeojACnopFE
 j1g8IIq5yfzUIsYw9Lq0oKvhL53nZ1aqiVIraL8GdYN/i80XQSbTgrVj5/0TXhMdiqmg
 pfLs3ExR9Fp2KmK6AHUfi5FfL87QlZU9N1/JCbIm/EqOjkP8BMTausux4ia0fWP1wBXA
 gFSk2E8ct7Yq27MBpfpgHynRONF7M+O38qDP+gmPgzV7JFv081EcWklaYgAzngifOHbj
 ajRFNiuSSkMA1ZpNQUHA/ue4pdE63nhgexZj8T8IiXa0a/Nu5c4y/3NlcavghebRyp3x
 8wKA==
X-Gm-Message-State: APjAAAXuHJWvzT5Nf4tL4Y6/pKnjlCbrN6EshCOHkZ+7PlZmz4ai6TKQ
 XQH85mt8I4vKJZhWXN/PEls55Dyp
X-Google-Smtp-Source: APXvYqxsQsnMXPgTHLlr1uzMT4bbpF0FwavxS4RrP4nTHk5VfQusRGbDxR+ty4DMsMcNBqHQuduqmg==
X-Received: by 2002:aca:7585:: with SMTP id
 q127mr26100161oic.113.1563499358283; 
 Thu, 18 Jul 2019 18:22:38 -0700 (PDT)
Received: from [192.168.1.237] (ip68-5-145-143.oc.oc.cox.net. [68.5.145.143])
 by smtp.gmail.com with ESMTPSA id
 d200sm10861446oih.26.2019.07.18.18.22.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 18:22:37 -0700 (PDT)
Subject: Re: [PATCH 07/10] nvme-cli: Add routine to search for controller with
 specific attributes
To: Sagi Grimberg <sagi@grimberg.me>, Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190716211241.7650-1-jsmart2021@gmail.com>
 <20190716211241.7650-8-jsmart2021@gmail.com>
 <20190717115711.GD10495@minwoo-desktop>
 <6b3ebb18-4b8c-c18e-501d-cd8f1f41c676@grimberg.me>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <daca2393-86ff-f9ec-cf7c-15c33990de7c@gmail.com>
Date: Thu, 18 Jul 2019 18:22:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6b3ebb18-4b8c-c18e-501d-cd8f1f41c676@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_182239_837456_C659A568 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8xOC8yMDE5IDU6MzUgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gCj4+PiArwqDCoMKg
IGZvciAoaSA9IDA7IGkgPCBuOyBpKyspIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoY3RybF9t
YXRjaGVzX2Nvbm5lY3RhcmdzKGRldmljZXNbaV0tPmRfbmFtZSwgYXJncykpIHsKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGRldm5hbWUgPSBzdHJkdXAoZGV2aWNlc1tpXS0+ZF9uYW1lKTsK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChkZXZuYW1lID09IE5VTEwpCj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZwcmludGYoc3RkZXJyLCAibm8gbWVtb3J5IGZv
ciBjdGxyIG5hbWUgJXNcbiIsCj4+Cj4+IG5pdHBpY2s6IHMvY3Rsci9jdHJsCj4+Cj4+IE1heWJl
IGl0IGNhbiBiZSB1cGRhdGVkIHdoZW4gaXQgZ2V0cyBtZXJnZWQuCj4gCj4gWWVhLCBsZXRzIGNo
YW5nZSB0aGF0IChlaXRoZXIgamFtZXMgb3Iga2VpdGgpCgpOUC4gSSdsbCBwbGFuIG9uIHBvc3Rp
bmcgYSB2MiB3aXRoIHRoZSAyIHNtYWxsIGNvbW1lbnRzIHJlc29sdmVkICh0aGlzIApwcmludCwg
SGFubmVzJ3Mgb3JkZXIpLgoKSSd2ZSBiZWVuIHRveWluZyB3aXRoIHR3ZWFraW5nIHRoZSBwYXJz
ZSByb3V0aW5lcy4gSSdtIHdvbmRlcmluZyBpZiAKcGFzc2luZyB0aGUgY29ubmVjdCBhcmdzIHN0
cmluZyB0byBjdHJsX21hdGNoZXNfY29ubmVjdGFyZ3MoKSBpcyBiZXR0ZXIgCnRoYW4gY3JlYXRp
bmcgYSBuZXcgc3RydWN0dXJlIHRvIHBhc3MgaXQuICBJdCB3b3VsZCBtZWFuIHdlIHdvdWxkIHBh
cnNlIAp0aGUgYmFzZSBjb25uZWN0IGFyZ3Mgc3RyaW5ncyBwZXJoYXBzIG11bHRpcGxlIHRpbWVz
LCBidXQgaXQgc3VyZSAKbG9jYWxpemVzIHRoZSBwYXJzaW5nIHRvIHRoZSBtYXRjaGVzIHJvdXRp
bmUgYW5kIGVsaW1pbmF0ZXMgdGhlIG5ldyAKc3RydWN0dXJlLiAgVGhvdWdodHMgPwoKLS0gamFt
ZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
