Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052C91EC003
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 18:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oXH3aARyJTxPEdhwcemxBAbbVdgAzw2OHFGdHQImIYI=; b=lEG/V8mVT2Hm5aO29m/3D0DHk
	JOuPsN9WYKdqnWwcffUzhiAQ0JnB1ZnP4xgYCq6qq0qvnqBEh/K7jKTY0TyROX8tpdnXD1AKj1eZV
	KjesbqCgX9Q7jpDpVzpXloZqSXz0u128vqUNQ9Sn8hx4q88AVHXQEMndecSb0EDCZi4xJDa4hvQfx
	bSu0Ts8CRJoqaXI6WYhDcjPKkSQN2DHhXCxSfd3YIcv/nGdQrVKjCxzC9yhC8JvY5Eu8wHBzXQLt9
	bKHslKI70qDAEsTHefOBiop5k6/Yb7g4+cT7qmfpJ3sUI1qGehHHE4wjEqb3b+VNqvTK2JtkPyJrP
	rjxln/9Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9oF-0004US-Ng; Tue, 02 Jun 2020 16:30:39 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9o9-0004TQ-Ri
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 16:30:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id c71so3527490wmd.5
 for <linux-nvme@lists.infradead.org>; Tue, 02 Jun 2020 09:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Sanqk8e2p1ErNKdaUjhTIbGYw6FSAhJELz2qKyaSoVQ=;
 b=h0KmI4cAXFJrBHFEVbvzqxeIfq6MnHMYRrAGlIgNVeUqH1PO2UBdYlyNdyjKp3gDGU
 C4sGrNvcI6Ur/GprXem6tyiU0ZaFelQ8A2X2/b3P7JId4ENq99SAZTS2riyf2Jq0IzAL
 1AMwFDEK0KHZWqhAAEa26ly2YJBidfpouQMWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Sanqk8e2p1ErNKdaUjhTIbGYw6FSAhJELz2qKyaSoVQ=;
 b=D0LQhwX0ryJBDHtF5DhpFQYejfk2jM7sTw4AHeoao//2mTblL02mRvp94yp7rTskmr
 kOhssre0cuRzJZbvxcG4mN0jcNnZO364fa8GK5hSt+xK4r3Om2q7iJzxQ54vht/CWo7m
 B11m0iPiMPLnFM80bfbhWaxtDw4vcNMWnBT3mzVCBLjW/q7IWqqPKErKUFWibNWBEVJJ
 Gs4oTq+UPQuT29riRk7MMxJn+KuxDqGXrccHJLykXFgO9q0kNxAW12pO5TutKDOEs8c7
 QRNfcUtKxCMwBUv1I2ja1DfzHitDwEHBm1sNkpVeHrNHHM9DCQ9MnSxVLIp6ba0hCeM7
 gTww==
X-Gm-Message-State: AOAM533EjYaRH78WRyNPYF1zOZ9BUO0h+FjScdam0U2oi8xtZDYsaUao
 0s/waDlYzVpq1sit3NshtE9nqA==
X-Google-Smtp-Source: ABdhPJzpbdXn9V9FFlq6T0pPI8ZbQRoBqMYB6C87dCYT1Ejucy9FSmK3+swUNUpWBdtOmMCOpA7/ew==
X-Received: by 2002:a1c:a905:: with SMTP id s5mr4734280wme.120.1591115428316; 
 Tue, 02 Jun 2020 09:30:28 -0700 (PDT)
Received: from [192.168.1.237] (ip68-5-85-189.oc.oc.cox.net. [68.5.85.189])
 by smtp.gmail.com with ESMTPSA id a16sm4689495wrx.8.2020.06.02.09.30.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 09:30:27 -0700 (PDT)
Subject: Re: [PATCH] nvme-fc: Only call nvme_cleanup_cmd() for normal
 operations
To: Daniel Wagner <dwagner@suse.de>, linux-nvme@lists.infradead.org
References: <20200529113740.31269-1-dwagner@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <673ed6fc-e0fd-db71-67e5-b0d5e6007397@broadcom.com>
Date: Tue, 2 Jun 2020 09:30:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200529113740.31269-1-dwagner@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_093033_902513_1ECC073B 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzI5LzIwMjAgNDozNyBBTSwgRGFuaWVsIFdhZ25lciB3cm90ZToKPiBBc3luY2hyb25v
dXMgZXZlbnQgbm90aWZpY2F0aW9ucyBkbyBub3QgaGF2ZSBhbiByZXF1ZXN0Cj4gYXNzb2NpYXRl
ZC4gV2hlbiBmY3BfaW8oKSBmYWlscyB3ZSB1bmNvbmRpdGlvbmFsbHkgY2FsbAo+IG52bWVfY2xl
YW51cF9jbWQoKSB3aGljaCBsZWFkcyB0byBhIGNyYXNoLgo+Cj4gRml4ZXM6IDE2Njg2ZjNhNmMz
YyAoIm52bWU6IG1vdmUgY29tbW9uIGNhbGwgdG8gbnZtZV9jbGVhbnVwX2NtZCB0byBjb3JlIGxh
eWVyIikKPiBDYzogTWF4IEd1cnRvdm95IDxtYXhnQG1lbGxhbm94LmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBEYW5pZWwgV2FnbmVyIDxkd2FnbmVyQHN1c2UuZGU+Cj4gLS0tCj4gICBkcml2ZXJzL252
bWUvaG9zdC9mYy5jIHwgNSArKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9mYy5j
IGIvZHJpdmVycy9udm1lL2hvc3QvZmMuYwo+IGluZGV4IDdkZmM0YTJlY2YxZS4uMjg3YTNlOGVh
MzE3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPiArKysgYi9kcml2ZXJz
L252bWUvaG9zdC9mYy5jCj4gQEAgLTIzMDAsMTAgKzIzMDAsMTEgQEAgbnZtZV9mY19zdGFydF9m
Y3Bfb3Aoc3RydWN0IG52bWVfZmNfY3RybCAqY3RybCwgc3RydWN0IG52bWVfZmNfcXVldWUgKnF1
ZXVlLAo+ICAgCQlvcHN0YXRlID0gYXRvbWljX3hjaGcoJm9wLT5zdGF0ZSwgRkNQT1BfU1RBVEVf
Q09NUExFVEUpOwo+ICAgCQlfX252bWVfZmNfZmNwb3BfY2hrX3RlYXJkb3ducyhjdHJsLCBvcCwg
b3BzdGF0ZSk7Cj4gICAKPiAtCQlpZiAoIShvcC0+ZmxhZ3MgJiBGQ09QX0ZMQUdTX0FFTikpCj4g
KwkJaWYgKCEob3AtPmZsYWdzICYgRkNPUF9GTEFHU19BRU4pKSB7Cj4gICAJCQludm1lX2ZjX3Vu
bWFwX2RhdGEoY3RybCwgb3AtPnJxLCBvcCk7Cj4gKwkJCW52bWVfY2xlYW51cF9jbWQob3AtPnJx
KTsKPiArCQl9Cj4gICAKPiAtCQludm1lX2NsZWFudXBfY21kKG9wLT5ycSk7Cj4gICAJCW52bWVf
ZmNfY3RybF9wdXQoY3RybCk7Cj4gICAKPiAgIAkJaWYgKGN0cmwtPnJwb3J0LT5yZW1vdGVwb3J0
LnBvcnRfc3RhdGUgPT0gRkNfT0JKU1RBVEVfT05MSU5FICYmCgpSZXZpZXdlZC1ieTrCoCBKYW1l
cyBTbWFydMKgIDxqYW1lcy5zbWFydEBicm9hZGNvbS5jb20+CgotLSBqYW1lcwoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGlu
ZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
