Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E61717ECAB
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 00:30:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEqpx3rXi+vwW6UiminvfQ8f7iEqzlSWZYTqtcJyhBs=; b=jEL6HYxf+3YIbv
	nehvldEXs3awiZlWg+8IN/ROT38y/yUpQ4eqIMBmfMwhD5xthwSvf96bavJqNfuanp7V7nun9XCsV
	barqRzMh/IVVQHkthpQa0WYWvbATSMDhLkWbfok0a7M4FK1povm9WqnXq/jHyIl+Bv3KNeS1A13I/
	Ne0jG8SmzAtGCzBDDQNVrppULcK0Unhq2+8fqOVodeU+m8+J3DUjkYWVd3Dgmdcr5LHitgQRP/JWe
	3jJGK0io03AIMsjp+nI9JSqhmx74GjubZzSCH0fp+nZ+dUUIbDj1HT9kn9ZD2sYGT92zGS+/yWbzZ
	KGtXwiUZw6jKc2E1s5aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBRqk-0006g4-EN; Mon, 09 Mar 2020 23:30:18 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBRqP-0005OP-Ju
 for linux-nvme@lists.infradead.org; Mon, 09 Mar 2020 23:30:03 +0000
Received: by mail-lf1-x12b.google.com with SMTP id q9so2600178lfc.10
 for <linux-nvme@lists.infradead.org>; Mon, 09 Mar 2020 16:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jD6ZTOS6BCqhrTQq+WVzZPX9HRQC5pQwm+9Z6ECI9pA=;
 b=XPNoRFcnlvVhGRItUlWFthJyFo5zLyLoXvIM9xomOrL6/JNz+KnqgSEbCZxJVVqhyW
 sDJMUY1Ev1pkeunLe1NXCMAXRJiS51fCaN2GErged2g+myFzjwdnOIyU95+9CCAQFpUX
 U+Y+Smsb0UR8BiFdYExFUa6vBFjJ/jKYxbUugu0TOgegKIqMSJXQjYXyzOVeCDDt77Zm
 sMH7RRB1g9FFGXUi+cuXGf9y1/Qn+PWSZWEFumBP4pbsjEUbHYcyGMag9JABlNnGtNQR
 6cbcHcvEx6c7ZZda2T/neUVLa8JvMGVAB3rTKbZrVjokCXty5QeRQ8eBbgZ4c07wT/2N
 YlhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jD6ZTOS6BCqhrTQq+WVzZPX9HRQC5pQwm+9Z6ECI9pA=;
 b=s3kkxCdZtXYPQhwsT8BLeFUfn842CX/f6XhT8P5TADG0yTXfZweDb9P5hFV9OpCAzn
 cEul1jm1dqQcPhXV8upTy6vIrL8gA7z8HJzaYZF9Cs7qnwfObK2MXOVPvuuhYJT96rXq
 AXqc9yjvyDRZCbU0YMACwIGv7R0GbZAjiZ/k2J9F6AmOqB8x2LCx2R/ylXu82ne7Pjat
 /RfsiPuVQGF7S2/TWawN8TpoaMIN4ExuqZkGH+lU1AyvIzCzDYzn8gIjz7LA4e6dLCDI
 Ozrs32woUz6pdfxRFYcka1du6O3qy6PNlWOHs6SycuZkMg8RBbNpWXVUKoaCIkcf9G91
 ghcw==
X-Gm-Message-State: ANhLgQ1IxKDhPHFQEQ9ue3NJ5Ci04HfPR0HP/revRcDkh8QkggJYk6lh
 8AnHCQlX9d3x+FRwEEk1K9jev0fTqyL0ZVbbNhw=
X-Google-Smtp-Source: ADFU+vtil7IXVgLIVUIZBqKf0uAUAfJzIC3CpZ5qx0TwkGoAkamERI0XG3hXQQNQCpaQxQoNlwT/IE05hKbEtTeXzno=
X-Received: by 2002:ac2:442e:: with SMTP id w14mr10303365lfl.119.1583796589787; 
 Mon, 09 Mar 2020 16:29:49 -0700 (PDT)
MIME-Version: 1.0
References: <CADS+iDV5S+QyfhE4M+fSwXuczx4WCveU+UyhKpx7HY6pfHfc6A@mail.gmail.com>
 <20200309015524.GA4567@redsun51.ssa.fujisawa.hgst.com>
 <CADS+iDXQ4HtyXSTETPqQdJS=1tKdd93vCBtAbqwXEfWt3w7GBA@mail.gmail.com>
 <20200309141629.GA5446@redsun51.ssa.fujisawa.hgst.com>
In-Reply-To: <20200309141629.GA5446@redsun51.ssa.fujisawa.hgst.com>
From: Yaroslav Isakov <yaroslav.isakov@gmail.com>
Date: Tue, 10 Mar 2020 00:29:38 +0100
Message-ID: <CADS+iDVTaAViuKRvcSxyL3TngMWMjpvALEWhd1+Sfi_X3nZomA@mail.gmail.com>
Subject: Re: NVME is not using CPU0
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_162957_657672_18DFE5C5 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yaroslav.isakov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

S2VpdGgsIHRoYW5rIHlvdSEKQWZ0ZXIgc29tZSBkZWJ1Z2dpbmcsIEkndmUgZm91bmQgdGhhdCBr
ZXJuZWwgaXMgc2V0dGluZyA4IHF1ZXVlcyBpbgpOVk1FIGRpc2sgKHdoaWNoIGlzLCBCVFcsIFNh
bXN1bmcgOTYwIFBybyksIGFuZCB0cnlpbmcgdG8gY3JlYXRlIDkgSVJRCnZlY3RvcnMsIGJ1dCBp
dCBsb29rcyBsaWtlIGRldmljZSBzdXBwb3J0cyBubyBtb3JlIHRoYW4gODoKPiBsc3BjaSAtcyAw
MjowMC4wIC12IHwgZ3JlcCBNU0ktWAo+IENhcGFiaWxpdGllczogW2IwXSBNU0ktWDogRW5hYmxl
KyBDb3VudD04IE1hc2tlZC0KU28sIEkgd29uZGVyLCBpZiB0aGlzIENvdW50IGlzIGhhcmR3YXJl
IGxpbWl0IG9mIGRldmljZSwgYW5kIGNhbm5vdCBiZQpyYWlzZWQgKHNvLCBjYW5ub3QgYmUgY2hh
bmdlZCB2aWEgU0VUX0ZFQVRVUkUgNyk/CgrQv9C9LCA5INC80LDRgC4gMjAyMCDQsy4g0LIgMTU6
MTYsIEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz46Cj4KPiBPbiBNb24sIE1hciAwOSwg
MjAyMCBhdCAxMDo0OTo0M0FNICswMTAwLCBZYXJvc2xhdiBJc2Frb3Ygd3JvdGU6Cj4gPiBIZWxs
bywgS2VpdGghIEkndmUgdHJpZWQgdG8gcGluIGZpbyBwcm9jZXNzJ3MgdGhyZWFkcywgYnV0IHdp
dGggbm8KPiA+IGx1Y2suIE9uIG15IHN5c3RlbSwgeW91ciBjb21tYW5kIGdhdmUgdGhpczoKPiA+
IDAsIDEKPiA+IDIKPiA+IDMKPiA+IDQKPiA+IDUKPiA+IDYKPiA+IDcKPiA+IFNvLCBpdCBsb29r
cyBsaWtlIGZpcnN0IHF1ZXVlIHNob3VsZCB1c2UgdHdvIENQVXMsIGJ1dCB1c2luZyBvbmx5Cj4g
PiBDUFUxLiBPaCwgYW5kIGlmIEknbSBydW4gZmlvIHdpdGggMiB0aHJlYWRzLCB3aXRob3V0IHBp
bm5pbmcsIEkgY2FuCj4gPiBzZWUgaW5jcmVhc2luZyBudW1iZXJzIGluIC9wcm9jL2ludGVycnVw
dHMgZm9yIGFsbCBDUFVzIGJlc2lkZXMgQ1BVMAo+Cj4gL3Byb2MvaW50ZXJydXB0cyBzaG93cyB3
aGljaCBjcHUgaGFuZGxlZCBhIGNvbXBsZXRpb24uIEl0IGRvZXNuJ3Qgc2hvdwo+IHdoaWNoIENQ
VSBoYW5kbGVkIHRoZSBzdWJtaXNzaW9uLiBZb3UgZG9uJ3QgaGF2ZSBlbm91Z2ggaW50ZXJydXB0
IHZlY3RvcnMKPiB0byBhc3NpZ24gdG8gZWFjaCBDUFUgc28gc29tZSBDUFVzIHdvbid0IGdldCBp
bnRlcnJ1cHRzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
