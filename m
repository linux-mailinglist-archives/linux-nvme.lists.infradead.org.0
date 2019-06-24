Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF6D51AF8
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 20:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4LuAvRLOotvkkSJc+X/0d/vpxJialWyczJR41PpSwb8=; b=Sw9w4HCpELdEnol/r+uLoS+vA
	zg3hSLp67Da+w1TQgRHnaeJ1Q1gj1aicu6mlvqQk3hY5ZeH+2oDewdrisdpo39gcDuEefYIUHI1j9
	tivgk9Pj+mcQO753tU/zcgD9+AAqvSM287VusOPXktSy9zK9cUVYk7iE4Fbb+8+bcDQXe3Cl5g3GY
	GAJcaRloeNyhbrIsFutOgpZqxbse7qRdbeTYQPLIGNskgbY2tpms6FmZWsyLgzgbXXstWI85c1HdC
	Jams9rWbCxEBdfZ0Lx2u/rTeQhVVqoqlxexkMjy/wqtWVjfUIR0NgPk1Eet3NvAOEXRAPaQoFDNdG
	FNUKSO6Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfU4U-0002wl-8A; Mon, 24 Jun 2019 18:52:06 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfU4D-0002ou-L1
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 18:51:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id g4so7392737plb.5
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 11:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Tu70a6GqT0e8GNMBEnhxElVrZ5wZkDd2zBIWDlSltuM=;
 b=ggQY+fWdsT+x+c4al3YaoiYLO/xTBkQP+SNKeR7T9O49MffyfC1SkqHgYBbvGGFHNB
 pJsDhgHp4Q+arSW6+NJcsvl6zHeMFK7C0E3jbNh/Qz1I8BVOm1/pGHzBf2BtBTSckdaH
 N96Y7Iapx16O9eiJpNjpJPm7Mr+o+0XMxgito=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Tu70a6GqT0e8GNMBEnhxElVrZ5wZkDd2zBIWDlSltuM=;
 b=P5hvrP08b5cRsYXJ5T+NOHsjWFOdJo7/eLGFjcWVlXegqeGKrnF58W6eeIp0SQ3nR9
 HUYdnftiK4qz5sAlPZqdSQmmZWNUqLnpHtZF73ml1QddFZK3XfsYOxdAZN1vFyxSKB3h
 QBor7msr1Ouw8u9vjwHDI2F/Yf1ggOjqb4e50BBRbZWQ0ySdFGgZPnfz8+gSZgXzTbJR
 4XtINkv2SI9T0w9p5rAwTish1xAf8Bmsq0Q1Zn0ccUtZkUX2pnlXJTVX6ZQZhzMcUAwk
 2Nx8oNNQGouVTVhfqbSJaM5ZL44UQyk2OqWw2/0lYmN3liIGSCQdhUF0q4ZwUlkegf3q
 4mBg==
X-Gm-Message-State: APjAAAWD2sFftwOA7taB7uJhlqD641RkB0c3V3yyINCeNlygmZDF4Y2Q
 JjO4Rw6Qm2mc8iYPJnkpLSnBDHFo2oQfeEusnaAEtKm5EcCYqNCml+jty1EukmQ6a9EoF0n0bdt
 c3loaljc651GcSAN4Y6a9MfGjT6UNUD1rDCcj64tmgoOlxeivwZFIDKN+ZzqykkiAaumsxkkzZf
 nSwcSlyw==
X-Google-Smtp-Source: APXvYqwKkZilx+mFwuOkE1A7w7qvHFqox5yFovewe96TDRXvCil0Sszwhs/m3eE2jmH+jDGcm366Kg==
X-Received: by 2002:a17:902:b487:: with SMTP id
 y7mr88309155plr.219.1561402307747; 
 Mon, 24 Jun 2019 11:51:47 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c10sm199734pjq.14.2019.06.24.11.51.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 11:51:47 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
To: Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.de>,
 Hannes Reinecke <hare@suse.com>, Christoph Hellwig <hch@lst.de>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
 <36c093c6-9fea-aa2f-affe-70957e0c5b1b@grimberg.me>
 <681a1c11-7d11-6e28-bc64-b14bef22c144@suse.com>
 <fe550375-fc5d-ff19-c303-6671b8713df6@grimberg.me>
 <d64a5902-139e-4119-ec75-3394e0b129f9@suse.de>
 <d84bf42f-c9fe-6af4-58cc-14195ddff931@grimberg.me>
 <68599577-450a-ade1-451c-f310e5094317@grimberg.me>
 <66f3dd84-77cd-fc45-025c-4082cf3df7ec@suse.de>
 <2a6168f3-37f6-1acf-2e89-48a3b9cac8e1@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <1bda7d1a-19f9-8a79-51cc-e5428d226d88@broadcom.com>
Date: Mon, 24 Jun 2019 11:51:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <2a6168f3-37f6-1acf-2e89-48a3b9cac8e1@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_115149_708548_A1C4141D 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA2LzI0LzIwMTkgMTE6MDggQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4KPj4+Pj4gVGhh
dCdzIHdoYXQgSSB0aG91Z2h0IGluaXRpYWxseSwgdG9vLCBidXQgaXQgdHVybmVkIG91dCB0byBi
ZSBub3QKPj4+Pj4gc3VmZmljaWVudC4KPj4+Pgo+Pj4+IE5vdCBzdWZmaWNpZW50IGJlY2F1c2Ug
aXQgaGFuZ3M/IG9yIHBhbmljcz8KPj4+Pgo+PiBJdCBoYW5ncywgYW5kIHdlJ3JlIHNlZWluZyBh
IHdhcm5pbmc6Cj4+Cj4+IGtlcm5lbDogWzY3MDg4LjM0NDAzNF0gV0FSTklORzogQ1BVOiA0IFBJ
RDogMjUwMjAgYXQKPj4gLi4vbGliL3BlcmNwdS1yZWZjb3VudC5jOjMzNCBwZXJjcHVfcmVmX2tp
bGxfYW5kX2NvbmZpcm0rMHg3YS8weGEwCj4+IFsgLi4gXQo+PiBrZXJuZWw6IFs2NzA4OC4zNDQx
MDZdIENhbGwgVHJhY2U6Cj4+IGtlcm5lbDogWzY3MDg4LjM0NDExMl3CoCBibGtfZnJlZXplX3F1
ZXVlX3N0YXJ0KzB4MmEvMHg0MAo+PiBrZXJuZWw6IFs2NzA4OC4zNDQxMTRdwqAgYmxrX2ZyZWV6
ZV9xdWV1ZSsweGUvMHg0MAo+PiBrZXJuZWw6IFs2NzA4OC4zNDQxMThdwqAgbnZtZV91cGRhdGVf
ZGlza19pbmZvKzB4MzYvMHgyNjAgW252bWVfY29yZV0KPj4ga2VybmVsOiBbNjcwODguMzQ0MTIy
XcKgIF9fbnZtZV9yZXZhbGlkYXRlX2Rpc2srMHhjYS8weGYwIFtudm1lX2NvcmVdCj4+IGtlcm5l
bDogWzY3MDg4LjM0NDEyNV3CoCBudm1lX3JldmFsaWRhdGVfZGlzaysweGE2LzB4MTIwIFtudm1l
X2NvcmVdCj4+IGtlcm5lbDogWzY3MDg4LjM0NDEyN13CoCA/IGJsa19tcV9nZXRfdGFnKzB4YTMv
MHgyMjAKPj4ga2VybmVsOiBbNjcwODguMzQ0MTMwXcKgIHJldmFsaWRhdGVfZGlzaysweDIzLzB4
YzAKPj4ga2VybmVsOiBbNjcwODguMzQ0MTMzXcKgIG52bWVfdmFsaWRhdGVfbnMrMHg0My8weDgz
MCBbbnZtZV9jb3JlXQo+PiBrZXJuZWw6IFs2NzA4OC4zNDQxMzddwqAgPyB3YWtlX3VwX3ErMHg3
MC8weDcwCj4+IGtlcm5lbDogWzY3MDg4LjM0NDEzOV3CoCA/IGJsa19tcV9mcmVlX3JlcXVlc3Qr
MHgxMmEvMHgxNjAKPj4ga2VybmVsOiBbNjcwODguMzQ0MTQyXcKgID8gX19udm1lX3N1Ym1pdF9z
eW5jX2NtZCsweDczLzB4ZTAgW252bWVfY29yZV0KPj4ga2VybmVsOiBbNjcwODguMzQ0MTQ1XcKg
IG52bWVfc2Nhbl93b3JrKzB4MmIzLzB4MzUwIFtudm1lX2NvcmVdCj4+IGtlcm5lbDogWzY3MDg4
LjM0NDE0OV3CoCBwcm9jZXNzX29uZV93b3JrKzB4MWRhLzB4NDAwCj4+Cj4+IMKgRnJvbSB3aGlj
aCBJJ3ZlIGluZmVycmVkIHRoYXQgd2UncmUgc3RpbGwgcnVubmluZyBhIHNjYW4gaW4gcGFyYWxs
ZWwgdG8KPj4gcmVzZXQsIGFuZCB0aGF0IHRoZSBzY2FuIHRocmVhZCBpcyBjYWxsaW5nICdibGtf
ZnJlZXplX3F1ZXVlKCknIG9uIGEKPj4gcXVldWUgd2hpY2ggaXMgYWxyZWFkeSB0b3JuIGRvd24u
Cj4KPgo+IFdoZXJlIGlzIHRoZSBzY2FuIHRyaWdnZXJlZCBmcm9tPyB0aGVyZSBpcyBubyBzY2Fu
IGNhbGwgZnJvbSB0aGUgcmVzZXQKPiBwYXRoLgo+Cj4gSXMgdGhlcmUgYSBuYW1lc3BhY2UgcmVt
b3ZhbCBvciBzb21ldGhpbmcgZWxzZSB0aGF0IHRyaWdnZXJzIEFFTgo+IHRvIG1ha2UgdGhpcyBo
YXBwZW4/Cj4KPiBXaGF0IGV4YWN0bHkgaXMgdGhlIHNjZW5hcmlvPwoKSSBiZWxpZXZlIHRoaXMg
aXMgZnJvbSBxdWljayBsaW5rIGJvdW5jZSBvciBsb2dvdXQvbG9naW4gdGVzdGluZyBvbiBGQy4K
ClRoZSBsb3NzIG9mIGNvbm5lY3Rpdml0eSB0byB0aGUgc3Vic3lzdGVtIGNhdXNlcyBhIHJlc2V0
IHRvIGJlIGRvbmUgb24gCnRoZSBjb250cm9sbGVyLiBSZS1sb2dpbiBjYXVzZXMgdGhlIHRyYW5z
cG9ydCB0byBzZW5kIGEgZGlzY292ZXJ5IHNjYW4gCi1vci0gdGhlIHJlY29ubmVjdCB0aW1lciB3
aWxsIGZpcmUsIGNhdXNpbmcgdGhlIGNvbnRyb2xsZXIgdG8gcmVjb25uZWN0IAphbmQgaXNzdWUg
dGhlIHNjYW4uCgpUaGVzZSByZXNldHMgYW5kIHJlY29ubmVjdHMgYXJlIHJpZ2h0IG9uIHRoZSBo
ZWVscyBvZiBlYWNoIG90aGVyIC0gdGh1cyAKc2NhbiBtYXkgbm90IGJlIGZpbmlzaGVkIGJlZm9y
ZSB0aGUgcmVzZXQgb2NjdXJzLsKgIFJlc2V0IHdpbGwgY29tcGxldGUsIAphcyB0aGUgaW9zIGl0
IGtub3dzIGFib3V0IGFyZSBjbGVhbmVkIHVwLgoKLS0gamFtZXMKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QK
TGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
