Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D4C55268
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 16:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aS6XtetomHg2RVsqyNzXPF8iIKo7p3dZYcJ/cfa2hQs=; b=BbGzZacf/qDk1Z
	b0LC61NyZHX05rkjTYRV/ACciK9J3WzyxuFwC2sDxXSR81SPG2XY18fB7YO7HSOq8dkzS+KWDF0Qp
	e62QbesM3IDhx+qK6qu0zosFBDzjGHpxa+yK/6L5SBAkp+EGQUbIrLGwFyvKufCrjdJ2p75OW37Ek
	F+I9o/PFP78fZTpB4G2Da+wrJRVkTzLjN2/zuZgd4R8YaZwxucDqTZ0QlBgCw3Na98y7lcKmTsMD+
	7ClCAUaQaOKAStgLyQuFw1odCnI5sXdMELVLn/O783iUKkwhVOx5u78balmuUsdZ27Rxb/2gHT0bQ
	YDm//EA+l2NuNV+FAgpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmiA-0003vn-Rg; Tue, 25 Jun 2019 14:46:18 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmi4-0003vF-Up
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 14:46:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so18196349wrt.6
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 07:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ipnuQjfciWwK+BlZByf58DzZNa4gsBdZOo7ikTtTIMw=;
 b=FSRqdLvBdvronyCtpim5+l9E+h9a9vaas0wXpS0TXqQvpKV+tBzkIeVppWJ/Jww0fn
 UcJPSoJK5bcQ6TFJiO2NgGPgt81Ly1TuLFfnbKtoePZqSRK/Rt81qIz7Kf52qQbOpDsO
 82ex+zUyd/8q/qugljWolTkDe8ERUoMneY4cJgKNxtLnkZe+GdwKWfdLg1sQknuKgfht
 /KxS1Eh656itKwqwO/h0Q3WXxJ6YkPTyfn5niu3fjGrwHsvHnl7gfCAMuwU36qS7Gter
 UvO/1zktR9wVDB9RqtpUdQC8oAf6EwB0QhWwfQ/KkWOP85Je4no2nABspNSTJ5iQzNkP
 n5/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ipnuQjfciWwK+BlZByf58DzZNa4gsBdZOo7ikTtTIMw=;
 b=tw3BGuoUpushU6XLMh4NTPgTps6Te7LefA9vpcsRzvT/VC6mcJXn8HD4ZcQhYkj6wp
 zRWkxBRKA4ZE2aGjdTuu3Ait629tC0laNuG8JG6U0zHI/ZxsSYZ9N2kNRBz7lRkC5DtI
 MjqY/QAk6PYN7/lce8c7fn8F53c6G0lhWlH5wATVNt+wEdfxaCdD76fWpQFnVlq3Epkt
 luJ24nSoGVSrAE5Gc+mfm53vFiYFTdwS5iZ6D4iauqQmKhhc20wGzGk0d+uPgzrh9daz
 A/nMQOJwlJ+Rs8wZdTv/mxEtihA3ahdI8JpZEHWAayG5vKY0kk9388+9TDxfo8EHcIg2
 /BCA==
X-Gm-Message-State: APjAAAUjVBDWBhMd+arm4090JDTfWOIAQC0/ShYDtIhAsChwGgCvRjMv
 clS9LBYFSrRoJMYxW+3/DgWOpnxcFvyb80W3yQk=
X-Google-Smtp-Source: APXvYqw2nuRw92OheWpoWIH6glD26zC5vmhdXMTFaa0upqvAZHH25TgIqQkPbSlXWmi/dQZ+48fNAUkAsIxVt73ySP8=
X-Received: by 2002:adf:ea45:: with SMTP id j5mr21971894wrn.281.1561473970978; 
 Tue, 25 Jun 2019 07:46:10 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <2c916063e19cc3f33376d7bb0fb8a5ff10ea42db.1561385989.git.zhangweiping@didiglobal.com>
 <20190624201256.GC6526@minwooim-desktop>
In-Reply-To: <20190624201256.GC6526@minwooim-desktop>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Tue, 25 Jun 2019 22:46:02 +0800
Message-ID: <CAA70yB4DJdN8qJAMs7D3tzHxrsHofB65pTzk5mn8UY=1aKWyZA@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] nvme: add get_ams for nvme_ctrl_ops
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_074613_019204_64928F49 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zwp10758[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zwp10758[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Bart Van Assche <bvanassche@acm.org>,
 Weiping Zhang <zhangweiping@didiglobal.com>, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

TWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWlsLmNvbT4g5LqOMjAxOeW5tDbmnIgyNeaXpeWR
qOS6jCDkuIrljYg2OjAx5YaZ6YGT77yaCj4KPiBPbiAxOS0wNi0yNCAyMjoyOTowNSwgV2VpcGlu
ZyBaaGFuZyB3cm90ZToKPiA+IFRoZSBnZXRfYW1zKCkgd2lsbCByZXR1cm4gdGhlIEFNUyhBcmJp
dHJhdGlvbiBNZWNoYW5pc20gU2VsZWN0ZWQpCj4gPiBmcm9tIHRoZSBkcml2ZXIuCj4gPgo+ID4g
U2lnbmVkLW9mZi1ieTogV2VpcGluZyBaaGFuZyA8emhhbmd3ZWlwaW5nQGRpZGlnbG9iYWwuY29t
Pgo+Cj4gSGVsbG8sIFdlaXBpbmcuCj4KPiBTb3JyeSwgYnV0IEkgZG9uJ3QgcmVhbGx5IGdldCB3
aGF0IHlvdXIgcG9pbnQgaXMgaGVyZS4gIENvdWxkIHlvdSBwbGVhc2UKPiBlbGFib3JhdGUgdGhp
cyBwYXRjaCBhIGxpdHRsZSBiaXQgbW9yZT8gIFRoZSBjb21taXQgZGVzY3JpcHRpb24ganVzdAo+
IHNheXMgYSBmdW5jdGlvbiB3b3VsZCBqdXN0IHJldHVybiB0aGUgQU1TIGZyb20gbm93aGVyZS4u
Cj4KSSB3aWxsIGFkZCBtb3JlIGRldGFpbCBkZXNjcmlwdGlvbiBmb3IgdGhpcyBvcGVyYXRpb24g
aW4gY29tbWl0IG1lc3NhZ2UsCndoZW4gd2UgZW5hYmxlIG52bWUgY29udHJvbGxlciwgd2UgbmVl
ZCB0byBrbm93IHRoZSBjb3JyZWN0IEFNUyBzZXR0aW5nLgoKIFRoZXJlIHR3byBjYXNlcyBmb3Ig
TlZNRV9DQ19BTVNfUlI6CjEuIG52bWUgY29udHJvbGxlciBkb2Vzbid0IHN1cHBvcnQgQU1TLCBu
b3cgd2Ugc2V0IGFtcyB0byBOVk1FX0NDX0FNU19SUi4KMi4gbnZtZSBjb250cm9sbGVyIHN1cHBv
cnQgQU1TLCBidXQgdGhlIHVzZXIgZGlkIG5vdCB3YW50IHRvIGVuYWJsZQppdCwgZm9yIGV4YW1w
bGUKc2V0IGFsbCB3cnJfeHh4X3F1ZXVlIHRvIDAuCgpXZSBvbmx5IHNldCBhbXMgdG8gTlZNRV9D
Q19BTVNfV1JSVSBpZiBudm1lIGNvbnRyb2xsZXIgc3VwcG9ydCBXUlIgYW5kCnRoZSB1c2VyIHdh
bnQgdG8gZW5hYmxlIGl0IGV4cGxpY3RseS4KCm52bWVfZW5hYmxlX2N0cmwgaXMgYSBjb21tb24g
ZnVuY3Rpb24gZm9yIG52bWUtcGNpLCBudm1lLXJkbWEsIG52bWUtdGNwLAppdCBuZWVkcyB0byBr
b253IHRoZSBjb3JyZWN0IEFNUyBzZXR0aW5nIGZyb20gZGlmZmVyZW50IG52bWUgZHJpdmVyIGJ5
CnRoaXMgb3BlcmF0aW9uLgoKPiA+IC0tLQo+ID4gIGRyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyB8
IDkgKysrKysrKystCj4gPiAgZHJpdmVycy9udm1lL2hvc3QvbnZtZS5oIHwgMSArCj4gPiAgZHJp
dmVycy9udm1lL2hvc3QvcGNpLmMgIHwgNiArKysrKysKPiA+ICBpbmNsdWRlL2xpbnV4L252bWUu
aCAgICAgfCAxICsKPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIv
ZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gPiBpbmRleCBiMmRkNGUzOTFmNWMuLjRjYjc4MWU3
MzEyMyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ID4gKysrIGIv
ZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gPiBAQCAtMTk0Myw2ICsxOTQzLDcgQEAgaW50IG52
bWVfZW5hYmxlX2N0cmwoc3RydWN0IG52bWVfY3RybCAqY3RybCwgdTY0IGNhcCkKPiA+ICAgICAg
ICAqLwo+ID4gICAgICAgdW5zaWduZWQgZGV2X3BhZ2VfbWluID0gTlZNRV9DQVBfTVBTTUlOKGNh
cCkgKyAxMiwgcGFnZV9zaGlmdCA9IDEyOwo+ID4gICAgICAgaW50IHJldDsKPiA+ICsgICAgIHUz
MiBhbXMgPSBOVk1FX0NDX0FNU19SUjsKPiA+Cj4gPiAgICAgICBpZiAocGFnZV9zaGlmdCA8IGRl
dl9wYWdlX21pbikgewo+ID4gICAgICAgICAgICAgICBkZXZfZXJyKGN0cmwtPmRldmljZSwKPiA+
IEBAIC0xOTUxLDExICsxOTUyLDE3IEBAIGludCBudm1lX2VuYWJsZV9jdHJsKHN0cnVjdCBudm1l
X2N0cmwgKmN0cmwsIHU2NCBjYXApCj4gPiAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+
ID4gICAgICAgfQo+ID4KPiA+ICsgICAgIC8qIGdldCBBcmJpdHJhdGlvbiBNZWNoYW5pc20gU2Vs
ZWN0ZWQgKi8KPiA+ICsgICAgIGlmIChjdHJsLT5vcHMtPmdldF9hbXMpIHsKPgo+IEkganVzdCB3
b25kZXIgaWYgdGhpcyBjaGVjayB3aWxsIGJlIHZhbGlkIGJlY2F1c2UgdGhpcyBwYXRjaCBqdXN0
Cj4gcmVnaXN0ZXIgdGhlIGZ1bmN0aW9uIG52bWVfcGNpX2dldF9hbXMoKSB3aXRob3V0IGFueSBj
b25kaXRpb25zLgpUaGUgbnZtZS1wY2ksIG52bWUtcmRtYSwsIHNob3VsZCBtYWtlIHN1cmUgdGhh
dCB0aGUgYW1zIGlzIHZhbGlkLApmb3IgZXhhbXBsZSBjaGVjayBDQVAuQU1TIGFuZCBvdGhlciBj
b25kaXRpb25zLgo+Cj4gPiArICAgICAgICAgICAgIGN0cmwtPm9wcy0+Z2V0X2FtcyhjdHJsLCAm
YW1zKTsKPiA+ICsgICAgICAgICAgICAgYW1zICY9IE5WTUVfQ0NfQU1TX01BU0s7Cj4gPiArICAg
ICB9Cj4gPiArCj4gPiAgICAgICBjdHJsLT5wYWdlX3NpemUgPSAxIDw8IHBhZ2Vfc2hpZnQ7Cj4g
Pgo+ID4gICAgICAgY3RybC0+Y3RybF9jb25maWcgPSBOVk1FX0NDX0NTU19OVk07Cj4gPiAgICAg
ICBjdHJsLT5jdHJsX2NvbmZpZyB8PSAocGFnZV9zaGlmdCAtIDEyKSA8PCBOVk1FX0NDX01QU19T
SElGVDsKPiA+IC0gICAgIGN0cmwtPmN0cmxfY29uZmlnIHw9IE5WTUVfQ0NfQU1TX1JSIHwgTlZN
RV9DQ19TSE5fTk9ORTsKPiA+ICsgICAgIGN0cmwtPmN0cmxfY29uZmlnIHw9IGFtcyB8IE5WTUVf
Q0NfU0hOX05PTkU7Cj4gPiAgICAgICBjdHJsLT5jdHJsX2NvbmZpZyB8PSBOVk1FX0NDX0lPU1FF
UyB8IE5WTUVfQ0NfSU9DUUVTOwo+ID4gICAgICAgY3RybC0+Y3RybF9jb25maWcgfD0gTlZNRV9D
Q19FTkFCTEU7Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaCBi
L2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaAo+ID4gaW5kZXggZWE0NWQ3ZDM5M2FkLi45YzdlOTIx
N2Y3OGIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9udm1lLmgKPiA+ICsrKyBi
L2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaAo+ID4gQEAgLTM2OSw2ICszNjksNyBAQCBzdHJ1Y3Qg
bnZtZV9jdHJsX29wcyB7Cj4gPiAgICAgICB2b2lkICgqc3VibWl0X2FzeW5jX2V2ZW50KShzdHJ1
Y3QgbnZtZV9jdHJsICpjdHJsKTsKPiA+ICAgICAgIHZvaWQgKCpkZWxldGVfY3RybCkoc3RydWN0
IG52bWVfY3RybCAqY3RybCk7Cj4gPiAgICAgICBpbnQgKCpnZXRfYWRkcmVzcykoc3RydWN0IG52
bWVfY3RybCAqY3RybCwgY2hhciAqYnVmLCBpbnQgc2l6ZSk7Cj4gPiArICAgICB2b2lkICgqZ2V0
X2Ftcykoc3RydWN0IG52bWVfY3RybCAqY3RybCwgdTMyICphbXMpOwo+Cj4gQ2FuIHdlIGp1c3Qg
aGF2ZSBhIHJldHVybiB2YWx1ZSBmb3IgdGhlIEFNUyB2YWx1ZT8KQm90aCB0aGVzZSB0d28gbWV0
aG9kcyBhcmUgYWNjZXB0YWJsZSB0byBtZS4KPgo+ID4gIH07Cj4gPgo+ID4gICNpZmRlZiBDT05G
SUdfRkFVTFRfSU5KRUNUSU9OX0RFQlVHX0ZTCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1l
L2hvc3QvcGNpLmMgYi9kcml2ZXJzL252bWUvaG9zdC9wY2kuYwo+ID4gaW5kZXggMTg5MzUyMDgx
OTk0Li41ZDg0MjQxZjAyMTQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9wY2ku
Ywo+ID4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvcGNpLmMKPiA+IEBAIC0yNjI3LDYgKzI2Mjcs
MTEgQEAgc3RhdGljIGludCBudm1lX3BjaV9nZXRfYWRkcmVzcyhzdHJ1Y3QgbnZtZV9jdHJsICpj
dHJsLCBjaGFyICpidWYsIGludCBzaXplKQo+ID4gICAgICAgcmV0dXJuIHNucHJpbnRmKGJ1Ziwg
c2l6ZSwgIiVzIiwgZGV2X25hbWUoJnBkZXYtPmRldikpOwo+ID4gIH0KPiA+Cj4gPiArc3RhdGlj
IHZvaWQgbnZtZV9wY2lfZ2V0X2FtcyhzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCB1MzIgKmFtcykK
PiA+ICt7Cj4gPiArICAgICAqYW1zID0gTlZNRV9DQ19BTVNfUlI7Cj4gPiArfQo+ID4gKwo+ID4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgbnZtZV9jdHJsX29wcyBudm1lX3BjaV9jdHJsX29wcyA9IHsK
PiA+ICAgICAgIC5uYW1lICAgICAgICAgICAgICAgICAgID0gInBjaWUiLAo+ID4gICAgICAgLm1v
ZHVsZSAgICAgICAgICAgICAgICAgPSBUSElTX01PRFVMRSwKPiA+IEBAIC0yNjM4LDYgKzI2NDMs
NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG52bWVfY3RybF9vcHMgbnZtZV9wY2lfY3RybF9vcHMg
PSB7Cj4gPiAgICAgICAuZnJlZV9jdHJsICAgICAgICAgICAgICA9IG52bWVfcGNpX2ZyZWVfY3Ry
bCwKPiA+ICAgICAgIC5zdWJtaXRfYXN5bmNfZXZlbnQgICAgID0gbnZtZV9wY2lfc3VibWl0X2Fz
eW5jX2V2ZW50LAo+ID4gICAgICAgLmdldF9hZGRyZXNzICAgICAgICAgICAgPSBudm1lX3BjaV9n
ZXRfYWRkcmVzcywKPiA+ICsgICAgIC5nZXRfYW1zICAgICAgICAgICAgICAgID0gbnZtZV9wY2lf
Z2V0X2FtcywKPgo+IFF1ZXN0aW9uOiBEbyB3ZSByZWFsbHkgbmVlZCB0aGlzIGJlaW5nIGFkZGVk
IHRvIG52bWVfY3RybF9vcHM/Cj4KPiBBbHNvIElmIDV0aCBwYXRjaCB3aWxsIG1ha2UgdGhpcyBm
dW5jdGlvbiBtdWNoIG1vcmUgdGhhbiB0aGlzLCB0aGVuIGl0Cj4gd291bGQgYmUgZ3JlYXQgaWYg
eW91IGRlc2NyaWJlIHRoaXMga2luZCBvZiBzaXR1YXRpb24gaW4gZGVzY3JpcHRpb24gOikKPgo+
ID4gIH07Cj4gPgo+ID4gIHN0YXRpYyBpbnQgbnZtZV9kZXZfbWFwKHN0cnVjdCBudm1lX2RldiAq
ZGV2KQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbnZtZS5oIGIvaW5jbHVkZS9saW51
eC9udm1lLmgKPiA+IGluZGV4IGRhNWY2OTZhZWMwMC4uOGY3MTQ1MWZjMmZhIDEwMDY0NAo+ID4g
LS0tIGEvaW5jbHVkZS9saW51eC9udm1lLmgKPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvbnZtZS5o
Cj4gPiBAQCAtMTU2LDYgKzE1Niw3IEBAIGVudW0gewo+ID4gICAgICAgTlZNRV9DQ19BTVNfUlIg
ICAgICAgICAgPSAwIDw8IE5WTUVfQ0NfQU1TX1NISUZULAo+ID4gICAgICAgTlZNRV9DQ19BTVNf
V1JSVSAgICAgICAgPSAxIDw8IE5WTUVfQ0NfQU1TX1NISUZULAo+ID4gICAgICAgTlZNRV9DQ19B
TVNfVlMgICAgICAgICAgPSA3IDw8IE5WTUVfQ0NfQU1TX1NISUZULAo+ID4gKyAgICAgTlZNRV9D
Q19BTVNfTUFTSyAgICAgICAgPSA3IDw8IE5WTUVfQ0NfQU1TX1NISUZULAo+ID4gICAgICAgTlZN
RV9DQ19TSE5fTk9ORSAgICAgICAgPSAwIDw8IE5WTUVfQ0NfU0hOX1NISUZULAo+ID4gICAgICAg
TlZNRV9DQ19TSE5fTk9STUFMICAgICAgPSAxIDw8IE5WTUVfQ0NfU0hOX1NISUZULAo+ID4gICAg
ICAgTlZNRV9DQ19TSE5fQUJSVVBUICAgICAgPSAyIDw8IE5WTUVfQ0NfU0hOX1NISUZULAo+ID4g
LS0KPiA+IDIuMTQuMQo+ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW52bWUK
