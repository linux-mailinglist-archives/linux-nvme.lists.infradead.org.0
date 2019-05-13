Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2741B05F
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 08:37:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jg0Dy7HlzXD/fBlOba5s67bGRJqVcis71PRMwTwoBVE=; b=gGbe1rz4K+E+FY1MlUTff/zly
	2XlSbF+X87x/7Z5yEVPkTHPOgbkYMQjb4NQXscCApIRSaLhrtIlJr7fG37xIxx01hnIuPyMi3pa42
	57JFalTuODhDjExEnG743LKOpPyU4c1fq3kY64hccTfSsS1BfrdvnwbQ7rUFQHjTzdapK8sCPrYDD
	15FZAHJKKJ0yiVK64GNFTEETasTLY+Fy1zenF7JUFPYyW8Ijw3p/0gWbnin4ZqBZWr9JTJM60WUbq
	WuhmudrHeorxNwfjbWFns8OcCZ+84UvuHTtm8gm7oCe+eS0TPw1fVSc+5kgdxFWd/eJF1GC54RJtn
	Rzoaip6LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4a6-0007C1-7u; Mon, 13 May 2019 06:37:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4a0-0007BZ-SU
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 06:36:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9DF45AD8B;
 Mon, 13 May 2019 06:36:55 +0000 (UTC)
Subject: Re: [PATCH 2/2] nvme: validate cntlid during controller initialisation
To: Christoph Hellwig <hch@lst.de>
References: <20190513062510.756-1-hch@lst.de> <20190513062510.756-3-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <4890b5c7-6a6d-95eb-f0d8-f29c978fdb81@suse.de>
Date: Mon, 13 May 2019 08:36:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513062510.756-3-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_233657_060568_38407E4C 
X-CRM114-Status: GOOD (  16.93  )
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xMy8xOSA4OjI1IEFNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiBUaGUgQ05UTElE
IHZhbHVlIGlzIHJlcXVpcmVkIHRvIGJlIHVuaXF1ZSwgYW5kIHdlIGRvIHJlbHkgb24gdGhpcwo+
IGZvciBjb3JyZWN0IG9wZXJhdGlvbi4gU28gcmVqZWN0IGFueSBjb250cm9sbGVyIGZvciB3aGlj
aCBhIG5vbi11bmlxdWUKPiBDTlRMSUQgaGFzIGJlZW4gZGV0ZWN0ZWQuCj4gCj4gQmFzZWQgb24g
YSBwYXRjaCBmcm9tIEhhbm5lcyBSZWluZWNrZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rv
cGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KPiAtLS0KPiAgIGRyaXZlcnMvbnZtZS9ob3N0L2NvcmUu
YyB8IDQxICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKPiAKUmV2aWV3ZWQt
Ynk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KCkNoZWVycywKCkhhbm5lcwotLSAK
RHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFy
ZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBH
bWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZl
ciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBt
YWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
