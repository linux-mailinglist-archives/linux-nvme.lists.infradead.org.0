Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A9D2D19B
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 00:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wenVoYHzNuW3ouri6k0EG+NbS08BmiuH3V3loXC9c2k=; b=kgJJ19+GfnRrH+rqucGvkDiG7
	x6kFyM5XgduFp3aRmReDzcRlZt5IGStXUPnAiyhc/p1MuhiVtVucQV3Dn6fF0aEDH+JaKoEtyRsbl
	lpIEMUcjiPSpxzICdAjGt+3jeLTnyA3OcmyTSnEIkQwQaC7GYznlAQ6a4fLJeiaYsq0yPL+JOzJJS
	9iuVlBMMkUDX6PkAQ76wJidOGZmtW+QeNFDcapCxDpBZpcJKThf57tp3G0eQVVDRhPsSJuZqjA7oA
	GVVykOV/HnNl0dxg+11pBJ4tR7toNAt5zehXFgfOOyBUvc6/Bu83MQufO0Ggt/g+9oIZseZohrrbG
	4ldykGpXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVkeK-00088d-Ta; Tue, 28 May 2019 22:32:52 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVkeF-00088G-EP
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 22:32:48 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 15:32:46 -0700
Received: from unknown (HELO [10.232.112.165]) ([10.232.112.165])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 28 May 2019 15:32:46 -0700
Subject: Re: [PATCH] nvme: Ignore timeouts while PCI config access is blocked
To: Sagi Grimberg <sagi@grimberg.me>, kbusch@kernel.org, hch@lst.de,
 axboe@fb.com
References: <20190523231429.21235-1-kenneth.heitke@intel.com>
 <99e76784-ce68-c053-9fde-d035d77f11d3@grimberg.me>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <18209f57-0c8a-dfa8-af31-7f33ec3cfc0c@intel.com>
Date: Tue, 28 May 2019 16:32:45 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <99e76784-ce68-c053-9fde-d035d77f11d3@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_153247_500835_B302C72E 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzI0LzIwMTkgMTI6MzUgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gCj4+IMKgIHN0
YXRpYyB2b2lkIG52bWVfcmVzZXRfZG9uZShzdHJ1Y3QgcGNpX2RldiAqcGRldikKPj4gwqAgewo+
PiDCoMKgwqDCoMKgIHN0cnVjdCBudm1lX2RldiAqZGV2ID0gcGNpX2dldF9kcnZkYXRhKHBkZXYp
Owo+PiAtwqDCoMKgIG52bWVfcmVzZXRfY3RybF9zeW5jKCZkZXYtPmN0cmwpOwo+PiArwqDCoMKg
IG52bWVfcmVzZXRfY3RybCgmZGV2LT5jdHJsKTsKPiAKPiBUaGlzIGNoYW5nZSBpcyBub3QgZXhw
bGFpbmVkIGluIHRoZSBjaGFuZ2UgbG9nLiBUaGlzIG9wZW5zIGEgd2luZG93Cj4gZm9yIG52bWVf
cmVzZXRfd29yayB0byBydW4gY29uY3VycmVudGx5IGZyb20gZGlmZmVyZW50IGNvbnRleHRzIHdo
aWNoCj4gaXMgbm90IGEgZ29vZCBpZGVhLi4uCgpJIHRoaW5rIEtlaXRoIHJlY29tbWVuZGVkIHRo
ZSBhc3luY2hyb25vdXMgcmVzZXQKCiJEZWZpbml0ZWx5IG5lZWQgdGhlIG52bWVfcmVzZXRfY3Ry
bCBjaGFuZ2UgYXMgYmxrX2NmZ19hY2Nlc3MgaXMgc3RpbGwKc2V0IGhlcmUgc28gbmVlZCB0byBy
ZXNldCBhc3luY2hyb25vdXNseSB0byB1bmJsb2NrIG5ldyB0aW1lb3V0cyIKCktlaXRoLCBkb2Vz
IHRoaXMgc3RpbGwgaG9sZCB0cnVlIG9yIGRvIEkgbmVlZCBzb21lIG90aGVyIG1lY2hhbmlzbSB0
byAKYXZvaWQgdGhlIGlzc3VlcyB0aGF0IFNhZ2kgaXMgY29uY2VybmVkIGFib3V0PwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
