Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764E02FA27
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 12:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yH9p4HUrUtqZMzwgMqbe/3DhJ3cD47xLxgBl2FhAzNk=; b=JmquVf4XN3UePI
	ASYAfTO+BZntaukGBYcuSjS9HbUXxnnNjsJpb8y9Ltfnh4ty4ehj+YEnYWoHMoBdJ6rEZarCdBHnY
	5Ed5F1nLr+HJYv/khj9U3CXq77B1v4dCezAYYtguG35mFxZBhiZHLIYI0eVj6kkb/T2Hjnqkmf/p4
	Z48G2AfiNlXJLGHp/4lHASlljB/tFCgkRY4OjtnSv/UnQ/pwhbNiFbHvk3i6r3fpkwvjmDhckc82k
	yeBaN5CDcFQOTXmgjrRYF/cDtXqnCwK+KnOTh5lsGsO13aXD2EdGuTE2n/yVUVq/58fvwDDgZ9NdG
	LUEeuCH43gapu4b3aL8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWIB5-0007jP-6C; Thu, 30 May 2019 10:20:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWIAx-0007gO-PB
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 10:20:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id r22so3661324pfh.9
 for <linux-nvme@lists.infradead.org>; Thu, 30 May 2019 03:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=9U3M91HCW45B3KxF2hbi/lsU2Dl4aDv14hBgW+h53vY=;
 b=VW7Jh9DHBB0VvpFj9NrqZSEL42f9dX3UVvi/D2kpWlGO9/nbydI5V6f9Y0zUZAMDAB
 uQQFRoGpEfwut+4ifv0HFfYBJ+ABsACMibHWbqLxBqB47T2/5qL/7mer10wtCNIrfPni
 eSTNZx8n82Ci7jZSmCRzeNbheLDE7J9k40Le9fanUADynkzICmRTcG5JCt9TjCRMSqs5
 YpF44WLbrMXyU9RuL3E1qqA893rZFP6bzkqe/rJM32qBc6HsWGxdZsM7RqRngEjXWZzx
 l4c6a44Bx2XR6548GPX2/1XvUb/yscl5XBNr1sd5o/EzkLHbyU1ZCe2mduDrQdEBzTYe
 cEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=9U3M91HCW45B3KxF2hbi/lsU2Dl4aDv14hBgW+h53vY=;
 b=spXbLYHljEJAFJrbWXTa++0+WFTO7qoF+12N40AqfsDFgH8TLwwdhmIci1gBI6a0QA
 0sxxCQP5dXRcn29A3IsU6x+p93lKTMkEJWXVyYQGZvjJBezkIvjjEF/u/55e+NeXGXXj
 5/cZ3d5xroi4jEZslofF7hvT8BSlbnce0NemNcLyNkah9abLWxCt0VB0VVAAE393HYzd
 j1eGRNV5t/Igk/lmvngX+rYY0sBqCeNxMlCBq5g6j+oYXo6kAFSAjo2d4nPYfW730oZr
 C1pEMUr2+t0joeaINv6U9cBDLnEx9ovzTIVbP0JHIjvKaFIa4MJYp4nyHSkZia2YU6jV
 GksQ==
X-Gm-Message-State: APjAAAUVZWdqhf4IqoLQoIlOBapzqvGvF9fsN4EJ7kelSEELgPaTZd9j
 E6M3qw6gD/XwRCbqzE5ciEI=
X-Google-Smtp-Source: APXvYqzjH2+ipFiUSSd1/3YpwXvXZj4WMX4p9v5vz6XSx1aMy7SP7Rn/VUBFaU5ognwton7w+t+tCg==
X-Received: by 2002:a17:90a:65c2:: with SMTP id
 i2mr2968767pjs.54.1559211647106; 
 Thu, 30 May 2019 03:20:47 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v9sm2353820pfm.34.2019.05.30.03.20.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 03:20:46 -0700 (PDT)
Date: Thu, 30 May 2019 19:20:44 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 1/2] nvme: prepare for fault injection into admin commands
Message-ID: <20190530102042.GB8843@minwooim-desktop>
References: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
 <1559063018-3682-2-git-send-email-akinobu.mita@gmail.com>
 <20190529144624.GA28274@minwooim-desktop>
 <CAC5umyityGQyO+kCZ+LHqxGugKPQGv1tgrTc==x=6EjfgJkOqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyityGQyO+kCZ+LHqxGugKPQGv1tgrTc==x=6EjfgJkOqQ@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_032047_822054_148A6793 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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

T24gMTktMDUtMzAgMDE6Mzk6MzgsIEFraW5vYnUgTWl0YSB3cm90ZToKPiAyMDE55bm0NeaciDI5
5pelKOawtCkgMjM6NDYgTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWlsLmNvbT46Cj4gPgo+
ID4gT24gMTktMDUtMjkgMDI6MDM6MzcsIEFraW5vYnUgTWl0YSB3cm90ZToKPiA+ID4gQ3VycmVu
bHR5IGZhdWx0IGluamVjdGlvbiBzdXBwb3J0IGZvciBudm1lIG9ubHkgZW5hYmxlcyB0byBpbmpl
Y3QgZXJyb3JzCj4gPiA+IGludG8gdGhlIGNvbW1hbmRzIHN1Ym1pdHRlZCB0byBJL08gcXVldWVz
Lgo+ID4gPgo+ID4gPiBJbiBwcmVwYXJhdGlvbiBmb3IgZmF1bHQgaW5qZWN0aW9uIGludG8gdGhl
IGFkbWluIGNvbW1hbmRzLCB0aGlzIG1ha2VzCj4gPiA+IHRoZSBoZWxwZXIgZnVuY3Rpb25zIGlu
ZGVwZW5kZW50IG9mIHN0cnVjdCBudm1lX25zLgo+ID4gPgo+ID4gPiBDYzogVGhvbWFzIFRhaSA8
dGhvbWFzLnRhaUBvcmFjbGUuY29tPgo+ID4gPiBDYzogS2VpdGggQnVzY2ggPGtidXNjaEBrZXJu
ZWwub3JnPgo+ID4gPiBDYzogSmVucyBBeGJvZSA8YXhib2VAZmIuY29tPgo+ID4gPiBDYzogQ2hy
aXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4gPiA+IENjOiBTYWdpIEdyaW1iZXJnIDxzYWdp
QGdyaW1iZXJnLm1lPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBa2lub2J1IE1pdGEgPGFraW5vYnUu
bWl0YUBnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9udm1lL2hvc3QvY29yZS5j
ICAgICAgICAgfCAgNCArKy0tCj4gPiA+ICBkcml2ZXJzL252bWUvaG9zdC9mYXVsdF9pbmplY3Qu
YyB8IDI4ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KPiA+ID4gIGRyaXZlcnMvbnZtZS9o
b3N0L252bWUuaCAgICAgICAgIHwgMjAgKysrKysrKysrKysrLS0tLS0tLS0KPiA+ID4gIDMgZmls
ZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9z
dC9jb3JlLmMKPiA+ID4gaW5kZXggMjZjOGI1OS4uOWZjYTg0NTcgMTAwNjQ0Cj4gPiA+IC0tLSBh
L2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ID4gPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9j
b3JlLmMKPiA+ID4gQEAgLTM2OTgsNyArMzY5OCw3IEBAIHN0YXRpYyBpbnQgbnZtZV9hbGxvY19u
cyhzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCB1bnNpZ25lZCBuc2lkKQo+ID4gPiAgICAgICBkZXZp
Y2VfYWRkX2Rpc2soY3RybC0+ZGV2aWNlLCBucy0+ZGlzaywgbnZtZV9uc19pZF9hdHRyX2dyb3Vw
cyk7Cj4gPiA+Cj4gPiA+ICAgICAgIG52bWVfbXBhdGhfYWRkX2Rpc2sobnMsIGlkKTsKPiA+ID4g
LSAgICAgbnZtZV9mYXVsdF9pbmplY3RfaW5pdChucyk7Cj4gPiA+ICsgICAgIG52bWVfZmF1bHRf
aW5qZWN0X2luaXQoJm5zLT5mYXVsdF9pbmplY3QsIG5zLT5kaXNrLT5kaXNrX25hbWUpOwo+ID4g
PiAgICAgICBrZnJlZShpZCk7Cj4gPiA+Cj4gPiA+ICAgICAgIHJldHVybiAwOwo+ID4gPiBAQCAt
MzcyMyw3ICszNzIzLDcgQEAgc3RhdGljIHZvaWQgbnZtZV9uc19yZW1vdmUoc3RydWN0IG52bWVf
bnMgKm5zKQo+ID4gPiAgICAgICBpZiAodGVzdF9hbmRfc2V0X2JpdChOVk1FX05TX1JFTU9WSU5H
LCAmbnMtPmZsYWdzKSkKPiA+ID4gICAgICAgICAgICAgICByZXR1cm47Cj4gPiA+Cj4gPiA+IC0g
ICAgIG52bWVfZmF1bHRfaW5qZWN0X2ZpbmkobnMpOwo+ID4gPiArICAgICBudm1lX2ZhdWx0X2lu
amVjdF9maW5pKCZucy0+ZmF1bHRfaW5qZWN0KTsKPiA+ID4gICAgICAgaWYgKG5zLT5kaXNrICYm
IG5zLT5kaXNrLT5mbGFncyAmIEdFTkhEX0ZMX1VQKSB7Cj4gPiA+ICAgICAgICAgICAgICAgZGVs
X2dlbmRpc2sobnMtPmRpc2spOwo+ID4gPiAgICAgICAgICAgICAgIGJsa19jbGVhbnVwX3F1ZXVl
KG5zLT5xdWV1ZSk7Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9mYXVsdF9p
bmplY3QuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2ZhdWx0X2luamVjdC5jCj4gPiA+IGluZGV4IDRj
ZmQyYzkuLmU4ZDhkYTkgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2ZhdWx0
X2luamVjdC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2ZhdWx0X2luamVjdC5jCj4g
PiA+IEBAIC0xNSwxMSArMTUsMTAgQEAgc3RhdGljIERFQ0xBUkVfRkFVTFRfQVRUUihmYWlsX2Rl
ZmF1bHRfYXR0cik7Cj4gPiA+ICBzdGF0aWMgY2hhciAqZmFpbF9yZXF1ZXN0Owo+ID4gPiAgbW9k
dWxlX3BhcmFtKGZhaWxfcmVxdWVzdCwgY2hhcnAsIDAwMDApOwo+ID4gPgo+ID4gPiAtdm9pZCBu
dm1lX2ZhdWx0X2luamVjdF9pbml0KHN0cnVjdCBudm1lX25zICpucykKPiA+ID4gK3ZvaWQgbnZt
ZV9mYXVsdF9pbmplY3RfaW5pdChzdHJ1Y3QgbnZtZV9mYXVsdF9pbmplY3QgKmZhdWx0X2luaiwK
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBjaGFyICpuYW1lKQo+ID4KPiA+
IEhpIEFraW5vYnUsCj4gPgo+ID4gSnVzdCBhIHNpbXBsZSBwcm9wb3NhbCBoZXJlLiAgQ2FuIHdl
IGhhdmUgYSBuYW1lIGZvciB0aGUgZGlzayBuYW1lIHdpdGg6Cj4gPiAgICAgICAgIGNvbnN0IGNo
YXIgKmRpc2tfbmFtZSA/Cj4gPiBJIHRoaW5rIHRoZSBuYW1lIG9mIHZhcmlhYmxlICJuYW1lIiBj
YW4gbWFrZSBzb21lIGNvbmZ1c2lvbnMgdG8gd2hvbSB3YW50Cj4gPiB0byB1c2UgdGhpcyBmZWF0
dXJlIGF0IGxhdGVyIHRpbWUgOikKPiAKPiBBcyBsb25nIGFzIG5zLT5kaXNrLT5kaXNrX25hbWUg
aXMgcGFzc2VkIHRvIHRoaXMgYXJndW1lbnQsICdkaXNrX25hbWUnIGlzCj4gZ29vZC4KPiAKPiBI
b3dldmVyLCBkZXZfbmFtZShjdHJsLT5kZXZpY2UpIHdpbGwgYmUgcGFzc2VkIHRvIHRoZSBhcmd1
bWVudCBpbiB0aGUgcGF0Y2gKPiAyLzIuICBJdCdzIG5vdCAnZGlza19uYW1lJyBhbnltb3JlLCBz
byBJIHRoaW5rICduYW1lJyBvciAnZGV2X25hbWUnIGlzCj4gYmV0dGVyIHRoYW4gJ2Rpc2tfbmFt
ZScuCgpUaGVuIGNhbiB3ZSBoYXZlIGl0ICJkZXZfbmFtZSI/Cgo+IAo+ID4gT3RoZXJ3aXNlLCBp
biB0aGUgcGVyc3BlY3RpdmUgb2YgdGhpcyBzaW5nbGUgcGF0Y2gsIGxvb2tzIGdvb2QgdG8gbWUu
Cj4gPgo+ID4gUmV2aWV3ZWQtYnk6IE1pbndvbyBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1u
dm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
