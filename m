Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482707AE05
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 18:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1hLU/TyWM0jUbhO7LEaMM6l83OhAneK/lROvZ4urNk=; b=SVJRckuOIXWUsd
	UvQRmtQh0NkXavmkm8PKT6NWBOoDWDLdnHka0g7SuB5nQfXHgdnkh7AX9qdGs6dfH6E0lqZcZCroJ
	zm+a+mAWbDXT0zLLOtzs9upi/+Qy1kLGOPLlUXuO+IbgSxiQPMtw4nrFAJnHvW0VX1wp1tHlFLw1Q
	DOvuUmJUeR9Xwdxi/6CFW06/rbG0OSWiSCUBT4xp4/fo1+dv2pCB3Yb2+ul/7zetH/ubDNpR9YnmK
	RtWODk/3xDzZtLqJcWTywfa17o+JkNaukEqTcJtmIdExCc0TFtUiUZTNhOyffnsARYMeix15U4et5
	xG0KrclI90+KGUJkcjaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsV8O-0004Nl-DF; Tue, 30 Jul 2019 16:37:56 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsV6d-0002cP-7z
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 16:36:09 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hsV6V-0003yB-5n; Tue, 30 Jul 2019 10:36:06 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hsV6R-0001IL-Do; Tue, 30 Jul 2019 10:35:55 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Tue, 30 Jul 2019 10:35:34 -0600
Message-Id: <20190730163545.4915-4-logang@deltatee.com>
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
Subject: [PATCH v2 03/14] PCI/P2PDMA: Add constants for not-supported result
 upstream_bridge_distance()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_093607_627334_EE725EE0 
X-CRM114-Status: GOOD (  22.64  )
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

QWRkIGNvbnN0YW50IGZsYWdzIHRvIGluZGljYXRlIHR3byBkZXZpY2VzIGFyZSBub3Qgc3VwcG9y
dGVkIG9yIHdoZXRoZXIKdGhlIGRhdGEgcGF0aCBnb2VzIHRocm91Z2ggdGhlIGhvc3QgYnJpZGdl
IGluc3RlYWQgb2YgdXNpbmcgdGhlIG5lZ2F0aXZlCnZhbHVlcyAtMSBhbmQgLTIuCgpUaGlzIGhl
bHBzIGFubm90YXRlIHRoZSBjb2RlIGJldHRlciwgYnV0IHRoZSBtYWluIHJlYXNvbiBpcyBzbyB3
ZQpjYW4gdXNlIHRoZSBpbmZvcm1hdGlvbiB0byBzdG9yZSB0aGUgcmVxdWlyZWQgbWFwcGluZyBt
ZXRob2QgaW4gYW4KeGFycmF5LgoKU2lnbmVkLW9mZi1ieTogTG9nYW4gR3VudGhvcnBlIDxsb2dh
bmdAZGVsdGF0ZWUuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvcGNpL3AycGRtYS5jIHwgNTIgKysrKysrKysr
KysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMSBp
bnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9w
MnBkbWEuYyBiL2RyaXZlcnMvcGNpL3AycGRtYS5jCmluZGV4IDkzZmJkYTE0ZjRhOS4uNjRmNWEw
ZTMwMjQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9wMnBkbWEuYworKysgYi9kcml2ZXJzL3Bj
aS9wMnBkbWEuYwpAQCAtMjg5LDYgKzI4OSwyMCBAQCBzdGF0aWMgYm9vbCByb290X2NvbXBsZXhf
d2hpdGVsaXN0KHN0cnVjdCBwY2lfZGV2ICpkZXYpCiAJcmV0dXJuIGZhbHNlOwogfQogCitlbnVt
IHsKKwkvKgorCSAqIFRoZXNlIGFyYml0cmFyeSBvZmZzZXQgYXJlIG9yJ2Qgb250byB0aGUgdXBz
dHJlYW0gZGlzdGFuY2UKKwkgKiBjYWxjdWxhdGlvbiBmb3IgdGhlIGZvbGxvd2luZyBjb25kaXRp
b25zOgorCSAqLworCisJLyogVGhlIGRhdGEgcGF0aCBpbmNsdWRlcyB0aGUgaG9zdC1icmlkZ2Ug
Ki8KKwlQMlBETUFfVEhSVV9IT1NUX0JSSURHRQkJPSAweDAyMDAwMDAwLAorCS8qIFRoZSBkYXRh
IHBhdGggaXMgZm9yY2VkIHRocm91Z2ggdGhlIGhvc3QtYnJpZGdlIGR1ZSB0byBBQ1MgKi8KKwlQ
MlBETUFfQUNTX0ZPUkNFU19VUFNUUkVBTQk9IDB4MDQwMDAwMDAsCisJLyogVGhlIGRhdGEgcGF0
aCBpcyBub3Qgc3VwcG9ydGVkIGJ5IFAyUERNQSAqLworCVAyUERNQV9OT1RfU1VQUE9SVEVECQk9
IDB4MDgwMDAwMDAsCit9OworCiAvKgogICogRmluZCB0aGUgZGlzdGFuY2UgdGhyb3VnaCB0aGUg
bmVhcmVzdCBjb21tb24gdXBzdHJlYW0gYnJpZGdlIGJldHdlZW4KICAqIHR3byBQQ0kgZGV2aWNl
cy4KQEAgLTMxMywyMiArMzI3LDE3IEBAIHN0YXRpYyBib29sIHJvb3RfY29tcGxleF93aGl0ZWxp
c3Qoc3RydWN0IHBjaV9kZXYgKmRldikKICAqIHBvcnQgb2YgdGhlIHN3aXRjaCwgdG8gdGhlIGNv
bW1vbiB1cHN0cmVhbSBwb3J0LCBiYWNrIHVwIHRvIHRoZSBzZWNvbmQKICAqIGRvd25zdHJlYW0g
cG9ydCBhbmQgdGhlbiB0byBEZXZpY2UgQi4KICAqCi0gKiBBbnkgdHdvIGRldmljZXMgdGhhdCBk
b24ndCBoYXZlIGEgY29tbW9uIHVwc3RyZWFtIGJyaWRnZSB3aWxsIHJldHVybiAtMS4KLSAqIElu
IHRoaXMgd2F5IGRldmljZXMgb24gc2VwYXJhdGUgUENJZSByb290IHBvcnRzIHdpbGwgYmUgcmVq
ZWN0ZWQsIHdoaWNoCi0gKiBpcyB3aGF0IHdlIHdhbnQgZm9yIHBlZXItdG8tcGVlciBzZWVpbmcg
ZWFjaCBQQ0llIHJvb3QgcG9ydCBkZWZpbmVzIGEKLSAqIHNlcGFyYXRlIGhpZXJhcmNoeSBkb21h
aW4gYW5kIHRoZXJlJ3Mgbm8gd2F5IHRvIGRldGVybWluZSB3aGV0aGVyIHRoZSByb290Ci0gKiBj
b21wbGV4IHN1cHBvcnRzIGZvcndhcmRpbmcgYmV0d2VlbiB0aGVtLgorICogQW55IHR3byBkZXZp
Y2VzIHRoYXQgY2Fubm90IGNvbW11bmljYXRlIHVzaW5nIHAycGRtYSB3aWxsIHJldHVybiB0aGUg
ZGlzdGFuY2UKKyAqIHdpdGggdGhlIGZsYWcgUDJQRE1BX05PVF9TVVBQT1JURUQuCiAgKgotICog
SW4gdGhlIGNhc2Ugd2hlcmUgdHdvIGRldmljZXMgYXJlIGNvbm5lY3RlZCB0byBkaWZmZXJlbnQg
UENJZSBzd2l0Y2hlcywKLSAqIHRoaXMgZnVuY3Rpb24gd2lsbCBzdGlsbCByZXR1cm4gYSBwb3Np
dGl2ZSBkaXN0YW5jZSBhcyBsb25nIGFzIGJvdGgKLSAqIHN3aXRjaGVzIGV2ZW50dWFsbHkgaGF2
ZSBhIGNvbW1vbiB1cHN0cmVhbSBicmlkZ2UuIE5vdGUgdGhpcyBjb3ZlcnMKLSAqIHRoZSBjYXNl
IG9mIHVzaW5nIG11bHRpcGxlIFBDSWUgc3dpdGNoZXMgdG8gYWNoaWV2ZSBhIGRlc2lyZWQgbGV2
ZWwgb2YKLSAqIGZhbi1vdXQgZnJvbSBhIHJvb3QgcG9ydC4gVGhlIGV4YWN0IGRpc3RhbmNlIHdp
bGwgYmUgYSBmdW5jdGlvbiBvZiB0aGUKLSAqIG51bWJlciBvZiBzd2l0Y2hlcyBiZXR3ZWVuIERl
dmljZSBBIGFuZCBEZXZpY2UgQi4KKyAqIEFueSB0d28gZGV2aWNlcyB0aGF0IGhhdmUgYSBkYXRh
IHBhdGggdGhhdCBnb2VzIHRocm91Z2ggdGhlIGhvc3QgYnJpZGdlCisgKiB3aWxsIGNvbnN1bHQg
YSB3aGl0ZWxpc3QuIElmIHRoZSBob3N0IGJyaWRnZXMgYXJlIG9uIHRoZSB3aGl0ZWxpc3QsCisg
KiB0aGVuIHRoZSBkaXN0YW5jZSB3aWxsIGJlIHJldHVybmVkIHdpdGggdGhlIGZsYWcgUDJQRE1B
X1RIUlVfSE9TVF9CUklER0Ugc2V0LgorICogSWYgZWl0aGVyIGJyaWRnZSBpcyBub3Qgb24gdGhl
IHdoaXRlbGlzdCwgdGhlIGZsYWcgUDJQRE1BX05PVF9TVVBQT1JURUQgd2lsbAorICogYmUgc2V0
LgogICoKICAqIElmIGEgYnJpZGdlIHdoaWNoIGhhcyBhbnkgQUNTIHJlZGlyZWN0aW9uIGJpdHMg
c2V0IGlzIGluIHRoZSBwYXRoCi0gKiB0aGVuIHRoaXMgZnVuY3Rpb25zIHdpbGwgcmV0dXJuIC0y
LiBUaGlzIGlzIHNvIHdlIHJlamVjdCBhbnkKLSAqIGNhc2VzIHdoZXJlIHRoZSBUTFBzIGFyZSBm
b3J3YXJkZWQgdXAgaW50byB0aGUgcm9vdCBjb21wbGV4LgorICogdGhlbiB0aGlzIGZ1bmN0aW9u
cyB3aWxsIGZsYWcgdGhlIHJlc3VsdCB3aXRoIFAyUERNQV9BQ1NfRk9SQ0VTX1VQU1RSRUFNLgog
ICogSW4gdGhpcyBjYXNlLCBhIGxpc3Qgb2YgYWxsIGluZnJpbmdpbmcgYnJpZGdlIGFkZHJlc3Nl
cyB3aWxsIGJlCiAgKiBwb3B1bGF0ZWQgaW4gYWNzX2xpc3QgKGFzc3VtaW5nIGl0J3Mgbm9uLW51
bGwpIGZvciBwcmludGsgcHVycG9zZXMuCiAgKi8KQEAgLTM3NSw5ICszODQsOSBAQCBzdGF0aWMg
aW50IHVwc3RyZWFtX2JyaWRnZV9kaXN0YW5jZShzdHJ1Y3QgcGNpX2RldiAqcHJvdmlkZXIsCiAJ
ICovCiAJaWYgKHJvb3RfY29tcGxleF93aGl0ZWxpc3QocHJvdmlkZXIpICYmCiAJICAgIHJvb3Rf
Y29tcGxleF93aGl0ZWxpc3QoY2xpZW50KSkKLQkJcmV0dXJuIDB4MTAwMCArIGRpc3RfYSArIGRp
c3RfYjsKKwkJcmV0dXJuIChkaXN0X2EgKyBkaXN0X2IpIHwgUDJQRE1BX1RIUlVfSE9TVF9CUklE
R0U7CiAKLQlyZXR1cm4gLTE7CisJcmV0dXJuIChkaXN0X2EgKyBkaXN0X2IpIHwgUDJQRE1BX05P
VF9TVVBQT1JURUQ7CiAKIGNoZWNrX2JfcGF0aF9hY3M6CiAJYmIgPSBiOwpAQCAtMzk1LDcgKzQw
NCw3IEBAIHN0YXRpYyBpbnQgdXBzdHJlYW1fYnJpZGdlX2Rpc3RhbmNlKHN0cnVjdCBwY2lfZGV2
ICpwcm92aWRlciwKIAl9CiAKIAlpZiAoYWNzX2NudCkKLQkJcmV0dXJuIC0yOworCQlyZXR1cm4g
UDJQRE1BX05PVF9TVVBQT1JURUQgfCBQMlBETUFfQUNTX0ZPUkNFU19VUFNUUkVBTTsKIAogCXJl
dHVybiBkaXN0X2EgKyBkaXN0X2I7CiB9CkBAIC00MTEsMTYgKzQyMCwxNyBAQCBzdGF0aWMgaW50
IHVwc3RyZWFtX2JyaWRnZV9kaXN0YW5jZV93YXJuKHN0cnVjdCBwY2lfZGV2ICpwcm92aWRlciwK
IAkJcmV0dXJuIC1FTk9NRU07CiAKIAlyZXQgPSB1cHN0cmVhbV9icmlkZ2VfZGlzdGFuY2UocHJv
dmlkZXIsIGNsaWVudCwgJmFjc19saXN0KTsKLQlpZiAocmV0ID09IC0yKSB7Ci0JCXBjaV93YXJu
KGNsaWVudCwgImNhbm5vdCBiZSB1c2VkIGZvciBwZWVyLXRvLXBlZXIgRE1BIGFzIEFDUyByZWRp
cmVjdCBpcyBzZXQgYmV0d2VlbiB0aGUgY2xpZW50IGFuZCBwcm92aWRlciAoJXMpXG4iLAorCWlm
IChyZXQgJiBQMlBETUFfQUNTX0ZPUkNFU19VUFNUUkVBTSkgeworCQlwY2lfd2FybihjbGllbnQs
ICJBQ1MgcmVkaXJlY3QgaXMgc2V0IGJldHdlZW4gdGhlIGNsaWVudCBhbmQgcHJvdmlkZXIgKCVz
KVxuIiwKIAkJCSBwY2lfbmFtZShwcm92aWRlcikpOwogCQkvKiBEcm9wIGZpbmFsIHNlbWljb2xv
biAqLwogCQlhY3NfbGlzdC5idWZmZXJbYWNzX2xpc3QubGVuLTFdID0gMDsKIAkJcGNpX3dhcm4o
Y2xpZW50LCAidG8gZGlzYWJsZSBBQ1MgcmVkaXJlY3QgZm9yIHRoaXMgcGF0aCwgYWRkIHRoZSBr
ZXJuZWwgcGFyYW1ldGVyOiBwY2k9ZGlzYWJsZV9hY3NfcmVkaXI9JXNcbiIsCiAJCQkgYWNzX2xp
c3QuYnVmZmVyKTsKKwl9CiAKLQl9IGVsc2UgaWYgKHJldCA8IDApIHsKLQkJcGNpX3dhcm4oY2xp
ZW50LCAiY2Fubm90IGJlIHVzZWQgZm9yIHBlZXItdG8tcGVlciBETUEgYXMgdGhlIGNsaWVudCBh
bmQgcHJvdmlkZXIgKCVzKSBkbyBub3Qgc2hhcmUgYW4gdXBzdHJlYW0gYnJpZGdlXG4iLAorCWlm
IChyZXQgJiBQMlBETUFfTk9UX1NVUFBPUlRFRCkgeworCQlwY2lfd2FybihjbGllbnQsICJjYW5u
b3QgYmUgdXNlZCBmb3IgcGVlci10by1wZWVyIERNQSBhcyB0aGUgY2xpZW50IGFuZCBwcm92aWRl
ciAoJXMpIGRvIG5vdCBzaGFyZSBhbiB1cHN0cmVhbSBicmlkZ2Ugb3Igd2hpdGVsaXN0ZWQgaG9z
dCBicmlkZ2VcbiIsCiAJCQkgcGNpX25hbWUocHJvdmlkZXIpKTsKIAl9CiAKQEAgLTQ4NCw3ICs0
OTQsNyBAQCBpbnQgcGNpX3AycGRtYV9kaXN0YW5jZV9tYW55KHN0cnVjdCBwY2lfZGV2ICpwcm92
aWRlciwgc3RydWN0IGRldmljZSAqKmNsaWVudHMsCiAKIAkJcGNpX2Rldl9wdXQocGNpX2NsaWVu
dCk7CiAKLQkJaWYgKHJldCA8IDApCisJCWlmIChyZXQgJiBQMlBETUFfTk9UX1NVUFBPUlRFRCkK
IAkJCW5vdF9zdXBwb3J0ZWQgPSB0cnVlOwogCiAJCWlmIChub3Rfc3VwcG9ydGVkICYmICF2ZXJi
b3NlKQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bnZtZQo=
