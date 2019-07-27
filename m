Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F2A77B98
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 21:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F6WEsuwfQ+Z8r1gGaDJUrftoIIKPuKDuwWvfne8HMR0=; b=b+FPEu4qrmMxMu+M1aokgOWaP
	MOhy1MJFh2bAfp/YbChZAHlEQaFo8mr2UcM2Lrv0aH7YhJNjRCNMVXPJWPpvrFypwiDdvc6wbf5pv
	jF6VJMTdIvV9cw1DVJfnDBrhFRCyP7OTJ6Qg6ZZhNtKbKofqnAoUPfeW6dhu16boeGQ/YgpEQMkNx
	/uILXGZOyeNQGW1C98nzVCwlucWJTywcwda+rap+Jx1lebAO6g38PAISTbMidt7PESBlXhgAQfrmz
	/cMnBWsGDLx1PL3CJdJNrhxH+MsICqLyIVZ5inVNAn8hdwGAVjq4wR+qD3TApobExK7hC7/fJx5+u
	jFWJsquBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSg1-00013z-QN; Sat, 27 Jul 2019 19:48:21 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSfR-0000hC-Ig
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 19:47:47 +0000
Received: by mail-ed1-x544.google.com with SMTP id m10so55988370edv.6
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 12:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2o/wVi89MvX7YEgB1BgtLC7XGrazqt4VQ9s3FH8o/v0=;
 b=r1SF1cXZ0Yb9O2FMf4OtpqEhnncCNssocLU44ldEzO3D5tHIF6aLlNdBKFP6kK3bAb
 IQAP7LJEjn+gJag79o7xfl8zaGKIKXie8mxKzUsishAZrMpEm7RmP40oeIE33j1uTspS
 rfB2eG6xy5jfXxCPsmv1nZN62m5wBuVs07OPQuuv0v8aPcpaxOnp1Q8qoNyKEsGtLMMr
 BzKZFbc7jEysVdvjQUgKj1KyWdhcZ7SjA4Xeq63vNg4Vg2T9a4UbUbjr0RF83vRCQvDt
 KG23O32itHVfcuNcErFKNnbJ56t0IPS9psPSQu/KlAZzkoR/U5X3Chhy3qJXXUTEh3FX
 05SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2o/wVi89MvX7YEgB1BgtLC7XGrazqt4VQ9s3FH8o/v0=;
 b=uAkwySDZRlTBkmq41dgwDv5fUEXgnOKsTbSzIajbtmf27KiiZJ6RtY2ev5/ONeT+Cf
 WS0ZQM+VkkrAkpXBJnd8obFD2kMbCCkZHzmoSFEor7XHbFDGiotz1aW+0oM3ETtM3Znr
 xz7VvRX/Spd3ENZr6jGKKe5NIgRRjwyMgrdKBhi60Js7TVOs3fTTKZa6G0rb9GusMgn0
 dZTQtn9e5fvfq3gq9HMhqEA9Dx8/1/tW/ZQlBIh+/OvUOxOXFBMmxwXemLzubntlfjju
 ks/7eRa8FkoTolU7LuLVAI64J5krPSpGJFXs+e1SM5B5Za9IvY96/iEJpVIZDBkSIYSM
 IuhA==
X-Gm-Message-State: APjAAAUFIXcK84EkPPP5RDOHJwBZlIfSx/y4TQrOqy6KY5sBhQJrlvAW
 4wNAY8zo3kogIAIuudUB1/0=
X-Google-Smtp-Source: APXvYqz//Efhlx20BHioTf/4NOJEx2I7VVsIMKfcVs4mqmsLvwyDKTZJT1bLnjBfoIBqN2zofe9PSg==
X-Received: by 2002:a05:6402:3c6:: with SMTP id
 t6mr6833220edw.172.1564256864246; 
 Sat, 27 Jul 2019 12:47:44 -0700 (PDT)
Received: from [192.168.87.120] ([86.52.229.18])
 by smtp.gmail.com with ESMTPSA id l2sm14355999edn.59.2019.07.27.12.47.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Jul 2019 12:47:43 -0700 (PDT)
Subject: Re: [PATCH 4/4] nvme: lightnvm: trace opcode name of I/O commands for
 2.0
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
 <20190727184155.18014-5-minwoo.im.dev@gmail.com>
From: =?UTF-8?Q?Matias_Bj=c3=b8rling?= <mb@lightnvm.io>
Message-ID: <97cbcbd3-5887-ec8e-dd43-ef08d612372c@lightnvm.io>
Date: Sat, 27 Jul 2019 21:47:42 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190727184155.18014-5-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_124745_773454_18C1CF5E 
X-CRM114-Status: GOOD (  20.38  )
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

T24gNy8yNy8xOSA4OjQxIFBNLCBNaW53b28gSW0gd3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRzIG9w
Y29kZSB2YWx1ZXMgd2hpY2ggYXJlIGRlZmluZWQgaW4gT0NTU0QgMi4wIHNwZWMuICBUaGlzCj4g
d2lsbCBtYWtlIGl0IHByaW50ZWQgYSBuYW1lIG9mIG9wY29kZSByYXRoZXIgdGhhbiB0aGUgcmF3
IHZhbHVlLgo+IAo+IENjOiBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5vcmc+Cj4gQ2M6IEpl
bnMgQXhib2UgPGF4Ym9lQGZiLmNvbT4KPiBDYzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3Qu
ZGU+Cj4gQ2M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+Cj4gQ2M6IE1hdGlhcyBC
asO4cmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgo+IENjOiBKYXZpZXIgR29uesOhbGV6IDxqYXZpZXJA
amF2aWdvbi5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdt
YWlsLmNvbT4KPiAtLS0KPiAgIGluY2x1ZGUvbGludXgvbnZtZS5oIHwgMTIgKysrKysrKysrKyst
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L252bWUuaCBiL2luY2x1ZGUvbGludXgvbnZtZS5o
Cj4gaW5kZXggZmRkZjRjNzc2Nzg4Li5kMWRiNDU5ZGJmYzEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVk
ZS9saW51eC9udm1lLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L252bWUuaAo+IEBAIC01NjYsNiAr
NTY2LDEyIEBAIGVudW0gbnZtZV9vcGNvZGUgewo+ICAgCW52bWVfY21kX3Jlc3ZfcmVwb3J0CT0g
MHgwZSwKPiAgIAludm1lX2NtZF9yZXN2X2FjcXVpcmUJPSAweDExLAo+ICAgCW52bWVfY21kX3Jl
c3ZfcmVsZWFzZQk9IDB4MTUsCj4gKwo+ICsJLyogT0NTU0QgMi4wICovCj4gKwludm1lX252bV9j
bWRfdmVjX2NodW5rX3Jlc2V0CT0gMHg5MCwKPiArCW52bWVfbnZtX2NtZF92ZWNfY2h1bmtfd3Jp
dGUJPSAweDkxLAo+ICsJbnZtZV9udm1fY21kX3ZlY19jaHVua19yZWFkCT0gMHg5MiwKPiArCW52
bWVfbnZtX2NtZF92ZWNfY2h1bmtfY29weQk9IDB4OTMsCj4gICB9Owo+ICAgCj4gICAjZGVmaW5l
IG52bWVfb3Bjb2RlX25hbWUob3Bjb2RlKQl7IG9wY29kZSwgI29wY29kZSB9Cj4gQEAgLTU4MSw3
ICs1ODcsMTEgQEAgZW51bSBudm1lX29wY29kZSB7Cj4gICAJCW52bWVfb3Bjb2RlX25hbWUobnZt
ZV9jbWRfcmVzdl9yZWdpc3RlciksCVwKPiAgIAkJbnZtZV9vcGNvZGVfbmFtZShudm1lX2NtZF9y
ZXN2X3JlcG9ydCksCQlcCj4gICAJCW52bWVfb3Bjb2RlX25hbWUobnZtZV9jbWRfcmVzdl9hY3F1
aXJlKSwJXAo+IC0JCW52bWVfb3Bjb2RlX25hbWUobnZtZV9jbWRfcmVzdl9yZWxlYXNlKSkKPiAr
CQludm1lX29wY29kZV9uYW1lKG52bWVfY21kX3Jlc3ZfcmVsZWFzZSksCVwKPiArCQludm1lX29w
Y29kZV9uYW1lKG52bWVfbnZtX2NtZF92ZWNfY2h1bmtfcmVzZXQpLAlcCj4gKwkJbnZtZV9vcGNv
ZGVfbmFtZShudm1lX252bV9jbWRfdmVjX2NodW5rX3dyaXRlKSwJXAo+ICsJCW52bWVfb3Bjb2Rl
X25hbWUobnZtZV9udm1fY21kX3ZlY19jaHVua19yZWFkKSwJXAo+ICsJCW52bWVfb3Bjb2RlX25h
bWUobnZtZV9udm1fY21kX3ZlY19jaHVua19jb3B5KSkKPiAgIAo+ICAgCj4gICAvKgo+IAoKSXQg
Y2FuIG5vdCBiZSBhc3N1bWVkIHRoYXQgaXQgaXMgYW4gbnZtZSBvcGNvZGUgZm9yIGFueSBvdGhl
ciBkZXZpY2UgCnRoYW4gYW4gT0NTU0QgMi4wIGRldmljZSAodGhlIGNvbW1hbmQgb3Bjb2RlcyBh
cmUgYWxsb2NhdGVkIGZyb20gdGhlIAp2ZW5kb3Itc3BlY2lmaWMgcmFuZ2Ugb2YgdGhlIE5WTWUg
c3BlY2lmaWNhdGlvbikuIFRoZSB0cmFjZSBjb2RlIHNob3VsZCAKYmUgdXBkYXRlZCB0byB0YWtl
IHRoYXQgaW50byBhY2NvdW50IGJlZm9yZSB1c2luZyB0aGUgbG9va3VwIHZhbHVlLgoKQXMgYSBz
aWRlIG5vdGUsIEkgYXBwcmVjaWF0ZSB0aGUgd29yayBiZWluZyBwdXQgaW50byBzdXBwb3J0aW5n
IE9DU1NELCAKYnV0IGZvciBicm9hZCBhZG9wdGlvbiwgdGhlIE9DU1NEIGludGVyZmFjZSBpcyBz
dXBlcnNlZGVkIGJ5IHRoZSBab25lZCAKTmFtZXNwYWNlcyAoWk5TKSB0ZWNobmljYWwgcHJvcG9z
YWwgdGhhdCBpcyB1bmRlciBzdGFuZGFyZGl6YXRpb24gaW4gdGhlIApOVk1lIHdvcmtncm91cC4g
V2UgZG8gZXhwZWN0IGEgbG90IG9mIGFkb3B0aW9uIGluIHRoaXMgYXJlYSwgYW5kIGhhdmUgCnRo
ZSBrZXJuZWwgY29kZSByZWFkeSB3aGVuIHdvcmsgaXMgcmF0aWZpZWQgKG9ubHkgYXQgdGhhdCBw
b2ludCBpcyB0aGUgClRCRCB2YWx1ZXMgYWxsb2NhdGVkKS4gSSBob3BlIHRoYXQgdGhlIGVuZXJn
eSB0aGF0IGlzIG5vdyBiZWluZyBwdXQgaW50byAKT0NTU0QsIGNhbiBiZSBwdXQgb250byBaTlMs
IGFzIHRoYXQgaXMgd2hlcmUgd2Ugd2lsbCBzZWUgYnJvYWQgYWRvcHRpb24gCmFuZCBsb25nLXRl
cm0gc3VwcG9ydCBpbiB0aGUga2VybmVsLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbnZtZQo=
