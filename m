Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBE9D2DD2
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 17:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCVoQfZmTXKYdmfrdgH4BNE+OkgEqCObfdDPIEDResQ=; b=VUgpvmoIpCciii
	3Jxjl7goZgTiSaVueumKV5yexxngC/gBjPIozTkw83O6Tb5zlITE80S7KmJYj+nVCQ8875jD4nfq4
	ewd2ieiOk80ohqx849aKL4+aHVy1TB03Hi8c7nT6NFpjr0xg9rflxOgVzx53sM5pGwUUsssSZoFNz
	cUQEqHCqX7oKCES1TvbCMmuaMWfE0KJuwcb9RcIa1Kc/B7SMiXK2xT8L/BLgb7UFZDiexLTAfRb/j
	EI+9+Gq8nynOrnrYzBZiW/bjE3KHzPurjXDnz/K4XOHsKsX9mBnXHKiK9JBZa4sb4ZzXfqZZ/qq3z
	fzq1A5X2z1f2rn5c9ezA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIaSI-00078U-Tr; Thu, 10 Oct 2019 15:34:18 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIaSE-000785-6y
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 15:34:15 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iIaSC-0004Ej-2C; Thu, 10 Oct 2019 17:34:12 +0200
Date: Thu, 10 Oct 2019 17:34:12 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v2] nvme-tcp: Initialize sk->sk_ll_usec only with
 NET_RX_BUSY_POLL
Message-ID: <20191010153411.6uetttizkto6rv65@linutronix.de>
References: <20191010150622.reqmasxgavug4amm@linutronix.de>
 <20191010150719.GA617@lst.de>
 <20191010151023.gru6fhrhy7gxxwye@linutronix.de>
 <20191010151444.GA638@lst.de>
 <20191010152924.jlr53aunkj7de5js@linutronix.de>
 <20191010152958.GA1057@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010152958.GA1057@lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_083414_396504_05818C75 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 tglx@linutronix.de, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

VGhlIGFjY2VzcyB0byBzay0+c2tfbGxfdXNlYyBzaG91bGQgYmUgaGlkZGVuIGJlaGluZApDT05G
SUdfTkVUX1JYX0JVU1lfUE9MTCBsaWtlIHRoZSBkZWZpbml0aW9uIG9mIHNrX2xsX3VzZWMuCgpQ
dXQgYWNjZXNzIHRvIC0+c2tfbGxfdXNlYyBiZWhpbmQgQ09ORklHX05FVF9SWF9CVVNZX1BPTEwu
CgpGaXhlczogMWE5NDYwY2VmNTcxMSAoIm52bWUtdGNwOiBzdXBwb3J0IHNpbXBsZSBwb2xsaW5n
IikKU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51
dHJvbml4LmRlPgotLS0KdjHigKZ2MjogSGlkZSBpdCBiZWhpbmQgQ09ORklHX05FVF9SWF9CVVNZ
X1BPTEwgaW5zdGVhZCByZW1vdmluZyBpdC4KCiBkcml2ZXJzL252bWUvaG9zdC90Y3AuYyB8IDIg
KysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L252bWUvaG9zdC90Y3AuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L3RjcC5jCmluZGV4IDM4NWE1MjEy
YzEwZjEuLjcyMDU5NTYxYjdmMmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L3RjcC5j
CisrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L3RjcC5jCkBAIC0xMzg2LDcgKzEzODYsOSBAQCBzdGF0
aWMgaW50IG52bWVfdGNwX2FsbG9jX3F1ZXVlKHN0cnVjdCBudm1lX2N0cmwgKm5jdHJsLAogCXF1
ZXVlLT5zb2NrLT5zay0+c2tfZGF0YV9yZWFkeSA9IG52bWVfdGNwX2RhdGFfcmVhZHk7CiAJcXVl
dWUtPnNvY2stPnNrLT5za19zdGF0ZV9jaGFuZ2UgPSBudm1lX3RjcF9zdGF0ZV9jaGFuZ2U7CiAJ
cXVldWUtPnNvY2stPnNrLT5za193cml0ZV9zcGFjZSA9IG52bWVfdGNwX3dyaXRlX3NwYWNlOwor
I2lmZGVmIENPTkZJR19ORVRfUlhfQlVTWV9QT0xMCiAJcXVldWUtPnNvY2stPnNrLT5za19sbF91
c2VjID0gMTsKKyNlbmRpZgogCXdyaXRlX3VubG9ja19iaCgmcXVldWUtPnNvY2stPnNrLT5za19j
YWxsYmFja19sb2NrKTsKIAogCXJldHVybiAwOwotLSAKMi4yMy4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QK
TGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
