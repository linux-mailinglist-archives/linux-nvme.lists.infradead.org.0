Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBEE82289
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 18:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zDnmFRqXaKL260zbOEKofzYCPpnJvTTEBQR3LMpkfU4=; b=nMVzPQTsWv9n9rpaoV26MTXy3
	tag3pPkC4SFXxvZ6QD9ibW20MOEgnZvYPpGB1XpyVbbz0MjeQ11Wgy/l0zDwhrKc4WXfOP0Y+8s1i
	q+D3lx8CIH7xAb5VzyMIsEg87HLnT0JrG+/JR8WcagHZCbXdwJABwEJvIKYxy2qGHlSm0xnpDZnuS
	UijcHRewyQ/+llTuaHzNJx223zv+N6YDm5qT0I9+kmjNP2a4/rJSIqpiwhrPICfVRJWQPcUCcH2DI
	5B12iJl3fbKEZFO4D5rVSvrZ90JLNGrK+lV2RangFmbE3nb70dkCi9vmbmLSq+TePKtjxxaW6S7Th
	4eI3GaXdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufya-0008Nc-FT; Mon, 05 Aug 2019 16:36:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huftP-0002sl-SS
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 16:31:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id o13so39995252pgp.12
 for <linux-nvme@lists.infradead.org>; Mon, 05 Aug 2019 09:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=RNV59Qy0yIRA0rrUasgywv7AnatbnUxxzTEj/vkiEts=;
 b=Lbi6jLo5FE8tib9mmr8Y5zZfp0wwb9No5+4b53o2w2ZUi2vrpLVySz/4f5a2CzxJWD
 zpTTqnvfKHLw2zgdYhYpebB8+WUooeHzQ6JG6z4/1vlv+jm2UQJsv66QsI2hPDxBQCkZ
 0cS9aw+dDBGPZQKGcoVZrrc1nbxDn7oh8tQmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=RNV59Qy0yIRA0rrUasgywv7AnatbnUxxzTEj/vkiEts=;
 b=NuAexlQvYpZb01B6PvIZOO+nboVAh/yfU6EinTvq14b/0BmUeSl5q4Ms9+f5oei7Kx
 Bro3v79hu2WhlbsZ8Nst8u18VMUW+1/SB5vqDJIISvZ/1/CznOj79oIfRK/SZV1pqWl4
 Zbl5PX6Doqg0WykDn660O83rdxSUHLq12bumUBwXPpNoeJg4eauII9SL0zNZ3n9uD+Ww
 8hnZjVibSWAM9pOoAgbqpinxokEP+BABSLiGsFpyAcT3AY+UIYwJAU9ti7N3Z4aIjNsk
 m4MjVxmz7FyiCJIkrrjiHMsHhrkf9WdSkLhnZOH7ifYASdXNBZ1xwHbKt3scVw8OHLgY
 lSPg==
X-Gm-Message-State: APjAAAXSvU51ZYy4c3Kiuf0wwK4gw5WF/WMmiyN5hlct/oALdMFxkiVj
 W4e4n5l+mKInLcsNGbc/C2yRzQ==
X-Google-Smtp-Source: APXvYqzTeM9WEoQykzEfEiF2B80uuDn210Yzhc6wodQxfliNfebv93nYEFIl6CRcXRU2vOc6i0e8qA==
X-Received: by 2002:a17:90a:de02:: with SMTP id
 m2mr19025701pjv.18.1565022686392; 
 Mon, 05 Aug 2019 09:31:26 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v12sm16296850pjk.13.2019.08.05.09.31.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 09:31:25 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <0fb2cf8c-3657-31bf-0df5-ee2495282f57@broadcom.com>
Date: Mon, 5 Aug 2019 09:31:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_093128_170464_07C7460D 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC80LzIwMTkgMjo1NSBBTSwgSXNyYWVsIFJ1a3NoaW4gd3JvdGU6Cj4gVE9TIGlzIHVzZXIt
ZGVmaW5lZCBhbmQgbmVlZHMgdG8gYmUgY29uZmlndXJlZCB2aWEgbnZtZS1jbGkuCj4gSXQgbXVz
dCBiZSBzZXQgYmVmb3JlIGluaXRpYXRpbmcgYW55IHRyYWZmaWMgYW5kIG9uY2Ugc2V0IHRoZSBU
T1MKPiBjYW5ub3QgYmUgY2hhbmdlZC4KPgo+IFNpZ25lZC1vZmYtYnk6IElzcmFlbCBSdWtzaGlu
IDxpc3JhZWxyQG1lbGxhbm94LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvbnZtZS9ob3N0L2ZhYnJp
Y3MuYyB8IDE2ICsrKysrKysrKysrKysrKy0KPiAgIGRyaXZlcnMvbnZtZS9ob3N0L2ZhYnJpY3Mu
aCB8ICAzICsrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvZmFicmljcy5jIGIvZHJp
dmVycy9udm1lL2hvc3QvZmFicmljcy5jCj4gaW5kZXggNTgzOGY3Y2Q1M2FjLi5kYmNlN2ZmZTZj
MmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvZmFicmljcy5jCj4gKysrIGIvZHJp
dmVycy9udm1lL2hvc3QvZmFicmljcy5jCj4gQEAgLTYxMSw2ICs2MTEsNyBAQCBzdGF0aWMgY29u
c3QgbWF0Y2hfdGFibGVfdCBvcHRfdG9rZW5zID0gewo+ICAgCXsgTlZNRl9PUFRfREFUQV9ESUdF
U1QsCQkiZGF0YV9kaWdlc3QiCQl9LAo+ICAgCXsgTlZNRl9PUFRfTlJfV1JJVEVfUVVFVUVTLAki
bnJfd3JpdGVfcXVldWVzPSVkIgl9LAo+ICAgCXsgTlZNRl9PUFRfTlJfUE9MTF9RVUVVRVMsCSJu
cl9wb2xsX3F1ZXVlcz0lZCIJfSwKPiArCXsgTlZNRl9PUFRfVE9TLAkJCSJ0b3M9JWQiCQl9LAo+
ICAgCXsgTlZNRl9PUFRfRVJSLAkJCU5VTEwJCQl9Cj4gICB9Owo+CgpJIHRoaW5rIHdlIG5lZWQg
dG8gY3JlYXRlIGEgZnJhbWV3b3JrIGZvciB0cmFuc3BvcnQtc3BlY2lmaWMgb3B0aW9ucy7CoCAK
S2VlcGluZyB0aGVtIGF0IHRoZSBzYW1lIGZsYXQgbGV2ZWwgYXMgdGhlIGdlbmVyaWMgb3B0aW9u
cyBpc24ndCBhIGdyZWF0IAppZGVhIGFzIHRoZXkgc3RhcnQgdG8gZ3JvdyBhbmQgYWx3YXlzIG1v
ZGlmeWluZyBjb3JlIGZvciBhIHRyYW5zcG9ydCAKb3B0aW9uIGlzbid0IGdvb2QgZWl0aGVyLgoK
SG93IGFib3V0IHdlIHN0YXJ0IHRoZSBjb252ZW50aW9uICI8dHJhbnNwb3J0X25hbWU+OjxvcHRp
b24+IiBmb3IgYW4gCm9wdGlvbi7CoCBUaGUgb3B0cyBzdHJ1Y3QgY2FuIGhhdmUgYSBwb2ludGVy
IHRoYXQgaXMgb3duZWQgYnkgdGhlIAp0cmFuc3BvcnQuwqAgVGhlIHRyYW5zcG9ydCBjYW4gc3Vw
cGx5IGEgcGFyc2luZyBmdW5jdGlvbiBmb3IgYW4gb3B0aW9uLsKgIApUaGUgY29yZSBsYXllciBj
YW4gbWF0Y2ggdGhlIHRyYW5zcG9ydCBuYW1lIGluIHRoZSBwcmVmaXgsIHRoZW4gaW52b2tlIAp0
aGUgdHJhbnNwb3J0IGhhbmRsZXIgaW5zdGVhZCBvZiB0aGUgZ2VuZXJpYyBwYXJzaW5nLiBUcmFu
c3BvcnQgaGFuZGxlciAKY2FuIHBhcnNlIGFuZCBzZXQgaXQncyBvd24gdmFsdWUgaW4gaXRzIG93
biBvcHRzIHN0cnVjdC4gVHJhbnNwb3J0IGNhbiAKdmFsaWRhdGUgaXQgaGFzIHRoZSBuZWNlc3Nh
cnkgdHJhbnNwb3J0IG9wdHMgYXMgdGhlIGZpcnN0IHRoaW5nIGl0IGRvZXMgCmluIGl0J3MgY3Jl
YXRlX2N0cmwgcm91dGluZS4KCi0tIGphbWVzCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW52bWUK
