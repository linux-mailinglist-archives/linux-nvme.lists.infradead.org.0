Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572FD7ADEA
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 18:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkoMi4KEw7uGMhY6f59NWdK9Gyv0B0VsCsKglPsrTlc=; b=SUuqo697KKRqQN
	1rO2XnqEmDbsCkJdlv4SOwXyTHm1QQi1EnCQc5mpa78T57Qvv7tzbLEWtxYpMVLhVTwjdt14QUyrF
	gMYgwOL/K1d+DXl1NLIFV8fWuqrFMCHsHS6VOePuiiNMaryiRhR2zoWG1vEkjS1h7/nRdOFhkzCcn
	UEHrSHrgemBG1Ogj94CJw5sNLF1R+g6srzdo53mcrVMsxUkLnsD83XIQhUkGAcoNiorZ/1KxMKyxX
	yVdW6ISSpHlRm1+ESrBOEW96cbyt+P8FJpEi8DiFRZIZszG4G8x8ZI/dyNLn8VtgmBukDlTjpJW0k
	nItfGs6U4p/OUhMVy0uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsV7c-0003bU-RR; Tue, 30 Jul 2019 16:37:08 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsV6c-0002bQ-4W
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 16:36:08 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hsV6V-0003yC-5p; Tue, 30 Jul 2019 10:36:05 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hsV6R-0001IO-Gl; Tue, 30 Jul 2019 10:35:55 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Tue, 30 Jul 2019 10:35:35 -0600
Message-Id: <20190730163545.4915-5-logang@deltatee.com>
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
Subject: [PATCH v2 04/14] PCI/P2PDMA: Factor out __upstream_bridge_distance()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_093606_225159_32CE2A12 
X-CRM114-Status: GOOD (  17.85  )
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
IGNvZGUgd2lsbCBiZSBtb3ZlZCBpbnRvIHRoaXMgZnVuY3Rpb24gaW4KYSBzdWJzZXF1ZW50IHBh
dGNoLgoKU2lnbmVkLW9mZi1ieTogTG9nYW4gR3VudGhvcnBlIDxsb2dhbmdAZGVsdGF0ZWUuY29t
PgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
PgotLS0KIGRyaXZlcnMvcGNpL3AycGRtYS5jIHwgODkgKysrKysrKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCspLCA0
MSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9wMnBkbWEuYyBiL2RyaXZl
cnMvcGNpL3AycGRtYS5jCmluZGV4IDY0ZjVhMGUzMDI0NC4uYjRlZjZlOGRhNzg0IDEwMDY0NAot
LS0gYS9kcml2ZXJzL3BjaS9wMnBkbWEuYworKysgYi9kcml2ZXJzL3BjaS9wMnBkbWEuYwpAQCAt
MzAzLDQ3ICszMDMsOSBAQCBlbnVtIHsKIAlQMlBETUFfTk9UX1NVUFBPUlRFRAkJPSAweDA4MDAw
MDAwLAogfTsKIAotLyoKLSAqIEZpbmQgdGhlIGRpc3RhbmNlIHRocm91Z2ggdGhlIG5lYXJlc3Qg
Y29tbW9uIHVwc3RyZWFtIGJyaWRnZSBiZXR3ZWVuCi0gKiB0d28gUENJIGRldmljZXMuCi0gKgot
ICogSWYgdGhlIHR3byBkZXZpY2VzIGFyZSB0aGUgc2FtZSBkZXZpY2UgdGhlbiAwIHdpbGwgYmUg
cmV0dXJuZWQuCi0gKgotICogSWYgdGhlcmUgYXJlIHR3byB2aXJ0dWFsIGZ1bmN0aW9ucyBvZiB0
aGUgc2FtZSBkZXZpY2UgYmVoaW5kIHRoZSBzYW1lCi0gKiBicmlkZ2UgcG9ydCB0aGVuIDIgd2ls
bCBiZSByZXR1cm5lZCAob25lIHN0ZXAgZG93biB0byB0aGUgUENJZSBzd2l0Y2gsCi0gKiB0aGVu
IG9uZSBzdGVwIGJhY2sgdG8gdGhlIHNhbWUgZGV2aWNlKS4KLSAqCi0gKiBJbiB0aGUgY2FzZSB3
aGVyZSB0d28gZGV2aWNlcyBhcmUgY29ubmVjdGVkIHRvIHRoZSBzYW1lIFBDSWUgc3dpdGNoLCB0
aGUKLSAqIHZhbHVlIDQgd2lsbCBiZSByZXR1cm5lZC4gVGhpcyBjb3JyZXNwb25kcyB0byB0aGUg
Zm9sbG93aW5nIFBDSSB0cmVlOgotICoKLSAqICAgICAtKyAgUm9vdCBQb3J0Ci0gKiAgICAgIFwr
IFN3aXRjaCBVcHN0cmVhbSBQb3J0Ci0gKiAgICAgICArLSsgU3dpdGNoIERvd25zdHJlYW0gUG9y
dAotICogICAgICAgKyBcLSBEZXZpY2UgQQotICogICAgICAgXC0rIFN3aXRjaCBEb3duc3RyZWFt
IFBvcnQKLSAqICAgICAgICAgXC0gRGV2aWNlIEIKLSAqCi0gKiBUaGUgZGlzdGFuY2UgaXMgNCBi
ZWNhdXNlIHdlIHRyYXZlcnNlIGZyb20gRGV2aWNlIEEgdGhyb3VnaCB0aGUgZG93bnN0cmVhbQot
ICogcG9ydCBvZiB0aGUgc3dpdGNoLCB0byB0aGUgY29tbW9uIHVwc3RyZWFtIHBvcnQsIGJhY2sg
dXAgdG8gdGhlIHNlY29uZAotICogZG93bnN0cmVhbSBwb3J0IGFuZCB0aGVuIHRvIERldmljZSBC
LgotICoKLSAqIEFueSB0d28gZGV2aWNlcyB0aGF0IGNhbm5vdCBjb21tdW5pY2F0ZSB1c2luZyBw
MnBkbWEgd2lsbCByZXR1cm4gdGhlIGRpc3RhbmNlCi0gKiB3aXRoIHRoZSBmbGFnIFAyUERNQV9O
T1RfU1VQUE9SVEVELgotICoKLSAqIEFueSB0d28gZGV2aWNlcyB0aGF0IGhhdmUgYSBkYXRhIHBh
dGggdGhhdCBnb2VzIHRocm91Z2ggdGhlIGhvc3QgYnJpZGdlCi0gKiB3aWxsIGNvbnN1bHQgYSB3
aGl0ZWxpc3QuIElmIHRoZSBob3N0IGJyaWRnZXMgYXJlIG9uIHRoZSB3aGl0ZWxpc3QsCi0gKiB0
aGVuIHRoZSBkaXN0YW5jZSB3aWxsIGJlIHJldHVybmVkIHdpdGggdGhlIGZsYWcgUDJQRE1BX1RI
UlVfSE9TVF9CUklER0Ugc2V0LgotICogSWYgZWl0aGVyIGJyaWRnZSBpcyBub3Qgb24gdGhlIHdo
aXRlbGlzdCwgdGhlIGZsYWcgUDJQRE1BX05PVF9TVVBQT1JURUQgd2lsbAotICogYmUgc2V0Lgot
ICoKLSAqIElmIGEgYnJpZGdlIHdoaWNoIGhhcyBhbnkgQUNTIHJlZGlyZWN0aW9uIGJpdHMgc2V0
IGlzIGluIHRoZSBwYXRoCi0gKiB0aGVuIHRoaXMgZnVuY3Rpb25zIHdpbGwgZmxhZyB0aGUgcmVz
dWx0IHdpdGggUDJQRE1BX0FDU19GT1JDRVNfVVBTVFJFQU0uCi0gKiBJbiB0aGlzIGNhc2UsIGEg
bGlzdCBvZiBhbGwgaW5mcmluZ2luZyBicmlkZ2UgYWRkcmVzc2VzIHdpbGwgYmUKLSAqIHBvcHVs
YXRlZCBpbiBhY3NfbGlzdCAoYXNzdW1pbmcgaXQncyBub24tbnVsbCkgZm9yIHByaW50ayBwdXJw
b3Nlcy4KLSAqLwotc3RhdGljIGludCB1cHN0cmVhbV9icmlkZ2VfZGlzdGFuY2Uoc3RydWN0IHBj
aV9kZXYgKnByb3ZpZGVyLAotCQkJCSAgICBzdHJ1Y3QgcGNpX2RldiAqY2xpZW50LAotCQkJCSAg
ICBzdHJ1Y3Qgc2VxX2J1ZiAqYWNzX2xpc3QpCitzdGF0aWMgaW50IF9fdXBzdHJlYW1fYnJpZGdl
X2Rpc3RhbmNlKHN0cnVjdCBwY2lfZGV2ICpwcm92aWRlciwKKwkJCQkgICAgICBzdHJ1Y3QgcGNp
X2RldiAqY2xpZW50LAorCQkJCSAgICAgIHN0cnVjdCBzZXFfYnVmICphY3NfbGlzdCkKIHsKIAlz
dHJ1Y3QgcGNpX2RldiAqYSA9IHByb3ZpZGVyLCAqYiA9IGNsaWVudCwgKmJiOwogCWludCBkaXN0
X2EgPSAwOwpAQCAtNDA5LDYgKzM3MSw1MSBAQCBzdGF0aWMgaW50IHVwc3RyZWFtX2JyaWRnZV9k
aXN0YW5jZShzdHJ1Y3QgcGNpX2RldiAqcHJvdmlkZXIsCiAJcmV0dXJuIGRpc3RfYSArIGRpc3Rf
YjsKIH0KIAorLyoKKyAqIEZpbmQgdGhlIGRpc3RhbmNlIHRocm91Z2ggdGhlIG5lYXJlc3QgY29t
bW9uIHVwc3RyZWFtIGJyaWRnZSBiZXR3ZWVuCisgKiB0d28gUENJIGRldmljZXMuCisgKgorICog
SWYgdGhlIHR3byBkZXZpY2VzIGFyZSB0aGUgc2FtZSBkZXZpY2UgdGhlbiAwIHdpbGwgYmUgcmV0
dXJuZWQuCisgKgorICogSWYgdGhlcmUgYXJlIHR3byB2aXJ0dWFsIGZ1bmN0aW9ucyBvZiB0aGUg
c2FtZSBkZXZpY2UgYmVoaW5kIHRoZSBzYW1lCisgKiBicmlkZ2UgcG9ydCB0aGVuIDIgd2lsbCBi
ZSByZXR1cm5lZCAob25lIHN0ZXAgZG93biB0byB0aGUgUENJZSBzd2l0Y2gsCisgKiB0aGVuIG9u
ZSBzdGVwIGJhY2sgdG8gdGhlIHNhbWUgZGV2aWNlKS4KKyAqCisgKiBJbiB0aGUgY2FzZSB3aGVy
ZSB0d28gZGV2aWNlcyBhcmUgY29ubmVjdGVkIHRvIHRoZSBzYW1lIFBDSWUgc3dpdGNoLCB0aGUK
KyAqIHZhbHVlIDQgd2lsbCBiZSByZXR1cm5lZC4gVGhpcyBjb3JyZXNwb25kcyB0byB0aGUgZm9s
bG93aW5nIFBDSSB0cmVlOgorICoKKyAqICAgICAtKyAgUm9vdCBQb3J0CisgKiAgICAgIFwrIFN3
aXRjaCBVcHN0cmVhbSBQb3J0CisgKiAgICAgICArLSsgU3dpdGNoIERvd25zdHJlYW0gUG9ydAor
ICogICAgICAgKyBcLSBEZXZpY2UgQQorICogICAgICAgXC0rIFN3aXRjaCBEb3duc3RyZWFtIFBv
cnQKKyAqICAgICAgICAgXC0gRGV2aWNlIEIKKyAqCisgKiBUaGUgZGlzdGFuY2UgaXMgNCBiZWNh
dXNlIHdlIHRyYXZlcnNlIGZyb20gRGV2aWNlIEEgdGhyb3VnaCB0aGUgZG93bnN0cmVhbQorICog
cG9ydCBvZiB0aGUgc3dpdGNoLCB0byB0aGUgY29tbW9uIHVwc3RyZWFtIHBvcnQsIGJhY2sgdXAg
dG8gdGhlIHNlY29uZAorICogZG93bnN0cmVhbSBwb3J0IGFuZCB0aGVuIHRvIERldmljZSBCLgor
ICoKKyAqIEFueSB0d28gZGV2aWNlcyB0aGF0IGNhbm5vdCBjb21tdW5pY2F0ZSB1c2luZyBwMnBk
bWEgd2lsbCByZXR1cm4gdGhlIGRpc3RhbmNlCisgKiB3aXRoIHRoZSBmbGFnIFAyUERNQV9OT1Rf
U1VQUE9SVEVELgorICoKKyAqIEFueSB0d28gZGV2aWNlcyB0aGF0IGhhdmUgYSBkYXRhIHBhdGgg
dGhhdCBnb2VzIHRocm91Z2ggdGhlIGhvc3QgYnJpZGdlCisgKiB3aWxsIGNvbnN1bHQgYSB3aGl0
ZWxpc3QuIElmIHRoZSBob3N0IGJyaWRnZXMgYXJlIG9uIHRoZSB3aGl0ZWxpc3QsCisgKiB0aGVu
IHRoZSBkaXN0YW5jZSB3aWxsIGJlIHJldHVybmVkIHdpdGggdGhlIGZsYWcgUDJQRE1BX1RIUlVf
SE9TVF9CUklER0Ugc2V0LgorICogSWYgZWl0aGVyIGJyaWRnZSBpcyBub3Qgb24gdGhlIHdoaXRl
bGlzdCwgdGhlIGZsYWcgUDJQRE1BX05PVF9TVVBQT1JURUQgd2lsbAorICogYmUgc2V0LgorICoK
KyAqIElmIGEgYnJpZGdlIHdoaWNoIGhhcyBhbnkgQUNTIHJlZGlyZWN0aW9uIGJpdHMgc2V0IGlz
IGluIHRoZSBwYXRoCisgKiB0aGVuIHRoaXMgZnVuY3Rpb25zIHdpbGwgZmxhZyB0aGUgcmVzdWx0
IHdpdGggUDJQRE1BX0FDU19GT1JDRVNfVVBTVFJFQU0uCisgKiBJbiB0aGlzIGNhc2UsIGEgbGlz
dCBvZiBhbGwgaW5mcmluZ2luZyBicmlkZ2UgYWRkcmVzc2VzIHdpbGwgYmUKKyAqIHBvcHVsYXRl
ZCBpbiBhY3NfbGlzdCAoYXNzdW1pbmcgaXQncyBub24tbnVsbCkgZm9yIHByaW50ayBwdXJwb3Nl
cy4KKyAqLworc3RhdGljIGludCB1cHN0cmVhbV9icmlkZ2VfZGlzdGFuY2Uoc3RydWN0IHBjaV9k
ZXYgKnByb3ZpZGVyLAorCQkJCSAgICBzdHJ1Y3QgcGNpX2RldiAqY2xpZW50LAorCQkJCSAgICBz
dHJ1Y3Qgc2VxX2J1ZiAqYWNzX2xpc3QpCit7CisJcmV0dXJuIF9fdXBzdHJlYW1fYnJpZGdlX2Rp
c3RhbmNlKHByb3ZpZGVyLCBjbGllbnQsIGFjc19saXN0KTsKK30KKwogc3RhdGljIGludCB1cHN0
cmVhbV9icmlkZ2VfZGlzdGFuY2Vfd2FybihzdHJ1Y3QgcGNpX2RldiAqcHJvdmlkZXIsCiAJCQkJ
CSBzdHJ1Y3QgcGNpX2RldiAqY2xpZW50KQogewotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QK
TGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
