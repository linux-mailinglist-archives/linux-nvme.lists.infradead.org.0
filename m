Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A6D88B37
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 14:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6twfWYZqwXF6H9GjX5X5qjuB4cgmpj7c8lH+GbYdeTg=; b=luw/3PDxo/u91XsaDOSnnzuQf
	vgE5END9fjPNBd+DHak8NxPbsVxBKRR+/aWdmWwuMnEHc1U5KZshgBapZ7q0AvHfpgw5Bis1FzuDD
	QolggkSEGhYQ+wY6XqMCkHRpPsEGNtdelcY2qwUbjGeh4PRSpcnEEib2FFkNPiRA7C4d4NmIrej9z
	rVWd+a33PERe0vIpv1g+7stq8ngA7CTDXcErAc7mkwkisqLKq58eIAAom+d0i6Hy5DaTulFTg41fZ
	xVVEVwAkiaxXmnZ9iJNaNnkuWXrnLLk0sv4Tz6WeZiLolzDGQzZ4gYvdUbwLQZxFhugs0JBQmSsMr
	Z5GOdgoXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQCu-0003Db-Ox; Sat, 10 Aug 2019 12:10:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQCk-0003Cs-R0
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 12:10:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9251DAE1B;
 Sat, 10 Aug 2019 12:10:37 +0000 (UTC)
Subject: Re: [PATCH v3 5/7] nvme-tcp: fail command with
 NVME_SC_HOST_PATH_ERROR send failed
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
 <20190808205325.24036-6-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <f1919db0-5729-80ec-9295-ee9f82bd51b5@suse.de>
Date: Sat, 10 Aug 2019 14:10:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190808205325.24036-6-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_051039_017822_4DE600AD 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC84LzE5IDEwOjUzIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IFRoaXMgaXMgYSBtb3Jl
IGFwcHJvcHJpYXRlIGVycm9yIHN0YXR1cyBmb3IgYSB0cmFuc3BvcnQgZXJyb3IKPiBkZXRlY3Rl
ZCBieSB1cyAodGhlIGhvc3QpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNh
Z2lAZ3JpbWJlcmcubWU+Cj4gLS0tCj4gICBkcml2ZXJzL252bWUvaG9zdC90Y3AuYyB8IDIgKy0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC90Y3AuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L3Rj
cC5jCj4gaW5kZXggMmRlMzNjNGM1ZDE0Li43ZGFmMzlmMzFiMDggMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9udm1lL2hvc3QvdGNwLmMKPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC90Y3AuYwo+IEBA
IC04NDIsNyArODQyLDcgQEAgc3RhdGljIGlubGluZSB2b2lkIG52bWVfdGNwX2RvbmVfc2VuZF9y
ZXEoc3RydWN0IG52bWVfdGNwX3F1ZXVlICpxdWV1ZSkKPiAgIAo+ICAgc3RhdGljIHZvaWQgbnZt
ZV90Y3BfZmFpbF9yZXF1ZXN0KHN0cnVjdCBudm1lX3RjcF9yZXF1ZXN0ICpyZXEpCj4gICB7Cj4g
LQludm1lX3RjcF9lbmRfcmVxdWVzdChibGtfbXFfcnFfZnJvbV9wZHUocmVxKSwgTlZNRV9TQ19E
QVRBX1hGRVJfRVJST1IpOwo+ICsJbnZtZV90Y3BfZW5kX3JlcXVlc3QoYmxrX21xX3JxX2Zyb21f
cGR1KHJlcSksIE5WTUVfU0NfSE9TVF9QQVRIX0VSUk9SKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGlj
IGludCBudm1lX3RjcF90cnlfc2VuZF9kYXRhKHN0cnVjdCBudm1lX3RjcF9yZXF1ZXN0ICpyZXEp
Cj4gClJldmlld2VkLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+CgpDaGVlcnMs
CgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UgICAgICAgICAgICBUZWFtbGVhZCBTdG9y
YWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5
IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNp
YWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==
