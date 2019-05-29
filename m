Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1CC2E264
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 18:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5Y3KwnYDvkBRIohMge4yGZeXl3RIihvv4ZpHPze90g=; b=V7VllBskn6sjTu
	bYFSBP3L3H2+Dbe9ON2rWM7j/bGkZZ2aMvtEN5uAzZMQAgjRd0zUIEtGwLQq6q+xEPRmCkWKZbO5+
	HghLg7pe6HeMsfHVnnElCVxnKe8rVB37iqmr6sIGdYUQ5Z4FKuSNwt5Hmx4ZuWpNIYeOUPz5+bkSJ
	SbYCBHE9O+B8zKkKtVQ0EBBdsfvSkIvgqYBfL76zUAkbXRrc4JWgz2rh8KTNBfTOuRtVf3p1W9E2n
	k2a0tCmCh7bXbBpX3NSlNyyXN4Css0JHS0C+mS1+14YAv8TrWDzgnc0cJnNQDzvc1Bzb+2G1JEeEi
	yCepB8qdOwTBH29rsVTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1cO-0001GL-4o; Wed, 29 May 2019 16:40:00 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1cF-0001Fy-W4
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 16:39:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id r22so1969473pfh.9
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 09:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DZ3fQT8QyB2wkLHX+qlvTgM7sxiv5HMdvDWYspt+tvg=;
 b=aLIWmvs0SjiQZKAOgGoVZKyxXVitomfrw9B9h3YnzlAL7KMkWGnF9TlPKUtwq9KhbV
 d1rX2I3sXN6RFDqIXGzizinhv7qe2vk82TN3CkOe+zNCuCUrxjYAYv9tuGRjAyRpUkgn
 aNuizZLHCPESKd+pSrUPfQyO5YOoygbw1bfqp706DR4yw0SqnRrI2U5h7PowUC5Alk9w
 +mWK8tIOpyQAdm5wetMGIK6h+jrWgcxQIaY7xzH3wmToSo9Gu8dxv7TcHzYBjP/MUV+A
 DTJOdbkL3qATcKpAALxo1CAZCP5JL2Aq9qfw+M26rCu8BwDAT5YJkaw4qHq0sOtuVuBC
 G/tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DZ3fQT8QyB2wkLHX+qlvTgM7sxiv5HMdvDWYspt+tvg=;
 b=OutVbcHISldnF0AORNMiDgwk3JpUsNbLANd1mFSkTjP2mVH2unPR8fP8i2dcEX+pzK
 QEimovH9q0XJ397H3Y/+hKG6BSe/a1jD1gCYg7PRE9kire0GL/41vROvUJvFilIP37Nv
 nsCALEZe5qKeJEI3PJjOULjRxp4Y+AyR13qb0jkJ0WvjbitbY08TV688R6jI/3WS+jYX
 c/kQnYUaArrJ1frQiR3BxsunYT2m/aYq5lVBfVcnYyYH3K8aYizZHYoxjB/0rp5QnYe9
 gnnQ+SkFSsjwiakPnLPVnPmDfXCnXbuqGCiDL+ySsDhtX6GR8f0Sbb06oD9mqeFCKqM/
 RX9g==
X-Gm-Message-State: APjAAAV9lLds8QscYtTNyG6xzjOO15cx7q1e4J1nLPYhAgbOtpP0TPlH
 bmFDwHAZYxRa/hl02ulHxew9goaYD17PY31E21E=
X-Google-Smtp-Source: APXvYqyD3jS8BhWBPEqA6lLKwrwroyy8vv98bDc6VHkIz0voEYjXZZ/Uct1Dq5p4liVSIG41eiE7nhsbItZ25d7tcKo=
X-Received: by 2002:a17:90a:c38a:: with SMTP id
 h10mr4522262pjt.124.1559147990155; 
 Wed, 29 May 2019 09:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
 <1559063018-3682-2-git-send-email-akinobu.mita@gmail.com>
 <20190529144624.GA28274@minwooim-desktop>
In-Reply-To: <20190529144624.GA28274@minwooim-desktop>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 30 May 2019 01:39:38 +0900
Message-ID: <CAC5umyityGQyO+kCZ+LHqxGugKPQGv1tgrTc==x=6EjfgJkOqQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] nvme: prepare for fault injection into admin commands
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_093954_804013_C8CFF904 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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

MjAxOeW5tDXmnIgyOeaXpSjmsLQpIDIzOjQ2IE1pbndvbyBJbSA8bWlud29vLmltLmRldkBnbWFp
bC5jb20+Ogo+Cj4gT24gMTktMDUtMjkgMDI6MDM6MzcsIEFraW5vYnUgTWl0YSB3cm90ZToKPiA+
IEN1cnJlbmx0eSBmYXVsdCBpbmplY3Rpb24gc3VwcG9ydCBmb3IgbnZtZSBvbmx5IGVuYWJsZXMg
dG8gaW5qZWN0IGVycm9ycwo+ID4gaW50byB0aGUgY29tbWFuZHMgc3VibWl0dGVkIHRvIEkvTyBx
dWV1ZXMuCj4gPgo+ID4gSW4gcHJlcGFyYXRpb24gZm9yIGZhdWx0IGluamVjdGlvbiBpbnRvIHRo
ZSBhZG1pbiBjb21tYW5kcywgdGhpcyBtYWtlcwo+ID4gdGhlIGhlbHBlciBmdW5jdGlvbnMgaW5k
ZXBlbmRlbnQgb2Ygc3RydWN0IG52bWVfbnMuCj4gPgo+ID4gQ2M6IFRob21hcyBUYWkgPHRob21h
cy50YWlAb3JhY2xlLmNvbT4KPiA+IENjOiBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5vcmc+
Cj4gPiBDYzogSmVucyBBeGJvZSA8YXhib2VAZmIuY29tPgo+ID4gQ2M6IENocmlzdG9waCBIZWxs
d2lnIDxoY2hAbHN0LmRlPgo+ID4gQ2M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0YUBnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgICAgICAgICB8ICA0ICsrLS0K
PiA+ICBkcml2ZXJzL252bWUvaG9zdC9mYXVsdF9pbmplY3QuYyB8IDI4ICsrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0KPiA+ICBkcml2ZXJzL252bWUvaG9zdC9udm1lLmggICAgICAgICB8IDIw
ICsrKysrKysrKysrKy0tLS0tLS0tCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25z
KCspLCAyMyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hv
c3QvY29yZS5jIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gPiBpbmRleCAyNmM4YjU5Li45
ZmNhODQ1NyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ID4gKysr
IGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gPiBAQCAtMzY5OCw3ICszNjk4LDcgQEAgc3Rh
dGljIGludCBudm1lX2FsbG9jX25zKHN0cnVjdCBudm1lX2N0cmwgKmN0cmwsIHVuc2lnbmVkIG5z
aWQpCj4gPiAgICAgICBkZXZpY2VfYWRkX2Rpc2soY3RybC0+ZGV2aWNlLCBucy0+ZGlzaywgbnZt
ZV9uc19pZF9hdHRyX2dyb3Vwcyk7Cj4gPgo+ID4gICAgICAgbnZtZV9tcGF0aF9hZGRfZGlzayhu
cywgaWQpOwo+ID4gLSAgICAgbnZtZV9mYXVsdF9pbmplY3RfaW5pdChucyk7Cj4gPiArICAgICBu
dm1lX2ZhdWx0X2luamVjdF9pbml0KCZucy0+ZmF1bHRfaW5qZWN0LCBucy0+ZGlzay0+ZGlza19u
YW1lKTsKPiA+ICAgICAgIGtmcmVlKGlkKTsKPiA+Cj4gPiAgICAgICByZXR1cm4gMDsKPiA+IEBA
IC0zNzIzLDcgKzM3MjMsNyBAQCBzdGF0aWMgdm9pZCBudm1lX25zX3JlbW92ZShzdHJ1Y3QgbnZt
ZV9ucyAqbnMpCj4gPiAgICAgICBpZiAodGVzdF9hbmRfc2V0X2JpdChOVk1FX05TX1JFTU9WSU5H
LCAmbnMtPmZsYWdzKSkKPiA+ICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4KPiA+IC0gICAgIG52
bWVfZmF1bHRfaW5qZWN0X2ZpbmkobnMpOwo+ID4gKyAgICAgbnZtZV9mYXVsdF9pbmplY3RfZmlu
aSgmbnMtPmZhdWx0X2luamVjdCk7Cj4gPiAgICAgICBpZiAobnMtPmRpc2sgJiYgbnMtPmRpc2st
PmZsYWdzICYgR0VOSERfRkxfVVApIHsKPiA+ICAgICAgICAgICAgICAgZGVsX2dlbmRpc2sobnMt
PmRpc2spOwo+ID4gICAgICAgICAgICAgICBibGtfY2xlYW51cF9xdWV1ZShucy0+cXVldWUpOwo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L2ZhdWx0X2luamVjdC5jIGIvZHJpdmVy
cy9udm1lL2hvc3QvZmF1bHRfaW5qZWN0LmMKPiA+IGluZGV4IDRjZmQyYzkuLmU4ZDhkYTkgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9mYXVsdF9pbmplY3QuYwo+ID4gKysrIGIv
ZHJpdmVycy9udm1lL2hvc3QvZmF1bHRfaW5qZWN0LmMKPiA+IEBAIC0xNSwxMSArMTUsMTAgQEAg
c3RhdGljIERFQ0xBUkVfRkFVTFRfQVRUUihmYWlsX2RlZmF1bHRfYXR0cik7Cj4gPiAgc3RhdGlj
IGNoYXIgKmZhaWxfcmVxdWVzdDsKPiA+ICBtb2R1bGVfcGFyYW0oZmFpbF9yZXF1ZXN0LCBjaGFy
cCwgMDAwMCk7Cj4gPgo+ID4gLXZvaWQgbnZtZV9mYXVsdF9pbmplY3RfaW5pdChzdHJ1Y3QgbnZt
ZV9ucyAqbnMpCj4gPiArdm9pZCBudm1lX2ZhdWx0X2luamVjdF9pbml0KHN0cnVjdCBudm1lX2Zh
dWx0X2luamVjdCAqZmF1bHRfaW5qLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICBjb25z
dCBjaGFyICpuYW1lKQo+Cj4gSGkgQWtpbm9idSwKPgo+IEp1c3QgYSBzaW1wbGUgcHJvcG9zYWwg
aGVyZS4gIENhbiB3ZSBoYXZlIGEgbmFtZSBmb3IgdGhlIGRpc2sgbmFtZSB3aXRoOgo+ICAgICAg
ICAgY29uc3QgY2hhciAqZGlza19uYW1lID8KPiBJIHRoaW5rIHRoZSBuYW1lIG9mIHZhcmlhYmxl
ICJuYW1lIiBjYW4gbWFrZSBzb21lIGNvbmZ1c2lvbnMgdG8gd2hvbSB3YW50Cj4gdG8gdXNlIHRo
aXMgZmVhdHVyZSBhdCBsYXRlciB0aW1lIDopCgpBcyBsb25nIGFzIG5zLT5kaXNrLT5kaXNrX25h
bWUgaXMgcGFzc2VkIHRvIHRoaXMgYXJndW1lbnQsICdkaXNrX25hbWUnIGlzCmdvb2QuCgpIb3dl
dmVyLCBkZXZfbmFtZShjdHJsLT5kZXZpY2UpIHdpbGwgYmUgcGFzc2VkIHRvIHRoZSBhcmd1bWVu
dCBpbiB0aGUgcGF0Y2gKMi8yLiAgSXQncyBub3QgJ2Rpc2tfbmFtZScgYW55bW9yZSwgc28gSSB0
aGluayAnbmFtZScgb3IgJ2Rldl9uYW1lJyBpcwpiZXR0ZXIgdGhhbiAnZGlza19uYW1lJy4KCj4g
T3RoZXJ3aXNlLCBpbiB0aGUgcGVyc3BlY3RpdmUgb2YgdGhpcyBzaW5nbGUgcGF0Y2gsIGxvb2tz
IGdvb2QgdG8gbWUuCj4KPiBSZXZpZXdlZC1ieTogTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdt
YWlsLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
