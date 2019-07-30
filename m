Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E58AF7AE26
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 18:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYgtbK+EB+V0auL//bd6j4CsUO9BQRPMdYSbh1ddI4Q=; b=mbgwxqUj3u9PuL
	QRrSYokQkcANhl1OR/Shoy/tJjjdVSALUOYO8ZIKR6XgYyclvfAB5aPM1u1Md4Jx+jJlK0VDu/Mvf
	vjZXWnzLIXHYeeiAWDQNXTWT50RDLdhvU2C1tmDHKcLb8gimx/9PhfF4WsschLDlOyHpUs8YX35QS
	nrjDwy06uWkYNIjk80GNkyFjIiyMLM/SVOqVKBz8h9bUT+h9cxQ/Vub/uUC74Qztz3E7zIJaTsDmH
	V3yxP38n5dpPBxCWOXZwucklMTCH62qUxHuo5VY4d/bRHyKpBrTOsBIlGyCcuPhgcD4SWQHDkfyhN
	Vs1Eix2b2qihOUskz+uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsV8q-0004rO-N1; Tue, 30 Jul 2019 16:38:24 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsV6f-0002ez-Ux
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 16:36:11 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hsV6V-0003yD-5o; Tue, 30 Jul 2019 10:36:07 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hsV6R-0001IR-Jq; Tue, 30 Jul 2019 10:35:55 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Tue, 30 Jul 2019 10:35:36 -0600
Message-Id: <20190730163545.4915-6-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190730163545.4915-1-logang@deltatee.com>
References: <20190730163545.4915-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-rdma@vger.kernel.org, bhelgaas@google.com,
 hch@lst.de, jgg@mellanox.com, sagi@grimberg.me, kbusch@kernel.org,
 axboe@fb.com, dan.j.williams@intel.com, epilmore@gigaio.com,
 sbates@raithlin.com, logang@deltatee.com, Christian.Koenig@amd.com,
 christian.koenig@amd.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/14] PCI/P2PDMA: Apply host bridge white list for ACS
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_093610_344589_57A52909 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Stephen Bates <sbates@raithlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

V2hlbiBhIFAyUERNQSB0cmFuc2ZlciBpcyByZWplY3RlZCBkdWUgdG8gQUNTIGJlaW5nIHNldCwg
d2UKY2FuIGFsc28gY2hlY2sgdGhlIHdoaXRlIGxpc3QgYW5kIGFsbG93IHRoZSB0cmFuc2FjdGlv
bnMuCgpEbyB0aGlzIGJ5IHB1c2hpbmcgdGhlIHdoaXRlbGlzdCBjaGVjayBpbnRvIHRoZQp1cHN0
cmVhbV9icmlkZ2VfZGlzdGFuY2UoKSBmdW5jdGlvbi4KClNpZ25lZC1vZmYtYnk6IExvZ2FuIEd1
bnRob3JwZSA8bG9nYW5nQGRlbHRhdGVlLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL3BjaS9wMnBkbWEuYyB8
IDI1ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRp
b25zKCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9wMnBkbWEu
YyBiL2RyaXZlcnMvcGNpL3AycGRtYS5jCmluZGV4IGI0ZWY2ZThkYTc4NC4uMTA3NjVhYjkwZTY0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9wMnBkbWEuYworKysgYi9kcml2ZXJzL3BjaS9wMnBk
bWEuYwpAQCAtMzQwLDE1ICszNDAsNyBAQCBzdGF0aWMgaW50IF9fdXBzdHJlYW1fYnJpZGdlX2Rp
c3RhbmNlKHN0cnVjdCBwY2lfZGV2ICpwcm92aWRlciwKIAkJZGlzdF9hKys7CiAJfQogCi0JLyoK
LQkgKiBBbGxvdyB0aGUgY29ubmVjdGlvbiBpZiBib3RoIGRldmljZXMgYXJlIG9uIGEgd2hpdGVs
aXN0ZWQgcm9vdAotCSAqIGNvbXBsZXgsIGJ1dCBhZGQgYW4gYXJiaXRyYXJ5IGxhcmdlIHZhbHVl
IHRvIHRoZSBkaXN0YW5jZS4KLQkgKi8KLQlpZiAocm9vdF9jb21wbGV4X3doaXRlbGlzdChwcm92
aWRlcikgJiYKLQkgICAgcm9vdF9jb21wbGV4X3doaXRlbGlzdChjbGllbnQpKQotCQlyZXR1cm4g
KGRpc3RfYSArIGRpc3RfYikgfCBQMlBETUFfVEhSVV9IT1NUX0JSSURHRTsKLQotCXJldHVybiAo
ZGlzdF9hICsgZGlzdF9iKSB8IFAyUERNQV9OT1RfU1VQUE9SVEVEOworCXJldHVybiAoZGlzdF9h
ICsgZGlzdF9iKSB8IFAyUERNQV9USFJVX0hPU1RfQlJJREdFOwogCiBjaGVja19iX3BhdGhfYWNz
OgogCWJiID0gYjsKQEAgLTM2Niw3ICszNTgsOCBAQCBzdGF0aWMgaW50IF9fdXBzdHJlYW1fYnJp
ZGdlX2Rpc3RhbmNlKHN0cnVjdCBwY2lfZGV2ICpwcm92aWRlciwKIAl9CiAKIAlpZiAoYWNzX2Nu
dCkKLQkJcmV0dXJuIFAyUERNQV9OT1RfU1VQUE9SVEVEIHwgUDJQRE1BX0FDU19GT1JDRVNfVVBT
VFJFQU07CisJCXJldHVybiAoZGlzdF9hICsgZGlzdF9iKSB8IFAyUERNQV9BQ1NfRk9SQ0VTX1VQ
U1RSRUFNIHwKKwkJCVAyUERNQV9USFJVX0hPU1RfQlJJREdFOwogCiAJcmV0dXJuIGRpc3RfYSAr
IGRpc3RfYjsKIH0KQEAgLTQxMyw3ICs0MDYsMTcgQEAgc3RhdGljIGludCB1cHN0cmVhbV9icmlk
Z2VfZGlzdGFuY2Uoc3RydWN0IHBjaV9kZXYgKnByb3ZpZGVyLAogCQkJCSAgICBzdHJ1Y3QgcGNp
X2RldiAqY2xpZW50LAogCQkJCSAgICBzdHJ1Y3Qgc2VxX2J1ZiAqYWNzX2xpc3QpCiB7Ci0JcmV0
dXJuIF9fdXBzdHJlYW1fYnJpZGdlX2Rpc3RhbmNlKHByb3ZpZGVyLCBjbGllbnQsIGFjc19saXN0
KTsKKwlpbnQgZGlzdDsKKworCWRpc3QgPSBfX3Vwc3RyZWFtX2JyaWRnZV9kaXN0YW5jZShwcm92
aWRlciwgY2xpZW50LCBhY3NfbGlzdCk7CisKKwlpZiAoIShkaXN0ICYgUDJQRE1BX1RIUlVfSE9T
VF9CUklER0UpKQorCQlyZXR1cm4gZGlzdDsKKworCWlmIChyb290X2NvbXBsZXhfd2hpdGVsaXN0
KHByb3ZpZGVyKSAmJiByb290X2NvbXBsZXhfd2hpdGVsaXN0KGNsaWVudCkpCisJCXJldHVybiBk
aXN0OworCisJcmV0dXJuIGRpc3QgfCBQMlBETUFfTk9UX1NVUFBPUlRFRDsKIH0KIAogc3RhdGlj
IGludCB1cHN0cmVhbV9icmlkZ2VfZGlzdGFuY2Vfd2FybihzdHJ1Y3QgcGNpX2RldiAqcHJvdmlk
ZXIsCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1u
dm1lCg==
