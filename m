Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B8C16F41E
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Feb 2020 01:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5dohCTJIdZOW73yHYE+9YxLFyGsilFwK8YuNdagIi3E=; b=p0QCFEPV7nRdVmUgot6I9i6P5
	JAtLN20LjCt6kIh9vqbLOOuW8hmVdojtRQsspFtg174BI0UZCMCyYzIif57xdaKONHaKGM4kdT9h9
	uq7OaVezKH//m8nbpEIQLnSphLNGZ9IMJl8WPbxo4l8pCblu5gIsi9cPPcmyd5/RRKBNLfa866PIJ
	rEBSf9IeYB4F5xduFRy2T34eUxP8scXOQkmi2HfsV9/R2XosIPc97rK8ewtvH+8PTkInrJ30N1YEj
	4acJUcqyuqQdSjBnJxzaYvKmNm4JQrVJ71ZrVzCauoR0fciYaOK+L3FQyJOK9u+g70Io1lRGKlbZJ
	zVA2gwJBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kLo-0005Pd-3R; Wed, 26 Feb 2020 00:14:56 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kLj-0005PH-Q9
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 00:14:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1EC33ABF4;
 Wed, 26 Feb 2020 00:14:50 +0000 (UTC)
Subject: Re: [PATCH RFC] nvme/fc: sq flow control
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@wdc.com>
References: <20200225235956.28475-1-hare@suse.de>
 <d1aabd1c-dd2a-df7e-3735-dd36c3f1c53f@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <3611ba73-0d9d-a7ed-356b-bb856711a27c@suse.de>
Date: Wed, 26 Feb 2020 01:14:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <d1aabd1c-dd2a-df7e-3735-dd36c3f1c53f@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_161451_997518_D6488785 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 John Meneghini <john.meneghini@netapp.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMi8yNi8yMCAxOjA4IEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+PiBBcyBwZXIgTlZN
ZS1vRiBzcGVjIHNxIGZsb3cgY29udHJvbCBpcyBhY3R1YWxseSBtYW5kYXRvcnksIGFuZCB3ZSBz
aG91bGQKPj4gYmUgaW1wbGVtZW50aW5nIGl0IHRvIGF2b2lkIHRoZSBjb250cm9sbGVyIHRvIHJl
dHVybiBhIGZhdGFsIHN0YXR1cwo+PiBlcnJvciwgYW5kIHRyeSB0byBwbGF5IG5pY2VseSB3aXRo
IGNvbnRyb2xsZXJzIHVzaW5nIHNxIGZsb3cgY29udHJvbAo+PiB0byBpbXBsZW1lbnQgUW9TLgo+
IAo+IFdoeSBpcyB5b3VyIHRhcmdldCBzZXR0aW5nIFNRIGZsb3cgY29udHJvbCBkaXNhYmxlIGlu
IHRoZSBkaXNjb3ZlcnkKPiBsb2cgZW50cnkgdHJlcSBmaWVsZD8gV2UgYXJlIG5vdCBzdXBwb3Nl
ZCB0byBkbyBpdCBpZiB0aGUgTlZNIHN1YnN5c3RlbQo+IGRvZXNuJ3Qgc3VwcG9ydCBpdC4KRGlk
IEkgc2F5IHRoaXM/IEkgd2Fzbid0IGF3YXJlIHRoYXQgSSBkaWQgaW1wbHkgdGhhdCBpbiBhbnkg
d2F5LgpJJ20ganVzdCB1c2luZyB0aGUgZmxhZyB0byBmaWd1cmUgb3V0IGlmIHNxIGZsb3cgY29u
dHJvbCBpcyBkaXNhYmxlZCBvciBub3QuCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMg
UmVpbmVja2UgICAgICAgICAgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1
c2UuZGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VT
RSBTb2Z0d2FyZSBTb2x1dGlvbnMgR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJn
CkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKSwgR2VzY2jDpGZ0c2bDvGhyZXI6IEZlbGl4IEltZW5k
w7ZyZmZlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
