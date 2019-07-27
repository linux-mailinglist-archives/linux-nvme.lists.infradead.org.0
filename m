Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A5677B83
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 21:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ATuMwfVdlexkqqyY/dr9giTsur0zOXcqFcaICvLRuUM=; b=WMhzZHSAiRZFsRN3abbvTpCZM
	Ru202441+NTiUWeyOFpi/P2uqwukijyM8ERAIh50JADD5Ssf1ebk5/lk0EZJE+AM6s61h2Cqfdw12
	sylCI/kEwbArh7DyChd6axsLw9f7wxyZxJY18bEx8irV25B0SWU1NH2UitaTMey4at3GiW1dnGsOq
	1edQC4UrhrINSBgLFrPJpy/bGvWchczv8Ws7AtxibdIYfMgqJDiFf6TAJQ6GKJvjpt5ccBWer6vEO
	TKjTxQxpUQShyPTk633h8rI720N/m3cP0qwCzkBUf4Dar+jJJuWJthVORRbxbb/HfZq8LPojl2k3c
	sjPDuIwbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSUt-0005pf-0r; Sat, 27 Jul 2019 19:36:51 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSUk-0005pK-D8
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 19:36:44 +0000
Received: by mail-ed1-x544.google.com with SMTP id k8so55961848eds.7
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 12:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yMRvrpHzHDshG1OtGfRGivwFWPwcM4qx8opaK1Pwg1w=;
 b=rfOuBtGdnwQ/Kk2P12mi25QVapZeGT4nG3jZHFxag2DF9iTqiX/OxwwchaH7KDrZmB
 Ga0+VFCzuTTeJC2E+yejGzp1LVpXUW9A1QGyefYQlTIWpbVaCSrpQ8kY9BrdCRayjUeC
 Zkkw5k3wOGO3JYhYE+HJwHrFXFVgtTegkxTPmJqA4SRC3MKoOOH0Tz0iiItE3oZCJQCD
 pFwnBLBZNwyIsls1qvpm1LumEJgmvqy02fllE49Dl6GPzOj4KrJ8yd4Gbc6FnW5fCaCN
 dGzZ7caNZLjrDQgKSiMtf8rgE8CPHYP6FY8x9F4SEMXoQqnyAEoQaL0rypC447wJ8oAd
 zGfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yMRvrpHzHDshG1OtGfRGivwFWPwcM4qx8opaK1Pwg1w=;
 b=TXTfQ3rTFvs1+rkusJu6naeuBZxPmD2XFVH4Nc1W5EXHapfXDh2gDfigqGrKu7/sgO
 TBI0C3lgJziGU05Xyyt6qkxDb/qCzsNGR/dEAdBe2pGgtYcxPeYTPFbvJtjULKhTjNaz
 165X4O0CR3SRo2gCrqy+5qh4cQSs3dL62mqmETzTXyzZ/MURFruqH95ZY565LJEl+dZZ
 d5oqekTsXrS1ZChq3t+g+8EgXirCCIokgL+JQ7hwa+fVFv0PWeuOjkKkJehSaIXt0RKV
 to4TRZCnLFtAXW1+b6ncE1Dsf9eAN3M5hiXJELUZDwafGCsSp/tvyhklnyj5+fRWrOQW
 FvAQ==
X-Gm-Message-State: APjAAAUwVJykGUF4YFitpLJSijvVVAOD+980KJN9/8SkPdpFmvGB8tpW
 XyobrAunr24rwHjb/c6Dmmc=
X-Google-Smtp-Source: APXvYqzd38SRkzs4xjWD9EYNFmtnXhup6pOZbhqDJ1eh8O2Gpu8n/f0MXGJFeOxelxpxSbFB1Sm7Tg==
X-Received: by 2002:a17:906:6802:: with SMTP id
 k2mr54263339ejr.174.1564256200779; 
 Sat, 27 Jul 2019 12:36:40 -0700 (PDT)
Received: from [192.168.87.120] ([86.52.229.18])
 by smtp.gmail.com with ESMTPSA id a55sm15254471eda.70.2019.07.27.12.36.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 12:36:40 -0700 (PDT)
Subject: Re: [PATCH 3/4] nvme: lightnvm: trace opcode name
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
 <20190727184155.18014-4-minwoo.im.dev@gmail.com>
From: =?UTF-8?Q?Matias_Bj=c3=b8rling?= <mb@lightnvm.io>
Message-ID: <bf4212ea-8c08-61eb-39cd-c43a5186125c@lightnvm.io>
Date: Sat, 27 Jul 2019 21:36:39 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190727184155.18014-4-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_123642_520100_25B2E6E0 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Javier_Gonz=c3=a1lez?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>, Sagi Grimberg <sagi@grimberg.me>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8yNy8xOSA4OjQxIFBNLCBNaW53b28gSW0gd3JvdGU6Cj4gVGhpcyBwYXRjaCBtb3ZlZCBv
cGNvZGUgZW51bSB2YWx1ZXMgdG8gbnZtZS5oIHRvIG1ha2UgaXQgc3VwcG9ydCBmb3IKPiBjb21t
YW5kIHRyYWNlIHdpdGggb3Bjb2RlIG5hbWUgaXN0ZWFkIG9mIHJhdyBvcGNvZGUgdmFsdWUuCj4g
Cj4gRXhhbXBsZSBvZiBWZWN0b3IgQ2h1bmsgUmVhZDoKPiAJLi4uIGNtZD0oMHhlMiBjZHcxMD0w
MCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAwMCAuLi4KPiAKPiBJdCB3b3VsZCBiZSBsaWtlOgo+IAku
Li4gY21kPShudm1lX252bV9hZG1pbl9pZGVudGl0eSBjZHcxMD0wMCAwMCAwMCAwMCAwMCAwMCAw
MCAwMCAwMCAuLi4KPiAKPiBBbHRob3VnaCBPQ1NTRCAxLjIgaGFzIGJlZW4gZGVwcmVjYXRlZCwg
d2UgaGF2ZSB0aGUgY29kZXMgZm9yIDEuMiBzbwo+IHRoYXQgdGhpcyBraW5kIG9mIHRyYWNlcyBt
aWdodCBiZSBkZXByZWNhdGVkIGxhdGVyIHRpbWUuCj4gCj4gQ2M6IEtlaXRoIEJ1c2NoIDxrYnVz
Y2hAa2VybmVsLm9yZz4KPiBDYzogSmVucyBBeGJvZSA8YXhib2VAZmIuY29tPgo+IENjOiBDaHJp
c3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KPiBDYzogU2FnaSBHcmltYmVyZyA8c2FnaUBncmlt
YmVyZy5tZT4KPiBDYzogTWF0aWFzIEJqw7hybGluZyA8bWJAbGlnaHRudm0uaW8+Cj4gQ2M6IEph
dmllciBHb256w6FsZXogPGphdmllckBqYXZpZ29uLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaW53
b28gSW0gPG1pbndvby5pbS5kZXZAZ21haWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9udm1lL2hv
c3QvbGlnaHRudm0uYyB8ICA2IC0tLS0tLQo+ICAgaW5jbHVkZS9saW51eC9udm1lLmggICAgICAg
ICB8IDEwICsrKysrKysrKy0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA3
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9saWdodG52
bS5jIGIvZHJpdmVycy9udm1lL2hvc3QvbGlnaHRudm0uYwo+IGluZGV4IGJhMDA5ZDRjOWRmYS4u
ZDA2ZDA5MTljMTM5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2xpZ2h0bnZtLmMK
PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9saWdodG52bS5jCj4gQEAgLTE1LDEyICsxNSw2IEBA
Cj4gICAjaW5jbHVkZSA8bGludXgvc2NoZWQvc3lzY3RsLmg+Cj4gICAjaW5jbHVkZSA8dWFwaS9s
aW51eC9saWdodG52bS5oPgo+ICAgCj4gLWVudW0gbnZtZV9udm1fYWRtaW5fb3Bjb2RlIHsKPiAt
CW52bWVfbnZtX2FkbWluX2lkZW50aXR5CQk9IDB4ZTIsCj4gLQludm1lX252bV9hZG1pbl9nZXRf
YmJfdGJsCT0gMHhmMiwKPiAtCW52bWVfbnZtX2FkbWluX3NldF9iYl90YmwJPSAweGYxLAo+IC19
Owo+IC0KPiAgIGVudW0gbnZtZV9udm1fbG9nX3BhZ2Ugewo+ICAgCU5WTUVfTlZNX0xPR19SRVBP
UlRfQ0hVTksJPSAweGNhLAo+ICAgfTsKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9udm1l
LmggYi9pbmNsdWRlL2xpbnV4L252bWUuaAo+IGluZGV4IDAxYWE2YTZjMjQxZC4uZmRkZjRjNzc2
Nzg4IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvbnZtZS5oCj4gKysrIGIvaW5jbHVkZS9s
aW51eC9udm1lLmgKPiBAQCAtODE0LDYgKzgxNCwxMSBAQCBlbnVtIG52bWVfYWRtaW5fb3Bjb2Rl
IHsKPiAgIAludm1lX2FkbWluX3NlY3VyaXR5X3NlbmQJPSAweDgxLAo+ICAgCW52bWVfYWRtaW5f
c2VjdXJpdHlfcmVjdgk9IDB4ODIsCj4gICAJbnZtZV9hZG1pbl9zYW5pdGl6ZV9udm0JCT0gMHg4
NCwKPiArCj4gKwkvKiBPQ1NTRCAxLjIgKi8KPiArCW52bWVfbnZtX2FkbWluX2lkZW50aXR5CQk9
IDB4ZTIsCj4gKwludm1lX252bV9hZG1pbl9nZXRfYmJfdGJsCT0gMHhmMiwKPiArCW52bWVfbnZt
X2FkbWluX3NldF9iYl90YmwJPSAweGYxLAo+ICAgfTsKPiAgIAo+ICAgI2RlZmluZSBudm1lX2Fk
bWluX29wY29kZV9uYW1lKG9wY29kZSkJeyBvcGNvZGUsICNvcGNvZGUgfQo+IEBAIC04NDAsNyAr
ODQ1LDEwIEBAIGVudW0gbnZtZV9hZG1pbl9vcGNvZGUgewo+ICAgCQludm1lX2FkbWluX29wY29k
ZV9uYW1lKG52bWVfYWRtaW5fZm9ybWF0X252bSksCQlcCj4gICAJCW52bWVfYWRtaW5fb3Bjb2Rl
X25hbWUobnZtZV9hZG1pbl9zZWN1cml0eV9zZW5kKSwJXAo+ICAgCQludm1lX2FkbWluX29wY29k
ZV9uYW1lKG52bWVfYWRtaW5fc2VjdXJpdHlfcmVjdiksCVwKPiAtCQludm1lX2FkbWluX29wY29k
ZV9uYW1lKG52bWVfYWRtaW5fc2FuaXRpemVfbnZtKSkKPiArCQludm1lX2FkbWluX29wY29kZV9u
YW1lKG52bWVfYWRtaW5fc2FuaXRpemVfbnZtKSwJXAo+ICsJCW52bWVfYWRtaW5fb3Bjb2RlX25h
bWUobnZtZV9udm1fYWRtaW5faWRlbnRpdHkpLAlcCj4gKwkJbnZtZV9hZG1pbl9vcGNvZGVfbmFt
ZShudm1lX252bV9hZG1pbl9nZXRfYmJfdGJsKSwJXAo+ICsJCW52bWVfYWRtaW5fb3Bjb2RlX25h
bWUobnZtZV9udm1fYWRtaW5fc2V0X2JiX3RibCkpCj4gICAKPiAgIGVudW0gewo+ICAgCU5WTUVf
UVVFVUVfUEhZU19DT05USUcJPSAoMSA8PCAwKSwKPiAKCldlIHNob3VsZCBub3QgcG9sbHV0ZSB0
aGUgc3RhbmRhcmRpbGl6ZWQgTlZNZSBjb2RlIHdpdGggdmVuZG9yLXNwZWNpZmljIApvcGNvZGVz
LiBUaGUgYWJvdmUgY29kZSBhc3N1bWVzIGdlbmVyYWxseSB0aGF0IGFuIG9wY29kZSBpcyBhc3Nv
Y2lhdGVkIAphcyBhbiBhZG1pbiBvcGNvZGUgLSB0aGlzIGlzIHRydWUgZm9yIGFuIE9DU1NEIDEu
MiBkcml2ZSwgYnV0IG5vdCBzbyBmb3IgCmFueSBvdGhlciB2ZW5kb3IncyBkcml2ZS4KCkJlc2lk
ZXMgdGhhdCwgSSBkb24ndCB0aGluayB3ZSBzaG91bGQgYWRkIGFueW1vcmUgY29kZSBmb3IgMS4y
IHNpbmNlIGl0IAppcyBkZXByZWNhdGVkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbnZtZQo=
