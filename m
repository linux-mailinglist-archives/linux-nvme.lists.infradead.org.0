Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A576E6D0
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 15:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gC9rCjHPGjl0/wido6ClTKbjVFIerxdI5rEnLZvSr4s=; b=k+zY85rObL+tbIo3Vr3l//mKi
	omyqHXxYr4fkYSTVb9c5updRnj4IpyGPZCimSS1Kn25/pd6ufrHTNSLvzpiEfKheIL29kanSIGV9S
	vC8q11MZ1XDGGEXHomxAywqd8oBBCVJDSXPYJPBB3LvNL3/RcLxEr+R6F+N3dTrqPwz/djDi/Gkjs
	cJ3d7uMrGOlYRN5ufxP4EX2ivJ0qMsbm72TIGPh+uMrhcujlAUqsDWZKO7WQNJx1V0vXQRR2yy0tM
	u9/9nzmrBFYJmVeeGSpbw3Kgp3czSkloMCbuOUBahVbBeXr8M/jeoaD8xRgo7UZMn4QB0ut4gUrxJ
	wj4V5VsYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoTFt-0001OX-SS; Fri, 19 Jul 2019 13:49:02 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoTFf-0001O4-47
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 13:48:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6083EAD05;
 Fri, 19 Jul 2019 13:48:45 +0000 (UTC)
Subject: Re: [PATCH v2 1/3] nvme-fabrics: allow discovery subsystems accept a
 kato
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-2-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <ed3d604d-5a35-4508-8361-41aafaf2bc1d@suse.de>
Date: Fri, 19 Jul 2019 15:48:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712180211.26333-2-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_064847_315125_5FDC2F7F 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

T24gNy8xMi8xOSA4OjAyIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IFRoaXMgbW9kaWZpZXMg
dGhlIGJlaGF2aW9yIG9mIGRpc2NvdmVyeSBzdWJzeXN0ZW1zIHRvIGFjY2VwdAo+IGEga2F0byBh
cyBhIHByZXBhcmF0aW9uIHRvIHN1cHBvcnQgZGlzY292ZXJ5IGxvZyBjaGFuZ2UKPiBldmVudHMu
IFRoaXMgYWxzbyBtZWFucyB0aGF0IG5vdyBldmVyeSBkaXNjb3ZlcnkgY29udHJvbGxlcgo+IHdp
bGwgaGF2ZSBhIGRlZmF1bHQga2F0byB2YWx1ZSwgYW5kIGZvciBub24tcGVyc2lzdGVudCBjb25u
ZWN0aW9ucwo+IHRoZSBob3N0IG5lZWRzIHRvIHBhc3MgaW4gYSB6ZXJvIGthdG8gdmFsdWUgKGtl
ZXBfYWxpdmVfdG1vPTApLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lA
Z3JpbWJlcmcubWU+Cj4gLS0tCj4gICBkcml2ZXJzL252bWUvaG9zdC9mYWJyaWNzLmMgfCAxMiAr
Ky0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEwIGRlbGV0
aW9ucygtKQo+IApSZXZpZXdlZC1ieTogSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29tPgoK
Q2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlICAgICAgICAgICAgVGVhbWxl
YWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1
LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBT
cmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbnZtZQo=
