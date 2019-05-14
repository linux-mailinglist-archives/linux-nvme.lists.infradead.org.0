Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0261C6EF
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 12:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BNknbXpN3/ZbRERWec0LRgofalcYzyPPsunhTd2Ipvs=; b=QirOTfjDD37yTnFQpnheaTItt
	kGPrBV+XkY/vEaAvUScO8jmQRjyrKPf6BXRFpCh0JWshrXgw09yackrLsmBTwwaZ30mP0c42ZUxTV
	IiMaGhKJTt1QMSE83JD1ubmTbepUQZmOtg9SHMR9wcr4lPV0tbX4dg2yTDH800ySoXo3TiNa4sEwh
	5FN/LW6qWkeC1KG2WjfDeSL40jOZdENXCoqtEw8OKl4iITj5FLMsCl6eFLXaQshMye3iGXuU0rDDM
	YcR+Hpa1dl9qNpkVatNHH3PYPRnAczbZBxDfrDIgZQujlL6E4LnwSiPb5zJGzfDqMpjuIE3j2EwGs
	hjD1/0/Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUZp-00078o-4v; Tue, 14 May 2019 10:22:29 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUZj-00078O-Sg
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 10:22:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8D380AE4F;
 Tue, 14 May 2019 10:22:22 +0000 (UTC)
Subject: Re: [PATCH 6/7] lpfc: Add support for translating an RSCN rcv into a
 discovery rescan
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190513224314.24169-1-jsmart2021@gmail.com>
 <20190513224314.24169-7-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <911d2676-c34c-a479-ef23-c2ad08f53e56@suse.de>
Date: Tue, 14 May 2019 12:22:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513224314.24169-7-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_032224_074063_D7F17925 
X-CRM114-Status: GOOD (  16.53  )
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

T24gNS8xNC8xOSAxMjo0MyBBTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4gVGhpcyBwYXRjaCB1cGRh
dGVzIFJTQ04gcmVjZWl2ZSBwcm9jZXNzaW5nIHRvIGNoZWNrIGZvciB0aGUgcmVtb3RlCj4gcG9y
dCBiZWluZyBhbiBOVk1FIHBvcnQsIGFuZCBpZiBzbywgaW52b2tlIHRoZSBudm1lX2ZjIGNhbGxi
YWNrIHRvCj4gcmVzY2FuIHRoZSByZW1vdGUgcG9ydC4gIFRoZSByZXNjYW4gd2lsbCBnZW5lcmF0
ZSBhIGRpc2NvdmVyeSB1ZGV2Cj4gZXZlbnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGljayBLZW5u
ZWR5IDxkaWNrLmtlbm5lZHlAYnJvYWRjb20uY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbWVzIFNt
YXJ0IDxqc21hcnQyMDIxQGdtYWlsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvc2NzaS9scGZjL2xw
ZmNfY3J0bi5oIHwgIDIgKysKPiAgIGRyaXZlcnMvc2NzaS9scGZjL2xwZmNfZWxzLmMgIHwgIDUg
KysrKysKPiAgIGRyaXZlcnMvc2NzaS9scGZjL2xwZmNfbnZtZS5jIHwgNDQgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMyBmaWxlcyBjaGFuZ2VkLCA1MSBp
bnNlcnRpb25zKCspCj4gClJldmlld2VkLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5j
b20+CgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UJCSAgIFRlYW1sZWFk
IFN0b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZQkJCSAgICAgICAgICAgICAgICs0OSA5
MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5i
ZXJnCkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1hcnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIg
MjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW52bWUK
