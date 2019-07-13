Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2C9678F3
	for <lists+linux-nvme@lfdr.de>; Sat, 13 Jul 2019 09:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FjxD0Mdf7t2Y18ltbKPm8xmVD6TVlqvbzl2dGpe19AE=; b=o9LAxIZn1ir1862SbmFco3WL1
	5vjaVcRfKkt3nehMoITVwM0KUqkifTvD4qfY3QX63IKmmdKyeozS7ClDSmIRVGNLjN0cbCyj9ZSz1
	r8NZnF0DcIsppDDxtB5nhzmBCrF0f3n+DQsPYEfnVbSOFpvkxi9gaQEwu1vJXlHDZA/XGq8JPIbWM
	iKf1RPMX0XXaT3vCteSgC2Vk7LJ5UH88Yb5deIq9K24VPtdMISfpYTx0qnpoosacrjgeiUDfGsCjR
	fXldk/Uixu24h1wkxm6rHQYr2nZtEgVb0oMQIrYlGFJfudxColnqRHhqXLvrYuYEZQ2x312YdWkMV
	rNR9fDhVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmC9v-00031L-4x; Sat, 13 Jul 2019 07:09:27 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmC9m-00030g-JA
 for linux-nvme@lists.infradead.org; Sat, 13 Jul 2019 07:09:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D42A3AB87;
 Sat, 13 Jul 2019 07:09:14 +0000 (UTC)
Subject: Re: [PATCH] nvme-vendor: fix c99 declarations in vendor plugins
To: Simon Schricker <sschricker@suse.de>, linux-nvme@lists.infradead.org
References: <20190712153457.13877-1-sschricker@suse.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <d1bbc2ed-0b84-4be8-0d0d-055260877c21@suse.de>
Date: Sat, 13 Jul 2019 09:09:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712153457.13877-1-sschricker@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_000918_779378_C59FD63A 
X-CRM114-Status: GOOD (  13.62  )
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
Cc: keith.busch@intel.com, sagi@grimberg.me
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8xMi8xOSA1OjM0IFBNLCBTaW1vbiBTY2hyaWNrZXIgd3JvdGU6Cj4gV2UgY2FuJ3QgdXNl
IGM5OSBkZWNsYXJhdGlvbnMgd2l0aCBvbGRlciBjb21waWxlcnMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogU2ltb24gU2Nocmlja2VyIDxzc2Nocmlja2VyQHN1c2UuZGU+Cj4gLS0tCj4gICBwbHVnaW5z
L21pY3Jvbi9taWNyb24tbnZtZS5jICAgfCAzICsrLQo+ICAgcGx1Z2lucy90b3NoaWJhL3Rvc2hp
YmEtbnZtZS5jIHwgOSArKysrKystLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQo+IE9uZSBzaG91bGQgYmUgZG9pbmcgYSB3aGl0ZXNwYWNlIGNs
ZWFudXAgb24gdGhvc2UsIGJ1dCBvdGhlcndpc2U6CgpSZXZpZXdlZC1ieTogSGFubmVzIFJlaW5l
Y2tlIDxoYXJlQHN1c2UuY29tPgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5l
Y2tlICAgICAgICAgICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRl
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5V
WCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7Zy
ZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
