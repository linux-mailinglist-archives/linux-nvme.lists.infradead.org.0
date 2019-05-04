Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EC813AC1
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 16:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CoAOXj8LokjWGNwAjcNMHV0kn8emUybIjNkri4yyuY4=; b=VE51vycmvPYTiTWO/hqP0PClW
	n5Ux1fhCyAY7uiHKVYn+/QRYjTOffU3Aab2p0aPP6ZZedPAl5qleV4bS5mDpHsvAz1BQ+VdwhG0Mr
	/H9NGGuqvuA/dOPDNhbTndnSBdkYIqfrSZwiXC6Wsqv+pUS2WaGRTxlx1kluOTXR1KEGEtVM6AWE/
	sJ2ov+KW0p3jCDGq258yv3t/VPuFFgWzxGAI2eT1mn7x+o4g7NP2cQK7VWdXGRxiHsBTpd7vLnqlD
	2ETXL4X6dspNv5KXShidQfUH8Y4T9fz7NZ97ii+QdBqgSH30AJ/pZRPj2/TYgVJDMcjjrBJzkt/Qw
	hwDTtMsOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvvj-0004DX-DD; Sat, 04 May 2019 14:46:23 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvve-0004DA-Gl
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 14:46:19 +0000
Received: by mail-pf1-x42e.google.com with SMTP id t87so3820326pfa.2
 for <linux-nvme@lists.infradead.org>; Sat, 04 May 2019 07:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KrYVIWeGk7qBqvHA6rNpWrRvfMfUKIOhNsH2mOO6/68=;
 b=JetIVnWaTXyB//mCEeSIJqg/XiUq5os7ckZOxNTNuhuPCnmqn7i85NV+L/w2vJbGHZ
 FKbVB3Psw3OS3ZbsvvlYcfUIvqzr5FlNs7vAY9mW8JdJ6AzA/zIrti5jbymXgfD7hl6K
 3ukTb6WR7/Yhm2qOg3jEq4pwh5wVfFuvAHcqoOIoq5+V2qXaIiuX4j7CCfMAwVCeTaVs
 AgZDMlXoL/jVkfSYIaOdGdzbEXv8Klo+TQYNLsqhUhwGfiNpVBFQ5imjDlBc2l7O5+ab
 epL2mOK8EfRiHT4z3KZgQJuMZkepdQjEgojI/lKNcCDDXCTyrI9DSzmerKg3axOU7Ucp
 4uiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KrYVIWeGk7qBqvHA6rNpWrRvfMfUKIOhNsH2mOO6/68=;
 b=gD66Hsy+/+cYjl3r/M+oFTUSpZcDv5R14DIkc7t/gygeSj09q/J57xId2tECLmZUC/
 KNUJP6o28HbMM99z5lATQ3QwPijLjS6hdjJSCCQba4tfRGnxHsr1UZP7VX4/cbE/f25I
 Q+Waqr9kChj2KkAI2vyeRj4u+qBkDNZpZAGh/LqKqAEH6CJ2tQiMKu2LgXl3XNGh2o4k
 W/+IrskhjeaaS2f9fafP0NtASI3KOdmBvwczw3PfgLZdppenY8IatGWQhccOFJkonTKv
 usemNvLtBhasgyiCpMC/RjaSC61B+UzwMHBvqIHTzkuhpV2Nc15FJKHnhua6a/mOvjS1
 uiuA==
X-Gm-Message-State: APjAAAU4FBiVXaDR3Cc0Z9RFUVYvXxOQRAkJrrRRLFQQ/Ooanx9UuSio
 7f7637fCS4g58VbS3+lCw3w=
X-Google-Smtp-Source: APXvYqxtTCMwWTttLXS3cTFa/NK+hcUWeBfu7VKsqDyDRIGs+h2SsYsWYBXJAacMVk+eTEiXjvm+fQ==
X-Received: by 2002:aa7:8c84:: with SMTP id p4mr19791233pfd.164.1556981177245; 
 Sat, 04 May 2019 07:46:17 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p2sm668679pgd.63.2019.05.04.07.46.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 07:46:16 -0700 (PDT)
Subject: Re: [PATCH 3/4] nvme-pci: add device coredump support
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <1556787561-5113-4-git-send-email-akinobu.mita@gmail.com>
 <66a5d068-47b1-341f-988f-c890d7f01720@gmail.com>
 <CAC5umyjsAh7aZ8JEh8=QMXpNwRdnxxfdPBDwmuVKfafG+rT-PA@mail.gmail.com>
 <d0de1c5d-1168-086c-cc16-7d33fd307cd3@gmail.com>
Message-ID: <13a4ec6d-e586-3879-d883-33bdbf90f294@gmail.com>
Date: Sat, 4 May 2019 23:46:12 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d0de1c5d-1168-086c-cc16-7d33fd307cd3@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_074618_562176_152CB1C1 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS80LzE5IDExOjM4IFBNLCBNaW53b28gSW0gd3JvdGU6Cj4gT24gNS80LzE5IDExOjI2IFBN
LCBBa2lub2J1IE1pdGEgd3JvdGU6Cj4+IDIwMTnlubQ15pyINOaXpSjlnJ8pIDE5OjA0IE1pbndv
byBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+OgoKPj4+PiArwqDCoMKgwqAgeyBOVk1FX1JF
R19JTlRNUyzCoMKgwqDCoMKgwqAgImludG1zIizCoMKgwqDCoMKgwqDCoCAzMiB9LAo+Pj4+ICvC
oMKgwqDCoCB7IE5WTUVfUkVHX0lOVE1DLMKgwqDCoMKgwqDCoCAiaW50bWMiLMKgwqDCoMKgwqDC
oMKgIDMyIH0sCj4+Pj4gK8KgwqDCoMKgIHsgTlZNRV9SRUdfQ0MswqDCoMKgwqDCoMKgwqDCoMKg
ICJjYyIswqDCoMKgwqDCoMKgwqDCoMKgwqAgMzIgfSwKPj4+PiArwqDCoMKgwqAgeyBOVk1FX1JF
R19DU1RTLMKgwqDCoMKgwqDCoMKgICJjc3RzIizCoMKgwqDCoMKgwqDCoMKgIDMyIH0sCj4+Pj4g
K8KgwqDCoMKgIHsgTlZNRV9SRUdfTlNTUizCoMKgwqDCoMKgwqDCoCAibnNzciIswqDCoMKgwqDC
oMKgwqDCoCAzMiB9LAo+Pj4+ICvCoMKgwqDCoCB7IE5WTUVfUkVHX0FRQSzCoMKgwqDCoMKgwqDC
oMKgICJhcWEiLMKgwqDCoMKgwqDCoMKgwqDCoCAzMiB9LAo+Pj4+ICvCoMKgwqDCoCB7IE5WTUVf
UkVHX0FTUSzCoMKgwqDCoMKgwqDCoMKgICJhc3EiLMKgwqDCoMKgwqDCoMKgwqDCoCA2NCB9LAo+
Pj4+ICvCoMKgwqDCoCB7IE5WTUVfUkVHX0FDUSzCoMKgwqDCoMKgwqDCoMKgICJhY3EiLMKgwqDC
oMKgwqDCoMKgwqDCoCA2NCB9LAo+Pj4+ICvCoMKgwqDCoCB7IE5WTUVfUkVHX0NNQkxPQyzCoMKg
wqDCoMKgICJjbWJsb2MiLMKgwqDCoMKgwqDCoCAzMiB9LAo+Pj4+ICvCoMKgwqDCoCB7IE5WTUVf
UkVHX0NNQlNaLMKgwqDCoMKgwqDCoCAiY21ic3oiLMKgwqDCoMKgwqDCoMKgIDMyIH0sCj4+Pgo+
Pj4gSWYgaXQncyBnb2luZyB0byBzdXBwb3J0IG9wdGlvbmFsIHJlZ2lzdGVycyBhbHNvLCB0aGVu
IHdlIGNhbiBoYXZlCj4+PiBCUC1yZWxhdGVkIHRoaW5ncyAoQlBJTkZPLCBCUFJTRUwsIEJQTUJM
KSBoZXJlIGFsc28uCj4+Cj4+IEknbSBnb2luZyB0byBjaGFuZ2UgdGhlIHJlZ2lzdGVyIGR1bXAg
aW4gYmluYXJ5IGZvcm1hdCBqdXN0IGxpa2UKPj4gJ252bWUgc2hvdy1yZWdzIC1vIGJpbmFyeScg
ZG9lcy7CoCBTbyB3ZSdsbCBoYXZlIHJlZ2lzdGVycyBmcm9tIDAwaCB0byAKPj4gNEZoLgo+Pgo+
IAo+IEdvdCBpdC4KPiAKPiBBbmQgbm93IEkgY2FuIHNlZSB0aG9zZSB0d28gY29tbWFuZHMgYG52
bWUgc2hvdy1yZWdzYCBhbmQKPiBgbnZtZSBzaG93LXJlZ3MgLW8gYmluYXJ5YCBoYXZlIGRpZmZl
cmVudCByZXN1bHRzIGZvciB0aGUgcmVnaXN0ZXIKPiByYW5nZS7CoCBUaGUgYmluYXJ5IG91dHB1
dCBjb3ZlcnMganVzdCAweDUwIHNpemUsIGJ1dCBpdCBzaG93cyBhbGwgdGhlCj4gcmVnaXN0ZXJz
IGluY2x1ZGluZyBCUC1yZWxhdGVkIHRoaW5ncyBpbiBub3JtYWwgJiYganNvbiBmb3JtYXQuCj4g
Cj4gQW55d2F5LCBJJ2xsIHByZXBhcmUgYSBwYXRjaCBmb3IgbnZtZS1jbGkgdG8gc3VwcG9ydCBi
aW5hcnkgb3V0cHV0Cj4gZm9ybWF0IHRvIGNvdmVyIEJQIHRoaW5ncyBhbHNvLgo+IAo+IFRoYW5r
cywgZm9yIHlvdXIgcmVwbHkuCgpNeSBiYWQsIEkgbWlzdW5kZXJzdG9vZCB3aGF0IHlvdSBoYXZl
IHNhaWQgYWJvdmUuICBQbGVhc2UgaWdub3JlCndoYXQgSSBtZW50aW9uZWQuIEJQIHRoaW5ncyBh
cmUgbG9jYXRlZCBmcm9tIDQwaC4gdG8gNEZoLgoKU29ycnkgZm9yIG1ha2luZyBub2lzZXMgaGVy
ZS4gOykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
