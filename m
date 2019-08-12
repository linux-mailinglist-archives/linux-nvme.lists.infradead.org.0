Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F478A49A
	for <lists+linux-nvme@lfdr.de>; Mon, 12 Aug 2019 19:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTesHAMID4u5zRQatMu4HSdBpipNVaPSJF2wtByNRrk=; b=lY5dEBBwOueHWk
	VDGSqfR1Th5d0SA+hNF+LLW/Mca6QO3TmqhuuS3DHwdBNNXh9cUM0FfEMnB2Ar9iFpKFBJy0KT36K
	HB/BXTobyYfUAxg6vKrDfLy+9e1GxivRcOxkgoaPO4Fwpnu/ZQ1SP4gN6AdgdjF5yvzS73NYTHqLi
	hoQIRMhbGn+ZHvMknW/aBe6B83ELr+2ZwX9AMeWzbEmJX0qchfRDaMO92Wkfw4zFO3/9gkMsTV7X8
	tbQ1p75Z1MDiJVn8tokky0S9BRd9QpIasaXwlpyhjP0TQD91EIP15SKmFGkujH67ocs4Rin2plXEw
	NKPSg1o7P5K6W3wcEwiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxEBz-0008PZ-Pi; Mon, 12 Aug 2019 17:33:11 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxE9v-0006Vl-7f
 for linux-nvme@lists.infradead.org; Mon, 12 Aug 2019 17:31:07 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9l-0002sY-OI; Mon, 12 Aug 2019 11:31:02 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9j-0002PL-62; Mon, 12 Aug 2019 11:30:51 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Mon, 12 Aug 2019 11:30:39 -0600
Message-Id: <20190812173048.9186-6-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190812173048.9186-1-logang@deltatee.com>
References: <20190812173048.9186-1-logang@deltatee.com>
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
Subject: [PATCH v3 05/14] PCI/P2PDMA: Apply host bridge whitelist for ACS
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_103103_609694_3FC42892 
X-CRM114-Status: GOOD (  13.32  )
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
d2UgY2FuIGFsc28gY2hlY2sKdGhlIHdoaXRlbGlzdCBhbmQgYWxsb3cgdGhlIHRyYW5zYWN0aW9u
cy4KCkRvIHRoaXMgYnkgcHVzaGluZyB0aGUgd2hpdGVsaXN0IGNoZWNrIGludG8gdGhlIHVwc3Ry
ZWFtX2JyaWRnZV9kaXN0YW5jZSgpCmZ1bmN0aW9uLgoKTGluazogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvci8yMDE5MDczMDE2MzU0NS40OTE1LTYtbG9nYW5nQGRlbHRhdGVlLmNvbQpTaWduZWQt
b2ZmLWJ5OiBMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+ClNpZ25lZC1vZmYt
Ynk6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+ClJldmlld2VkLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9wY2kv
cDJwZG1hLmMgfCAyNiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDE0IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGNpL3AycGRtYS5jIGIvZHJpdmVycy9wY2kvcDJwZG1hLmMKaW5kZXggNjAwYmE2YTdhYTExLi5m
N2Y3ZTU4NjJiYWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL3AycGRtYS5jCisrKyBiL2RyaXZl
cnMvcGNpL3AycGRtYS5jCkBAIC0zMzksMTUgKzMzOSw3IEBAIF9fdXBzdHJlYW1fYnJpZGdlX2Rp
c3RhbmNlKHN0cnVjdCBwY2lfZGV2ICpwcm92aWRlciwgc3RydWN0IHBjaV9kZXYgKmNsaWVudCwK
IAlpZiAoZGlzdCkKIAkJKmRpc3QgPSBkaXN0X2EgKyBkaXN0X2I7CiAKLQkvKgotCSAqIEFsbG93
IHRoZSBjb25uZWN0aW9uIGlmIGJvdGggZGV2aWNlcyBhcmUgb24gYSB3aGl0ZWxpc3RlZCByb290
Ci0JICogY29tcGxleCwgYnV0IGFkZCBhbiBhcmJpdHJhcnkgbGFyZ2UgdmFsdWUgdG8gdGhlIGRp
c3RhbmNlLgotCSAqLwotCWlmIChyb290X2NvbXBsZXhfd2hpdGVsaXN0KHByb3ZpZGVyKSAmJgot
CSAgICByb290X2NvbXBsZXhfd2hpdGVsaXN0KGNsaWVudCkpCi0JCXJldHVybiBQQ0lfUDJQRE1B
X01BUF9USFJVX0hPU1RfQlJJREdFOwotCi0JcmV0dXJuIFBDSV9QMlBETUFfTUFQX05PVF9TVVBQ
T1JURUQ7CisJcmV0dXJuIFBDSV9QMlBETUFfTUFQX1RIUlVfSE9TVF9CUklER0U7CiAKIGNoZWNr
X2JfcGF0aF9hY3M6CiAJYmIgPSBiOwpAQCAtMzcxLDcgKzM2Myw3IEBAIF9fdXBzdHJlYW1fYnJp
ZGdlX2Rpc3RhbmNlKHN0cnVjdCBwY2lfZGV2ICpwcm92aWRlciwgc3RydWN0IHBjaV9kZXYgKmNs
aWVudCwKIAkJaWYgKGFjc19yZWRpcmVjdHMpCiAJCQkqYWNzX3JlZGlyZWN0cyA9IHRydWU7CiAK
LQkJcmV0dXJuIFBDSV9QMlBETUFfTUFQX05PVF9TVVBQT1JURUQ7CisJCXJldHVybiBQQ0lfUDJQ
RE1BX01BUF9USFJVX0hPU1RfQlJJREdFOwogCX0KIAogCXJldHVybiBQQ0lfUDJQRE1BX01BUF9C
VVNfQUREUjsKQEAgLTQyMCw4ICs0MTIsMTggQEAgc3RhdGljIGVudW0gcGNpX3AycGRtYV9tYXBf
dHlwZQogdXBzdHJlYW1fYnJpZGdlX2Rpc3RhbmNlKHN0cnVjdCBwY2lfZGV2ICpwcm92aWRlciwg
c3RydWN0IHBjaV9kZXYgKmNsaWVudCwKIAkJaW50ICpkaXN0LCBib29sICphY3NfcmVkaXJlY3Rz
LCBzdHJ1Y3Qgc2VxX2J1ZiAqYWNzX2xpc3QpCiB7Ci0JcmV0dXJuIF9fdXBzdHJlYW1fYnJpZGdl
X2Rpc3RhbmNlKHByb3ZpZGVyLCBjbGllbnQsIGRpc3QsCi0JCQkJCSAgYWNzX3JlZGlyZWN0cywg
YWNzX2xpc3QpOworCWVudW0gcGNpX3AycGRtYV9tYXBfdHlwZSBtYXBfdHlwZTsKKworCW1hcF90
eXBlID0gX191cHN0cmVhbV9icmlkZ2VfZGlzdGFuY2UocHJvdmlkZXIsIGNsaWVudCwgZGlzdCwK
KwkJCQkJICAgICAgYWNzX3JlZGlyZWN0cywgYWNzX2xpc3QpOworCisJaWYgKG1hcF90eXBlID09
IFBDSV9QMlBETUFfTUFQX1RIUlVfSE9TVF9CUklER0UpIHsKKwkJaWYgKCFyb290X2NvbXBsZXhf
d2hpdGVsaXN0KHByb3ZpZGVyKSB8fAorCQkgICAgIXJvb3RfY29tcGxleF93aGl0ZWxpc3QoY2xp
ZW50KSkKKwkJCXJldHVybiBQQ0lfUDJQRE1BX01BUF9OT1RfU1VQUE9SVEVEOworCX0KKworCXJl
dHVybiBtYXBfdHlwZTsKIH0KIAogc3RhdGljIGVudW0gcGNpX3AycGRtYV9tYXBfdHlwZQotLSAK
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
