Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2745125693
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 19:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0kblFFAGPjN6nJYiuie2qx2EXzsGOVaolm1t9ymIudA=; b=MD8ZiDuH7Svkel
	OTldQQd9yrrtB6TZixxWmv2WkNM3XRjgghCtwaBis4AWTo1fMs5D+b4x+UP7A6HVYs+vyEjf5T64S
	zKof9nZd9I36M2Eujgwou6FJoZnjJF8Oe07PEkEoCkO3Ketu2BmHgcJVbtoYMCJJKjOCTOINqqegX
	aO3AJpzdrXC9QNUA502tGHw+khjSEBuMyRE43NrogiUZoNPnuUUEA/LFnw1YhBd5Q+nBsXV1h3U5B
	aAVz6Cp+d4zBnYmYynIluqtM7EMUiFWfZxaUGddE1MpUbN/3XqHQw6Nx5u0+1WKJYEIOHmVOgiTfO
	iCCE+EPjSsXdWTuhDYeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8TY-0002Pp-AM; Tue, 21 May 2019 17:22:56 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8TT-0002P6-Ux
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 17:22:53 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 10:22:51 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by fmsmga006.fm.intel.com with ESMTP; 21 May 2019 10:22:50 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-pci: use blk-mq mapping for unmanaged irqs
Date: Tue, 21 May 2019 11:17:45 -0600
Message-Id: <20190521171745.4061-1-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_102252_009817_13018410 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ivan Chavero <ichavero@chavero.com.mx>, Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SWYgYSBkZXZpY2UgaXMgcHJvdmlkaW5nIGEgc2luZ2xlIElSUSB2ZWN0b3IsIHRoZSBJTyBxdWV1
ZSB3aWxsIHNoYXJlIHRoYXQKdmVjdG9yIHdpdGggdGhlIGFkbWluIHF1ZXVlIHdpdGggYSAwIG9m
ZnNldC4gVGhpcyBpcyBhbiB1bm1hbmFnZWQgdmVjdG9yLApzbyBkb2VzIG5vdCBoYXZlIGEgdmFs
aWQgUENJIElSUSBhZmZpbml0eS4gQXZvaWQgdHJ5aW5nIHRvIHVzZSBtYW5hZ2VkCmFmZmluaXR5
IGluIHRoaXMgY2FzZSBhbmQgbGV0IGJsay1tcSBzZXQgdXAgdGhlIGNwdS1xdWV1ZSBtYXBwaW5n
IGluc3RlYWQuCk90aGVyd2lzZSB3ZSdkIGhpdCB0aGUgZm9sbG93aW5nIHdhcm5pbmcgd2hlbiB0
aGUgZGV2aWNlIGlzIHVzaW5nIE1TSToKCiBXQVJOSU5HOiBDUFU6IDQgUElEOiA3IGF0IGRyaXZl
cnMvcGNpL21zaS5jOjEyNzIgcGNpX2lycV9nZXRfYWZmaW5pdHkrMHg2Ni8weDgwCiBNb2R1bGVz
IGxpbmtlZCBpbjogbnZtZSBudm1lX2NvcmUgc2VyaW9fcmF3CiBDUFU6IDQgUElEOiA3IENvbW06
IGt3b3JrZXIvdTE2OjAgVGFpbnRlZDogRyAgICAgICAgVyAgICAgICAgIDUuMi4wLXJjMSsgIzQ5
NAogSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5Niks
IEJJT1MgcmVsLTEuMTIuMS0wLWdhNWNhYjU4ZTlhM2YtcHJlYnVpbHQucWVtdS5vcmcgMDQvMDEv
MjAxNAogV29ya3F1ZXVlOiBudm1lLXJlc2V0LXdxIG52bWVfcmVzZXRfd29yayBbbnZtZV0KIFJJ
UDogMDAxMDpwY2lfaXJxX2dldF9hZmZpbml0eSsweDY2LzB4ODAKIENvZGU6IDBiIDMxIGMwIGMz
IDgzIGUyIDEwIDQ4IGM3IGMwIGIwIDgzIDM1IDkxIDc0IDJhIDQ4IDhiIDg3IGQ4IDAzIDAwIDAw
IDQ4IDg1IGMwIDc0IDBlIDQ4IDhiIDUwIDMwIDQ4IDg1IGQyIDc0IDA1IDM5IDcwIDE0IDc3IDA1
IDwwZj4gMGIgMzEgYzAgYzMgNDggNjMgZjYgNDggOGQgMDQgNzYgNDggOGQgMDQgYzIgZjMgYzMg
NDggOGIgNDAgMzAKIFJTUDogMDAwMDpmZmZmYjVhYmMwMWQzY2M4IEVGTEFHUzogMDAwMTAyNDYK
IFJBWDogZmZmZjk1MzY3ODZhMzljMCBSQlg6IDAwMDAwMDAwMDAwMDAwMDAgUkNYOiAwMDAwMDAw
MDAwMDAwMDgwCiBSRFg6IDAwMDAwMDAwMDAwMDAwMDAgUlNJOiAwMDAwMDAwMDAwMDAwMDAwIFJE
STogZmZmZjk1MzY3ODFlZDAwMAogUkJQOiBmZmZmOTUzNjczNDZhMDA4IFIwODogZmZmZjk1MzY3
ZDQzZjA4MCBSMDk6IGZmZmY5NTM2NzhjMDc4MDAKIFIxMDogZmZmZjk1MzY3ODE2NDgwMCBSMTE6
IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiAwMDAwMDAwMDAwMDAwMDAwCiBSMTM6IGZmZmY5NTM2Nzgx
ZWQwMDAgUjE0OiAwMDAwMDAwMGZmZmZmZmZmIFIxNTogZmZmZjk1MzY3MzQ2YTAwOAogRlM6ICAw
MDAwMDAwMDAwMDAwMDAwKDAwMDApIEdTOmZmZmY5NTM2N2Q0MDAwMDAoMDAwMCkga25sR1M6MDAw
MDAwMDAwMDAwMDAwMAogQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4
MDA1MDAzMwogQ1IyOiAwMDAwN2ZkZjgxNGEzZmYwIENSMzogMDAwMDAwMDAxYTIwZjAwMCBDUjQ6
IDAwMDAwMDAwMDAwMDA2ZTAKIERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAw
MDAwMDAgRFIyOiAwMDAwMDAwMDAwMDAwMDAwCiBEUjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2OiAw
MDAwMDAwMGZmZmUwZmYwIERSNzogMDAwMDAwMDAwMDAwMDQwMAogQ2FsbCBUcmFjZToKICBibGtf
bXFfcGNpX21hcF9xdWV1ZXMrMHgzNy8weGQwCiAgbnZtZV9wY2lfbWFwX3F1ZXVlcysweDgwLzB4
YjAgW252bWVdCiAgYmxrX21xX2FsbG9jX3RhZ19zZXQrMHgxMzMvMHgyZjAKICBudm1lX3Jlc2V0
X3dvcmsrMHgxMDVkLzB4MTU5MCBbbnZtZV0KICBwcm9jZXNzX29uZV93b3JrKzB4MjkxLzB4NTMw
CiAgd29ya2VyX3RocmVhZCsweDIxOC8weDNkMAogID8gcHJvY2Vzc19vbmVfd29yaysweDUzMC8w
eDUzMAogIGt0aHJlYWQrMHgxMTEvMHgxMzAKICA/IGt0aHJlYWRfcGFyaysweDkwLzB4OTAKICBy
ZXRfZnJvbV9mb3JrKzB4MWYvMHgzMAogLS0tWyBlbmQgdHJhY2UgNzQ1ODczMzlkOTNjODNjMCBd
LS0tCgpGaXhlczogMjJiNTU2MDE5NWJkNiAoIm52bWUtcGNpOiBTZXBhcmF0ZSBJTyBhbmQgYWRt
aW4gcXVldWUgSVJRIHZlY3RvcnMiKQpSZXBvcnRlZC1ieTogSXbDoW4gQ2hhdmVybyA8aWNoYXZl
cm9AY2hhdmVyby5jb20ubXg+ClNpZ25lZC1vZmYtYnk6IEtlaXRoIEJ1c2NoIDxrZWl0aC5idXNj
aEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9udm1lL2hvc3QvcGNpLmMgfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL252bWUvaG9zdC9wY2kuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L3BjaS5jCmluZGV4IDU5OTA2
NWVkNmEzMi4uZjU2MjE1NDU1MWNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL252bWUvaG9zdC9wY2ku
YworKysgYi9kcml2ZXJzL252bWUvaG9zdC9wY2kuYwpAQCAtNDY0LDcgKzQ2NCw3IEBAIHN0YXRp
YyBpbnQgbnZtZV9wY2lfbWFwX3F1ZXVlcyhzdHJ1Y3QgYmxrX21xX3RhZ19zZXQgKnNldCkKIAkJ
ICogYWZmaW5pdHkpLCBzbyB1c2UgdGhlIHJlZ3VsYXIgYmxrLW1xIGNwdSBtYXBwaW5nCiAJCSAq
LwogCQltYXAtPnF1ZXVlX29mZnNldCA9IHFvZmY7Ci0JCWlmIChpICE9IEhDVFhfVFlQRV9QT0xM
KQorCQlpZiAoaSAhPSBIQ1RYX1RZUEVfUE9MTCAmJiBvZmZzZXQpCiAJCQlibGtfbXFfcGNpX21h
cF9xdWV1ZXMobWFwLCB0b19wY2lfZGV2KGRldi0+ZGV2KSwgb2Zmc2V0KTsKIAkJZWxzZQogCQkJ
YmxrX21xX21hcF9xdWV1ZXMobWFwKTsKLS0gCjIuMTQuNAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4
LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
