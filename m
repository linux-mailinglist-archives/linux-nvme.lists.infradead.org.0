Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A6F16598
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 16:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mgYr890upWJRW+iNZ3/wxFvbUdonSKAjPitT+7o0Gic=; b=ZaKwg1k0Q2t7wm
	ne68F60pZov0+eynD3tfbZb/fGsMROQxP6raKkWrj05/UUGd8hDHU/vg0lzTPhC7EX1fUp1FYVr7S
	cY7y5YliTVIjPOMh1qgotOo/of74iiOA+W75PJmEGhKmX6wrHQ2ObPnutmrvWuSkeQvdIbBFeAc1P
	d4Xhu0L6E4cozOoW+VLi5sOAhXRw7CWC4a0ID7VahqaqdZvE0n4kMLcOrhh9IzaNir5qFuZ0zSE4F
	rTvVsD/i9+FKQm7c2tz2LrqtKkxR+sQxAlUa9lGcuzxdFfmncUpUBMw1uNWnLXWUmtNf3VRg0Oyh/
	0smXMuNZZzb3QhnlxS0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO108-0007PR-Ic; Tue, 07 May 2019 14:23:24 +0000
Received: from gateway22.websitewelcome.com ([192.185.47.206])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO104-0007OS-5G
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 14:23:21 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 1387EA933
 for <linux-nvme@lists.infradead.org>; Tue,  7 May 2019 09:23:06 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id O0zphfopOdnCeO0zphOkDZ; Tue, 07 May 2019 09:23:06 -0500
X-Authority-Reason: nr=8
Received: from [189.250.119.7] (port=36730 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.91)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hO0zo-002gy3-IJ; Tue, 07 May 2019 09:23:04 -0500
Date: Tue, 7 May 2019 09:23:00 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH] nvme-pci: mark expected switch fall-through
Message-ID: <20190507142300.GA25717@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.250.119.7
X-Source-L: No
X-Exim-ID: 1hO0zo-002gy3-IJ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [189.250.119.7]:36730
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 5
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_072320_240139_EDC96239 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.47.206 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SW4gcHJlcGFyYXRpb24gdG8gZW5hYmxpbmcgLVdpbXBsaWNpdC1mYWxsdGhyb3VnaCwgbWFyayBz
d2l0Y2gKY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2guCgpUaGlz
IHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZzoKCmRyaXZlcnMvbnZtZS9ob3N0L3Bj
aS5jOiBJbiBmdW5jdGlvbiDigJhudm1lX3RpbWVvdXTigJk6CmRyaXZlcnMvbnZtZS9ob3N0L3Bj
aS5jOjEyOTg6MTI6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1X
aW1wbGljaXQtZmFsbHRocm91Z2g9XQogICBzaHV0ZG93biA9IHRydWU7CiAgIH5+fn5+fn5+fl5+
fn5+fgpkcml2ZXJzL252bWUvaG9zdC9wY2kuYzoxMjk5OjI6IG5vdGU6IGhlcmUKICBjYXNlIE5W
TUVfQ1RSTF9DT05ORUNUSU5HOgogIF5+fn4KCldhcm5pbmcgbGV2ZWwgMyB3YXMgdXNlZDogLVdp
bXBsaWNpdC1mYWxsdGhyb3VnaD0zCgpUaGlzIHBhdGNoIGlzIHBhcnQgb2YgdGhlIG9uZ29pbmcg
ZWZmb3J0cyB0byBlbmFibGUKLVdpbXBsaWNpdC1mYWxsdGhyb3VnaC4KClNpZ25lZC1vZmYtYnk6
IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9AZW1iZWRkZWRvci5jb20+Ci0tLQogZHJpdmVy
cy9udm1lL2hvc3QvcGNpLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L3BjaS5jIGIvZHJpdmVycy9udm1lL2hvc3Qv
cGNpLmMKaW5kZXggM2U0ZmI4OTFhOTVhLi5hMTJmOTkyODY4YzkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvbnZtZS9ob3N0L3BjaS5jCisrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L3BjaS5jCkBAIC0xMjk2
LDYgKzEyOTYsNyBAQCBzdGF0aWMgZW51bSBibGtfZWhfdGltZXJfcmV0dXJuIG52bWVfdGltZW91
dChzdHJ1Y3QgcmVxdWVzdCAqcmVxLCBib29sIHJlc2VydmVkKQogCXN3aXRjaCAoZGV2LT5jdHJs
LnN0YXRlKSB7CiAJY2FzZSBOVk1FX0NUUkxfREVMRVRJTkc6CiAJCXNodXRkb3duID0gdHJ1ZTsK
KwkJLyogZmFsbCB0aHJvdWdoICovCiAJY2FzZSBOVk1FX0NUUkxfQ09OTkVDVElORzoKIAljYXNl
IE5WTUVfQ1RSTF9SRVNFVFRJTkc6CiAJCWRldl93YXJuX3JhdGVsaW1pdGVkKGRldi0+Y3RybC5k
ZXZpY2UsCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1udm1lCg==
