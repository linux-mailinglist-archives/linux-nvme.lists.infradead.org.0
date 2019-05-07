Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E19B15DE5
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 09:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PaA7T4kb0eI77vK30a3Zs60bVLvYZslncdxAW4p0lyA=; b=TTPs4BXX1IFw3JqVM/PLTBKE4
	jRtc9iFZnwrBprw0pkdA2rYPFTBh6JZXWmc9H26AMpn6y8nq3uwBJzU8g58MERJeVREr6SpJi5FSh
	Q6kzPbsSXFve3s/Kfqk003WnMoIit5D2wl0L2uZlSn1qK0gsgtZjV9j1weCdUpyDaDWZmOPMmEImb
	I89uxc0GBPFOb5N9qU25CFnS/RyeScEU+/IKv6zFtBLzlzC0dI2mSszwGrYT0EPcSZFYo4AX6TFyN
	Yq9HJzbjq9VFk4SV0TH6HJ1o1ZEfezR78xXto3MlbxkQFbSGF+FGEuFnP6B9F1pYImsaDb7auEvZS
	CWgolufig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuCw-0006iC-UD; Tue, 07 May 2019 07:08:10 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuCs-0006hq-Bc
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 07:08:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 94F82AD2C;
 Tue,  7 May 2019 07:08:03 +0000 (UTC)
Subject: Re: [PATCH nvme-cli rfc 1/5] fabrics: ignore arguments that pass in
 "none"
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-2-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <7269d1a0-f93c-6026-b7b8-76cbebe6174f@suse.de>
Date: Tue, 7 May 2019 09:08:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504000456.3888-2-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_000806_543164_4E2E66E0 
X-CRM114-Status: GOOD (  18.02  )
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

T24gNS80LzE5IDI6MDQgQU0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+IEFzIHdlIHdhbnQgdG8gc3Vw
cG9ydCBkaXNjb3ZlcnkgdWV2ZW50cyBvdmVyIGRpZmZlcmVudAo+IHRyYW5zcG9ydHMsIHdlIHdh
bnQgdG8gYWxsb3cgdGhlIGtlcm5lbCB0byBwcm92aWRlIG1pc3NpbmcKPiBpbmZvcm1hdGlvbiBp
biB0aGUgZm9ybSBvZiBub25lIGFuZCBoYXZlIG52bWUtY2xpIHByb3Blcmx5Cj4gaWdub3JlIGl0
Lgo+IAo+IE9uZSBleGFtcGxlIGlzIHRoZSBob3N0X3RyYWRkci4gSWYgaXQgaXMgbm90IHNldCAo
d2hpY2ggbWVhbnMKPiB0aGF0IHRoZSBkZWZhdWx0IHJvdXRlIGRldGVybWluZWQgdGhlIGhvc3Qg
YWRkcmVzcykgd2Ugd2lsbAo+IHdhbnQgdG8gZG8gdGhlIHNhbWUgZm9yIG5ld2x5IGRpc2NvdmVy
ZWQgY29udHJvbGxlcnMuCj4gCj4gU28gYWxsb3cgdXNlcnMgdG8gcGFzcyAnbm9uZScgYXJndW1l
bnRzIGFzIHdlbGwuCj4gCj4gU2lnbmVkLW9mZi1ieTogU2FnaSBHcmltYmVyZyA8c2FnaUBncmlt
YmVyZy5tZT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBTbWFydCA8anNtYXJ0MjAyMUBnbWFpbC5j
b20+Cj4gLS0tCj4gUGF0Y2ggb3JpZ2luYXRlZCBmcm9tIFNhZ2kgaW4gYW4gUkZDCj4gRml4ZWQg
dHlwbyBpbiBTYWdpJ3MgcGF0Y2ggb24gY2ZnLmhvc3RpZAo+IC0tLQo+ICAgZmFicmljcy5jIHwg
OCArKysrLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKPiAKUmV2aWV3ZWQtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KCkNo
ZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFn
ZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1
MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6
IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAo
QUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
