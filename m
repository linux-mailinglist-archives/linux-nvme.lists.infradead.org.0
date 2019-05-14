Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1253F1C6F6
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 12:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jUdbUwBqjFAqrJe4dPvG1jEBS8EOkq+syGr1hFhmctA=; b=jE3KsTeYRmNnCUGcel0RCrOjb
	gcjRWNPNvSbMD8KktVyyqfyWoLItwz3XP4DdLDW4n3AAkfyCyMBB3u6qX5p2njGiIJz5KLtTD7rpF
	k15UyfGkU9OPYkeMaSyS+CloCRDUlRRSLzNjGdka36qUA5l9MxugiYZoETYjS1tt/loWcSPkzu+C7
	tej6E0yrGAD9sdknJU+IaukDZAhNv66Em2W1IPyLw9DzEvMdhpWPut4Khn2bE+b353yrSmDco8bfq
	98TzdXT1OHxEH5fl3dyLisAFPKbWd+gEOnffrA85sLF3Uu+k+8aatMwnjjsKD+mO6b3ARDaftv5/O
	8AxjGH4Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUaQ-0007Y4-7b; Tue, 14 May 2019 10:23:06 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUaK-0007X8-Gb
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 10:23:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4431AAE4F;
 Tue, 14 May 2019 10:22:59 +0000 (UTC)
Subject: Re: [PATCH 7/7] lpfc: Add sysfs interface to post NVME RSCN
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190513224314.24169-1-jsmart2021@gmail.com>
 <20190513224314.24169-8-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <aee5b973-fd34-62ac-5f07-de0653229d5f@suse.de>
Date: Tue, 14 May 2019 12:22:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513224314.24169-8-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_032300_696386_47D2B573 
X-CRM114-Status: GOOD (  16.17  )
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

T24gNS8xNC8xOSAxMjo0MyBBTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4gVG8gc3VwcG9ydCBzY2Vu
YXJpb3Mgd2hpY2ggYXJlbid0IGJvdW5kIHRvIG52bWV0Y2xpIGFkZCBwb3J0IHNjZW5hcmlvcywK
PiB3aGljaCBpcyBjdXJyZW50bHkgd2hlcmUgdGhlIG52bWV0X2ZjIHRyYW5zcG9ydCBpbnZva2Vz
IHRoZSBkaXNjb3ZlcnkKPiBldmVudCBjYWxsYmFja3MsIGEgc3lmcyBhdHRyaWJ1dGUgaXMgYWRk
ZWQgdG8gbHBmYyB3aGljaCBjYW4gYmUgd3JpdHRlbgo+IHRvIGNhdXNlIGFuIFJTQ04gdG8gYmUg
Z2VuZXJhdGVkIGZvciB0aGUgbnBvcnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGljayBLZW5uZWR5
IDxkaWNrLmtlbm5lZHlAYnJvYWRjb20uY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbWVzIFNtYXJ0
IDxqc21hcnQyMDIxQGdtYWlsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvc2NzaS9scGZjL2xwZmMu
aCAgICAgIHwgIDEgKwo+ICAgZHJpdmVycy9zY3NpL2xwZmMvbHBmY19hdHRyLmMgfCA2MCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAyIGZpbGVzIGNoYW5n
ZWQsIDYxIGluc2VydGlvbnMoKykKPiAKUmV2aWV3ZWQtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFy
ZUBzdXNlLmNvbT4KCkNoZWVycywKCkhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAg
VGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAg
ICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQw
OSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFz
aWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbnZtZQo=
