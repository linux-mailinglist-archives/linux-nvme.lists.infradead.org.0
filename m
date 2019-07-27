Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E756C77B2C
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 20:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uenkEPqSTyDvK3Yr3BXVJl6K/doJGRbf0tILhbhJteM=; b=TUY874Bsy+KYnt
	AqezVZk7EACjFvCT1eF/3pI7Ovh27HnLiAKlM4PDnjchMSdGSlCkbva6KWNXCRa9nO3BpFgOL2W6G
	T14qULmGGZKTFZn5BiqJ4C2ztlTPA1IZHhSPmtBUBcGLWilZOjOBtzj+X1o0KTmWgFz1To4YktUdn
	GD4wm2qPg5fgnDQCXIW7OduBtLE6fCdyxt5RBp6/CIUwHWHCwUbR2EAd/mYycZIb1UQwXNEolMpIZ
	rKIqYIVNK0LAahWW+gK9oBuNBJ8gl+csgxMfAaiPCJI7WuOTWB4rD1s6+edfEdzvdAEh8l8Abe//h
	HbZWXIF3Sj9j6Ge4XSrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrRev-000417-VY; Sat, 27 Jul 2019 18:43:10 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrReC-0003Qd-Dv
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 18:42:26 +0000
Received: by mail-pf1-x443.google.com with SMTP id m30so26027601pff.8
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 11:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=57iQ/+tFImdlaqKs+q1AtD8sWEXQcsbEl96bv2jBip4=;
 b=GbP58BLnaeaMo0bvsvBe8ghrJAWDIA++LzJy/m/sM3EAz70uO+arpzTU+pLx2asL/9
 NzfzyJJ/I+2X4SMkZebTG19F6LM6/UgxrDdxS2MrgMNFMposgdmgb5JLRoVZZFnNzYTe
 YsCcXFoI7hbUVoUMUIPqBIhAWoy6ExhKFq01sxMamR2ULhB/1QOC28PLN7vN/W1RVgEl
 F5WUtMWWVsD+CW76XVf3IZoAgS5Tps8mxlGq7HXzNOiF7fWxz5YmFrNz4MbicJD5QCtJ
 IBH272o9adw2gTFf3C+bzttEN6+VeZu/Hi7MnuwCi0oX6cw7NPkqVcoRq+MRfWIiaTFP
 1Uyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=57iQ/+tFImdlaqKs+q1AtD8sWEXQcsbEl96bv2jBip4=;
 b=Ii2L5CZMII+BsHfh2Kyc9ozX2UvoP6Fvp9w/PWbpKvZfC30eD1b5J0nrXBbYbMQmmB
 0nCI6ZyrD43fK2Z+Oz4gZUiwkKWU+8wOgPiQAKYci6L4eIGRbBXN7bNVq3RDX1vIo7AU
 wL9rXxFuI1VBWUuSy/tQTCr285v634qgF5W/Jp0n/aAhzRpa9hwjZr30bKhw1cza1Fgs
 vScseaFlbQeYOvriv2fcu5Co3T79Umd16TbBBCVFe/jnpJ776Kgbj27b22ubAfNfGyUf
 VLJvghCNzEfh9lQKzaI/uFjNJSU/63D+74PUZGv/k69ftpbSeFBXCQeG8JozGmRJ6aFb
 I5dA==
X-Gm-Message-State: APjAAAXXII97eeMDz3Twc15U98nJQm0dxzcop9eBg5dYBBpIgLAVB5Fa
 HvEYkwFjetaNOa7kc70vht+ROVVNnX0=
X-Google-Smtp-Source: APXvYqwPVNBuoAmY1bmHVGwjVBc64NLMHMnMQHHzH9Fsb0uXurf4eCrIzIxMvL+VPRGtzdEwie0kxw==
X-Received: by 2002:a62:b411:: with SMTP id h17mr27307864pfn.99.1564252943619; 
 Sat, 27 Jul 2019 11:42:23 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id m6sm57733367pfb.151.2019.07.27.11.42.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 11:42:22 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/4] nvme: lightnvm: trace opcode name of I/O commands for 2.0
Date: Sun, 28 Jul 2019 03:41:55 +0900
Message-Id: <20190727184155.18014-5-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
References: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_114224_489831_568BEF39 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>, Sagi Grimberg <sagi@grimberg.me>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>,
 =?UTF-8?q?Matias=20Bj=C3=B8rling?= <mb@lightnvm.io>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIG9wY29kZSB2YWx1ZXMgd2hpY2ggYXJlIGRlZmluZWQgaW4gT0NTU0Qg
Mi4wIHNwZWMuICBUaGlzCndpbGwgbWFrZSBpdCBwcmludGVkIGEgbmFtZSBvZiBvcGNvZGUgcmF0
aGVyIHRoYW4gdGhlIHJhdyB2YWx1ZS4KCkNjOiBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5v
cmc+CkNjOiBKZW5zIEF4Ym9lIDxheGJvZUBmYi5jb20+CkNjOiBDaHJpc3RvcGggSGVsbHdpZyA8
aGNoQGxzdC5kZT4KQ2M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+CkNjOiBNYXRp
YXMgQmrDuHJsaW5nIDxtYkBsaWdodG52bS5pbz4KQ2M6IEphdmllciBHb256w6FsZXogPGphdmll
ckBqYXZpZ29uLmNvbT4KU2lnbmVkLW9mZi1ieTogTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdt
YWlsLmNvbT4KLS0tCiBpbmNsdWRlL2xpbnV4L252bWUuaCB8IDEyICsrKysrKysrKysrLQogMSBm
aWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L252bWUuaCBiL2luY2x1ZGUvbGludXgvbnZtZS5oCmluZGV4IGZkZGY0
Yzc3Njc4OC4uZDFkYjQ1OWRiZmMxIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L252bWUuaAor
KysgYi9pbmNsdWRlL2xpbnV4L252bWUuaApAQCAtNTY2LDYgKzU2NiwxMiBAQCBlbnVtIG52bWVf
b3Bjb2RlIHsKIAludm1lX2NtZF9yZXN2X3JlcG9ydAk9IDB4MGUsCiAJbnZtZV9jbWRfcmVzdl9h
Y3F1aXJlCT0gMHgxMSwKIAludm1lX2NtZF9yZXN2X3JlbGVhc2UJPSAweDE1LAorCisJLyogT0NT
U0QgMi4wICovCisJbnZtZV9udm1fY21kX3ZlY19jaHVua19yZXNldAk9IDB4OTAsCisJbnZtZV9u
dm1fY21kX3ZlY19jaHVua193cml0ZQk9IDB4OTEsCisJbnZtZV9udm1fY21kX3ZlY19jaHVua19y
ZWFkCT0gMHg5MiwKKwludm1lX252bV9jbWRfdmVjX2NodW5rX2NvcHkJPSAweDkzLAogfTsKIAog
I2RlZmluZSBudm1lX29wY29kZV9uYW1lKG9wY29kZSkJeyBvcGNvZGUsICNvcGNvZGUgfQpAQCAt
NTgxLDcgKzU4NywxMSBAQCBlbnVtIG52bWVfb3Bjb2RlIHsKIAkJbnZtZV9vcGNvZGVfbmFtZShu
dm1lX2NtZF9yZXN2X3JlZ2lzdGVyKSwJXAogCQludm1lX29wY29kZV9uYW1lKG52bWVfY21kX3Jl
c3ZfcmVwb3J0KSwJCVwKIAkJbnZtZV9vcGNvZGVfbmFtZShudm1lX2NtZF9yZXN2X2FjcXVpcmUp
LAlcCi0JCW52bWVfb3Bjb2RlX25hbWUobnZtZV9jbWRfcmVzdl9yZWxlYXNlKSkKKwkJbnZtZV9v
cGNvZGVfbmFtZShudm1lX2NtZF9yZXN2X3JlbGVhc2UpLAlcCisJCW52bWVfb3Bjb2RlX25hbWUo
bnZtZV9udm1fY21kX3ZlY19jaHVua19yZXNldCksCVwKKwkJbnZtZV9vcGNvZGVfbmFtZShudm1l
X252bV9jbWRfdmVjX2NodW5rX3dyaXRlKSwJXAorCQludm1lX29wY29kZV9uYW1lKG52bWVfbnZt
X2NtZF92ZWNfY2h1bmtfcmVhZCksCVwKKwkJbnZtZV9vcGNvZGVfbmFtZShudm1lX252bV9jbWRf
dmVjX2NodW5rX2NvcHkpKQogCiAKIC8qCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
