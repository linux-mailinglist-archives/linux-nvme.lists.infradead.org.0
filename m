Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7B817D74
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 17:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toRhAX8M9aOGHyuj/C4/LiGDOrI8lsvPnnwaoscI+xU=; b=Sy2Ro+FD+DaKMU
	NruZdkCDFSr047NxNYZ+6i9cUXtSpXxtDIhAB0Kr4B58HWc+FP3G9xNIfKOw/9rGXsGYXrPB43Hvz
	FM7H7jXwcpjPLhUl1J8VI2FZEV2n2h3oeJ7vU8gBpik1S0shs05lbBEt1UUzIqrGpLFvq+cKsQUBs
	VE9p191wjPWvONW0VMU7uPiWSIcu9rEqQd00KIbO0DTxMQzV+FneWT6xuuB7eIt2hlXGZyRL8ASch
	ESxsuACKWWlIfGOv5ZADdijd3iAaqp0SoQpRWnS/hy0q/SNn35j3LE6cisMO82gYRyPuc0ivQrBRn
	qkqEdLhyDM9XuvjTk36A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOOiM-0000jJ-3S; Wed, 08 May 2019 15:42:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOOiF-0000ih-Nk
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 15:42:33 +0000
Received: by mail-pl1-x641.google.com with SMTP id y3so10124689plp.0
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 08:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TbpLBJwELA4ZhMuiXOVpcVpNwPXzU1eiQLAkmq/LVxI=;
 b=mnJ19AKufOjGk8tvHoM9aQnTMOhsQHnP5jlo0s7U4n00Fk4GRGl0B2r4h+iwwuIY04
 C7rWtS8ncyyTu6X5I7sqqocz9LoyrcjVgLXhIqzaA7JvgSYIy5HYMhCwYdOnQ0s04GUM
 Fm8ni5HP59wCfQTyOMB1QRgHfwd7kMR8CpNWOdQ3vy9XESduTxsJBdR9XqydvnF5oPc/
 S8dxkhy7UhYr8MZ/TfvSKnsYajpNn5M4XuMDbtG6Jjc9fhfjmmsLsEjmwM7Qka6Zf4IP
 aVX/J3e/8m4G8Gr/pxxoHW9uPrsSg6M8kMHqJ2U5ElXhtK3AJyaGlWoCytik03n1GtVK
 8gUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TbpLBJwELA4ZhMuiXOVpcVpNwPXzU1eiQLAkmq/LVxI=;
 b=sk+R/iJ7ByrtXwsOMe3NJyqkfMnca3jHdr0o7JYxX2n9NC1zmvhMaV8aaTg8Z2n8LE
 wXW8481b5GNs1z0UwLz0IHVYoMpPpb4XTAzKtqFadX7mw1SN68KU3mfaLehnx+PW8xKe
 L0IKiskpBnoHwUgsCibiRQsFZAgdkW1WtNaOK5REs0azcWpED0WJfQLBz6mIz3NQk4J6
 T1LyB3khCa1Dl26bQTQtwjGX7Cyi3N96J7fL4GbhaY4yRYpzJdo9EqJzPcNJFo9FGgPe
 nCjkM/a0hBf7lkxsqtlF1t9tbaUNsEmE+BUMnwvZIoAMVLLB2BBQtD7+GFDTwUoO/Ji+
 uChA==
X-Gm-Message-State: APjAAAWtIMPvjB8J6rsn6wbO9K1hDamgtDHqN2TzhJ7SNp4TIFLbvL64
 eFFUQgJwivHROB8BjhnLkoYIRLgovCrkv7onVEo=
X-Google-Smtp-Source: APXvYqyxKFSFYNXcsOge68frjTC5/yNeYCovRt6Ak6bdoDpqBQFELMHZxCDw90irFErQVc9z04/EQxw9P36whBeHqS0=
X-Received: by 2002:a17:902:9b98:: with SMTP id
 y24mr29157309plp.185.1557330151014; 
 Wed, 08 May 2019 08:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-5-git-send-email-akinobu.mita@gmail.com>
 <81c0d1bd-c117-3fcb-959b-4507504021dd@intel.com>
In-Reply-To: <81c0d1bd-c117-3fcb-959b-4507504021dd@intel.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 9 May 2019 00:42:20 +0900
Message-ID: <CAC5umyjDn579iu4V1pXhKJ_PUQdNgY3LBZWgWgqQw_ZoNd88FQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] nvme.h: add telemetry log page definisions
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_084231_773152_565494A5 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIg45pelKOawtCkgMjoyOCBIZWl0a2UsIEtlbm5ldGggPGtlbm5ldGguaGVpdGtl
QGludGVsLmNvbT46Cj4KPgo+Cj4gT24gNS83LzIwMTkgMTA6NTggQU0sIEFraW5vYnUgTWl0YSB3
cm90ZToKPiA+IENvcHkgdGVsZW1ldHJ5IGxvZyBwYWdlIGRlZmluaXNpb25zIGZyb20gbnZtZS1j
bGkuCj4gPgo+ID4gQ2M6IEpvaGFubmVzIEJlcmcgPGpvaGFubmVzQHNpcHNvbHV0aW9ucy5uZXQ+
Cj4gPiBDYzogS2VpdGggQnVzY2ggPGtlaXRoLmJ1c2NoQGludGVsLmNvbT4KPiA+IENjOiBKZW5z
IEF4Ym9lIDxheGJvZUBmYi5jb20+Cj4gPiBDYzogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3Qu
ZGU+Cj4gPiBDYzogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiA+IENjOiBNaW53
b28gSW0gPG1pbndvby5pbS5kZXZAZ21haWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogQWtpbm9i
dSBNaXRhIDxha2lub2J1Lm1pdGFAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAqIHYyCj4gPiAtIE5l
dyBwYXRjaCBpbiB0aGlzIHZlcnNpb24uCj4gPgo+ID4gICBpbmNsdWRlL2xpbnV4L252bWUuaCB8
IDIzICsrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNl
cnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbnZtZS5oIGIvaW5j
bHVkZS9saW51eC9udm1lLmgKPiA+IGluZGV4IGM0MDcyMGMuLjUyMTdmZTQgMTAwNjQ0Cj4gPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L252bWUuaAo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9udm1lLmgK
PiA+IEBAIC0zOTYsNiArMzk2LDI4IEBAIGVudW0gewo+ID4gICAgICAgTlZNRV9OSURUX1VVSUQg
ICAgICAgICAgPSAweDAzLAo+ID4gICB9Owo+ID4KPiA+ICsvKiBEZXJpdmVkIGZyb20gMS4zYSBG
aWd1cmUgMTAxOiBHZXQgTG9nIFBhZ2Ug4oCTIFRlbGVtZXRyeSBIb3N0Cj4gPiArICogLUluaXRp
YXRlZCBMb2cgKExvZyBJZGVudGlmaWVyIDA3aCkKPiA+ICsgKi8KPiA+ICtzdHJ1Y3QgbnZtZV90
ZWxlbWV0cnlfbG9nX3BhZ2VfaGRyIHsKPiA+ICsgICAgIF9fdTggICAgbHBpOyAvKiBMb2cgcGFn
ZSBpZGVudGlmaWVyICovCj4gPiArICAgICBfX3U4ICAgIHJzdmRbNF07Cj4gPiArICAgICBfX3U4
ICAgIGllZV9vdWlbM107Cj4gPiArICAgICBfX2xlMTYgIGRhbGIxOyAvKiBEYXRhIGFyZWEgMSBs
YXN0IGJsb2NrICovCj4gPiArICAgICBfX2xlMTYgIGRhbGIyOyAvKiBEYXRhIGFyZWEgMiBsYXN0
IGJsb2NrICovCj4gPiArICAgICBfX2xlMTYgIGRhbGIzOyAvKiBEYXRhIGFyZWEgMyBsYXN0IGJs
b2NrICovCj4gPiArICAgICBfX3U4ICAgIHJzdmQxWzM2OF07IC8qIFRPRE8gdmVyaWZ5ICovCj4K
PiBSZW1vdmUgdGhlIFRPRE8KCk9LLgoKPiA+ICsgICAgIF9fdTggICAgY3RybGF2YWlsOyAvKiBD
b250cm9sbGVyIGluaXRpYXRlZCBkYXRhIGF2YWlsPyovCj4gPiArICAgICBfX3U4ICAgIGN0cmxk
Z247IC8qIENvbnRyb2xsZXIgaW5pdGlhdGVkIHRlbGVtZXRyeSBEYXRhIEdlbiAjICovCj4gPiAr
ICAgICBfX3U4ICAgIHJzbmlkZW50WzEyOF07Cj4gPiArICAgICAvKiBXZSdsbCBoYXZlIHRvIGRv
dWJsZSBmZXRjaCBzbyB3ZSBjYW4gZ2V0IHRoZSBoZWFkZXIsCj4gPiArICAgICAgKiBwYXJzZSBk
YWxiMS0+MyBkZXRlcm1pbmUgaG93IG11Y2ggc2l6ZSB3ZSBuZWVkIGZvciB0aGUKPiA+ICsgICAg
ICAqIGxvZyB0aGVuIGFsbG9jIGJlbG93LiBPciBqdXN0IGRvIGEgc2Vjb25kYXJ5IG5vbi1zdHJ1
Y3QKPiA+ICsgICAgICAqIGFsbG9jYXRpb24uCj4gPiArICAgICAgKi8KPgo+IFRoaXMgY29tbWVu
dCBpc24ndCBuZWNlc3NhcnkuIFlvdSB1c3VhbGx5IGNhbid0IHJlYWQgdGhlIGVudGlyZQo+IHRl
bGVtZXRyeSBsb2cgYXQgb25jZSBhbmQgdGhlIGhlYWRlciBpcyBhIGZpeGVkIHNpemUuIFlvdSB3
b3VsZCBsaWtlbHkKPiBqdXN0IHJlYWQgdGhlIGhlYWRlciBmb2xsb3dlZCBieSByZWFkcyBvZiB0
aGUgZGlmZmVyZW50IGRhdGEgYXJlYXMuCgpUaGlzIGNvbW1lbnQgaXMgZGVyaXZlZCBmcm9tIG52
bWUtY2xpLiAgU28gZmlyc3RseSwgSSdsbCBzZW5kIGEgcGF0Y2gKZm9yIG52bWUtY2xpLiAgSWYg
dGhlIGNoYW5nZXMgYXJlIGFjY2VwdGVkLCBJJ2xsIHVwZGF0ZSB0aGlzIGNvbW1lbnQsIHRvby4K
Cj4gPiArICAgICBfX3U4ICAgIHRlbGVtZXRyeV9kYXRhYXJlYVswXTsKPiA+ICt9Owo+ID4gKwo+
ID4gICBzdHJ1Y3QgbnZtZV9zbWFydF9sb2cgewo+ID4gICAgICAgX191OCAgICAgICAgICAgICAg
ICAgICAgY3JpdGljYWxfd2FybmluZzsKPiA+ICAgICAgIF9fdTggICAgICAgICAgICAgICAgICAg
IHRlbXBlcmF0dXJlWzJdOwo+ID4gQEAgLTgzMiw2ICs4NTQsNyBAQCBlbnVtIHsKPiA+ICAgICAg
IE5WTUVfTE9HX0ZXX1NMT1QgICAgICAgID0gMHgwMywKPiA+ICAgICAgIE5WTUVfTE9HX0NIQU5H
RURfTlMgICAgID0gMHgwNCwKPiA+ICAgICAgIE5WTUVfTE9HX0NNRF9FRkZFQ1RTICAgID0gMHgw
NSwKPiA+ICsgICAgIE5WTUVfTE9HX1RFTEVNRVRSWV9DVFJMID0gMHgwOCwKPiA+ICAgICAgIE5W
TUVfTE9HX0FOQSAgICAgICAgICAgID0gMHgwYywKPiA+ICAgICAgIE5WTUVfTE9HX0RJU0MgICAg
ICAgICAgID0gMHg3MCwKPiA+ICAgICAgIE5WTUVfTE9HX1JFU0VSVkFUSU9OICAgID0gMHg4MCwK
PiA+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
