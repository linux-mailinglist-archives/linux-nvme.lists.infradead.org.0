Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2762115DF5
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 09:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RdI66+etE6YBIiBpeghtVpPQilom40v6Ao4ZoM0fFlo=; b=WnY0Vu102QI/mS40Of5k1DIvQ
	0NQym6DHF+Pv2t3V1tFbX79Q8n/s31yRqt6i3BqoJZ8LGOgx58qY6ft23gTJBCaqzj/ODkyOaNA9O
	jy24YNADoavaa9z1P3ERYHjUw3X3wBc16cifFEbL51u53Yt8OqKrMi9Vy7Qi90VwFHAHZMSohVsZM
	47hXaF+QlgaE+X2ijCfG6xwn0OdLtipR5747tfzBwZUeyv5DK5nvTPdFPFigteQi9YSg5UUz7AL7n
	qKDJ4AMGN/lwb/5iRO2+xYkwPt9/l1M0jNcgUYynH1+jRwCQ6kQT9DKlYKB4skYmJIuII3p8RN4Hy
	3jb5xiJ6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuJ3-0000g9-P8; Tue, 07 May 2019 07:14:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuIy-0000f4-0H
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 07:14:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B4376ABD0;
 Tue,  7 May 2019 07:14:22 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc 4/5] fabrics: add --quiet option
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-5-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <539ef8c5-65a9-3228-a500-fd6c57f725fa@suse.de>
Date: Tue, 7 May 2019 09:14:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504000456.3888-5-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_001424_190550_EDABEE64 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS80LzE5IDI6MDQgQU0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+IEZyb206IFNhZ2kgR3JpbWJl
cmcgPHNhZ2lAZ3JpbWJlcmcubWU+Cj4gCj4gTm93IHdlIGFyZSBnb2luZyB0byBoYXZlIGRpc2Nv
dmVyeSBsb2cgY2hhbmdlIGV2ZW50cywgc28KPiBpbnN0ZWFkIG9mIHRyeWluZyB0byBmaWd1cmUg
b3V0IHdoaWNoIE5WTSBzdWJzeXN0ZW0gcG9ydHMKPiBhcmUgYWxyZWFkeSBjb25uZWN0ZWQsIHdl
IGxldCB0aGUgZHJpdmVyIGRvIHRoYXQgYW5kCj4gb25seSBzdXBwcmVzcyB0aGUgZmFpbHVyZSBt
ZXNzYWdlcy4KPiAKPiBUaGlzIG9wdGlvbiB3aWxsIGJlIHVzZWQgYnkgdGhlIGRpc2NvdmVyeSBs
b2cgY2hhbmdlIGNvcnJlc3BvbmRpbmcKPiB1ZGV2IHJ1bGUuCj4gCj4gU2lnbmVkLW9mZi1ieTog
U2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiAtLS0KPiAgIGZhYnJpY3MuYyB8IDE0
ICsrKysrKysrKysrLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKPiAKU2lnbmVkLW9mZi1ieTogSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2Uu
Y29tPgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkgICBUZWFtbGVh
ZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAgICArNDkg
OTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJu
YmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJC
IDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1udm1lCg==
