Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C87CB1C6DC
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 12:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d5i3pk4zMaalilaOWAiOx1afdln5HA7HRcyPuMpqC3Y=; b=jClyf8wEarfMAekQ7VzRdHIC6
	gkLlBi2voMmLUa21RWYnq68yErbJDxl36qq9XONZji7gNaosfwGY/lG04YJyO/Ox7OtXSeAGQzIGU
	/4pSHty5bF8xMrZSC20KUZkP4vYkwYroWmbgLHVw1PK5YompHCQdUHLeUX0V4f8Q1hwaIJ3QyL4t/
	Rmc4A/TfMWJC3N21wOqFR6VHPu5GdIWCwwlhIjZ1BIojBx7O4ZOi5L6QgT3L5neQs3Eecfjciaawl
	2Bw284h1FpwGVovFKy5AfTbGABpojyi06Ygm+t5DdfoTTFZ5F0civDA/ds1VaqnIbZVDdx3+Nxku4
	fyiq6hHHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUVW-0004u0-KW; Tue, 14 May 2019 10:18:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUVR-0004tH-54
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 10:17:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DA4E1AE43;
 Tue, 14 May 2019 10:17:55 +0000 (UTC)
Subject: Re: [PATCH 3/7] nvme-fcloop: Add support for nvmet discovery_event op
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190513224314.24169-1-jsmart2021@gmail.com>
 <20190513224314.24169-4-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <cdf07591-fbab-d72b-381d-a8e301bf3363@suse.de>
Date: Tue, 14 May 2019 12:17:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513224314.24169-4-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_031757_336359_2539E23B 
X-CRM114-Status: GOOD (  15.74  )
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
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xNC8xOSAxMjo0MyBBTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4gVXBkYXRlIGZjbG9vcCB0
byBzdXBwb3J0IHRoZSBkaXNjb3ZlcnlfZXZlbnQgb3BlcmF0aW9uIGFuZAo+IGludm9rZSBhIG52
bWUgcmVzY2FuLiBJbiBhIHJlYWwgZmMgYWRhcHRlciwgdGhpcyB3b3VsZCBnZW5lcmF0ZSBhbgo+
IFJTQ04sIHdoaWNoIHRoZSBob3N0IHdvdWxkIHJlY2VpdmUgYW5kIGNvbnZlcnQgaW50byBhIG52
bWUgcmVzY2FuCj4gb24gdGhlIHJlbW90ZSBwb3J0IHNwZWNpZmllZCBpbiB0aGUgcnNjbiBwYXls
b2FkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbWVzIFNtYXJ0IDxqc21hcnQyMDIxQGdtYWlsLmNv
bT4KPiAtLS0KPiAgIGRyaXZlcnMvbnZtZS90YXJnZXQvZmNsb29wLmMgfCAzNyArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMzcgaW5zZXJ0
aW9ucygrKQo+IApSZXZpZXdlZC1ieTogSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29tPgoK
Q2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkgICBUZWFtbGVhZCBTdG9y
YWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAgICArNDkgOTExIDc0
MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpH
RjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0
IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1u
dm1lCg==
