Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9F265B5A
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 18:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G1wf2QNqQenAlcnAnjXvMdsJT2hnfSchrYfK9h2+1TU=; b=tCu0+DXKoLZ32gsw5BV1SdQgb
	lEHXj55K6rk7Z0PWXxGm8uBjO3XnNoa9YS0Xnyy2b5JxLY/Mr+R3ag8LZ5RJ1zDDd/OP3Ag/eUx4V
	PxyZh8jWal4qpY00pGO7jjaxDleHDU3uTjAtVqLEH2hwF7VkJcio/C2OPjlpXWgpi6frVwwhOoWyv
	01LS1/fLXGtPwo4Nip6L1SsPP0OcZIxqBVNNuHeh/8BxzftCdvb1RSf2k5OLvZ8XAdiMzsk2YGSVp
	ADuZYa4kMVsQvQM439r1Cox8YuaNbutFHK46RRcvpexUiqimu3WS0JXXt+N+zIpHYzRYZcTYYGX1C
	/0jovMg2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlbmC-0002p2-0U; Thu, 11 Jul 2019 16:18:32 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlbm2-0002og-OV
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 16:18:23 +0000
Received: by mail-pg1-x542.google.com with SMTP id q4so3173222pgj.8
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 09:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GX8QloNx5hthZGJPvCfU7rlybn0rtt/S7GRoxA7i9RM=;
 b=rNwAiwJF5HXLolnCGCZo5L4xYHF0yoKgup5EzCbtV7h108RS9mXKdxgnh5azVYTtwb
 mfuR9Rvp4S4XUevtz9qx5UQ9RQsCbU6Ak2M2JCEuPrIFxj3+nqbpcC2xQoKNnq4bPZ00
 xJU9wvI9B8mvNV9ECkt2MvtZzFhIX9lo3rz/wqqTw06/b9S0wAf0fz8K3U/KBrpBIt3G
 q/+ZevaC5FyjvTbG2At7SHjvwUM6iQ1bZ3iks4C9+AbA/mc7hnNcPM7GrKlG3xQJaXp7
 ogBQAtTpyy7ppD7md4+13h8bxgL0u+8/uOpYR3XSi3YTNO4Up2WEbAJFPRVeCIbmNSq/
 5bnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GX8QloNx5hthZGJPvCfU7rlybn0rtt/S7GRoxA7i9RM=;
 b=AdP2BJ47qm8QWWy3tEvXopfTRDuWPKGYFW3nZd7ADptaG8fEtKV7owlKuOwGqsr4wq
 Vb66H4kznENfQFaFAfxJ0S3dzgl5X0mBLvSqvjQPaGEHN6cDxskScbkNOf0zvfYzoghX
 5/jl8o7Tg7kr5mt16ZQmWW9ENtAUmPeWQXuu+ceyM0DIDJWabz1jd7ZiRsFVMHZC01UO
 MwYMCo1v8oPWmvL8itb4T6+kwzou/eZZkMAFtUgo7U+6JpMD9hKas9mjhTV2d8ODSNij
 g3Mct/J2Sq7M156aNQGHAMCqZrC4gTk4fZ9hPKptkcMHyP9Ce4wn3GHFpv/Dq7XWKvr/
 sJWw==
X-Gm-Message-State: APjAAAWA5n0TkCUzSPd+YVfQbxBwt3V9Kqr3yqipXgn+k9FnmJv7qFVy
 zP9IVH5CZjB2VsZF5pav1IgmDoXI
X-Google-Smtp-Source: APXvYqwQJmIxXeADx1IN2AzYkIMr+y6XywB6/CtjzvEzEoIjRPgLzPgOYYRqatej4Zr4NEAXHXgFdw==
X-Received: by 2002:a63:f953:: with SMTP id q19mr5205861pgk.367.1562861902050; 
 Thu, 11 Jul 2019 09:18:22 -0700 (PDT)
Received: from [10.69.69.102] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o14sm5693997pjp.29.2019.07.11.09.18.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 09:18:21 -0700 (PDT)
Subject: Re: [PATCH rfc 6/6] nvme-cli: nvmf auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190710232740.26734-1-jsmart2021@gmail.com>
 <20190710232740.26734-7-jsmart2021@gmail.com>
 <d9197c71-2386-ba52-088e-183dad4a662a@grimberg.me>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <d62f4fa3-b923-389e-56e8-5de4130ffe17@gmail.com>
Date: Thu, 11 Jul 2019 09:18:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <d9197c71-2386-ba52-088e-183dad4a662a@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_091822_824467_367463B7 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8xMC8yMDE5IDU6NDIgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gCj4+ICvCoMKgwqAg
JChJTlNUQUxMKSAtZCAkKERFU1RESVIpJChEUkFDVVRESVIpL2RyYWN1dC5jb25mLmQKPj4gK8Kg
wqDCoCAkKElOU1RBTEwpIC1tIDY0NCAuL252bWYtYXV0b2Nvbm5lY3QvKi5jb25mIAo+PiAkKERF
U1RESVIpJChEUkFDVVRESVIpL2RyYWN1dC5jb25mLmQKPiAKPiBXaGVyZSBpcyB0aGlzIGZpbGU/
Cgo/PyBpdCdzIG5vdCBhIG5ldyBmaWxlICAgaXQncyBpbnN0YWxsaW5nIDcwLW52bWYtYXV0b2Nv
bm5lY3QuY29uZiBpbnRvIAp0aGUgZHJhY3V0IGRpcmVjdG9yaWVzIHNvIHRoYXQgZHJhY3V0IHdp
bGwgaW5zdGFsbCB0aGUgdWRldiBmaWxlcyBpbiB0aGUgCnJhbWRpc2suCgotLSBqYW1lcwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUg
bWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
