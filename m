Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A449D32686
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 04:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6RGh02k8XcWu+ikCYduIqbY9sOgVHAtNfB5aLwmKQQ=; b=aWb2tBafu/5NsO
	IjPG1ToAS4ZOJ2N9vMSRiBnhwL/Ls5G2GZIrSXAm0FCFkbA8RUVJg0ZZlAM5iG7EUSbcs7IqWUxgY
	2IZXnzg54YVz9/JGo3NipnC4FuiyhuPhPBcCxd8ZGVh1OEsJNlrrRLcHUMAiNFaCsN4ZrsvJpo0mY
	VCxo8uOWRj0sW/wZdjMuEfOL2UGpXd7vaFp5aEbDr1cERI+Q/8RkXv9ohfBs3T7f4nOQb4KpOHsSz
	BS0aoAxSUyGT85AuIIM28cq28tp3lFM1lgePrl3chvhdXeDCKaLxrhd5Yai0kvMG/7LDK2HM7HX9F
	h5UOMqdOEBC/OG7btO1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXcYV-0003a7-R5; Mon, 03 Jun 2019 02:18:35 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXcYP-0003Zf-IL
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 02:18:31 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so4603092pls.13
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 19:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=/7iBPtQZzLxgPL56MasB5FK8dS1pUDHi1k1WFOdlpQ0=;
 b=Zm5HIycCv5R3MblFT/tG296U41p/ks8TumGra6QPWNLK8y/b0bwIfeeMCIQJzO4NL7
 kL8ioRhqk2vk5WWgwcTl1t8bdAdL0ZEfGGeN7Rc3dtkMEj3Uujqmm55Z529ELne5ZbX/
 jcViWVnZWBYbmFFdR9wK2YwU5hE+TYCawIcjWV9DkMKAOUwrFUQpyHIYPRNVhYMtV3pt
 q9N1InNGY9ngcyj87ITjcp0L1OL8I0Gt91pPuP+YF0uq4jvWqWrmTSPWNb9VXt20Hi05
 4FV5IwyK4a/Q4ZCJ2oVdPc5sqRPZyp8F6GeOKYIJlJ4z0y3GOH9QJkrFr5FUNF8beuxv
 T41g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=/7iBPtQZzLxgPL56MasB5FK8dS1pUDHi1k1WFOdlpQ0=;
 b=A27gwOrP/Csa3pfBlEXSQJxEGb3d6buX1rKc7zGTdJ7T2lXZvNhTlY2oLT9zxKe0oF
 /mK36RQB1z3dlOALnShAtLgJM5v0CH1D1lwivI11UmU/1a/fnLyh2bwZQA5bfi//AT8s
 Z9NUYE6W352MkUlocR7FsoEvMZy81DAbPrtVX73hs/4NDFLMIYwegUCwT5pBNOkr1/xb
 FebjEZN0HFYI/xXpzMKvSbPwJQmG7xh3iYgKW2sn1el5NWmlY2NTAQxnuQcCdpsLxt+N
 S6hlrDUWOgKNJBPi4c98+srgsWFTZdXm0u3h6LW+ukhd3UcbKy2zHtJyYxeQ+qJkspTI
 OIrQ==
X-Gm-Message-State: APjAAAVxNZ46lNu4z9RFNjbasc/O7vRYZjUFzUdL64i1iEhZu+HaHCco
 lN/7iNMUDEiMSiWq09HUtvo=
X-Google-Smtp-Source: APXvYqwqQVFWad10LAUryg+VR9P/9Mw2P1+On+08nDK+xL5u5XJ7zkRmGXS/v2hg5039B48koxxJUw==
X-Received: by 2002:a17:902:e311:: with SMTP id
 cg17mr27016256plb.202.1559528308235; 
 Sun, 02 Jun 2019 19:18:28 -0700 (PDT)
Received: from localhost.localdomain ([2601:644:8201:32e0:7256:81ff:febd:926d])
 by smtp.gmail.com with ESMTPSA id j64sm29489394pfb.126.2019.06.02.19.18.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 19:18:27 -0700 (PDT)
Date: Sun, 2 Jun 2019 19:18:23 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v2 2/4] nvme: add thermal zone infrastructure
Message-ID: <20190603021821.GA8354@localhost.localdomain>
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
 <1558454649-28783-3-git-send-email-akinobu.mita@gmail.com>
 <20190524023520.GC1936@localhost.localdomain>
 <CAC5umyhCHJrzSSEy3NF38BhRQ9FSjVr8YfjChN-_3pVR5QwXsA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyhCHJrzSSEy3NF38BhRQ9FSjVr8YfjChN-_3pVR5QwXsA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_191829_631569_A3AD7853 
X-CRM114-Status: GOOD (  39.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (edubezval[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMjQsIDIwMTkgYXQgMTA6NTc6MzZQTSArMDkwMCwgQWtpbm9idSBNaXRhIHdy
b3RlOgo+IDIwMTnlubQ15pyIMjTml6Uo6YeRKSAxMTozNSBFZHVhcmRvIFZhbGVudGluIDxlZHVi
ZXp2YWxAZ21haWwuY29tPjoKPiA+Cj4gPiBIZWxsbyBNaXRhLAo+ID4KPiA+IE9uIFdlZCwgTWF5
IDIyLCAyMDE5IGF0IDAxOjA0OjA3QU0gKzA5MDAsIEFraW5vYnUgTWl0YSB3cm90ZToKPiA+ID4g
VGhlIE5WTWUgY29udHJvbGxlciByZXBvcnRzIHVwIHRvIG5pbmUgdGVtcGVyYXR1cmUgdmFsdWVz
IGluIHRoZSBTTUFSVCAvCj4gPiA+IEhlYWx0aCBsb2cgcGFnZSAodGhlIGNvbXBvc2l0ZSB0ZW1w
ZXJhdHVyZSBhbmQgdGVtcGVyYXR1cmUgc2Vuc29yIDEgdGhyb3VnaAo+ID4gPiB0ZW1wZXJhdHVy
ZSBzZW5zb3IgOCkuCj4gPgo+ID4gSXMgdGhpcyBhIGZpeGVkIG51bWJlciBvciB3ZSBzaG91bGQg
YmUgbW9yZSBmbGV4aWJsZSBvbiB0aGUgYW1vdW50IG9mCj4gPiBzZW5zb3JzPwo+IAo+IE1heCBu
dW1iZXIgaXMgZml4ZWQuICBJbiBOVk1lIHNwZWMgcmV2aXNpb24gMS4zLCBhIGNvbnRyb2xsZXIg
cmVwb3J0cyB1cAo+IHRvIG5pbmUgdGVtcGVyYXR1cmUgdmFsdWVzIGluIHRoZSBTTUFSVCAvIEhl
YWx0aCBpbmZvcm1hdGlvbiBsb2cuCj4gCj4gSXQgbWF5IGNoYW5nZSB0byBtb3JlIHRoYW4gbmlu
ZSBpbiB0aGUgZnV0dXJlLCBidXQgd2UgY2FuIGZpeCB0aGVuLgo+IAo+ID4gPiBUaGUgdGVtcGVy
YXR1cmUgdGhyZXNob2xkIGZlYXR1cmUgKEZlYXR1cmUgSWRlbnRpZmllciAwNGgpIGNvbmZpZ3Vy
ZXMgdGhlCj4gPiA+IGFzeW5jaHJvbm91cyBldmVudCByZXF1ZXN0IGNvbW1hbmQgdG8gY29tcGxl
dGUgd2hlbiB0aGUgdGVtcGVyYXR1cmUgaXMKPiA+ID4gY3Jvc3NlZCBpdHMgY29ycmVzcG9uZGlu
ZyB0ZW1wZXJhdHVyZSB0aHJlc2hvbGQuCj4gPiA+Cj4gPiA+IFRoaXMgYWRkcyBpbmZyYXN0cnVj
dHVyZSB0byBwcm92aWRlIHRoZXNlIHRlbXBlcmF0dXJlcyBhbmQgdGhyZXNob2xkcyB2aWEKPiA+
ID4gdGhlcm1hbCB6b25lIGRldmljZXMuCj4gPiA+Cj4gPiA+IFRoZSBudm1lX3RoZXJtYWxfem9u
ZXNfcmVnaXN0ZXIoKSBjcmVhdGVzIHVwIHRvIG5pbmUgdGhlcm1hbCB6b25lIGRldmljZXMKPiA+
ID4gZm9yIGFsbCBpbXBsZW1lbnRlZCB0ZW1wZXJhdHVyZSBzZW5zb3JzIGluY2x1ZGluZyB0aGUg
Y29tcG9zaXRlCj4gPiA+IHRlbXBlcmF0dXJlLgo+ID4KPiA+IGdyZWF0IQo+ID4KPiA+ID4KPiA+
ID4gL3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZVswLSpdOgo+ID4gPiAgICAgfC0tLXRl
bXA6IFRlbXBlcmF0dXJlCj4gPiA+ICAgICB8LS0tdHJpcF9wb2ludF8wX3RlbXA6IE92ZXIgdGVt
cGVyYXR1cmUgdGhyZXNob2xkCj4gPiA+Cj4gPiA+IFRoZSB0aGVybWFsX3pvbmVbMC0qXSBjb250
YWlucyBhIHN5bWxpbmsgdG8gdGhlIGNvcnJlc3BvbmRpbmcgbnZtZSBkZXZpY2UuCj4gPiA+IE9u
IHRoZSBvdGhlciBoYW5kLCB0aGUgZm9sbG93aW5nIHN5bWxpbmtzIHRvIHRoZSB0aGVybWFsIHpv
bmUgZGV2aWNlcyBhcmUKPiA+ID4gY3JlYXRlZCBpbiB0aGUgbnZtZSBkZXZpY2Ugc3lzZnMgZGly
ZWN0b3J5Lgo+ID4gPgo+ID4gPiAtIG52bWVfdGVtcDA6IENvbXBvc2l0ZSB0ZW1wZXJhdHVyZQo+
ID4gPiAtIG52bWVfdGVtcDE6IFRlbXBlcmF0dXJlIHNlbnNvciAxCj4gPiA+IC4uLgo+ID4gPiAt
IG52bWVfdGVtcDg6IFRlbXBlcmF0dXJlIHNlbnNvciA4Cj4gPiA+Cj4gPiA+IFRoZSBudm1lX3Ro
ZXJtYWxfem9uZXNfdW5yZWdpc3RlcigpIHJlbW92ZXMgdGhlIHJlZ2lzdGVyZWQgdGhlcm1hbCB6
b25lCj4gPiA+IGRldmljZXMgYW5kIHN5bWxpbmtzLgo+ID4gPgo+ID4gPiBDYzogWmhhbmcgUnVp
IDxydWkuemhhbmdAaW50ZWwuY29tPgo+ID4gPiBDYzogRWR1YXJkbyBWYWxlbnRpbiA8ZWR1YmV6
dmFsQGdtYWlsLmNvbT4KPiA+ID4gQ2M6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0Bs
aW5hcm8ub3JnPgo+ID4gPiBDYzogS2VpdGggQnVzY2ggPGtlaXRoLmJ1c2NoQGludGVsLmNvbT4K
PiA+ID4gQ2M6IEplbnMgQXhib2UgPGF4Ym9lQGZiLmNvbT4KPiA+ID4gQ2M6IENocmlzdG9waCBI
ZWxsd2lnIDxoY2hAbHN0LmRlPgo+ID4gPiBDYzogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVy
Zy5tZT4KPiA+ID4gQ2M6IE1pbndvbyBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+Cj4gPiA+
IENjOiBLZW5uZXRoIEhlaXRrZSA8a2VubmV0aC5oZWl0a2VAaW50ZWwuY29tPgo+ID4gPiBDYzog
Q2hhaXRhbnlhIEt1bGthcm5pIDxDaGFpdGFueWEuS3Vsa2FybmlAd2RjLmNvbT4KPiA+ID4gU2ln
bmVkLW9mZi1ieTogQWtpbm9idSBNaXRhIDxha2lub2J1Lm1pdGFAZ21haWwuY29tPgo+ID4gPiAt
LS0KPiA+ID4gKiB2Mgo+ID4gPiAtIHMvY29ycmVzcG9pbmRpbmcvY29ycmVzcG9uZGluZy8gdHlw
byBpbiBjb21taXQgbG9nCj4gPiA+IC0gQm9ycm93ZWQgbnZtZV9nZXRfZmVhdHVyZXMoKSBmcm9t
IEtlaXRoJ3MgcGF0Y2gKPiA+ID4gLSBUZW1wZXJhdHVyZSB0aHJlc2hvbGQgbm90aWZpY2F0aW9u
IGlzIHNwbGl0dGVkIGludG8gYW5vdGhlciBwYXRjaAo+ID4gPiAtIENoYW5nZSB0aGUgZGF0YSB0
eXBlIG9mICdzZW5zb3InIHRvIHVuc2lnbmVkCj4gPiA+IC0gQWRkIEJVSUxEX0JVR19PTiBmb3Ig
dGhlIGFycmF5IHNpemUgb2YgdHpkZXYgbWVtYmVyIGluIG52bWVfY3RybAo+ID4gPiAtIEFkZCBX
QVJOX09OX09OQ0UgZm9yIHBhcmFub2lkIGNoZWNrcwo+ID4gPiAtIEZpeCBvZmYtYnktb25lIGVy
cm9yIGluIG52bWVfZ2V0X3RlbXAKPiA+ID4gLSBWYWxpZGF0ZSAnc2Vuc29yJyB3aGVyZSB0aGUg
dmFsdWUgaXMgYWN0dWFsbHkgdXNlZAo+ID4gPiAtIERlZmluZSBhbmQgdXRpbGl6ZSB0d28gZW51
bXMgcmVsYXRlZCB0byB0aGUgdGVtcGVyYXR1cmUgdGhyZXNob2xkIGZlYXR1cmUKPiA+ID4gLSBS
ZW1vdmUgaHlzdGVyZXNpcyB2YWx1ZSBmb3IgdGhpcyB0cmlwIHBvaW50IGFuZCBkb24ndCB1dGls
aXplIHRoZSB1bmRlcgo+ID4gPiAgIHRlbXBlcmF0dXJlIHRocmVzaG9sZAo+ID4gPiAtIFByaW50
IGVycm9yIG1lc3NhZ2UgZm9yIHRoZXJtYWxfem9uZV9kZXZpY2VfcmVnaXN0ZXIoKSBmYWlsdXJl
Cj4gPiA+IC0gQWRkIGZ1bmN0aW9uIGNvbW1lbnRzIGZvciBudm1lX3RoZXJtYWxfem9uZXNfeyx1
bn1yZWdpc3Rlcgo+ID4gPiAtIFN1cHByZXNzIG5vbi1mYXRhbCBlcnJvcnMgZnJvbSBudm1lX3Ro
ZXJtYWxfem9uZXNfcmVnaXN0ZXIoKQo+ID4gPiAtIEFkZCBjb21tZW50IGFib3V0IGltcGxlbWVu
dGVkIHRlbXBlcmF0dXJlIHNlbnNvcnMKPiA+ID4gLSBJbnN0ZWFkIG9mIGNyZWF0aW5nIGEgbmV3
ICd0aGVybWFsX3dvcmsnLCBhcHBlbmQgYXN5bmMgc21hcnQgZXZlbnQncwo+ID4gPiAgIGFjdGlv
biB0byB0aGUgZXhpc3RpbmcgYXN5bmNfZXZlbnRfd29yawo+ID4gPiAtIEFkZCBjb21tZW50IGZv
ciB0emRldiBtZW1iZXIgaW4gbnZtZV9jdHJsCj4gPiA+Cj4gPiA+ICBkcml2ZXJzL252bWUvaG9z
dC9jb3JlLmMgfCAyNjUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKPiA+ID4gIGRyaXZlcnMvbnZtZS9ob3N0L252bWUuaCB8ICAyNyArKysrKwo+ID4gPiAg
aW5jbHVkZS9saW51eC9udm1lLmggICAgIHwgICA1ICsKPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwg
Mjk3IGluc2VydGlvbnMoKykKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9o
b3N0L2NvcmUuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ID4gPiBpbmRleCBjMDRkZjgw
Li4wZWMzMDNjIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPiA+
ID4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gPiA+IEBAIC0yMTc5LDYgKzIxNzks
MjcxIEBAIHN0YXRpYyB2b2lkIG52bWVfc2V0X2xhdGVuY3lfdG9sZXJhbmNlKHN0cnVjdCBkZXZp
Y2UgKmRldiwgczMyIHZhbCkKPiA+ID4gICAgICAgfQo+ID4gPiAgfQo+ID4gPgo+ID4gPiArI2lm
ZGVmIENPTkZJR19USEVSTUFMCj4gPiA+ICsKPiA+ID4gK3N0YXRpYyBpbnQgbnZtZV9nZXRfdGVt
cChzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCB1bnNpZ25lZCBpbnQgc2Vuc29yLCBpbnQgKnRlbXAp
Cj4gPiA+ICt7Cj4gPiA+ICsgICAgIHN0cnVjdCBudm1lX3NtYXJ0X2xvZyAqbG9nOwo+ID4gPiAr
ICAgICBpbnQgcmV0Owo+ID4gPiArCj4gPiA+ICsgICAgIEJVSUxEX0JVR19PTihBUlJBWV9TSVpF
KGxvZy0+dGVtcF9zZW5zb3IpICsgMSAhPQo+ID4gPiArICAgICAgICAgICAgICAgICAgQVJSQVlf
U0laRShjdHJsLT50emRldikpOwo+ID4KPiA+IFdoZW4gd291bGQgdGhpcyBiZSB0cmlnZ2VyZWQ/
Cj4gCj4gVGhpcyBqdXN0IGVuc3VyZXMgdGhhdCB0aGUgdGVtcGVyYXR1cmUgZmllbGRzIGZvciB0
aGUgU01BUlQgbG9nIHBhZ2UKPiBzdHJ1Y3R1cmUgYW5kIG52bWVfY3RybCBhcmUgbm90IGNoYW5n
ZWQgYWNjaWRlbnRhbGx5Lgo+IAoKT2suCgo+ID4gPiArCj4gPiA+ICsgICAgIGlmIChXQVJOX09O
X09OQ0Uoc2Vuc29yID4gQVJSQVlfU0laRShsb2ctPnRlbXBfc2Vuc29yKSkpCj4gPiA+ICsgICAg
ICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ICsKPiA+ID4gKyAgICAgbG9nID0ga3phbGxv
YyhzaXplb2YoKmxvZyksIEdGUF9LRVJORUwpOwo+ID4KPiA+IERvIHdlIHJlYWxseSBuZWVkIHRv
IGFsbG9jYXRlIG1lbW9yeSBldmVyeSB0aW1lIHdlIHdhbnQgdG8gcmVhZAo+ID4gdGVtcGVyYXR1
cmU/IElzIHRoaXMgc3RydWN0IHRvbyBsYXJnZSB0byBmaXQgc3RhY2s/Cj4gCj4gSSB0aGluayA1
MTIgYnl0ZXMgaXMgdG9vIGxhcmdlIGluIHRoZSBrZXJuZWwgc3RhY2sKPiAKCkkgc2VlCgoKPGN1
dD4gCgo+ID4gPiArCj4gPgo+ID4gRG8gd2UgaGF2ZSBzb21ldGhpbmcgbW9yZSBtZWFuaW5nZnVs
IG9yIGRlc2NyaXB0aXZlIGhlcmU/IEEgbW9yZQo+ID4gaW50ZXJlc3RpbmcgdHlwZSB3b3VsZCBi
ZSBhIHN0cmluZyB0aGF0IGNvdWxkIHJlbWluZCBvZiB0aGUgc2Vuc29yCj4gPiBsb2NhdGlvbi4g
VW5sZXNzIG52bWVfdGVtcDAgaXMgZW5vdWdoIHRvIHVuZGVyc3RhbmQgd2hlcmUgdGhpcwo+ID4g
dGVtcGVyYXR1cmUgaXMgY29taW5nIGZyb20sIEkgd291bGQgYXNrIHRvIGdldCBzb21ldGhpbmcg
bW9yZQo+ID4gZGVzY3JpcHRpdmUuCj4gCj4gVGhlIFNNQVJUIGxvZyBwYWdlIGRlZmluZXMgY29t
cG9zaXRlIHRlbXBlcmF0dXJlIGFuZCB0ZW1wZXJhdHVyZSBzZW5zb3IgMQo+IHRocm91Z2ggdGVt
cGVyYXR1cmUgc2Vuc29yIDguICBTbyBJIHRoaW5rIG52bWVfdGVtcDEgdG8gbnZtZV90ZW1wOCBh
cmUKPiBkZXNjcmlwdGl2ZS4gIEFuZCBJIHBlcnNvbmFsbHkgcHJlZmVyICdudm1lX3RlbXAwJyBy
YXRoZXIgdGhhbgo+ICdudm1lX2NvbXBvc2l0ZV90ZW1wJy4KCkkgd2FzIGxlYW5pbmcgdG93YXJk
cyBzb21ldGhpbmcgZXZlbiBtb3JlIGRlc2NyaXB0aXZlLiBudm1lX3RlbXAwIG1lYW5zCndoYXQ/
IFVzdWFsbHkgd2Ugd2FudCBzb21ldGhpbmcgbW9yZSBtZWFuaW5nZnVsLCBJcyB0aGlzIGEgY28t
cHJvY2Vzc29yPwpJcyB0aGlzIGEgZGlzaz8gd2hhdCBleGFjdGx5IG52bWVfdGVtcDAgcmVhbGx5
IHJlcHJlc2VudHM/CgoKPiAKPiBCVFcsIGlmIHdlIGhhdmUgbW9yZSB0aGFuIHR3byBjb250cm9s
bGVycywgd2UnbGwgaGF2ZSBzYW1lIHR5cGUgbmFtZXMKPiBpbiB0aGUgc3lzdGVtLiAgU28gSSdt
IGdvaW5nIHRvIGFwcGVuZCBpbnN0YW5jZSBudW1iZXIgYWZ0ZXIgJ252bWUnLgo+IChlLmcuIG52
bWUwX3RlbXAwKS4KPiAKPiA+ID4gKyAgICAgdHpkZXYgPSB0aGVybWFsX3pvbmVfZGV2aWNlX3Jl
Z2lzdGVyKHR5cGUsIDEsIDEsIGN0cmwsICZudm1lX3R6X29wcywKPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZudm1lX3R6X3BhcmFtcywgMCwgMCk7Cj4g
Pgo+ID4gSGF2ZSB5b3UgY29uc2lkZXJlZCBpZiB0aGVyZSBpcyBhIHVzZSBjYXNlIGZvciB1c2lu
ZyBvZi10aGVybWFsIGhlcmU/Cj4gCj4gSXMgaXQgcG9zc2libGUgdG8gc3BlY2lmeSB0aGUgZGV2
aWNlIG5vZGUgcHJvcGVydGllcyBmb3IgdGhlIHBjaSBkZXZpY2VzPwo+IElmIHNvLCBvZi10aGVy
bWFsIHpvbmUgZGV2aWNlcyBhcmUgdmVyeSB1c2VmdWwuCj4gCgpZZWFoLCBJIGd1ZXNzIHRoYXQg
d291bGQgZGVwZW5kIG9uIHRoZSBQQ0kgZGV2aWNlIG5vZGUgZGVzY3JpcHRvciB0aGF0CnRoZSBz
ZW5zb3IgaXMgZ29pbmcgdG8gYmUgZW1iZWRkZWQsIG5vdCBvZi10aGVybWFsLiBCdXQgSSB3b3Vs
ZCBleHBlY3QKdGhhdCBEVCBoYXMgYWxyZWFkeSBhIGdvb2QgZW5vdWdoIERUIGRlc2NyaXB0b3Jz
IGZvciBQQ0kgZGV2aWNlcywgY2FuCnlvdSBjaGVjayB0aGF0PwoKPiBJIHRoaW5rIG5vcm1hbCB0
aGVybWFsIHpvbmUgZGV2aWNlcyBhbmQgb2YtdGhlcm1hbCB6b25lIGRldmljZXMgY2FuCj4gY28t
ZXhpc3QuIChpLmUuIGFkZCAndHpkZXZfb2ZbOV0nIGluIG52bWVfY3RybCBhbmQgdGhlIG9wZXJh
dGlvbnMgYXJlCj4gYWxtb3N0IHNhbWUgd2l0aCB0aGUgbm9ybWFsIG9uZSkKClJpZ2h0LCB0aGF0
IGlzIHVzdWFsbHkgdGhlIGNhc2UgZm9yIGRyaXZlcnMgdGhhdCBoYXZlIGEgcmVhbCBuZWVkIHRv
CnN1cHBvcnQgYm90aC4gTW9zdCBvZiB0aGUgZHJpdmVycyBmcm9tIGVtYmVkZGVkIHN5c3RlbXMg
d291bGQgcHJlZmVyCnRvIGtlZXAgb25seSBEVCBwcm9iaW5nLiBCdXQgaWYgeW91IGhhdmUgYSB1
c2UgY2FzZSB0byBzdXBwb3J0IG5vbi1EVApwcm9iaW5nLCB5ZXMsIHlvdXIgZHJpdmVyIHdvdWxk
IG5lZWQgdG8gc3VwcG9ydCBib3RoIHdheXMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
