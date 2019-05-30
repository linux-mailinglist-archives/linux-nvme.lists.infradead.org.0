Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BEC2FCAD
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 15:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9ajwNL1mHsZcHjpD47+0lVgKXr3LowMixxmBSEp9fg=; b=OKDjwBDXZ5fs4C
	zf8nwqlqbzwNDEAyFgzcBOvUPltIOxduJDxKkF04jBD2bDH4zSWNvkfMixPzSP8BDCF+OD6GxA+6o
	lRy0Rs5QApmfrFt/ll+KnUnzatrMnejxdFgvTjr389F9b3s6ju8iZNFpoi8GX7G1kQAx0YPOmWAWQ
	IkMe9lEUUGYzP0NcsnIrE5DMNGsCx6MJh+HkZEK8+7b0iE0VPfNLPBW4paXyjV8dY3xemabv4RD/5
	QGKYJIAhJ1JisY3NWyJadsoJXDm/C2lirNSKb3K4Vvo4MvgIhjtaxMns9d6IVDAOy9/PqT1BNiv5w
	BshyRJo2yRWIRnAs+X3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLVA-0007cG-2m; Thu, 30 May 2019 13:53:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLV5-0007bu-J7
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 13:53:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id s11so4004189pfm.12
 for <linux-nvme@lists.infradead.org>; Thu, 30 May 2019 06:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PwqhKIpfbM8XDb3yBLit1TA3BnIUizn9yQ8Jb0+HbLM=;
 b=jyHmZF+LiSv27ELlcL+uXew8UnAnekyIEZa/EYDR3j4OnyPMU73TnCBUiOftqAqsq5
 zxS/G6L9VPGjojnahqTqeqO3cUWxx9G5BdP1TMkxA8oSmskI2TzSKwEinaUPwGmna0dt
 l5Jimtct0sJhbJhZt7W/WffY/iXYlGMNhfUSO/+wDg99ECGyHyAZsr/pyyJ5CGrn2fk3
 +3GXY8ApPgxVHwQUX6+kNRL64ktB/YKXNZTC3HcUmisRoiWpv2/a3dQ49AdByWkMkRS9
 RfeO4T0KX7vTr6xGusRWJFnbdGBaM6lR+I8+FkeDpbcDnKRPRJ7VgmfkNJJ7o0CK2NXC
 42hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PwqhKIpfbM8XDb3yBLit1TA3BnIUizn9yQ8Jb0+HbLM=;
 b=bIz4Jo2msY9FZfbbY8E8K/YKqViY46rP7SejPiLe0Xx/mF6evYGqhZHlvRLMjZosa9
 XV1xQcszabvr2roMYPBjrfl87oHf6a1N+itqP+pwN+G17Dt0PfDVPnFAmUpFKIkH3b0z
 IBx1wexZYcNpscEhEvtUTlyrt3s0eG2tqhvEg6ja9cjBVj3pTTNUj6HwB49ADIzyUsBI
 KdoZe8jnMjlI99bl+z7wzAIqDsgnVjM0eo6MzQgCidSjNwUiem0oCzybVCb84q7H7e3h
 YyPb9r9z+ofuaaOe/uR1Pq3byD4hbLUJuLV39Z0Y1Ng3hw6l9malSnFlZe5+9pZYRs42
 CWaA==
X-Gm-Message-State: APjAAAWVttzgdDz9mTK9HSdDpNPTQ1NXLADmqTuiX7xYSBsSQuaPkfd4
 fTYWzJWAvp4iIN17bojJ83wqjis7CfVoeNTViRw=
X-Google-Smtp-Source: APXvYqwZQr7R71Y7lckLfKZUnXFVC8dCCloyvjQkYUFFz7DSYBHsNfbrmEwhYl5AFWIqYMS9/BFHTIqhTumE1nkpx7k=
X-Received: by 2002:a17:90a:c38a:: with SMTP id
 h10mr3776547pjt.124.1559224426360; 
 Thu, 30 May 2019 06:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
 <1559063018-3682-2-git-send-email-akinobu.mita@gmail.com>
 <20190529144624.GA28274@minwooim-desktop>
 <CAC5umyityGQyO+kCZ+LHqxGugKPQGv1tgrTc==x=6EjfgJkOqQ@mail.gmail.com>
 <20190530102042.GB8843@minwooim-desktop>
In-Reply-To: <20190530102042.GB8843@minwooim-desktop>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 30 May 2019 22:53:35 +0900
Message-ID: <CAC5umyhy2204uZkP_0sbYzPrkky1cy687XTziA3o8iKTzuPvJw@mail.gmail.com>
Subject: Re: [PATCH 1/2] nvme: prepare for fault injection into admin commands
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_065347_632843_14878874 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgzMOaXpSjmnKgpIDE5OjIwIE1pbndvbyBJbSA8bWlud29vLmltLmRldkBnbWFp
bC5jb20+Ogo+Cj4gT24gMTktMDUtMzAgMDE6Mzk6MzgsIEFraW5vYnUgTWl0YSB3cm90ZToKPiA+
IDIwMTnlubQ15pyIMjnml6Uo5rC0KSAyMzo0NiBNaW53b28gSW0gPG1pbndvby5pbS5kZXZAZ21h
aWwuY29tPjoKPiA+ID4KPiA+ID4gT24gMTktMDUtMjkgMDI6MDM6MzcsIEFraW5vYnUgTWl0YSB3
cm90ZToKPiA+ID4gPiBDdXJyZW5sdHkgZmF1bHQgaW5qZWN0aW9uIHN1cHBvcnQgZm9yIG52bWUg
b25seSBlbmFibGVzIHRvIGluamVjdCBlcnJvcnMKPiA+ID4gPiBpbnRvIHRoZSBjb21tYW5kcyBz
dWJtaXR0ZWQgdG8gSS9PIHF1ZXVlcy4KPiA+ID4gPgo+ID4gPiA+IEluIHByZXBhcmF0aW9uIGZv
ciBmYXVsdCBpbmplY3Rpb24gaW50byB0aGUgYWRtaW4gY29tbWFuZHMsIHRoaXMgbWFrZXMKPiA+
ID4gPiB0aGUgaGVscGVyIGZ1bmN0aW9ucyBpbmRlcGVuZGVudCBvZiBzdHJ1Y3QgbnZtZV9ucy4K
PiA+ID4gPgo+ID4gPiA+IENjOiBUaG9tYXMgVGFpIDx0aG9tYXMudGFpQG9yYWNsZS5jb20+Cj4g
PiA+ID4gQ2M6IEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4KPiA+ID4gPiBDYzogSmVu
cyBBeGJvZSA8YXhib2VAZmIuY29tPgo+ID4gPiA+IENjOiBDaHJpc3RvcGggSGVsbHdpZyA8aGNo
QGxzdC5kZT4KPiA+ID4gPiBDYzogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0YUBnbWFpbC5jb20+
Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyAgICAgICAgIHwg
IDQgKystLQo+ID4gPiA+ICBkcml2ZXJzL252bWUvaG9zdC9mYXVsdF9pbmplY3QuYyB8IDI4ICsr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KPiA+ID4gPiAgZHJpdmVycy9udm1lL2hvc3QvbnZt
ZS5oICAgICAgICAgfCAyMCArKysrKysrKysrKystLS0tLS0tLQo+ID4gPiA+ICAzIGZpbGVzIGNo
YW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQo+ID4gPiA+Cj4gPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyBiL2RyaXZlcnMvbnZtZS9ob3N0
L2NvcmUuYwo+ID4gPiA+IGluZGV4IDI2YzhiNTkuLjlmY2E4NDU3IDEwMDY0NAo+ID4gPiA+IC0t
LSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvbnZtZS9o
b3N0L2NvcmUuYwo+ID4gPiA+IEBAIC0zNjk4LDcgKzM2OTgsNyBAQCBzdGF0aWMgaW50IG52bWVf
YWxsb2NfbnMoc3RydWN0IG52bWVfY3RybCAqY3RybCwgdW5zaWduZWQgbnNpZCkKPiA+ID4gPiAg
ICAgICBkZXZpY2VfYWRkX2Rpc2soY3RybC0+ZGV2aWNlLCBucy0+ZGlzaywgbnZtZV9uc19pZF9h
dHRyX2dyb3Vwcyk7Cj4gPiA+ID4KPiA+ID4gPiAgICAgICBudm1lX21wYXRoX2FkZF9kaXNrKG5z
LCBpZCk7Cj4gPiA+ID4gLSAgICAgbnZtZV9mYXVsdF9pbmplY3RfaW5pdChucyk7Cj4gPiA+ID4g
KyAgICAgbnZtZV9mYXVsdF9pbmplY3RfaW5pdCgmbnMtPmZhdWx0X2luamVjdCwgbnMtPmRpc2st
PmRpc2tfbmFtZSk7Cj4gPiA+ID4gICAgICAga2ZyZWUoaWQpOwo+ID4gPiA+Cj4gPiA+ID4gICAg
ICAgcmV0dXJuIDA7Cj4gPiA+ID4gQEAgLTM3MjMsNyArMzcyMyw3IEBAIHN0YXRpYyB2b2lkIG52
bWVfbnNfcmVtb3ZlKHN0cnVjdCBudm1lX25zICpucykKPiA+ID4gPiAgICAgICBpZiAodGVzdF9h
bmRfc2V0X2JpdChOVk1FX05TX1JFTU9WSU5HLCAmbnMtPmZsYWdzKSkKPiA+ID4gPiAgICAgICAg
ICAgICAgIHJldHVybjsKPiA+ID4gPgo+ID4gPiA+IC0gICAgIG52bWVfZmF1bHRfaW5qZWN0X2Zp
bmkobnMpOwo+ID4gPiA+ICsgICAgIG52bWVfZmF1bHRfaW5qZWN0X2ZpbmkoJm5zLT5mYXVsdF9p
bmplY3QpOwo+ID4gPiA+ICAgICAgIGlmIChucy0+ZGlzayAmJiBucy0+ZGlzay0+ZmxhZ3MgJiBH
RU5IRF9GTF9VUCkgewo+ID4gPiA+ICAgICAgICAgICAgICAgZGVsX2dlbmRpc2sobnMtPmRpc2sp
Owo+ID4gPiA+ICAgICAgICAgICAgICAgYmxrX2NsZWFudXBfcXVldWUobnMtPnF1ZXVlKTsKPiA+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvZmF1bHRfaW5qZWN0LmMgYi9kcml2
ZXJzL252bWUvaG9zdC9mYXVsdF9pbmplY3QuYwo+ID4gPiA+IGluZGV4IDRjZmQyYzkuLmU4ZDhk
YTkgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvZmF1bHRfaW5qZWN0LmMK
PiA+ID4gPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9mYXVsdF9pbmplY3QuYwo+ID4gPiA+IEBA
IC0xNSwxMSArMTUsMTAgQEAgc3RhdGljIERFQ0xBUkVfRkFVTFRfQVRUUihmYWlsX2RlZmF1bHRf
YXR0cik7Cj4gPiA+ID4gIHN0YXRpYyBjaGFyICpmYWlsX3JlcXVlc3Q7Cj4gPiA+ID4gIG1vZHVs
ZV9wYXJhbShmYWlsX3JlcXVlc3QsIGNoYXJwLCAwMDAwKTsKPiA+ID4gPgo+ID4gPiA+IC12b2lk
IG52bWVfZmF1bHRfaW5qZWN0X2luaXQoc3RydWN0IG52bWVfbnMgKm5zKQo+ID4gPiA+ICt2b2lk
IG52bWVfZmF1bHRfaW5qZWN0X2luaXQoc3RydWN0IG52bWVfZmF1bHRfaW5qZWN0ICpmYXVsdF9p
bmosCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBjaGFyICpuYW1lKQo+
ID4gPgo+ID4gPiBIaSBBa2lub2J1LAo+ID4gPgo+ID4gPiBKdXN0IGEgc2ltcGxlIHByb3Bvc2Fs
IGhlcmUuICBDYW4gd2UgaGF2ZSBhIG5hbWUgZm9yIHRoZSBkaXNrIG5hbWUgd2l0aDoKPiA+ID4g
ICAgICAgICBjb25zdCBjaGFyICpkaXNrX25hbWUgPwo+ID4gPiBJIHRoaW5rIHRoZSBuYW1lIG9m
IHZhcmlhYmxlICJuYW1lIiBjYW4gbWFrZSBzb21lIGNvbmZ1c2lvbnMgdG8gd2hvbSB3YW50Cj4g
PiA+IHRvIHVzZSB0aGlzIGZlYXR1cmUgYXQgbGF0ZXIgdGltZSA6KQo+ID4KPiA+IEFzIGxvbmcg
YXMgbnMtPmRpc2stPmRpc2tfbmFtZSBpcyBwYXNzZWQgdG8gdGhpcyBhcmd1bWVudCwgJ2Rpc2tf
bmFtZScgaXMKPiA+IGdvb2QuCj4gPgo+ID4gSG93ZXZlciwgZGV2X25hbWUoY3RybC0+ZGV2aWNl
KSB3aWxsIGJlIHBhc3NlZCB0byB0aGUgYXJndW1lbnQgaW4gdGhlIHBhdGNoCj4gPiAyLzIuICBJ
dCdzIG5vdCAnZGlza19uYW1lJyBhbnltb3JlLCBzbyBJIHRoaW5rICduYW1lJyBvciAnZGV2X25h
bWUnIGlzCj4gPiBiZXR0ZXIgdGhhbiAnZGlza19uYW1lJy4KPgo+IFRoZW4gY2FuIHdlIGhhdmUg
aXQgImRldl9uYW1lIj8KCk9LLiBJIGhhdmUgbm8gcHJvYmxlbSB3aXRoIHRoZSAiZGV2X25hbWUi
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
