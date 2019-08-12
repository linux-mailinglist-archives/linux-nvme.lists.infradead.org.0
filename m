Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064AA8A45D
	for <lists+linux-nvme@lfdr.de>; Mon, 12 Aug 2019 19:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=puHYeQ3R38apyxgO62Z/QG5nQbzqqHAPe1wTjRuYN2o=; b=Q0DqzwnZ+l9MDy
	Wo8EbGzxLovQjqeYAISAlA+V9R4aBclr8DAQij5bpXXLHUgBeWIQCS1ZO9QBiidQ3FXNNZEw7HMW6
	hG/yRXhxiwDp4656AU+7b76PdCuWsbFwJvObOBmTDuRoTxolRe68qehn1qy50NG0e1rF3xCJXtR2u
	nuq4ydjZHnglH04tK53c2jrmSD+6MfkRtX6RmBUFdAvIvGb7lxSTpJuVVIo+Xbkjploqw7/dxaBXp
	W+lHOLA4UHuy+zI32mVnbg3ZN8tDDURMuhJ85OXVSOUew+6j2Yu7ITgNpEeHq2mg4q8TzVT+Ly/Ei
	C1+hodsUCi5+m0PhFzeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxEAZ-00074T-4j; Mon, 12 Aug 2019 17:31:43 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxE9q-0006Rz-IP
 for linux-nvme@lists.infradead.org; Mon, 12 Aug 2019 17:31:03 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9l-0002sX-OJ; Mon, 12 Aug 2019 11:30:55 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9j-0002PI-2E; Mon, 12 Aug 2019 11:30:51 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Mon, 12 Aug 2019 11:30:38 -0600
Message-Id: <20190812173048.9186-5-logang@deltatee.com>
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
Subject: [PATCH v3 04/14] PCI/P2PDMA: Factor out __upstream_bridge_distance()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_103058_960397_4577761C 
X-CRM114-Status: GOOD (  18.19  )
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

VGhpcyBpcyBhIHByZXAgcGF0Y2ggdG8gY3JlYXRlIGEgc2Vjb25kIGxldmVsIGhlbHBlci4gVGhl
cmUgYXJlIG5vCmZ1bmN0aW9uYWwgY2hhbmdlcy4KClRoZSByb290IGNvbXBsZXggd2hpdGVsaXN0
IGNvZGUgd2lsbCBiZSBtb3ZlZCBpbnRvIHRoaXMgZnVuY3Rpb24gaW4gYQpzdWJzZXF1ZW50IHBh
dGNoLgoKTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDE5MDczMDE2MzU0NS40OTE1
LTUtbG9nYW5nQGRlbHRhdGVlLmNvbQpTaWduZWQtb2ZmLWJ5OiBMb2dhbiBHdW50aG9ycGUgPGxv
Z2FuZ0BkZWx0YXRlZS5jb20+ClNpZ25lZC1vZmYtYnk6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFz
QGdvb2dsZS5jb20+ClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9wY2kvcDJwZG1hLmMgfCA4OCArKysrKysrKysrKysr
KysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQ4IGluc2Vy
dGlvbnMoKyksIDQwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL3AycGRt
YS5jIGIvZHJpdmVycy9wY2kvcDJwZG1hLmMKaW5kZXggOGYwNjg4MjAxYWVjLi42MDBiYTZhN2Fh
MTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGNpL3AycGRtYS5jCisrKyBiL2RyaXZlcnMvcGNpL3Ay
cGRtYS5jCkBAIC0yOTYsNDcgKzI5Niw4IEBAIHN0YXRpYyBib29sIHJvb3RfY29tcGxleF93aGl0
ZWxpc3Qoc3RydWN0IHBjaV9kZXYgKmRldikKIAlyZXR1cm4gZmFsc2U7CiB9CiAKLS8qCi0gKiBG
aW5kIHRoZSBkaXN0YW5jZSB0aHJvdWdoIHRoZSBuZWFyZXN0IGNvbW1vbiB1cHN0cmVhbSBicmlk
Z2UgYmV0d2VlbgotICogdHdvIFBDSSBkZXZpY2VzLgotICoKLSAqIElmIHRoZSB0d28gZGV2aWNl
cyBhcmUgdGhlIHNhbWUgZGV2aWNlIHRoZW4gMCB3aWxsIGJlIHJldHVybmVkLgotICoKLSAqIElm
IHRoZXJlIGFyZSB0d28gdmlydHVhbCBmdW5jdGlvbnMgb2YgdGhlIHNhbWUgZGV2aWNlIGJlaGlu
ZCB0aGUgc2FtZQotICogYnJpZGdlIHBvcnQgdGhlbiAyIHdpbGwgYmUgcmV0dXJuZWQgKG9uZSBz
dGVwIGRvd24gdG8gdGhlIFBDSWUgc3dpdGNoLAotICogdGhlbiBvbmUgc3RlcCBiYWNrIHRvIHRo
ZSBzYW1lIGRldmljZSkuCi0gKgotICogSW4gdGhlIGNhc2Ugd2hlcmUgdHdvIGRldmljZXMgYXJl
IGNvbm5lY3RlZCB0byB0aGUgc2FtZSBQQ0llIHN3aXRjaCwgdGhlCi0gKiB2YWx1ZSA0IHdpbGwg
YmUgcmV0dXJuZWQuIFRoaXMgY29ycmVzcG9uZHMgdG8gdGhlIGZvbGxvd2luZyBQQ0kgdHJlZToK
LSAqCi0gKiAgICAgLSsgIFJvb3QgUG9ydAotICogICAgICBcKyBTd2l0Y2ggVXBzdHJlYW0gUG9y
dAotICogICAgICAgKy0rIFN3aXRjaCBEb3duc3RyZWFtIFBvcnQKLSAqICAgICAgICsgXC0gRGV2
aWNlIEEKLSAqICAgICAgIFwtKyBTd2l0Y2ggRG93bnN0cmVhbSBQb3J0Ci0gKiAgICAgICAgIFwt
IERldmljZSBCCi0gKgotICogVGhlIGRpc3RhbmNlIGlzIDQgYmVjYXVzZSB3ZSB0cmF2ZXJzZSBm
cm9tIERldmljZSBBIHRocm91Z2ggdGhlIGRvd25zdHJlYW0KLSAqIHBvcnQgb2YgdGhlIHN3aXRj
aCwgdG8gdGhlIGNvbW1vbiB1cHN0cmVhbSBwb3J0LCBiYWNrIHVwIHRvIHRoZSBzZWNvbmQKLSAq
IGRvd25zdHJlYW0gcG9ydCBhbmQgdGhlbiB0byBEZXZpY2UgQi4KLSAqCi0gKiBBbnkgdHdvIGRl
dmljZXMgdGhhdCBjYW5ub3QgY29tbXVuaWNhdGUgdXNpbmcgcDJwZG1hIHdpbGwgcmV0dXJuCi0g
KiBQQ0lfUDJQRE1BX01BUF9OT1RfU1VQUE9SVEVELgotICoKLSAqIEFueSB0d28gZGV2aWNlcyB0
aGF0IGhhdmUgYSBkYXRhIHBhdGggdGhhdCBnb2VzIHRocm91Z2ggdGhlIGhvc3QgYnJpZGdlCi0g
KiB3aWxsIGNvbnN1bHQgYSB3aGl0ZWxpc3QuIElmIHRoZSBob3N0IGJyaWRnZXMgYXJlIG9uIHRo
ZSB3aGl0ZWxpc3QsCi0gKiB0aGlzIGZ1bmN0aW9uIHdpbGwgcmV0dXJuIFBDSV9QMlBETUFfTUFQ
X1RIUlVfSE9TVF9CUklER0UuCi0gKgotICogSWYgZWl0aGVyIGJyaWRnZSBpcyBub3Qgb24gdGhl
IHdoaXRlbGlzdCB0aGlzIGZ1bmN0aW9uIHJldHVybnMKLSAqIFBDSV9QMlBETUFfTUFQX05PVF9T
VVBQT1JURUQuCi0gKgotICogSWYgYSBicmlkZ2Ugd2hpY2ggaGFzIGFueSBBQ1MgcmVkaXJlY3Rp
b24gYml0cyBzZXQgaXMgaW4gdGhlIHBhdGgsCi0gKiBhY3NfcmVkaXJlY3RzIHdpbGwgYmUgc2V0
IHRvIHRydWUuIEluIHRoaXMgY2FzZSwgYSBsaXN0IG9mIGFsbCBpbmZyaW5naW5nCi0gKiBicmlk
Z2UgYWRkcmVzc2VzIHdpbGwgYmUgcG9wdWxhdGVkIGluIGFjc19saXN0IChhc3N1bWluZyBpdCdz
IG5vbi1udWxsKQotICogZm9yIHByaW50ayBwdXJwb3Nlcy4KLSAqLwogc3RhdGljIGVudW0gcGNp
X3AycGRtYV9tYXBfdHlwZQotdXBzdHJlYW1fYnJpZGdlX2Rpc3RhbmNlKHN0cnVjdCBwY2lfZGV2
ICpwcm92aWRlciwgc3RydWN0IHBjaV9kZXYgKmNsaWVudCwKK19fdXBzdHJlYW1fYnJpZGdlX2Rp
c3RhbmNlKHN0cnVjdCBwY2lfZGV2ICpwcm92aWRlciwgc3RydWN0IHBjaV9kZXYgKmNsaWVudCwK
IAkJaW50ICpkaXN0LCBib29sICphY3NfcmVkaXJlY3RzLCBzdHJ1Y3Qgc2VxX2J1ZiAqYWNzX2xp
c3QpCiB7CiAJc3RydWN0IHBjaV9kZXYgKmEgPSBwcm92aWRlciwgKmIgPSBjbGllbnQsICpiYjsK
QEAgLTQxNiw2ICszNzcsNTMgQEAgdXBzdHJlYW1fYnJpZGdlX2Rpc3RhbmNlKHN0cnVjdCBwY2lf
ZGV2ICpwcm92aWRlciwgc3RydWN0IHBjaV9kZXYgKmNsaWVudCwKIAlyZXR1cm4gUENJX1AyUERN
QV9NQVBfQlVTX0FERFI7CiB9CiAKKy8qCisgKiBGaW5kIHRoZSBkaXN0YW5jZSB0aHJvdWdoIHRo
ZSBuZWFyZXN0IGNvbW1vbiB1cHN0cmVhbSBicmlkZ2UgYmV0d2VlbgorICogdHdvIFBDSSBkZXZp
Y2VzLgorICoKKyAqIElmIHRoZSB0d28gZGV2aWNlcyBhcmUgdGhlIHNhbWUgZGV2aWNlIHRoZW4g
MCB3aWxsIGJlIHJldHVybmVkLgorICoKKyAqIElmIHRoZXJlIGFyZSB0d28gdmlydHVhbCBmdW5j
dGlvbnMgb2YgdGhlIHNhbWUgZGV2aWNlIGJlaGluZCB0aGUgc2FtZQorICogYnJpZGdlIHBvcnQg
dGhlbiAyIHdpbGwgYmUgcmV0dXJuZWQgKG9uZSBzdGVwIGRvd24gdG8gdGhlIFBDSWUgc3dpdGNo
LAorICogdGhlbiBvbmUgc3RlcCBiYWNrIHRvIHRoZSBzYW1lIGRldmljZSkuCisgKgorICogSW4g
dGhlIGNhc2Ugd2hlcmUgdHdvIGRldmljZXMgYXJlIGNvbm5lY3RlZCB0byB0aGUgc2FtZSBQQ0ll
IHN3aXRjaCwgdGhlCisgKiB2YWx1ZSA0IHdpbGwgYmUgcmV0dXJuZWQuIFRoaXMgY29ycmVzcG9u
ZHMgdG8gdGhlIGZvbGxvd2luZyBQQ0kgdHJlZToKKyAqCisgKiAgICAgLSsgIFJvb3QgUG9ydAor
ICogICAgICBcKyBTd2l0Y2ggVXBzdHJlYW0gUG9ydAorICogICAgICAgKy0rIFN3aXRjaCBEb3du
c3RyZWFtIFBvcnQKKyAqICAgICAgICsgXC0gRGV2aWNlIEEKKyAqICAgICAgIFwtKyBTd2l0Y2gg
RG93bnN0cmVhbSBQb3J0CisgKiAgICAgICAgIFwtIERldmljZSBCCisgKgorICogVGhlIGRpc3Rh
bmNlIGlzIDQgYmVjYXVzZSB3ZSB0cmF2ZXJzZSBmcm9tIERldmljZSBBIHRocm91Z2ggdGhlIGRv
d25zdHJlYW0KKyAqIHBvcnQgb2YgdGhlIHN3aXRjaCwgdG8gdGhlIGNvbW1vbiB1cHN0cmVhbSBw
b3J0LCBiYWNrIHVwIHRvIHRoZSBzZWNvbmQKKyAqIGRvd25zdHJlYW0gcG9ydCBhbmQgdGhlbiB0
byBEZXZpY2UgQi4KKyAqCisgKiBBbnkgdHdvIGRldmljZXMgdGhhdCBjYW5ub3QgY29tbXVuaWNh
dGUgdXNpbmcgcDJwZG1hIHdpbGwgcmV0dXJuCisgKiBQQ0lfUDJQRE1BX01BUF9OT1RfU1VQUE9S
VEVELgorICoKKyAqIEFueSB0d28gZGV2aWNlcyB0aGF0IGhhdmUgYSBkYXRhIHBhdGggdGhhdCBn
b2VzIHRocm91Z2ggdGhlIGhvc3QgYnJpZGdlCisgKiB3aWxsIGNvbnN1bHQgYSB3aGl0ZWxpc3Qu
IElmIHRoZSBob3N0IGJyaWRnZXMgYXJlIG9uIHRoZSB3aGl0ZWxpc3QsCisgKiB0aGlzIGZ1bmN0
aW9uIHdpbGwgcmV0dXJuIFBDSV9QMlBETUFfTUFQX1RIUlVfSE9TVF9CUklER0UuCisgKgorICog
SWYgZWl0aGVyIGJyaWRnZSBpcyBub3Qgb24gdGhlIHdoaXRlbGlzdCB0aGlzIGZ1bmN0aW9uIHJl
dHVybnMKKyAqIFBDSV9QMlBETUFfTUFQX05PVF9TVVBQT1JURUQuCisgKgorICogSWYgYSBicmlk
Z2Ugd2hpY2ggaGFzIGFueSBBQ1MgcmVkaXJlY3Rpb24gYml0cyBzZXQgaXMgaW4gdGhlIHBhdGgs
CisgKiBhY3NfcmVkaXJlY3RzIHdpbGwgYmUgc2V0IHRvIHRydWUuIEluIHRoaXMgY2FzZSwgYSBs
aXN0IG9mIGFsbCBpbmZyaW5naW5nCisgKiBicmlkZ2UgYWRkcmVzc2VzIHdpbGwgYmUgcG9wdWxh
dGVkIGluIGFjc19saXN0IChhc3N1bWluZyBpdCdzIG5vbi1udWxsKQorICogZm9yIHByaW50ayBw
dXJwb3Nlcy4KKyAqLworc3RhdGljIGVudW0gcGNpX3AycGRtYV9tYXBfdHlwZQordXBzdHJlYW1f
YnJpZGdlX2Rpc3RhbmNlKHN0cnVjdCBwY2lfZGV2ICpwcm92aWRlciwgc3RydWN0IHBjaV9kZXYg
KmNsaWVudCwKKwkJaW50ICpkaXN0LCBib29sICphY3NfcmVkaXJlY3RzLCBzdHJ1Y3Qgc2VxX2J1
ZiAqYWNzX2xpc3QpCit7CisJcmV0dXJuIF9fdXBzdHJlYW1fYnJpZGdlX2Rpc3RhbmNlKHByb3Zp
ZGVyLCBjbGllbnQsIGRpc3QsCisJCQkJCSAgYWNzX3JlZGlyZWN0cywgYWNzX2xpc3QpOworfQor
CiBzdGF0aWMgZW51bSBwY2lfcDJwZG1hX21hcF90eXBlCiB1cHN0cmVhbV9icmlkZ2VfZGlzdGFu
Y2Vfd2FybihzdHJ1Y3QgcGNpX2RldiAqcHJvdmlkZXIsIHN0cnVjdCBwY2lfZGV2ICpjbGllbnQs
CiAJCQkgICAgICBpbnQgKmRpc3QpCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1u
dm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1udm1lCg==
