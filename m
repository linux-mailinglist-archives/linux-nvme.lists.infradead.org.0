Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CCD1C6DA
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 12:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oOCitTe+TQ4NTY9H0CpDoqTH+DukRkYiO0ewanqiOrQ=; b=JWOhQQTs6ew9QB6J3jCLsHl7A
	K3d+xsok+cJSNN/lyf4NG0poxGvX9Ao2iAPGHz1wmi6RnXvSaPpr6avXB0a7d3NUPg39DoG3Y+QxD
	GmSWFpsM4+J9i5Nta/o/tNBmntQH4wj65Rx/ozPb6llpX69lNiJ4LfFInyndpTOk6jlUlp8zl3xx8
	RSwavJasGQ6y/Jqd1ZOBej5y2qrZF6WmcqN11WVHdayo9bXcBw6Pl5zjAj1ErOtl3bb7UGxEPLhZz
	isG8fFReLFAyfu0c35I2oFPDDBGvi6tFjr+I9JlrrxEb/uLO+ysM3E9tXeRpNyFyfysqaV74mZ6M5
	wrCU+3GXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUVD-0004in-UP; Tue, 14 May 2019 10:17:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUV8-0004i7-Bg
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 10:17:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1CC2CAE43
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 10:17:37 +0000 (UTC)
Subject: Re: [PATCH 2/7] nvmet_fc: add transport discovery change event
 callback support
To: linux-nvme@lists.infradead.org
References: <20190513224314.24169-1-jsmart2021@gmail.com>
 <20190513224314.24169-3-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <63cca277-f3f8-7c86-c9ea-8ea7fdf76671@suse.de>
Date: Tue, 14 May 2019 12:17:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513224314.24169-3-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_031738_545221_543F228B 
X-CRM114-Status: GOOD (  16.45  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xNC8xOSAxMjo0MyBBTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRz
IHN1cHBvcnQgZm9yIHRoZSBudm1ldCBkaXNjb3ZlcnlfY2hhbmdlIHRyYW5zcG9ydCBvcC4KPiBJ
biB0dXJuLCB0aGUgdHJhbnNwb3J0IGFkZHMgaXQncyBvd24gTExERCBhcGkgY2FsbGJhY2sgZGlz
Y292ZXJ5X2V2ZW50Cj4gb3AgdG8gcmVxdWVzdCB0aGUgTExERCB0byBnZW5lcmF0ZSBhbiBSU0NO
IGZvciB0aGUgZGlzY292ZXJ5IGNoYW5nZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBTbWFy
dCA8anNtYXJ0MjAyMUBnbWFpbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL252bWUvdGFyZ2V0L2Zj
LmMgICAgICAgfCAxMSArKysrKysrKysrKwo+ICAgaW5jbHVkZS9saW51eC9udm1lLWZjLWRyaXZl
ci5oIHwgIDYgKysrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPiAK
UmV2aWV3ZWQtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KCkNoZWVycywKCkhh
bm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdv
cmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VT
RSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IElt
ZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5i
ZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
