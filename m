Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A42988B38
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 14:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wF4G0VaqI+jjfgHGGKbXCdjhKN8q6SyqPxYsxqSzK3E=; b=Tm73AMRmWZDXyJa5tUs4WyH/q
	IgDHMVnqB9ZxHG3319tC7drm/mOpdBBzau20+l0825/WmQKWawZ6Egkw742svXMM5xGq3PTiaSiPF
	Jxf2brwli56FqfE9k+T9xiqyyouwmknLSFu6xFNAp33Mc8J3wNAsOADa09rFHcw4YkWyHgJhSBUnk
	ytmqExpqJmhoBb/vJRH4Q4TNp9wCB43P4NK+3zrqWlCYP/8B8srv37XawT2Ff6gveJ999fMVYw7zK
	QDbU5lRja49zr8t6yW1EnuF3GGxiTEyVgWWb9ibf3fPGZPBIgPj/x1W4q5QCQfcsYwuoKv2bRWpFT
	bmnDHmQWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQDJ-0003Ov-4b; Sat, 10 Aug 2019 12:11:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQD7-0003ON-To
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 12:11:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A8A8BACB7;
 Sat, 10 Aug 2019 12:11:00 +0000 (UTC)
Subject: Re: [PATCH v3 6/7] nvme-fc: Fail transport errors with
 NVME_SC_HOST_PATH
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190808205325.24036-1-sagi@grimberg.me>
 <20190808205325.24036-7-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <6d1b8c1e-27b0-1701-3ec1-c0f314d12886@suse.de>
Date: Sat, 10 Aug 2019 14:11:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190808205325.24036-7-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_051102_101235_F7496DDE 
X-CRM114-Status: GOOD (  16.34  )
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

T24gOC84LzE5IDEwOjUzIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IEZyb206IEphbWVzIFNt
YXJ0IDxqYW1lcy5zbWFydEBicm9hZGNvbS5jb20+Cj4gCj4gTlZNRV9TQ19JTlRFUk5BTCBzaG91
bGQgaW5kaWNhdGUgYW4gaW50ZXJuYWwgY29udHJvbGxlciBlcnJvcnMKPiBhbmQgbm90IGhvc3Qg
dHJhbnNwb3J0IGVycm9ycy4gVGhlc2UgZXJyb3JzIHdpbGwgcHJvcGFnYXRlIHRvCj4gdXBwZXIg
bGF5ZXJzIChlc3NlbnRpYWxseSBudm1lIGNvcmUpIGFuZCBiZSBpbnRlcnBlcmV0ZWQgYXMKPiB0
cmFuc3BvcnQgZXJyb3JzIHdoaWNoIHNob3VsZCBub3QgYmUgdGFrZW4gaW50byBhY2NvdW50IGZv
cgo+IG5hbWVzcGFjZSBzdGF0ZSBvciBjb25kaXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogU2Fn
aSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KPiAtLS0KPiAgIGRyaXZlcnMvbnZtZS9ob3N0
L2ZjLmMgfCAzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKUmV2aWV3ZWQt
Ynk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KCkNoZWVycywKCkhhbm5lcwotLSAK
RHIuIEhhbm5lcyBSZWluZWNrZSAgICAgICAgICAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3Jr
aW5nCmhhcmVAc3VzZS5kZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICs0OSA5MTEgNzQw
NTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdG
OiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQg
KEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52
bWUK
