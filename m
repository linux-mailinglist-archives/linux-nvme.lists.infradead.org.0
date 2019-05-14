Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867941C6E9
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 12:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ShNSv0YxUkvBGkepJwyoeBEFaKxvv3sSpVRdfvAJUwM=; b=lHHWOY/6AZUIpEEkyx8cTqbul
	N/vd0zopvC0wA+BN2qiXreYP2z0Hvr2IAvNSo9Z7Z5rv3qHfo9B+JipgWNFrqB4aOpOZDX9SreEkz
	EvHLZuPOtnIUG25LmsrIOlevGmYOtL1RAWcViZEC/+W/TNK+OQbcNtfAGoT2DFctZSws8xItuPdnd
	0vre8b4SSHkWdloeGtrbzV1nezv5mUt6RO07fbJKNCWqzPi65RWMvYr+2XZ6MYaDLo6C+NC8CYcGx
	yeXKb7LbtFJEqMu6FW4ktOCorz41VXstUqhDnMPzTDUwQcOeKCVaJFZgZwQzMaQTH/HcpM+YaMXTq
	7xwoNQXYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUY1-0006rH-LM; Tue, 14 May 2019 10:20:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUXw-0006qr-JB
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 10:20:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 57550AE43;
 Tue, 14 May 2019 10:20:31 +0000 (UTC)
Subject: Re: [PATCH 5/7] lpfc: add nvmet discovery_event op support
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190513224314.24169-1-jsmart2021@gmail.com>
 <20190513224314.24169-6-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <640482f3-059a-ab06-fe71-8d0fe4db1ba5@suse.de>
Date: Tue, 14 May 2019 12:20:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513224314.24169-6-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_032032_777799_EC16F0F0 
X-CRM114-Status: GOOD (  16.71  )
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
Cc: Dick Kennedy <dick.kennedy@broadcom.com>, martin.petersen@oracle.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xNC8xOSAxMjo0MyBBTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRz
IHN1cHBvcnQgZm9yIHRoZSBudm1ldCBkaXNjb3Zlcnkgb3AuIFdoZW4gdGhlIGNhbGxiYWNrCj4g
cm91dGluZSBpcyBjYWxsZWQsIHRoZSBkcml2ZXIgd2lsbCBjYWxsIHRoZSByb3V0aW5lIHRvIGdl
bmVyYXRlIGFuIFJTQ04KPiB0byB0aGUgcG9ydCBvbiB0aGUgb3RoZXIgZW5kIG9mIHRoZSBsaW5r
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IERpY2sgS2VubmVkeSA8ZGljay5rZW5uZWR5QGJyb2FkY29t
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBTbWFydCA8anNtYXJ0MjAyMUBnbWFpbC5jb20+
Cj4gLS0tCj4gICBkcml2ZXJzL3Njc2kvbHBmYy9scGZjX252bWV0LmMgfCAxNyArKysrKysrKysr
KysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPiAKUmV2aWV3ZWQt
Ynk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KCkNoZWVycywKCkhhbm5lcwotLSAK
RHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFy
ZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBH
bWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZl
ciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBt
YWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
