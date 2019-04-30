Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA818F187
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 09:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wPDUZHm4G4kkn1q2VSRixDvCpaAl10WnIYG5KLIv70E=; b=eSaVXvLRAkOCqcM24/Qn2tIoi
	8uVaG8zwXnBoJzxmij/OPBdMiGzyl8lIm/UC5UTjUU54dkmHtth8J2jZjULDtbLCp6TqEKdj1QgrD
	vM2yS71VoZULUAVAmum7pr9kI60/Hbgq+k6Lkyx/Kjaccy+JI9rQgsqLq4eZoPRaAujd6fqgGO71L
	xs2sTim/oZl04DMCLFNv/rm0GAHKPWNbAR+whfT/XfgA4ojnuALZMGSaiYqap4uGQ5RZ31dW34xWo
	urtrxXULaFotgej0EUhj3G9L/w6J/4tZnLrPTCRNfvyQ2HqvTQc5E+Nf55o1pNGRNLUo4nkw/m7Wk
	Nh2j3YG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNNF-0001yi-Bq; Tue, 30 Apr 2019 07:40:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNNB-0001yH-0l
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 07:40:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 55F28ABD5;
 Tue, 30 Apr 2019 07:40:15 +0000 (UTC)
Subject: Re: [PATCH nvme-cli] nvme_fc auto-connect scripts
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@intel.com>
References: <20190430064359.24905-1-hare@suse.de>
 <79a99c17-8f2d-3b44-057a-38c9d9e5c85e@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <bc7f1739-0a3a-4b19-fcca-6852d62268d8@suse.de>
Date: Tue, 30 Apr 2019 09:40:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <79a99c17-8f2d-3b44-057a-38c9d9e5c85e@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_004017_208248_FE21229C 
X-CRM114-Status: GOOD (  14.93  )
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
Cc: Hannes Reinecke <hare@suse.com>, Simon Schricker <sschricker@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNC8zMC8xOSA5OjE1IEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IEhhbm5lcywKPiAKPiBJ
IGFkZGVkIHRoZXNlIHRvIHRoZSBkaXNjb3ZlcnkgbG9nIGNoYW5nZSBzdHVmZiwgd2hpY2gKPiBt
YWtlcyBudm1lLWZjLWF1dG9jb25uZWN0IHNlcnZpY2UgYSB1bmlmaWVkIHNlcnZpY2Ugbm90IGp1
c3QgZm9yCj4gRkMuIEkgdGhvdWdodCB5b3UgaGFkIGEgbG9vayBhdCB0aGUgc2VyaWVzLgoKVGhl
cmUgaGFkIGJlZW4gc29tZSBmaXhlcyB0byBpdCAobmFtZWx5IGNoYW5naW5nIGl0IHRvIGEgJ3Np
bXBsZScgCnNlcnZpY2UgaW5zdGVhZCBvZiAnb25lc2hvdCcsIGFuZCBhZGRpbmcgYW4gbnZtZWZj
LWNvbm5lY3QudGFyZ2V0IHRvIApzdG9wIGFsbCBydW5uaW5nIGluc3RhbmNlcykuClNvIEkndmUg
anVzdCBwb3N0ZWQgaXQgaGVyZSBmb3IgY29tcGxldGVuZXNzOyBJJ3ZlIGZvdW5kIGl0IHJhdGhl
ciB3ZWlyZCAKc2VuZGluZyBhIHBhdGNoIHRvIGEgbm9uLW1lcmdlZCBwYXRjaHNldC4KRG8gZmVl
bCBmcmVlIHRvIGluY2x1ZGUgaXQgaW4geW91ciBwYXRjaHNldC4KCkNoZWVycywKCkhhbm5lcwot
LSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcK
aGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5V
WCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7Zy
ZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
