Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A04F21B2C
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 18:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dxX1rR+MbkSEqT4pEbignkuGLLSJE9NWAd94l9fhyx4=; b=sR4mjpzYd00Uo54iFGpqERTTd
	iq8/Y1AbbGI6MUclq0cvtgDTKpv5HSwUQyman5h33yMh2aQOplxusuWszZLUe1ePGzpuI4FiGNCwY
	fAQfoyyMgi+CJQ2pdtf9sts+zUqJ0WEZW7e9vvW6mtgo5USSJItLGcXELG52voQFET/782RdNxAHi
	AIc+aaEXGV5ibtf6TJRikqNYZ0r5cAZKsR1FacFamO4oDYT7X+3VbHR2LAASNxX8LN95y941kLMQn
	xM63l2FoauwDso6os2n+98BJkGJg06Jdpf7RjNpIUDblmfMS+d/ygg1XRXn4pRsM5nsAMwl3Ze7gW
	S2UjxPZ0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfRU-0003i6-2b; Fri, 17 May 2019 16:10:44 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfRQ-0003hm-Df
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 16:10:41 +0000
Received: by mail-pl1-x643.google.com with SMTP id n8so3537363plp.10
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 09:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=ZFV/UrLrDaZmEwoJAghDQsf6FJlujPWTXGa+eikT10s=;
 b=VS+xgVkZIDPNX+wrMa0o2+Vi7vSekS8wrg6QOFOrnuAktR3h6cS0IrmmFv1X3Wullv
 2YwfPX9Mgh/9dooR0Knz3Z9fb5nGKyO7gIWXjubpLmFGEMCTkHqcm+CbZkhjRwZfq3iI
 fppOzmM7pwq8iLiX/lKNshFmyk8zAIeAYAH78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ZFV/UrLrDaZmEwoJAghDQsf6FJlujPWTXGa+eikT10s=;
 b=ir5PG7vDtWEgxqrPB1tP6fXAHgWi/jqQBff56pvym8LeUHIiAY1DN7YUNOMf7LZHiR
 XdIDooPnAWOrrUmQrS5peElwMnPp0TSMCmd5FmV6PU3g0h1jkKDS4wx/gDR61jxC9tx/
 HXHU+yGNJxl/ljA6dRW7lKZUO4FYyPsmxJX+EvybocpF7U+KfkM5MS0R8kLXUeV8eG6U
 D7qZZ2Z1WsdiKluVHo03+l07QlSa8QS3iwmOiU4sItmr//lgxSQdUJINXAxoWoyKb/jG
 VZWuve8fVM+YKS7tTxBQlDVD1N5p6X4kS5Gl3UiOW2L1bhXT8CyLTI1WaLOc3WgBgEVx
 rl7g==
X-Gm-Message-State: APjAAAVib+JX2TmalcYetTdVJNy5rpiFvf5PCbGndxICMCNRXggM0XJ6
 MnPb7/to0bd6OkaytKgpjYzp2AU1188=
X-Google-Smtp-Source: APXvYqyURp3Olx9TwDZPPv6xH9f+dzwQakx0JB/wSMasq2wjC3ia7lxjyTgGW369GBeK0qsEY6KC7Q==
X-Received: by 2002:a17:902:6bc2:: with SMTP id
 m2mr56887948plt.24.1558109439334; 
 Fri, 17 May 2019 09:10:39 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e10sm21492218pfm.137.2019.05.17.09.10.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 09:10:38 -0700 (PDT)
Subject: Re: [PATCH 3/3] nvme-fc: fail reconnect if state change fails
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190517064254.95561-1-hare@suse.de>
 <20190517064254.95561-4-hare@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <12b86c1a-9e83-f3b7-d72b-20eef528ab06@broadcom.com>
Date: Fri, 17 May 2019 09:10:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517064254.95561-4-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_091040_463163_069A7A00 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xNi8yMDE5IDExOjQyIFBNLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMgYi9kcml2ZXJzL252bWUvaG9zdC9mYy5jCj4gaW5k
ZXggZTVjODFiYTJiN2ExLi5hOGVmNjI1MTJkOWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1l
L2hvc3QvZmMuYwo+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPiBAQCAtMjcyNiw2ICsy
NzM0LDEzIEBAIG52bWVfZmNfY3JlYXRlX2Fzc29jaWF0aW9uKHN0cnVjdCBudm1lX2ZjX2N0cmwg
KmN0cmwpCj4gICAJfQo+ICAgCj4gICAJY2hhbmdlZCA9IG52bWVfY2hhbmdlX2N0cmxfc3RhdGUo
JmN0cmwtPmN0cmwsIE5WTUVfQ1RSTF9MSVZFKTsKPiArCWlmICghY2hhbmdlZCAmJiBjdHJsLT5j
dHJsLnN0YXRlICE9IE5WTUVfQ1RSTF9ERUxFVElORykgewo+ICsJCWRldl9lcnIoY3RybC0+Y3Ry
bC5kZXZpY2UsCj4gKwkJCSJOVk1FLUZDeyVkfTogZXJyb3JfcmVjb3Zlcnk6IENvdWxkbid0IGNo
YW5nZSAiCj4gKwkJCSJzdGF0ZSBmcm9tICVzIHRvIExJVkVcbiIsIGN0cmwtPmNudW0sCj4gKwkJ
CW52bWVfY3RybF9zdGF0ZV9uYW1lKCZjdHJsLT5jdHJsKSk7Cj4gKwkJcmV0dXJuIC1FQUdBSU47
Cj4gKwl9Cj4gICAKPiAgIAljdHJsLT5jdHJsLm5yX3JlY29ubmVjdHMgPSAwOwo+ICAgCgpTb3Jy
eSwgSSBzaG91bGQgaGF2ZSBzcG90dGVkIHRoaXMgbGFzdCB0aW1lLsKgwqAgV2Ugc2hvdWxkbid0
IGJlIGV4aXRpbmcgCmluIHRoZSBiYWQgY2FzZSAtIHdlIHNob3VsZCBiZSBzZXR0aW5nIHJldD0t
RUFHQUlOIHRoZW4gaGF2ZSBhIGdvdG8gCm91dF90ZXJtX2Flbl9vcHMgc28gdGhhdCB3aGF0ZXZl
ciB3YXMgYnVpbHQgdXAgZm9yIHRoZSBhc3NvY2lhdGlvbiBpcyAKdG9ybiBkb3duLgoKLS0gamFt
ZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
