Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AE533307
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 17:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4KuZvilhenYECZkm5PE/AhN+yf06v67OnToI8o8Jek=; b=MHyqXNwPntotxq
	2J/cTSjOiSSeBg+gytDNytX5UAPabl55R6a58m4SIf/+N/S9TXU+30dAvr59gfJc3j5iEh9qdrMuZ
	MQqq/UON4E9DG6L25icCmDaCZsx7FuDj//zTh1yKbeDwzxm1cBPzp+dcVVEkECwn46dupf4I8ghaz
	bGRU+uYYYNI+dYmUB10oBQ+qunr/OBVRIckXDPWVXnYVskw9uod8tdJ3/vcEFoRQMJs0/JR0DTVi/
	gQ3EE4WO3LgfyzdzeWlPJfV1K3+T6W8KgWtf+9P+Bei7tdO1D+EqPcvx4t0DRt+Q6Vb57u2bQygBH
	8LLWFaFJzQAkGIqeHS/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoUl-00041J-DT; Mon, 03 Jun 2019 15:03:31 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoUg-00040u-Ol
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 15:03:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id a23so10790598pff.4
 for <linux-nvme@lists.infradead.org>; Mon, 03 Jun 2019 08:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zfKPWs9DI0gj2Gee5+3PZiBBkJ3QPhZ/MlK8qG7t904=;
 b=GQMXVW3eqZlFNIYcTpUyenkaeL/AqvKFQOclt3pDaDN2pdAcXOTNb3fhiradhdOZqM
 Z7/oGl61kpdkBp9vsHuiSYPddsgWQeXQE2dN4IP5SzHSjw8Fdh8VQ6DwSLItukWHpH1z
 xZ7yPWhOBODBZhkn5yf0igqNvhzaoTHI9XoI9D2oGJK5G4zXSaRfxiMkWfLKuuIiy+Wh
 Q8SuKcz96844AxRKshNWiJrIO2YQBVYlFo12CPwjfkaX3J65G3OB4SrJE1iAGoY9GGYo
 Fn9wQUqP53v6yC6HIKIkABJNYzNb/1+jbbv9LlNg5XNmhE9mrau6DNMfZbDipgpldwuj
 GEJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zfKPWs9DI0gj2Gee5+3PZiBBkJ3QPhZ/MlK8qG7t904=;
 b=rvK9uZHGkDzvRkNi0XnYlSPw4GqoOO7WcRFoRp67yyXSzorx/dUWkPQ9vlCmgeAMho
 /27H+8eQVHHixJN8KQYDQL/oCVGhdLq6kfEsHF65jChpRFNCb6V8ymP61S4EHPhBNMyx
 LhoETsVrDiAA0/MTVEDZGYpmXD68flWHhwLxJKqqJ91oKipBqUuGltD2kvZ7D6+6wS69
 XsAQcv8RD1e6U9hUPJpV1bEBjDX67kynhyYM7hPdcjun14tEZ47vUP9RUMaaC59TikP3
 7YLqbSHcx8ZemgK2eycN5Eb5ENMCcUk1DXw1w5tUgrzPNgPZPlZlLHUEiGCrxuol0ZTJ
 LREw==
X-Gm-Message-State: APjAAAXontdLCFY3puht9KagTY7RIsJHowqIknzGTFCN9D6GZ4MOg2At
 kJGFjDTYrW59WNEnaGUV7834wrV6uVZmkpziFvE=
X-Google-Smtp-Source: APXvYqzS/9HGeFNjomQijw4zTeLo+dJcgruYgiXSm5a14L1rKgKFVhodIQ7rO36aJdp8vxPT82TkOd4pPhcIIzPWniY=
X-Received: by 2002:aa7:8b4d:: with SMTP id i13mr32545860pfd.233.1559574205796; 
 Mon, 03 Jun 2019 08:03:25 -0700 (PDT)
MIME-Version: 1.0
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
 <1558454649-28783-3-git-send-email-akinobu.mita@gmail.com>
 <20190524023520.GC1936@localhost.localdomain>
 <CAC5umyhCHJrzSSEy3NF38BhRQ9FSjVr8YfjChN-_3pVR5QwXsA@mail.gmail.com>
 <20190603021821.GA8354@localhost.localdomain>
In-Reply-To: <20190603021821.GA8354@localhost.localdomain>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Tue, 4 Jun 2019 00:03:14 +0900
Message-ID: <CAC5umygO0mKVJ5R4MhYTz44zVHvjkYSvrtT7=D1Rx2td-koeTQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] nvme: add thermal zone infrastructure
To: Eduardo Valentin <edubezval@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_080326_825303_7EFFE83D 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

MjAxOeW5tDbmnIgz5pelKOaciCkgMTE6MTggRWR1YXJkbyBWYWxlbnRpbiA8ZWR1YmV6dmFsQGdt
YWlsLmNvbT46Cgo+ID4gPiBEbyB3ZSBoYXZlIHNvbWV0aGluZyBtb3JlIG1lYW5pbmdmdWwgb3Ig
ZGVzY3JpcHRpdmUgaGVyZT8gQSBtb3JlCj4gPiA+IGludGVyZXN0aW5nIHR5cGUgd291bGQgYmUg
YSBzdHJpbmcgdGhhdCBjb3VsZCByZW1pbmQgb2YgdGhlIHNlbnNvcgo+ID4gPiBsb2NhdGlvbi4g
VW5sZXNzIG52bWVfdGVtcDAgaXMgZW5vdWdoIHRvIHVuZGVyc3RhbmQgd2hlcmUgdGhpcwo+ID4g
PiB0ZW1wZXJhdHVyZSBpcyBjb21pbmcgZnJvbSwgSSB3b3VsZCBhc2sgdG8gZ2V0IHNvbWV0aGlu
ZyBtb3JlCj4gPiA+IGRlc2NyaXB0aXZlLgo+ID4KPiA+IFRoZSBTTUFSVCBsb2cgcGFnZSBkZWZp
bmVzIGNvbXBvc2l0ZSB0ZW1wZXJhdHVyZSBhbmQgdGVtcGVyYXR1cmUgc2Vuc29yIDEKPiA+IHRo
cm91Z2ggdGVtcGVyYXR1cmUgc2Vuc29yIDguICBTbyBJIHRoaW5rIG52bWVfdGVtcDEgdG8gbnZt
ZV90ZW1wOCBhcmUKPiA+IGRlc2NyaXB0aXZlLiAgQW5kIEkgcGVyc29uYWxseSBwcmVmZXIgJ252
bWVfdGVtcDAnIHJhdGhlciB0aGFuCj4gPiAnbnZtZV9jb21wb3NpdGVfdGVtcCcuCj4KPiBJIHdh
cyBsZWFuaW5nIHRvd2FyZHMgc29tZXRoaW5nIGV2ZW4gbW9yZSBkZXNjcmlwdGl2ZS4gbnZtZV90
ZW1wMCBtZWFucwo+IHdoYXQ/IFVzdWFsbHkgd2Ugd2FudCBzb21ldGhpbmcgbW9yZSBtZWFuaW5n
ZnVsLCBJcyB0aGlzIGEgY28tcHJvY2Vzc29yPwo+IElzIHRoaXMgYSBkaXNrPyB3aGF0IGV4YWN0
bHkgbnZtZV90ZW1wMCByZWFsbHkgcmVwcmVzZW50cz8KCkl0J3MgdmVuZG9yIHNwZWNpZmljLiBU
aGUgTlZNZSBzcGVjIG9ubHkgc2F5cyBhIGNvbnRyb2xsZXIgcmVwb3J0cyB0aGUKY29tcG9zaXRl
IHRlbXBlcmF0dXJlIGFuZCB0ZW1wZXJhdHVyZSBzZW5zb3IgMSB0aHJvdWdoIDguCkl0IGRvZXNu
J3QgZGVmaW5lIHdoaWNoIHBhcnQgb2YgdGhlIGRldmljZSAoQ1BVcywgRFJBTSwgTkFORCwgb3Ig
ZWxzZSkKc2hvdWxkIGltcGxlbWVudCB0ZW1wZXJhdHVyZSBzZW5zb3JzIGFuZCBob3cgdGhlIGNv
bXBvc2l0ZSB0ZW1wZXJhdHVyZSBpcwpjYWxjdWxhdGVkIGZyb20gaW1wbGVtZW50ZWQgc2Vuc29y
cy4KCkkgaGF2ZSB0aHJlZSBOVk1lIGRldmljZXMgZnJvbSBkaWZmZXJlbnQgdmVuZG9ycy4KClRo
ZSBkZXZpY2UgQSBwcm92aWRlcyBvbmx5IGNvbXBvc2l0ZSB0ZW1wZXJhdHVyZS4KClRoZSBkZXZp
Y2UgQiBwcm92aWRlcyBjb21wb3NpdGUgdGVtcGVyYXR1cmUgYW5kIHRlbXBlcmF0dXJlIHNlbnNv
ciAxLgpCb3RoIHRlbXBlcmF0dXJlcyBhcmUgYWx3YXlzIHNhbWUuCgpUaGUgZGV2aWNlIEMgcHJv
dmlkZXMgdGhlIGNvbXBvc2l0ZSB0ZW1wZXJhdHVyZSBhbmQgdGVtcGVyYXR1cmUgc2Vuc29yIDEs
CjIsIGFuZCA1LiAgRm9yIGV4YW1wbGUsIHRoZSBzbWFydCBsb2cgcmVwb3J0cwpDb21wb3NpdGUg
dGVtcGVyYXR1cmUgOiA0MyBDClRlbXBlcmF0dXJlIFNlbnNvciAxICA6IDQ1IEMKVGVtcGVyYXR1
cmUgU2Vuc29yIDIgIDogNDEgQwpUZW1wZXJhdHVyZSBTZW5zb3IgNSAgOiA2NSBDCgo+ID4gQlRX
LCBpZiB3ZSBoYXZlIG1vcmUgdGhhbiB0d28gY29udHJvbGxlcnMsIHdlJ2xsIGhhdmUgc2FtZSB0
eXBlIG5hbWVzCj4gPiBpbiB0aGUgc3lzdGVtLiAgU28gSSdtIGdvaW5nIHRvIGFwcGVuZCBpbnN0
YW5jZSBudW1iZXIgYWZ0ZXIgJ252bWUnLgo+ID4gKGUuZy4gbnZtZTBfdGVtcDApLgo+ID4KPiA+
ID4gPiArICAgICB0emRldiA9IHRoZXJtYWxfem9uZV9kZXZpY2VfcmVnaXN0ZXIodHlwZSwgMSwg
MSwgY3RybCwgJm52bWVfdHpfb3BzLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAmbnZtZV90el9wYXJhbXMsIDAsIDApOwo+ID4gPgo+ID4gPiBIYXZl
IHlvdSBjb25zaWRlcmVkIGlmIHRoZXJlIGlzIGEgdXNlIGNhc2UgZm9yIHVzaW5nIG9mLXRoZXJt
YWwgaGVyZT8KPiA+Cj4gPiBJcyBpdCBwb3NzaWJsZSB0byBzcGVjaWZ5IHRoZSBkZXZpY2Ugbm9k
ZSBwcm9wZXJ0aWVzIGZvciB0aGUgcGNpIGRldmljZXM/Cj4gPiBJZiBzbywgb2YtdGhlcm1hbCB6
b25lIGRldmljZXMgYXJlIHZlcnkgdXNlZnVsLgo+ID4KPgo+IFllYWgsIEkgZ3Vlc3MgdGhhdCB3
b3VsZCBkZXBlbmQgb24gdGhlIFBDSSBkZXZpY2Ugbm9kZSBkZXNjcmlwdG9yIHRoYXQKPiB0aGUg
c2Vuc29yIGlzIGdvaW5nIHRvIGJlIGVtYmVkZGVkLCBub3Qgb2YtdGhlcm1hbC4gQnV0IEkgd291
bGQgZXhwZWN0Cj4gdGhhdCBEVCBoYXMgYWxyZWFkeSBhIGdvb2QgZW5vdWdoIERUIGRlc2NyaXB0
b3JzIGZvciBQQ0kgZGV2aWNlcywgY2FuCj4geW91IGNoZWNrIHRoYXQ/CgpJIGNhbiBmaW5kIHRo
ZSBleGFtcGxlcyBmb3IgYXRoOWsgYW5kIGF0aDEwayBwY2llIHdpcmVsZXNzIGRldmljZXMuCihE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL3FjYSxhdGg5ay50
eHQgYW5kCnFjb20sYXRoMTBrLnR4dCkKCj4gPiBJIHRoaW5rIG5vcm1hbCB0aGVybWFsIHpvbmUg
ZGV2aWNlcyBhbmQgb2YtdGhlcm1hbCB6b25lIGRldmljZXMgY2FuCj4gPiBjby1leGlzdC4gKGku
ZS4gYWRkICd0emRldl9vZls5XScgaW4gbnZtZV9jdHJsIGFuZCB0aGUgb3BlcmF0aW9ucyBhcmUK
PiA+IGFsbW9zdCBzYW1lIHdpdGggdGhlIG5vcm1hbCBvbmUpCj4KPiBSaWdodCwgdGhhdCBpcyB1
c3VhbGx5IHRoZSBjYXNlIGZvciBkcml2ZXJzIHRoYXQgaGF2ZSBhIHJlYWwgbmVlZCB0bwo+IHN1
cHBvcnQgYm90aC4gTW9zdCBvZiB0aGUgZHJpdmVycyBmcm9tIGVtYmVkZGVkIHN5c3RlbXMgd291
bGQgcHJlZmVyCj4gdG8ga2VlcCBvbmx5IERUIHByb2JpbmcuIEJ1dCBpZiB5b3UgaGF2ZSBhIHVz
ZSBjYXNlIHRvIHN1cHBvcnQgbm9uLURUCj4gcHJvYmluZywgeWVzLCB5b3VyIGRyaXZlciB3b3Vs
ZCBuZWVkIHRvIHN1cHBvcnQgYm90aCB3YXlzLgoKRGlzdHJvIGtlcm5lbHMgZm9yIHg4NiB1c3Vh
bGx5IGRpc2FibGVzIENPTkZJR19PRi4gIFNvIHdlIG5lZWQgYm90aC4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
