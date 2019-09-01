Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51228A49E0
	for <lists+linux-nvme@lfdr.de>; Sun,  1 Sep 2019 16:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/lC9slhxhqwcrMgLY/r3Q1ADa0RANXQxrru1Bextb5I=; b=sdk6dKz6TkULIH
	0BMewFCZ6hMpUA8ESzfpdxWc2K+hPzLNlV1YYmClwfSsmCjCMIuXS2PRc2iHqTzqPFgn5ko+worZi
	i0kGiwSk7QB+ZDaFhoL2aYOAKdqedvq+31yS/Nau83v0SP53Q8DfVyI41AyBrafaa1HP6VobSa+NU
	fO8xq1xmIT+pEMCHo7e6ylU/Ly1hookKQyrKnRcdOeDG6rjh6XkohF3t1CaoxKaCjbnm+OvTOKsuq
	1HzIU4BWQ43jjMKOOM7vZvRnL51gsqad86tDVi+HSgE/NN7TzbDypL442xozwBYfR/S1wRykeVi/w
	ScIyVd5+kMi3gSPfyMog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4R3V-0003JB-OE; Sun, 01 Sep 2019 14:42:13 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4R3P-0003Ir-Aq
 for linux-nvme@lists.infradead.org; Sun, 01 Sep 2019 14:42:08 +0000
Received: by mail-oi1-x244.google.com with SMTP id l2so8800054oil.0
 for <linux-nvme@lists.infradead.org>; Sun, 01 Sep 2019 07:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=UU/or55u5l4Gh4N8/gEnbg1wMpEk9BJB5GLGQCPQ29c=;
 b=VOXTtZK7es1tpOJWr/bijGAUdlMKUeIlpxxLIw+08qkAIr0ODErhP4t0XKn3k7Q9iY
 4mhkEtNAj8NpAQW1ejlH1B3BK5vE3yATwGNgXrksCEMSqSsPbPbD4U97GauPcIoZlp8j
 2JFllMPbN+t0ASbRV1ZdGO804X59z8RpASJSm3TTq9KXf3c8seGHUo+CAD8FyLKHQXRi
 3o5xnYr5kHNoI3RRHezBsS61JFRZEpYJCFHNs0kmr5Cvk9NDlftmZDyv5xqjSknJ8hze
 ZCkY1IHyT2NAwh9gl/1ogglwH1Qh0nEzEtcbfxExkSsEJjDZMn1WqfOuq24fEB/f2QD9
 KrBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=UU/or55u5l4Gh4N8/gEnbg1wMpEk9BJB5GLGQCPQ29c=;
 b=FOI3GgQXWfkIX8x2Yhp5U7tl3BZ6oD/6eK0U1frZl6AxYRRhydSOE3H4p6AQg/pdF8
 16EnVXnupy1Cy605dHJWDhIw9UcGIcFS4KK82hKQPT+bldN1jQ05sD5rM8EC8+xAbIVs
 VtU+y7qC6MGIKGoDlyK5yJFkD2ZwXOX+zqwkaEizQ0CmVDkNJPJb5O62BhPBvb8lCzc7
 pExWcsCFCHt1g5X6Jhx879DoN81sf0d4bGlKe897ETz1THNI0OboM0KYPFoqWB/bUcxQ
 r+YBgEwMa8+D3bYoc4elndK7DIxCFoMHDbbPTpHUWjvlcJwUHfxNP+9GUTXn5hVjoD3+
 nKKg==
X-Gm-Message-State: APjAAAXNv+v9ANTQ2vP0GsvOnsg6yND+BlcIPLqbO2vNY0aEWVlNcxle
 OMtiEskz43uNWM5TaQ2ihJBqgIeE
X-Google-Smtp-Source: APXvYqyIR3sCuDPjPBRazQVGMlSTmcv/WCeAEFWtQvAkP1jpRgJD3ueatR2x5/deweYFcfuwbWVhhA==
X-Received: by 2002:a54:4092:: with SMTP id i18mr2863892oii.66.1567348922323; 
 Sun, 01 Sep 2019 07:42:02 -0700 (PDT)
Received: from [192.168.1.47] (ip68-5-145-143.oc.oc.cox.net. [68.5.145.143])
 by smtp.gmail.com with ESMTPSA id i5sm3104953oii.19.2019.09.01.07.42.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 01 Sep 2019 07:42:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH] nvme: Treat discovery subsystems as unique subsystems
From: James Smart <jsmart2021@gmail.com>
In-Reply-To: <009ea9f4-86bc-be92-d3e2-458c5dd1f059@mellanox.com>
Date: Sun, 1 Sep 2019 07:41:59 -0700
Message-Id: <2C4FB013-DB15-40AA-BB12-05BA096ECC8E@gmail.com>
References: <20190830201145.6729-1-jsmart2021@gmail.com>
 <009ea9f4-86bc-be92-d3e2-458c5dd1f059@mellanox.com>
To: Max Gurtovoy <maxg@mellanox.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_074207_409729_02D05E9B 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cgo+IE9uIFNlcCAxLCAyMDE5LCBhdCAzOjA0IEFNLCBNYXggR3VydG92b3kgPG1heGdAbWVsbGFu
b3guY29tPiB3cm90ZToKPiAKPiAKPiBPbiA4LzMwLzIwMTkgMTE6MTEgUE0sIEphbWVzIFNtYXJ0
IHdyb3RlOgo+PiBDdXJyZW50IGNvZGUgbWF0Y2hlcyBzdWJucW4gYW5kIGNvbGxhcHNlcyBhbGwg
Y29udHJvbGxlcnMgdG8gdGhlCj4+IHNhbWUgc3VibnFuIHRvIGEgc2luZ2xlIHN1YnN5c3RlbSBz
dHJ1Y3R1cmUuIFRoaXMgaXMgZ29vZCBmb3IKPj4gcmVjb2duaXppbmcgbXVsdGlwbGUgY29udHJv
bGxlcnMgZm9yIHRoZSBzYW1lIHN1YnN5c3RlbS4gQnV0IHdpdGgKPj4gdGhlIHdlbGwta25vd24g
ZGlzY292ZXJ5IHN1Ym5xbiwgdGhlIHN1YnN5c3RlbXMgYXJlbid0IHRydWx5IHRoZQo+PiBzYW1l
IHN1YnN5c3RlbS4gQXMgc3VjaCwgc3Vic3lzdGVtIHNwZWNpZmljIHJ1bGVzLCBzdWNoIGFzIG5v
Cj4+IG92ZXJsYXAgb2YgY29udHJvbGxlciBpZCwgZG8gbm90IGFwcGx5LiBXaXRoIHRvZGF5J3Mg
YmVoYXZpb3IsIHRoZQo+PiBjaGVjayBmb3Igb3ZlcmxhcCBvZiBjb250cm9sbGVyIGlkIGNhbiBm
YWlsLCBwcmV2ZW50aW5nIHRoZSBuZXcKPj4gZGlzY292ZXJ5IGNvbnRyb2xsZXIgZnJvbSBiZWlu
ZyBjcmVhdGVkLgo+IAo+IHNvIHRoaXMgZml4ZXMgYSBzY2VuYXJpbyBvZiBtdWx0aXBsZSBkaXNj
b3ZlcnkgaW4gcGFyYWxsZWwgPwo+IAoKSXTigJlzIG5vdCB0byBzYXkgdGhhdCBtdWx0aXBsZSBk
aXNjb3ZlcmllcyBpbiBwYXJhbGxlbCBkb2VzbuKAmXQgd29yaywgYnV0IEkgZGlkIHNlZSBhIHNj
ZW5hcmlvIHdoZXJlIGl0IG1hcHBlZCBpbnRvIHRoaXMuIEluIG1vc3QgY2FzZXMsIHRoZSB0aW1l
IHRha2VuIGZvciBhbiBpb2N0bCBvciB0d28gdG8gZ2V0IHRoZSBsb2csIHRoZW4gZGVsZXRlIHRo
ZSBjb250cm9sbGVyIGhhcHBlbnMgc28gZmFzdCBpdOKAmXMgYXZvaWRlZC4gQnV0IEkgZnVsbHkg
ZXhwZWN0IGxvbmctbGl2ZWQgY29udHJvbGxlcnMgdG8gbWFrZSB0aGlzIHByb2JsZW1hdGljLgoK
4oCUIGphbWVzCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
