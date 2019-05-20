Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2773623F60
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 19:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=brT+gihkpgq2OF4/xTnZhSDoiBLaR81WTddEKVcrYt4=; b=ugtNxCXsRVcpeu
	D508aHMKD9a/1WZgV+BohFaEFo85cFPjzRy9lpoVd5ycMvThZ/SewCfKnBICkdB+dRH9Bpn1QiO/g
	71Exha7VVHfTRUYmKUDHyL/S9nPcpPvQVN6OxF6cRCU/EIa9n9VrZcTCF6+So3UEmMd45Y0Mb7R4x
	akhZTW+sjBMSHLZHkZoDRSnyMISqbvaSwXmdI+9tSZ2ZBfNZsjeYVNxWzOzABDpeQKii7IcfWqlZi
	49ixL2RNok732GW4CA/cZO8LmCW9RxpUoCZpP0qJOuSAlPyhwMYcxwEz5++D+QQK4tDzGPOig+t1u
	52pe9jMMMgkLlGubYZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmNw-0002uu-2Z; Mon, 20 May 2019 17:47:40 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmNr-0002uW-1y
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 17:47:36 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 10:47:33 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by fmsmga008.fm.intel.com with ESMTP; 20 May 2019 10:47:33 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: copy MTFA field from identify controller
Date: Mon, 20 May 2019 11:42:06 -0600
Message-Id: <20190520174206.29464-1-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_104735_134551_701AC62E 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>,
 Laine Walker-Avina <laine.walker-avina@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

RnJvbTogTGFpbmUgV2Fsa2VyLUF2aW5hIDxsYWluZS53YWxrZXItYXZpbmFAaW50ZWwuY29tPgoK
V2UgdXNlIHRoZSBjb250cm9sbGVyJ3MgcmVwb3J0ZWQgbWF4aW11bSBmaXJtd2FyZSBhY3RpdmF0
aW9uIHRpbWUgYXMgb3VyCnRpbWVvdXQgYmVmb3JlIHJlc2V0dGluZyBhIGNvbnRyb2xsZXIgZm9y
IGEgZmFpbGVkIGFjdGl2YXRpb24gbm90aWNlLApidXQgdGhpcyB2YWx1ZSB3YXMgbmV2ZXIgYmVp
bmcgcmVhZCBzbyB3ZSBjb3VsZCBvbmx5IHVzZSB0aGUgZGVmYXVsdAp0aW1lb3V0LiBDb3B5IHRo
ZSBJZGVudGlmeSBDb250cm9sbGVyIE1URkEgZmllbGQgdG8gdGhlIGNvcnJlc3BvbmRpbmcKbnZt
ZV9jdHJsJ3MgbXRmYSBmaWVsZC4KCkZpeGVzOiBiNmRjY2Y3ZmFlNDMzICjigJxudm1lOiBhZGQg
c3VwcG9ydCBmb3IgRlcgYWN0aXZhdGlvbiB3aXRob3V0IHJlc2V04oCdKS4KU2lnbmVkLW9mZi1i
eTogTGFpbmUgV2Fsa2VyLUF2aW5hIDxsYWluZS53YWxrZXItYXZpbmFAaW50ZWwuY29tPgpbY2hh
bmdlbG9nLCBmaXggZW5kaWFuXQpTaWduZWQtb2ZmLWJ5OiBLZWl0aCBCdXNjaCA8a2VpdGguYnVz
Y2hAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyB8IDEgKwogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3Qv
Y29yZS5jIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCmluZGV4IDdkYTgwZjM3NTMxNS4uZWIz
ZmI1NjFiMTY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKKysrIGIvZHJp
dmVycy9udm1lL2hvc3QvY29yZS5jCkBAIC0yNTU3LDYgKzI1NTcsNyBAQCBpbnQgbnZtZV9pbml0
X2lkZW50aWZ5KHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpCiAKIAljdHJsLT5vYWNzID0gbGUxNl90
b19jcHUoaWQtPm9hY3MpOwogCWN0cmwtPm9uY3MgPSBsZTE2X3RvX2NwdShpZC0+b25jcyk7CisJ
Y3RybC0+bXRmYSA9IGxlMTZfdG9fY3B1KGlkLT5tdGZhKTsKIAljdHJsLT5vYWVzID0gbGUzMl90
b19jcHUoaWQtPm9hZXMpOwogCWF0b21pY19zZXQoJmN0cmwtPmFib3J0X2xpbWl0LCBpZC0+YWNs
ICsgMSk7CiAJY3RybC0+dndjID0gaWQtPnZ3YzsKLS0gCjIuMTQuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
