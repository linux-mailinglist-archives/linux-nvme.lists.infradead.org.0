Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9D510E89
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 23:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5wDC0U3e2LPHueC6KsAzDSqux/B6Vmsv9qBYr5cByjE=; b=lAPh4EC2mRUcqobbA6HnolWJO
	pegrBSmOCbKUOq2mrp9bKubQYGkS7SPYDcsQ1lCqiKdqLN1WXC7Ar3zOgB3XaeycK7d/ZknStHEBc
	vp+dKaE95u09BbmCfB+NOJVCGyvBxV0ge9pNMuPRdSQHQicdaFgQo8GqpOekSGFJwjauQbYXmUOgP
	xd3vwG4FqhiLtcAI4fry3+PYPmxz6u3uVQDma0D61T+UW4guX5LniIyOU3k35e/aTi9Yzv53ufsXc
	dFY+cTE+Xc78W5hXNyO6pB4KWn0OX7bs6WW7iuB4nj0aneROOeM800mQ8IU7GFA5cVTi9ydwoMRFq
	0e11yvzzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLwhm-0004gi-7t; Wed, 01 May 2019 21:23:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLwhh-0004gG-Qi
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 21:23:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id i21so25144pgi.12
 for <linux-nvme@lists.infradead.org>; Wed, 01 May 2019 14:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=029yQ7neWWBQyBVAMbEvHEvYnhNscfqtnyjysFSKPhs=;
 b=U/opcsIz/c8DPXynkXTsRkgOfxBAFswtKPV63MZOd6kjd9H3/ovHswHdiDI1gfxq12
 d407S/gucCzIs5SILvRhfV+0aOo1QcsdSXerRQd/V+hLrqdNNDxESwVmDp2A4mtP3GVg
 mPd+oBA4aVOMYScdEW3RQifx0Mf4O6FseNnC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=029yQ7neWWBQyBVAMbEvHEvYnhNscfqtnyjysFSKPhs=;
 b=j9SsQDEA/Mb+SVTfOQ2aSbJuXOd3dEgOoE402N6T/fCxv6X6Wa/ORvl968ekn2eFD7
 AK9zZSpe84VpbB3G77LNdL0iNKdI0gdkobldrmDnQMskxFMnT49//mU7g9+D+DxOUEhz
 4g8yEQgj2bEQrR+YOnEhKksH+nb156Y1aTCJjVkPP8Arxg/nmDQEj1CFljiMpsXLdkoP
 alXh1JZ9Fy/j5Y2H++wAVeuN+2uTiN4sSuh2Xr8tLVMaDWUMgG3IcPA9jTdkxkmEVvei
 mX5xYhQimVB+NMDT/4lplOW/rF6RGOtoQ3c4HWPHh8ura1er7A7pr5CgnbecURRpoAze
 CGEg==
X-Gm-Message-State: APjAAAVTp++Ym7eP5uB47wuaiAI7Ph06TalRNwgQRxg+MGX9+6wdpvHi
 FZ2kFVQSTknvDw5LVK58d+O+Uw==
X-Google-Smtp-Source: APXvYqwEJR+WAwVob0WSvCyiOR49/rGGAiyEvuMt+z8j8bqGoP9qRruKUECyO/6Fdzuj+znLOcG/yA==
X-Received: by 2002:aa7:8ad5:: with SMTP id b21mr119670pfd.209.1556745828280; 
 Wed, 01 May 2019 14:23:48 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id s85sm70476635pfa.23.2019.05.01.14.23.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 14:23:47 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc] fabrics: support default connect/discover
 args
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190429225338.6866-1-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <b9363689-6c3e-da34-8b17-f1f320cfbd70@broadcom.com>
Date: Wed, 1 May 2019 14:23:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429225338.6866-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_142349_873124_C8129A5E 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA0LzI5LzIwMTkgMzo1MyBQTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPiBJbnRyb2R1Y2Ug
L2V0Yy9udm1lL2RlZmFyZ3MuY29uZiB3aGVyZSB3ZSBhbGxvdyB0aGUgdXNlciB0bwo+IHNwZWNp
ZnkgY29ubmVjdC9kaXNjb3ZlciBwYXJhbWV0ZXJzIG9uY2UgYW5kIG5vdCBmb3IgZXZlcnkKPiBj
b250cm9sbGVyLiBUaGUgY2xpIHdpbGwgYWx3YXlzIGluZ2VzdCB0aGUgY29udGVudCBvZiB0aGlz
Cj4gZmlsZSBiZWZvcmUgcGFyc2luZyBjbWRsaW5lIGFyZ3Mgc3VjaCB0aGF0IHRoZSB1c2VyIGNh
bgo+IG92ZXJyaWRlIHRoZW0uCj4KPiBUaGUgZm9ybWF0IGlzIHNpbXBseSB3cml0aW5nIHRoZSBh
cmd1bWVudHMgaW50byB0aGUgZmlsZSBhcwo+IGlmIHRoZXkgd2VyZSBhcHBlbmRlZCB0byB0aGUg
ZXhlY3V0aW9uIGNvbW1hbmQuCj4KPiBBbHNvLCBwcm9wZXJseSBpbnN0YWxsIHRoaXMgZmlsZSB3
aXRoIHNvbWUgbWluaW1hbCBkb2N1bWVudGF0aW9uLgo+Cj4gU2lnbmVkLW9mZi1ieTogU2FnaSBH
cmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiAtLS0KPiBUaGlzIHdhcyByYWlzZWQgYmVmb3Jl
IGluIHRoZSBwYXN0IHRoYXQgd2UgZG9uJ3QgaGF2ZSBzb21lIHBsYWNlCj4gdG8gc3RvcmUgZGVm
YXVsdCBjb25uZWN0IGFyZ3MuCj4KPiBGb3IgZXhhbXBsZSwgd2hlbiBoYW5kbGluZyBhdXRvbWF0
aWMgZGlzY292ZXJ5IGNoYW5nZSBsb2cgZXZlbnRzCj4gdGhpcyBjYW4gYmUgYSB3YXkgZm9yIHRo
ZSB1c2VyIHRvIHNldCBnbG9iYWwgZGVmYXVsdCBhcmd1bWVudHMuCj4KPiBGZWVkYmFjayBpcyB3
ZWxjb21lLgo+Cj4gICBNYWtlZmlsZSAgICAgICAgICAgIHwgIDMgKysrCj4gICBldGMvZGVmYXJn
cy5jb25mLmluIHwgIDUgKysrKwo+ICAgZmFicmljcy5jICAgICAgICAgICB8IDYzICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgbnZtZS5zcGVjLmluICAg
ICAgICB8ICAxICsKPiAgIDQgZmlsZXMgY2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygrKQo+ICAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGV0Yy9kZWZhcmdzLmNvbmYuaW4KPgo+Cj4gZGlmZiAtLWdpdCBhL2V0
Yy9kZWZhcmdzLmNvbmYuaW4gYi9ldGMvZGVmYXJncy5jb25mLmluCj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmU5MTEwNmJmNWJiZgo+IC0tLSAvZGV2L251bGwK
PiArKysgYi9ldGMvZGVmYXJncy5jb25mLmluCj4gQEAgLTAsMCArMSw1IEBACj4gKyMgVXNlZCBm
b3IgZXh0cmFjdGluZyBkZWZhdWx0IGNvbnRyb2xsZXIgY29ubmVjdCBwYXJhbWV0ZXJzCj4gKyMK
PiArIyBFeGFtcGxlOgo+ICsjIC0ta2VlcC1hbGl2ZS10bW89PHg+IC0tcmVjb25uZWN0LWRlbGF5
PTx5PiAtLWN0cmwtbG9zcy10bW89PHo+IC0tbnItaW8tcXVldWVzPTx1Pgo+ICsjIC0tcXVldWUt
c2l6ZT08dj4KPgoKV2hhdCBJJ2QgbGlrZSB0byBzZWUgaXMgYSBmaWxlwqAgKG1heWJlICJjb25u
ZWN0YXJncy5jb25mIikgdGhhdCBoYXMgYSAKc3ludGF4IG1vcmUgbGlrZToKPHN1Ym5xbj7CoCA8
dHJ0eXBlPsKgIDx0cmFkZHI+wqAgPHRyc3ZjaWQ+IDxob3N0LXRyYWRkcj7CoCA6wqAgPGFyZyBs
aXN0PgoKd2hlcmUgdGhlIGZpcnN0IDUgdGhpbmdzLCBhbGwgYWRkcmVzc2luZyBjb21wb25lbnRz
IGZvciB0aGUgY29ubmVjdCwgY2FuIApzcGVjaWZ5IGEgbWF0Y2hpbmcgcG9saWN5LCBhbmQgaWYg
bWF0Y2hlZCwgImFyZyBsaXN0IiBpcyB0aGVuIGFwcGxpZWQuIApBbiBhZGRyZXNzaW5nIGNvbXBv
bmVudCBjb3VsZCBiZSB3aWxkY2FyZGVkLCB0aHVzIG1hdGNoIGFueXRoaW5nLgoKV2hlbiBhIGNv
bm5lY3Qgb3IgY29ubmVjdC1hbGwgcmVxdWVzdCBpcyBtYWRlLMKgIHRoZSBjbGkgd291bGQgdHJ5
IHRvIAptYXRjaCBlYWNoIGxpbmUsIGFuZCBpZiBtYXRjaGVkLCBhcHBseSB0aGUgYXJnIGxpc3Qu
IElmIGFuIGFyZ3VtZW50IHdhcyAKc2V0IHByaW9yLCBpdCB3b3VsZCBiZSBvdmVycmlkZGVuLiBU
aGVuLCBjb21tYW5kIGxpbmUgYXJncyBjYW4gb3ZlcnJpZGUgCnRoZSBhcmcgbGlzdCBidWlsdCB1
cCBieSB0aGUgbWF0Y2ggbGlzdC4KClRodXMsIGZvciBnbG9iYWwgZGVmYXVsdHMsIHRoZSBvcGVu
aW5nIGxpbmUgaW4gdGhlIGZpbGUgY2FuIGJlwqDCoCAiICogKiAqIAoqICogLS1rZWVwLWFsaXZl
LXRtbz08eD4gLS1yZWNvbm5lY3QtZGVsYXk9PHk+IiBhbmQgYWxsIGNvbm5lY3Rpb24gCmF0dGVt
cHRzIHdvdWxkIHJlY2VpdmUgdGhvc2UgYXJncy4KCldlIHdvdWxkIHByb2JhYmx5IGRvIHNvbWUg
c3BlY2lhbCBzeW50YXhlcyBvdmVyIHRpbWU6ClJhdGhlciB0aGFuIHRoZSBsb25nIHN0cmluZyBm
b3IgYSBkaXNjb3ZlcnkgY29udHJvbGxlciBoYXZlIGEgc2hvcnRoYW5kIApzdHJpbmcgdGhhdCBt
ZWFucyB0aGUgc2FtZS4KRGV2aXNlIGEgc3VibnFuIHN5bnRheCB0aGF0IGFsbG93cyBhIDxwcmVm
aXg+KiAtIHNvIHRoYXQgYWxsIG5xbnMgZnJvbSAKdmVuZG9yIHggdGhhdCBoYXMgdGhlIHByZWZp
eCBjb3VsZCBiZSBhcHBsaWVkLCBhbmQgc28gb24uCgotLSBqYW1lcwoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxp
c3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
