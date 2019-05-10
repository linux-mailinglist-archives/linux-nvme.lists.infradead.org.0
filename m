Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5935B19FEA
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 17:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vHiPr296VNuY1rIBj3o2vTxf8KztTChVf5r+XzMs7Pg=; b=GpavVWlagmKgd1
	nhMtZrRPw2zmHjFbYGDLg8ZUygu31Ak/jt1mmM2rxUmzpHVIwepQcVoL/Un+G+KE/L77q0Wv2Lupx
	PSaogcENDACGIhBfokAarEF5VRr4MjwexG5aMMTzX3AmJTBNFZKSvb8Y4QL4HyXcMIWcarIdZ9ZMx
	ivQ7U8kRpwGOfJitXe1U3Mi8fQ+r8rWD1gvwIMZ41755kxdI+CjW2oBLDW/4g5ym55N8g32bj4Co0
	PdovfvVvQ2jnWHmgGaTl0Kw4omQWhnDnAHVcPeFwrTiaqc1/wEFKlermwhZaihyYPxV2bDbxlLX2M
	tA6fLhJN0RqFIZLpraHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7DY-0001vF-4k; Fri, 10 May 2019 15:13:48 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7DS-0001uK-D0
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 15:13:44 +0000
Received: from mail-pf1-f197.google.com ([209.85.210.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hP7DN-0006cJ-Ut
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 15:13:38 +0000
Received: by mail-pf1-f197.google.com with SMTP id f1so4354677pfb.0
 for <linux-nvme@lists.infradead.org>; Fri, 10 May 2019 08:13:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=NmWASUs3KbA0AaXEm2yCaVhhAGbxqPp+fvrTyXt64uk=;
 b=qHf1GLLp9GFW4XWzJBjVDyErPxg0vvPJvIthrGYmv6pDd9VV1hqZY0NC6b+nX7Dc5f
 yxk8lR4r5ZhGGBKw17xnHNc5BoRD78Bf71qNL6wBqALWfkNwvso+CefIHJN1wkmuT4Jb
 3VaZIC4MXc/jFIj//65XnzYe0BbPxwqOhha/WJy+mbbtUGoD9IXtu3VZ/Ku8dG/4qq9S
 Rvs6rH9l2eDgoXeOU8J1JcMiT9EHdiqBIPJDiXQC8nC0Olflil8Y1Hll5OPWqz2VkkZT
 W+p4CoHps05B6bC6nqv1ZofJKX9B5ZS/i+n96C9GlGU8Wg9pZNJBBnS4/SQ9gyDwSEQU
 QddQ==
X-Gm-Message-State: APjAAAXdoT/KErXbSWg7z6PtZ+8U+KUdtmBoZ4rTMk7vtK/JYiZXdDkp
 fsNgYmc99DN2hLv7YdQ9OTJRZw2sYu7YZZmvlnIH0xRlmULYMHwVj+JncDTvYm1N+nZvIzC3ejE
 1r8/zHN16nYnnEMJFHhrDFwI5ziwQQXEImipwxbzhMvuI
X-Received: by 2002:aa7:9242:: with SMTP id 2mr15164961pfp.230.1557501216535; 
 Fri, 10 May 2019 08:13:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxw5zxsqhG5LJGMPKVvE2BsNwPWG6uw9NXt/AOlH6TmHdYZv9RPBiVsLYlez6zOdIpxiCnFlQ==
X-Received: by 2002:aa7:9242:: with SMTP id 2mr15164896pfp.230.1557501216170; 
 Fri, 10 May 2019 08:13:36 -0700 (PDT)
Received: from [192.168.1.220] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id 2sm11743129pgc.49.2019.05.10.08.13.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 08:13:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
From: Kai Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <CAJZ5v0jAcX-Q2twygKoKvmx2H6tneHWimmH+c2GsYitHK5-knw@mail.gmail.com>
Date: Fri, 10 May 2019 23:15:05 +0800
Message-Id: <54E4999C-DBE8-4FC1-8E82-17FEDFDA9CA6@canonical.com>
References: <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
 <20190509215409.GD9675@localhost.localdomain>
 <495d76c66aec41a8bfbbf527820f8eb9@AUSX13MPC101.AMER.DELL.COM>
 <BC5EB1D0-8718-48B3-ACAB-F7E5571D821D@canonical.com>
 <CAJZ5v0jAcX-Q2twygKoKvmx2H6tneHWimmH+c2GsYitHK5-knw@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-Mailer: Apple Mail (2.3445.104.8)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_081342_574009_C6C8A61E 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Linux PM <linux-pm@vger.kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cgo+IE9uIE1heSAxMCwgMjAxOSwgYXQgNDoyMyBQTSwgUmFmYWVsIEouIFd5c29ja2kgPHJhZmFl
bEBrZXJuZWwub3JnPiB3cm90ZToKPiAKPiBPbiBGcmksIE1heSAxMCwgMjAxOSBhdCA4OjA4IEFN
IEthaS1IZW5nIEZlbmcKPiA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3cm90ZToKPj4g
Cj4+IGF0IDA2OjE5LCA8TWFyaW8uTGltb25jaWVsbG9AZGVsbC5jb20+IDxNYXJpby5MaW1vbmNp
ZWxsb0BkZWxsLmNvbT4gd3JvdGU6Cj4+IAo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
Cj4+Pj4gRnJvbTogS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3JnPgo+Pj4+IFNlbnQ6IFRo
dXJzZGF5LCBNYXkgOSwgMjAxOSA0OjU0IFBNCj4+Pj4gVG86IExpbW9uY2llbGxvLCBNYXJpbwo+
Pj4+IENjOiBrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb207IGhjaEBsc3QuZGU7IGF4Ym9lQGZi
LmNvbTsKPj4+PiBzYWdpQGdyaW1iZXJnLm1lOyByYWZhZWxAa2VybmVsLm9yZzsgbGludXgtcG1A
dmdlci5rZXJuZWwub3JnOwo+Pj4+IHJhZmFlbC5qLnd5c29ja2lAaW50ZWwuY29tOyBsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC0KPj4+PiBudm1lQGxpc3RzLmluZnJhZGVhZC5v
cmc7IGtlaXRoLmJ1c2NoQGludGVsLmNvbQo+Pj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIG52bWUt
cGNpOiBVc2Ugbm9uLW9wZXJhdGlvbmFsIHBvd2VyIHN0YXRlIGluc3RlYWQKPj4+PiBvZiBEMyBv
bgo+Pj4+IFN1c3BlbmQtdG8tSWRsZQo+Pj4+IAo+Pj4+IAo+Pj4+IFtFWFRFUk5BTCBFTUFJTF0K
Pj4+PiAKPj4+PiBPbiBUaHUsIE1heSAwOSwgMjAxOSBhdCAwOTozNzo1OFBNICswMDAwLCBNYXJp
by5MaW1vbmNpZWxsb0BkZWxsLmNvbQo+Pj4+IHdyb3RlOgo+Pj4+Pj4gK2ludCBudm1lX3NldF9w
b3dlcihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCB1bnNpZ25lZCBucHNzKQo+Pj4+Pj4gK3sKPj4+
Pj4+ICsgIGludCByZXQ7Cj4+Pj4+PiArCj4+Pj4+PiArICBtdXRleF9sb2NrKCZjdHJsLT5zY2Fu
X2xvY2spOwo+Pj4+Pj4gKyAgbnZtZV9zdGFydF9mcmVlemUoY3RybCk7Cj4+Pj4+PiArICBudm1l
X3dhaXRfZnJlZXplKGN0cmwpOwo+Pj4+Pj4gKyAgcmV0ID0gbnZtZV9zZXRfZmVhdHVyZXMoY3Ry
bCwgTlZNRV9GRUFUX1BPV0VSX01HTVQsIG5wc3MsIE5VTEwsIDAsCj4+Pj4+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICBOVUxMKTsKPj4+Pj4+ICsgIG52bWVfdW5mcmVlemUoY3RybCk7Cj4+
Pj4+PiArICBtdXRleF91bmxvY2soJmN0cmwtPnNjYW5fbG9jayk7Cj4+Pj4+PiArCj4+Pj4+PiAr
ICByZXR1cm4gcmV0Owo+Pj4+Pj4gK30KPj4+Pj4+ICtFWFBPUlRfU1lNQk9MX0dQTChudm1lX3Nl
dF9wb3dlcik7Cj4+Pj4+IAo+Pj4+PiBJIGJlbGlldmUgd2l0aG91dCBtZW1vcnkgYmFycmllcnMg
YXQgdGhlIGVuZCBkaXNrcyB3aXRoIEhNQiB0aGlzIHdpbGwKPj4+Pj4gc3RpbGwga2VybmVsIHBh
bmljIChTdWNoIGFzIFRvc2hpYmEgQkczKS4KPj4+PiAKPj4+PiBXZWxsLCB0aGUgbXV0ZXggaGFz
IGFuIGltcGxpZWQgbWVtb3J5IGJhcnJpZXIsIGJ1dCB5b3VyIEhNQiBleHBsYW5hdGlvbgo+Pj4+
IGRvZXNuJ3QgbWFrZSBtdWNoIHNlbnNlIHRvIG1lIGFueXdheS4gVGhlICJtYigpIiBpbiB0aGlz
IHRocmVhZCdzIG9yaWdpbmFsCj4+Pj4gcGF0Y2ggaXMgYSBDUFUgbWVtb3J5IGJhcnJpZXIsIGFu
ZCB0aGUgQ1BVIGhhZCBiZXR0ZXIgbm90IGJlIGFjY2Vzc2luZwo+Pj4+IEhNQiBtZW1vcnkuIElz
IHRoZXJlIHNvbWV0aGluZyBlbHNlIGdvaW5nIG9uIGhlcmU/Cj4+PiAKPj4+IEthaSBIZW5nIHdp
bGwgbmVlZCB0byBzcGVhayB1cCBhIGJpdCBpbiBoaXMgdGltZSB6b25lIGFzIGhlIGhhcyB0aGlz
IGRpc2sKPj4+IG9uIGhhbmQsCj4+PiBidXQgd2hhdCBJIHJlY2FsbCBmcm9tIG91ciBkaXNjdXNz
aW9uIHdhcyB0aGF0IERNQSBvcGVyYXRpb24gTWVtUmQgYWZ0ZXIKPj4+IHJlc3VtZSB3YXMgdGhl
IHNvdXJjZSBvZiB0aGUgaGFuZy4KPj4gCj4+IFllcywgdGhhdOKAmSB3aGF0IEkgd2FzIHRvbGQg
YnkgdGhlIE5WTWUgdmVuZG9yLCBzbyBhbGwgSSBrbm93IGlzIHRvIGltcG9zZSBhCj4+IG1lbW9y
eSBiYXJyaWVyLgo+PiBJZiBtYigpIHNob3VsZG7igJl0IGJlIHVzZWQgaGVyZSwgd2hhdOKAmXMg
dGhlIGNvcnJlY3QgdmFyaWFudCB0byB1c2UgaW4gdGhpcwo+PiBjb250ZXh0Pwo+PiAKPj4+IAo+
Pj4+PiBUaGlzIHN0aWxsIGFsbG93cyBEMyB3aGljaCB3ZSBmb3VuZCBhdCBsZWFzdCBmYWlsZWQg
dG8gZ28gaW50byBkZWVwZXN0Cj4+Pj4+IHN0YXRlIGFuZAo+Pj4+IGJsb2NrZWQKPj4+Pj4gcGxh
dGZvcm0gczBpeCBmb3IgdGhlIGZvbGxvd2luZyBTU0RzIChtYXliZSBvdGhlcnMpOgo+Pj4+PiBI
eW5peCBQQzYwMQo+Pj4+PiBMaXRlT24gQ0wxCj4+Pj4gCj4+Pj4gV2UgdXN1YWxseSB3cml0ZSBm
ZWF0dXJlcyB0byBzcGVjIGZpcnN0LCB0aGVuIHF1aXJrIG5vbi1jb21wbGlhbnQKPj4+PiBkZXZp
Y2VzIGFmdGVyLgo+Pj4gCj4+PiBOVk1FIHNwZWMgZG9lc24ndCB0YWxrIGFib3V0IGEgcmVsYXRp
b25zaGlwIGJldHdlZW4gU2V0RmVhdHVyZXMgdy8KPj4+IE5WTUVfRkVBVF9QT1dFUl9NR01HVCBh
bmQgRDMgc3VwcG9ydCwgbm9yIG9yZGVyIG9mIGV2ZW50cy4KPj4+IAo+Pj4gVGhpcyBpcyB3aHkg
d2Ugb3BlbmVkIGEgZGlhbG9nIHdpdGggc3RvcmFnZSB2ZW5kb3JzLCBpbmNsdWRpbmcKPj4+IGNv
bnRyYXN0aW5nIHRoZSBiZWhhdmlvcgo+Pj4gb2YgTWljcm9zb2Z0IFdpbmRvd3MgaW5ib3ggTlZN
RSBkcml2ZXIgYW5kIEludGVsJ3MgV2luZG93cyBSU1QgZHJpdmVyLgo+Pj4gCj4+PiBUaG9zZSB0
d28gSSBtZW50aW9uIHRoYXQgY29tZSB0byBtaW5kIGltbWVkaWF0ZWx5IGJlY2F1c2UgdGhleSB3
ZXJlIG1vc3QKPj4+IHJlY2VudGx5Cj4+PiB0ZXN0ZWQgdG8gZmFpbC4gIE91ciBkaXNjdXNzaW9u
IHdpdGggc3RvcmFnZSB2ZW5kb3JzIG92ZXJ3aGVsbWluZ2x5Cj4+PiByZXF1ZXN0ZWQKPj4+IHRo
YXQgd2UgZG9uJ3QgdXNlIEQzIHVuZGVyIFMySSBiZWNhdXNlIHRoZWlyIGN1cnJlbnQgZmlybXdh
cmUKPj4+IGFyY2hpdGVjdHVyZSB3b24ndAo+Pj4gc3VwcG9ydCBpdC4KPj4+IAo+Pj4gRm9yIGV4
YW1wbGUgb25lIHZlbmRvciB0b2xkIHVzIHdpdGggY3VycmVudCBpbXBsZW1lbnRhdGlvbiB0aGF0
IHJlY2VpdmluZwo+Pj4gRDNob3QKPj4+IGFmdGVyIE5WTUUgc2h1dGRvd24gd2lsbCBwcmV2ZW50
IGJlaW5nIGFibGUgdG8gZW50ZXIgTDEuMi4gIEQzaG90IGVudHJ5Cj4+PiB3YXMgc3VwcG9ydGVk
Cj4+PiBieSBhbiBJUlEgaGFuZGxlciB0aGF0IGlzbid0IHNlcnZpY2VkIGluIE5WTUUgc2h1dGRv
d24gc3RhdGUuCj4+PiAKPj4+IEFub3RoZXIgdmVuZG9yIHRvbGQgdXMgdGhhdCB3aXRoIGN1cnJl
bnQgaW1wbGVtZW50YXRpb24gaXQncyBpbXBvc3NpYmxlCj4+PiB0byB0cmFuc2l0aW9uCj4+PiB0
byBQUzQgKGF0IGxlYXN0IHZpYSBBUFNUKSB3aGlsZSBMMS4yIEQzaG90IGlzIGFjdGl2ZS4KPj4g
Cj4+IEkgdGVzdGVkIHRoZSBwYXRjaCBmcm9tIEtlaXRoIGFuZCBpdCBoYXMgdHdvIGlzc3VlcyBq
dXN0IGFzIHNpbXBseSBza2lwcGluZwo+PiBudm1lX2Rldl9kaXNhYmxlKCk6Cj4+IDEpIEl0IGNv
bnN1bWVzIG1vcmUgcG93ZXIgaW4gUzJJCj4+IDIpIFN5c3RlbSBmcmVlemUgYWZ0ZXIgcmVzdW1l
Cj4gCj4gV2VsbCwgdGhlIEtlaXRoJ3MgcGF0Y2ggZG9lc24ndCBwcmV2ZW50IHBjaV9wbV9zdXNw
ZW5kX25vaXJxKCkgZnJvbQo+IGFza2luZyBmb3IgRDMgYW5kIGJvdGggb2YgdGhlIHN5bXB0b21z
IGFib3ZlIG1heSBiZSBjb25zZXF1ZW5jZXMgb2YKPiB0aGF0IGluIHByaW5jaXBsZS4KClNvcnJ5
LCBJIHNob3VsZCBtZW50aW9uIHRoYXQgSSB1c2UgYSBzbGlnaHRseSBtb2RpZmllZCBkcml2ZXJz
L252bWUvaG9zdC9wY2kuYzoKCmRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9wY2kuYyBi
L2RyaXZlcnMvbnZtZS9ob3N0L3BjaS5jCmluZGV4IDNlNGZiODkxYTk1YS4uZWNlNDI4Y2U2ODc2
IDEwMDY0NAotLS0gYS9kcml2ZXJzL252bWUvaG9zdC9wY2kuYworKysgYi9kcml2ZXJzL252bWUv
aG9zdC9wY2kuYwpAQCAtMTgsNiArMTgsNyBAQAogI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CiAj
aW5jbHVkZSA8bGludXgvb25jZS5oPgogI2luY2x1ZGUgPGxpbnV4L3BjaS5oPgorI2luY2x1ZGUg
PGxpbnV4L3N1c3BlbmQuaD4KICNpbmNsdWRlIDxsaW51eC90MTAtcGkuaD4KICNpbmNsdWRlIDxs
aW51eC90eXBlcy5oPgogI2luY2x1ZGUgPGxpbnV4L2lvLTY0LW5vbmF0b21pYy1sby1oaS5oPgpA
QCAtMjgzMyw2ICsyODM0LDExIEBAIHN0YXRpYyBpbnQgbnZtZV9zdXNwZW5kKHN0cnVjdCBkZXZp
Y2UgKmRldikKICAgICAgICBzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IHRvX3BjaV9kZXYoZGV2KTsK
ICAgICAgICBzdHJ1Y3QgbnZtZV9kZXYgKm5kZXYgPSBwY2lfZ2V0X2RydmRhdGEocGRldik7CiAK
KyAgICAgICBpZiAoIXBtX3N1c3BlbmRfdmlhX2Zpcm13YXJlKCkpIHsKKyAgICAgICAgICAgICAg
IG52bWVfc2V0X3Bvd2VyKCZuZGV2LT5jdHJsLCBuZGV2LT5jdHJsLm5wc3MpOworICAgICAgICAg
ICAgICAgcGNpX3NhdmVfc3RhdGUocGRldik7CisgICAgICAgfQorCiAgICAgICAgbnZtZV9kZXZf
ZGlzYWJsZShuZGV2LCB0cnVlKTsKICAgICAgICByZXR1cm4gMDsKIH0KQEAgLTI4NDIsNiArMjg0
OCwxMCBAQCBzdGF0aWMgaW50IG52bWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKICAgICAg
ICBzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IHRvX3BjaV9kZXYoZGV2KTsKICAgICAgICBzdHJ1Y3Qg
bnZtZV9kZXYgKm5kZXYgPSBwY2lfZ2V0X2RydmRhdGEocGRldik7CiAKKyAgICAgICBpZiAoIXBt
X3Jlc3VtZV92aWFfZmlybXdhcmUoKSkgeworICAgICAgICAgICAgICAgcmV0dXJuIG52bWVfc2V0
X3Bvd2VyKCZuZGV2LT5jdHJsLCAwKTsKKyAgICAgICB9CisKICAgICAgICBudm1lX3Jlc2V0X2N0
cmwoJm5kZXYtPmN0cmwpOwogICAgICAgIHJldHVybiAwOwp9CgpEb2VzIHBjaV9zYXZlX3N0YXRl
KCkgaGVyZSBlbm91Z2ggdG8gcHJldmVudCB0aGUgZGV2aWNlIGVudGVyIHRvIEQzPwoKS2FpLUhl
bmcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
