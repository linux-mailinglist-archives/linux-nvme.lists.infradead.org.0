Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D62C1155C2
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Dec 2019 17:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77semFJN2sR/whRFqSf9M1lYD3mjv5ALxlNb78PEoKs=; b=SP1Lomu6E1q3dN
	wCQ8zkjUBX/xS+cms7p/cVy61DapsP33yaO492TX47A9NA+qjkdhA5IsrCmdbT+EkS31h6Hm6w6bd
	YX1LdCT2H9pLmdntdYDX99BsgLzutjvYkbCI/nuYtceKvKfI5uaidhO3yDlN6a834ZSW74Rh9wNpu
	3fNG19YFIGggkLbmXRN4c9tUOXHeHwDyROXcusipz1jWEqh4NzlgHdq+CY1gWOL3cZZR68QJDaHta
	b/sMJ84iSujBDLYsq5YUkDWekRiUQzq8zznFuz9q8lKv0gFZT+4AJODl99qTmrl8vn1Q0/o6oaJNI
	dOi/F7Y1jyMu7yhYITiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGnK-0006SO-GE; Fri, 06 Dec 2019 16:49:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGnE-0006RT-LK
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 16:49:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so8503430wrw.8
 for <linux-nvme@lists.infradead.org>; Fri, 06 Dec 2019 08:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OTF6Cg0prcz8+RTmSVeRQ9PYxVz7NpbprXoE0oIXG0Y=;
 b=sn6b+hwOQzOpIbPQvg0Y2Hu0lgz7RLkeXlXWNbvB0m4BEnFBM+wGurrPdDlb/Odbbp
 3CX9HQ3C+zYyxBcg/8BkHFB5GoXR//p2Lzde6CpwiJ19heMCrTcFOqucBiZ5HOr91hEX
 KPJXdKTsMgYGxcLeLqa2lkBgUJTCFRpdNOKeXVXc1KvejV1uhqVaYwNEKi9c4Y/kae6k
 chwLCcXrfNrLVIQUTFWHzj81d6Angn/sZVWDrVzSD7RtSyiRM47GBiiWwvtWGJCWUfno
 E2vypUCJ9QNHxZAnXuBIacLq0v0HdBHwW6PwDJ2OA9EAWBnaDVx8+BA/4E8NA5LDDI1u
 mhFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=OTF6Cg0prcz8+RTmSVeRQ9PYxVz7NpbprXoE0oIXG0Y=;
 b=aX3qpcupz0ukDhyo8arnz3xYttnFza4LD5EwDxgcl/O6RYMAM7hKM+OoXyX+TDTNvt
 pxklXo9Twr8qS4Gg7fJl2bAfmwDnlnVwCzqbRTsw4R9gSqBM+Xi8HWmgUdSFs3v5USxf
 pHstuOOryNTwo18uTvciC8Y2W9WQwwToz9bCALukkY9nWrcCQluDhtul1eK5MbJXWGgj
 Ei85dtqZmW7O8qusMv2IqT/DVPFIocAzUMZzcBF7xG+g6EWi+mfYrFsjElPca4qohJVA
 MKGC7Kh91IUrF2DxhgaPWeMV3KQWpqD6C8N1YII7yXHHZ+wPw6HWOgijuys1qBGbarWR
 BorQ==
X-Gm-Message-State: APjAAAUqqsfFeiU4FQ9bJDZO1LBaMyLumMSyBH6iOIuSbKyPhsPL2yCA
 ldl5m0SlTW4+ZbJ4gltfn0//eg==
X-Google-Smtp-Source: APXvYqwbpJbC67Y7EAlRYhifJjx+/B5AXYZRvN2tKQs7kiAl9UjXrnRLWNivJ2bPKSOUYYiE9U+MLg==
X-Received: by 2002:adf:ea0f:: with SMTP id q15mr16138851wrm.324.1575650960120; 
 Fri, 06 Dec 2019 08:49:20 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:143f:da10:4344:50a6?
 ([2a01:e34:ed2f:f020:143f:da10:4344:50a6])
 by smtp.googlemail.com with ESMTPSA id a20sm4063590wmd.19.2019.12.06.08.49.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2019 08:49:19 -0800 (PST)
Subject: Re: [PATCH v2 1/8] add header file for kelvin to/from Celsius
 conversion helpers
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-hwmon@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
 <1574952879-7200-2-git-send-email-akinobu.mita@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <5f85f65c-78b6-0b63-f975-a216f9823985@linaro.org>
Date: Fri, 6 Dec 2019 17:49:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1574952879-7200-2-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_084924_701169_D46EC830 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Sujith Thomas <sujith.thomas@intel.com>, Jens Axboe <axboe@fb.com>,
 Guenter Roeck <linux@roeck-us.net>, Keith Busch <kbusch@kernel.org>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMjgvMTEvMjAxOSAxNTo1NCwgQWtpbm9idSBNaXRhIHdyb3RlOgo+IFRoZXJlIGFyZSBzZXZl
cmFsIGhlbHBlciBtYWNyb3MgdG8gY29udmVydCBrZWx2aW4gdG8vZnJvbSBDZWxzaXVzIGluCj4g
PGxpbnV4L3RoZXJtYWwuaD4gZm9yIHRoZXJtYWwgZHJpdmVycy4gIFRoZXNlIGFyZSB1c2VmdWwg
Zm9yIGFueSBvdGhlcgo+IGRyaXZlcnMgb3Igc3Vic3lzdGVtcywgYnV0IGl0J3Mgb2RkIHRvIGlu
Y2x1ZGUgPGxpbnV4L3RoZXJtYWwuaD4ganVzdCBmb3IKPiB0aGUgaGVscGVycy4KPiAKPiBUaGlz
IGFkZHMgYSBuZXcgPGxpbnV4L3RlbXBlcmF0dXJlLmg+IHRoYXQgcHJvdmlkZXMgdGhlIGVxdWl2
YWxlbnQgaW5saW5lCj4gZnVuY3Rpb25zIGZvciBhbnkgZHJpdmVycyBvciBzdWJzeXN0ZW1zLiAg
SXQgaXMgaW50ZW5kZWQgdG8gcmVwbGFjZSB0aGUKPiBoZWxwZXJzIGluIDxsaW51eC90aGVybWFs
Lmg+Lgo+IAo+IENjOiBTdWppdGggVGhvbWFzIDxzdWppdGgudGhvbWFzQGludGVsLmNvbT4KPiBD
YzogRGFycmVuIEhhcnQgPGR2aGFydEBpbmZyYWRlYWQub3JnPgo+IENjOiBBbmR5IFNoZXZjaGVu
a28gPGFuZHlAaW5mcmFkZWFkLm9yZz4KPiBDYzogWmhhbmcgUnVpIDxydWkuemhhbmdAaW50ZWwu
Y29tPgo+IENjOiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPiBD
YzogQW1pdCBLdWNoZXJpYSA8YW1pdC5rdWNoZXJpYUB2ZXJkdXJlbnQuY29tPgo+IENjOiBKZWFu
IERlbHZhcmUgPGpkZWx2YXJlQHN1c2UuY29tPgo+IENjOiBHdWVudGVyIFJvZWNrIDxsaW51eEBy
b2Vjay11cy5uZXQ+Cj4gQ2M6IEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4KPiBDYzog
SmVucyBBeGJvZSA8YXhib2VAZmIuY29tPgo+IENjOiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxz
dC5kZT4KPiBDYzogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiBTaWduZWQtb2Zm
LWJ5OiBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0YUBnbWFpbC5jb20+Cj4gLS0tCj4gKiB2Mgo+
IC0gYWRkIGRlY2lfa2VsdmluX3RvX21pbGxpY2Vsc2l1c193aXRoX29mZnNldCgpIGluIGxpbnV4
L3RlbXBlcmF0dXJlLmgKPiAtIHN0b3AgaW5jbHVkaW5nIGxpbnV4L3RlbXBlcmF0dXJlLmggZnJv
bSBsaW51eC90aGVybWFsLmgKPiAKPiAgaW5jbHVkZS9saW51eC90ZW1wZXJhdHVyZS5oIHwgNTEg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xp
bnV4L3RlbXBlcmF0dXJlLmgKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC90ZW1wZXJh
dHVyZS5oIGIvaW5jbHVkZS9saW51eC90ZW1wZXJhdHVyZS5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwLi42NzllNzBhCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2luY2x1
ZGUvbGludXgvdGVtcGVyYXR1cmUuaAo+IEBAIC0wLDAgKzEsNTEgQEAKPiArLyogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KPiArI2lmbmRlZiBfTElOVVhfVEVNUEVSQVRVUkVf
SAo+ICsjZGVmaW5lIF9MSU5VWF9URU1QRVJBVFVSRV9ICgpJdCBzb3VuZHMgc3RyYW5nZSB0byBj
cmVhdGUgYSB0ZW1wZXJhdHVyZSBmaWxlIGp1c3QgZm9yIGEgZmV3IGNvbnZlcnNpb24KZnVuY3Rp
b25zLiBXaHkgbm90IGNyZWF0ZSBhbiB1bml0cy5oIGZpbGUsIHNvIHNvbWUgbW9yZSBjb252ZXJz
aW9ucwpjb3VsZCBiZSBhZGRlZCBsYXRlciAobm90IG5lY2Vzc2FyaWx5IHJlbGF0ZWQgdG8gdGVt
cGVyYXR1cmUpID8KCj4gKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiArCj4gKyNkZWZpbmUg
QUJTT0xVVEVfWkVST19NSUxMSUNFTFNJVVMgLTI3MzE1MAo+ICsKPiArc3RhdGljIGlubGluZSBs
b25nIGtlbHZpbl90b19taWxsaWNlbHNpdXMobG9uZyB0KQoKV2h5ICdsb25nJyA/Cgo+ICt7Cj4g
KwlyZXR1cm4gdCAqIDEwMDAgKyBBQlNPTFVURV9aRVJPX01JTExJQ0VMU0lVUzsKPiArfQo+ICsK
PiArc3RhdGljIGlubGluZSBsb25nIG1pbGxpY2Vsc2l1c190b19rZWx2aW4obG9uZyB0KQo+ICt7
Cj4gKwlyZXR1cm4gRElWX1JPVU5EX0NMT1NFU1QodCAtIEFCU09MVVRFX1pFUk9fTUlMTElDRUxT
SVVTLCAxMDAwKTsKClBsZWFzZSBkb24ndCBkdXBsaWNhdGUgdGhlc2Ugb3BlcmF0aW9ucywganVz
dCBkbyB0aGUgY29udmVyc2lvbiB0byB0aGUKcmlnaHQgdW5pdCBhbmQgdGhlbiBjYWxsIGEgc2lu
Z2xlIGZ1bmN0aW9uLgoKUmVwbGFjZSB0aGUgY29uc3RhbnQgYnkgbWFjcm9zIGxpa2Ugd2hhdCB3
ZSBmaW5kIGluIHRpbWU2NC5oLgoKZWcuCiNkZWZpbmUgTUlMTElDRUxTSVVTX1BFUl9DRUxDSVVT
IDEwMDAKClNvIHlvdSBjYW4gcmVhbGx5IGRvIHRoZSBjbGVhbnVwIGluIGFsbCB0aGUgZHJpdmVy
cywgbGlrZSByZW1vdmluZzoKCmRyaXZlcnMvaWlvL2FkYy9xY29tLXZhZGMtY29tbW9uLmg6I2Rl
ZmluZSBLRUxWSU5NSUxfQ0VMU0lVU01JTAogICAgICAgIDI3MzE1MApkcml2ZXJzL2lpby9wcmVz
c3VyZS9zdF9wcmVzc3VyZV9jb3JlLmM6I2RlZmluZSBNQ0VMU0lVU19QRVJfQ0VMU0lVUwogICAg
ICAgICAgICAgICAgMTAwMApkcml2ZXJzL2h3bW9uL3hnZW5lLWh3bW9uLmM6I2RlZmluZSBDRUxT
SVVTX1RPX21DRUxTSVVTKHgpCigoeCkgKiAxMDAwKQpkcml2ZXJzL25ldC93aXJlbGVzcy9pbnRl
bC9pd2xlZ2FjeS9jb21tb24uaDojZGVmaW5lCktFTFZJTl9UT19DRUxTSVVTKHgpICgoeCktMjcz
KQpkcml2ZXJzL25ldC93aXJlbGVzcy9pbnRlbC9pd2xlZ2FjeS9jb21tb24uaDojZGVmaW5lCkNF
TFNJVVNfVE9fS0VMVklOKHgpICgoeCkrMjczKQpkcml2ZXJzL25ldC93aXJlbGVzcy9pbnRlbC9p
d2x3aWZpL2R2bS9kZXYuaDojZGVmaW5lCktFTFZJTl9UT19DRUxTSVVTKHgpICgoeCktMjczKQpk
cml2ZXJzL25ldC93aXJlbGVzcy9pbnRlbC9pd2x3aWZpL2R2bS9kZXYuaDojZGVmaW5lCkNFTFNJ
VVNfVE9fS0VMVklOKHgpICgoeCkrMjczKQpkcml2ZXJzL3Bvd2VyL3N1cHBseS9zYnMtYmF0dGVy
eS5jOiNkZWZpbmUgVEVNUF9LRUxWSU5fVE9fQ0VMU0lVUwogICAgICAgIDI3MzEKZHJpdmVycy90
aGVybWFsL2FybWFkYV90aGVybWFsLmM6I2RlZmluZSBUT19NQ0VMU0lVUyhjKQooKGMpICogMTAw
MCkKZHJpdmVycy90aGVybWFsL3JjYXJfZ2VuM190aGVybWFsLmM6I2RlZmluZSBNQ0VMU0lVUyh0
ZW1wKSAgICAgICgodGVtcCkKKiAxMDAwKQpkcml2ZXJzL3RoZXJtYWwvcmNhcl90aGVybWFsLmM6
I2RlZmluZSBNQ0VMU0lVUyh0ZW1wKQooKHRlbXApICogMTAwMCkKZHJpdmVycy90aGVybWFsL3Nh
bXN1bmcvZXh5bm9zX3RtdS5jOiNkZWZpbmUgTUNFTFNJVVMgICAxMDAwCmRyaXZlcnMvdGhlcm1h
bC9zYW1zdW5nL2V4eW5vc190bXUuYzogICAgICAgICAgICAgICAgICAgdGVtcCAvPSBNQ0VMU0lV
UzsKZHJpdmVycy90aGVybWFsL3NhbXN1bmcvZXh5bm9zX3RtdS5jOiAgICAgICAgICAgICAgICAg
ICBoeXN0IC89IE1DRUxTSVVTOwpkcml2ZXJzL3RoZXJtYWwvc2Ftc3VuZy9leHlub3NfdG11LmM6
ICAgcmVmID0gdHJpcHNbMF0udGVtcGVyYXR1cmUgLwpNQ0VMU0lVUzsKZHJpdmVycy90aGVybWFs
L3NhbXN1bmcvZXh5bm9zX3RtdS5jOiAgICAgICAgICAgKnRlbXAgPQpjb2RlX3RvX3RlbXAoZGF0
YSwgdmFsdWUpICogTUNFTFNJVVM7CmRyaXZlcnMvdGhlcm1hbC9zYW1zdW5nL2V4eW5vc190bXUu
YzogICAgICAgICAgIHRlbXAgLz0gTUNFTFNJVVM7CgoKPiArfQo+ICsKPiArc3RhdGljIGlubGlu
ZSBsb25nIGRlY2lfa2VsdmluX3RvX2NlbHNpdXMobG9uZyB0KQo+ICt7Cj4gKwlyZXR1cm4gRElW
X1JPVU5EX0NMT1NFU1QodCAqIDEwMCArIEFCU09MVVRFX1pFUk9fTUlMTElDRUxTSVVTLCAxMDAw
KTsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSBsb25nIGNlbHNpdXNfdG9fZGVjaV9rZWx2aW4o
bG9uZyB0KQo+ICt7Cj4gKwlyZXR1cm4gdCAqIDEwIC0gRElWX1JPVU5EX0NMT1NFU1QoQUJTT0xV
VEVfWkVST19NSUxMSUNFTFNJVVMsIDEwMCk7Cj4gK30KPiArCj4gKy8qKgo+ICsgKiBkZWNpX2tl
bHZpbl90b19taWxsaWNlbHNpdXNfd2l0aF9vZmZzZXQgLSBjb252ZXJ0IEtlbHZpbiB0byBDZWxz
aXVzCj4gKyAqIEB0OiB0ZW1wZXJhdHVyZSB2YWx1ZSBpbiBkZWNpZGVncmVlcyBLZWx2aW4KPiAr
ICogQG9mZnNldDogZGlmZmVyZW5jZSBiZXR3ZWVuIEtlbHZpbiBhbmQgQ2Vsc2l1cyBpbiBtaWxs
aWRlZ3JlZXMKPiArICoKPiArICogUmV0dXJuOiB0ZW1wZXJhdHVyZSB2YWx1ZSBpbiBtaWxsaWRl
Z3JlZXMgQ2Vsc2l1cwo+ICsgKi8KPiArc3RhdGljIGlubGluZSBsb25nIGRlY2lfa2VsdmluX3Rv
X21pbGxpY2Vsc2l1c193aXRoX29mZnNldChsb25nIHQsIGxvbmcgb2Zmc2V0KQo+ICt7Cj4gKwly
ZXR1cm4gdCAqIDEwMCAtIG9mZnNldDsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSBsb25nIGRl
Y2lfa2VsdmluX3RvX21pbGxpY2Vsc2l1cyhsb25nIHQpCj4gK3sKPiArCXJldHVybiB0ICogMTAw
ICsgQUJTT0xVVEVfWkVST19NSUxMSUNFTFNJVVM7Cj4gK30KPiArCj4gK3N0YXRpYyBpbmxpbmUg
bG9uZyBtaWxsaWNlbHNpdXNfdG9fZGVjaV9rZWx2aW4obG9uZyB0KQo+ICt7Cj4gKwlyZXR1cm4g
RElWX1JPVU5EX0NMT1NFU1QodCAtIEFCU09MVVRFX1pFUk9fTUlMTElDRUxTSVVTLCAxMDApOwo+
ICt9Cj4gKwo+ICsjZW5kaWYgLyogX0xJTlVYX1RFTVBFUkFUVVJFX0ggKi8KPiAKCgotLSAKIDxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20v
cGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3Jn
PiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1l
IG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
