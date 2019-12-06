Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D78114A3F
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Dec 2019 01:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ztW3UqAbVYjnsTjif34tHlAEyxC9Lp6gr1Ir+PULYcQ=; b=UXcbHH1KHv5gD77ZSHFhh8q/+
	qXaQ2IxI2lTEWsdZwh6/qxL5IGJ9i4OsO36tvz4Ya5ACCAoq1qH9NLQExAqSh4voBvfWJ0z83A8cg
	GmaCfV9TPhUWjrAEsjkNup2xGIaIyGFGywUCuc97dblS7utkLeyg66VSNZepoazCI1Vh4i1msYAt1
	atDu6Hxbvq8DhcWk8aJ+UVxzu/6zY+hsox7JnD+RGp9FzjPALNXmFC3CrvnAY5s0FpeGQdrSLWhKh
	5dxcWuzVO9JtA6lx6kd4tnK0eA0yP4cTMIt0cAHbZ6BMN8jTMNUItvzNRya6Y6Vs1Wvu7JRYY5xf+
	/WfIR7KoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id1dm-0005vq-FT; Fri, 06 Dec 2019 00:38:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id1di-0005vV-TQ
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 00:38:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id b11so6019965wmj.4
 for <linux-nvme@lists.infradead.org>; Thu, 05 Dec 2019 16:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=XFM4j4MhbGHFVvdDi8+i5MFtgapuLB1vui6Mf01HNkk=;
 b=Y5YrvcNr9Ldh3Hg/7C7vP76TEKp0ViJv2whFIQFWuNSCCPqsU8z2IDPHz9itwnuqT4
 EmZI/Wwa3cO74eycjF6oECCZx8jEV/1WElxseWkIl+aGExzGS6HJDy9J1iDJ0QlmKqM+
 SUpVe6NqlD/IDd4g7z9+Valwkm1parcEu1d90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=XFM4j4MhbGHFVvdDi8+i5MFtgapuLB1vui6Mf01HNkk=;
 b=F4y52LC7aAOnAdy4OXAJUf+N3XwsB6iAaoxuquLi8IvbPmxUGfY3HKrFBSMyWZm9mt
 juwkbGWZ4hl+qpMFfFt6wYuKhI0nB6ls1CC1sD+NmiCTUmQQTI7NM8AX/ok+XlaFk9AI
 gB0+x308krZo7RQBKXPPIVlk47rk37pKLU22R+8S567Jr2BBbH2MzjRfA9Q6nbAl7JuG
 wg1Ja1vH/o35SIMwJ6DbicPG/fO1MZtlzWMux1fA4Q4DCnyyxkByNKS0rx127X/RpZNA
 ma4XHuAczH+p/fiCnbUVvFUByFUzBkDLdjhq0BluQ7w7JlcNj5NEmUH2Z3FC5+2HO7l+
 Hwow==
X-Gm-Message-State: APjAAAVysd+kC2K16av/eh7CSoyDy+e0BU/Ff2925NECfDYb2QpODw6A
 739+jL0V/X8NLt64a09gFCDSwizr0ZzPjxz7WAeqxvwiYKs/W638CDrdxy9GpheMlcYDBkgWtkU
 n5C+QAoEJF9gbVp2UM7EV9Ln/fQgXzC5SUHlgl1zhmi8iX6uB0R94q3puWswLZEtjsQTFBuH1eV
 R2tE/BXg==
X-Google-Smtp-Source: APXvYqwvrffHhrEjNRb7luA/tt2esNyDap6UEjtzOd/shzuEnazZVvEowDtJE+XoUANJXZHLxMpP6w==
X-Received: by 2002:a1c:5448:: with SMTP id p8mr7786540wmi.70.1575592710963;
 Thu, 05 Dec 2019 16:38:30 -0800 (PST)
Received: from [10.69.49.110] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i5sm4074026wrv.34.2019.12.05.16.38.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Dec 2019 16:38:30 -0800 (PST)
Subject: Re: [PATCH] nvme-fabrics: reject I/O to offline device
To: Victor Gladkov <Victor.Gladkov@kioxia.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <2caa40133c444771b706406b928ad88a@kioxia.com>
 <78d980de-b2b8-bd47-fc3f-20314653598e@broadcom.com>
 <c625b332ee124b038da1ae59b02f4e21@kioxia.com>
 <9a73a895-7d6b-21e9-9008-816117be1ff4@broadcom.com>
 <ac9b5d7192fb49ac9bdf19dd35be0ab2@kioxia.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <4963e813-0d99-4890-804a-cd4c9c660607@broadcom.com>
Date: Thu, 5 Dec 2019 16:38:27 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <ac9b5d7192fb49ac9bdf19dd35be0ab2@kioxia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_163834_951693_4D080A37 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiAxMi80LzIwMTkgMTI6MjggQU0sIFZpY3RvciBHbGFka292IHdyb3RlOgo+IE9uIDEyLzAz
LzIwMTkgMDY6MTkgUE0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+PiBPbiAxMi8zLzIwMTkgMjowNCBB
TSwgVmljdG9yIEdsYWRrb3Ygd3JvdGU6Cj4+PiBPbiAxMi8wMy8yMDE5IDAwOjQ3IEFNLCBKYW1l
cyBTbWFydCB3cm90ZToKPj4+PiBPCj4+Pj4gVGhlIGNvbnRyb2xsZXItbG9zcy10aW1lb3V0IHNo
b3VsZCBub3QgYWZmZWN0IElPIHRpbWVvdXQgcG9saWN5LCB0aGVzZSBhcmUKPj4gdHdvIGRpZmZl
cmVudCBwb2xpY2llcy4KPj4gT2sgLSB3aGljaCBzYXlzIHdoYXQgZG9lcyBtYWtlIHNlbnNlIHRv
IGFkZCBpcyB0aGUgcG9ydGlvbjoKPj4KPj4gICAgICEoY3RybC0+c3RhdGUgPT0gTlZNRV9DVFJM
X0NPTk5FQ1RJTkcgJiYgKChrdGltZV9nZXRfbnMoKSAtIHJxLT5zdGFydF90aW1lX25zKSA+IGpp
ZmZpZXNfdG9fbnNlY3MocnEtPnRpbWVvdXQpKSkKPj4KPj4KPj4gQnV0IEkgZG9uJ3QgdGhpbmsg
d2UgbmVlZCB0aGUgZmFpbGZhc3QgZmxhZy4KPj4KPj4gLS0gamFtZXMKPiBPSy4gSSB0aGluaywg
aXQncyBnb29kIGVub3VnaC4KPgo+IFRoaXMgaXMgdXBkYXRlZCBwYXRjaDoKPgo+IC0tLQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9mYWJyaWNzLmMgYi9kcml2ZXJzL252bWUvaG9z
dC9mYWJyaWNzLmMKPiBpbmRleCA3NGI4ODE4Li5iNThhYmMxIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbnZtZS9ob3N0L2ZhYnJpY3MuYwo+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2ZhYnJpY3Mu
Ywo+IEBAIC01NDksNiArNTQ5LDggQEAgYmxrX3N0YXR1c190IG52bWZfZmFpbF9ub25yZWFkeV9j
b21tYW5kKHN0cnVjdCBudm1lX2N0cmwgKmN0cmwsCj4gICB7Cj4gICAgICAgICAgaWYgKGN0cmwt
PnN0YXRlICE9IE5WTUVfQ1RSTF9ERUxFVElORyAmJgo+ICAgICAgICAgICAgICBjdHJsLT5zdGF0
ZSAhPSBOVk1FX0NUUkxfREVBRCAmJgo+ICsgICAgICAgICAgICEoY3RybC0+c3RhdGUgPT0gTlZN
RV9DVFJMX0NPTk5FQ1RJTkcgJiYKPiArICAgICAgICAgICAgKChrdGltZV9nZXRfbnMoKSAtIHJx
LT5zdGFydF90aW1lX25zKSA+IGppZmZpZXNfdG9fbnNlY3MocnEtPnRpbWVvdXQpKSkgJiYKPiAg
ICAgICAgICAgICAgIWJsa19ub3JldHJ5X3JlcXVlc3QocnEpICYmICEocnEtPmNtZF9mbGFncyAm
IFJFUV9OVk1FX01QQVRIKSkKPiAgICAgICAgICAgICAgICAgIHJldHVybiBCTEtfU1RTX1JFU09V
UkNFOwo+CgpEaWQgeW91IHRlc3QgdGhpcyB0byBlbnN1cmUgaXQncyBkb2luZyB3aGF0IHlvdSBl
eHBlY3QuIEknbSBub3Qgc3VyZSAKdGhhdCBhbGwgdGhlIHRpbWVycyBhcmUgc2V0IHJpZ2h0IGF0
IHRoaXMgcG9pbnQuIE1vc3QgSS9PJ3MgdGltZW91dCBmcm9tIAphIGRlYWRsaW5lIHRpbWUgc3Rh
bXBlZCBhdCBibGtfbXFfc3RhcnRfcmVxdWVzdCgpLiBCdXQgdGhhdCByb3V0aW5lIGlzIAphY3R1
YWxseSBjYWxsZWQgYnkgdGhlIHRyYW5zcG9ydHMgcG9zdCB0aGUgCm52bWZfY2hlY2tfcmVhZHkv
ZmFpbF9ub25yZWFkeSBjYWxscy7CoCBFLmcuIHRoZSBpbyBpcyBub3QgeWV0IGluIGZsaWdodCwg
CnRodXMgcXVldWVkLCBhbmQgdGhlIGJsay1tcSBpbnRlcm5hbCBxdWV1aW5nIGRvZXNuJ3QgY291
bnQgYWdhaW5zdCB0aGUgCmlvIHRpbWVvdXQuwqAgSSBjYW4ndCBzZWUgYW55dGhpbmcgdGhhdCBn
dWFyYW50ZWVzIHN0YXJ0X3RpbWVfbnMgaXMgc2V0LgoKLS0gamFtZXMKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlz
dApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
