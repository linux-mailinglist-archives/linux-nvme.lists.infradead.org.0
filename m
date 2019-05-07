Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D6515DEE
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 09:11:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PztGSqwdhxWspBSbkPcMurb2AAPQmqYWFccWXoaOhyc=; b=ZAB6fQPtd5U+I1SCI6KEveIAr
	Rn2e/SM2CnbWkA2ylVSw1CD3jBCN4f+y28ZBYnXJkRZnRpyT28J2N1aVIRtzpH6KeMeTZnft8aLkj
	yD/5ohRg3LANvLvEC0NzFJ58m78SLJPfwOPhXqRz5si7G0/Lk6eyswLiPQv9Iu6DGZpq/KvO+Zyyi
	70V/TErhMZ6RO9jnfHG5c3K7lqYA1szvmPS3ErZZS5KO8+jHl60JYW1uFMaz8uzCTEthhLFFDw87l
	HDY1gaY0jwW2lh87YuXoGnsuZKKX7jS4MYXuxovl/BDgSkRHHdePmHN1CRhshsyz3BZQiQ15ht1RF
	THrIa7Z7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuG4-0000Af-B7; Tue, 07 May 2019 07:11:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuFz-0000AH-16
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 07:11:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BE3BFAD93;
 Tue,  7 May 2019 07:11:17 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc 2/5] fabrics: support persistent connections
 to a discovery controller
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-3-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <7cc06c7a-530d-3807-7f31-f324df733ae8@suse.de>
Date: Tue, 7 May 2019 09:11:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504000456.3888-3-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_001119_210745_276DB3E1 
X-CRM114-Status: GOOD (  14.41  )
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
cmcgPHNhZ2lAZ3JpbWJlcmcubWU+Cj4gCj4gU2ltcGx5IGRvbid0IGRlc3Ryb3kgdGhlIGRpc2Nv
dmVyeSBjb250cm9sbGVyIGFmdGVyIGdldHRpbmcgdGhlCj4gbG9nIHBhZ2VzLiBOb3RlIHRoYXQg
cGVyc2lzdGVudCBjb25uZWN0aW9uIHRvIGEgZGlzY292ZXJ5IHN1YnN5c3RlbQo+IHJlcXVpcmUg
dG8gcGFzcyBpbiBhIG5vbi16ZXJvIGthdG8gdmFsdWUsIHNvIGlmIG5vdCBwcm92aWRlZCB3ZQo+
IHNpbXBseSB1c2UgYSBkZWZhdWx0IG9mIDMwIHNlY29uZHMga2F0by4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBTYWdpIEdyaW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+IApSZXZpZXdlZC1ieTogSGFu
bmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29tPgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFu
bmVzIFJlaW5lY2tlCQkgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2Uu
ZGUJCQkgICAgICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1h
eGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5
IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcg
bGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
