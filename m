Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27599FA116
	for <lists+linux-nvme@lfdr.de>; Wed, 13 Nov 2019 02:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUXUZe4co543ICT76WptdaVmsooRsZOLVl6UFsRIwlY=; b=SWq5Y0/gT0OH+J
	DyEQCEk18owIOeaUwyI5Jr6k297SxqMeOcYnNxjlrm7Kagcws1lFjxP+ExNg6BWMfEq3UdYHr+sD6
	Hyn3QfhXTGizpKEk7vCQnCDBh06oJewq2UBo3WW3UTnFvTZzNPwNc05PobTcBUflTND8LMSY4f58+
	2FuCGWY+I6tHvl9bXzoUcdcs5VAdp0u49cCHb9bqd/bGtojvY9e/AGFwnc7y6wi5yyYt8H355wFfb
	kLp7K/IzZie+7LCveZrdwU95jhoCexp9GnVrWK+0/1IMDTDIRsluRKMO8ZtTmK7rSfAmBDZRG+8yE
	Pd/kNcGsxdD3QmvMpnNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUhsV-00066d-79; Wed, 13 Nov 2019 01:55:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUhsM-0005ja-Km
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 01:55:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C303222CD;
 Wed, 13 Nov 2019 01:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573610118;
 bh=RgYw0oBSLwQBhdw3WvYdr72j1tYCT0JVBwh8M+A/DAk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N97tgouPjOSxzfN4UN0nTKCAT9du+rcWrRRmpcai3ZbRFl/TvOw/CyoLtkXVm0Ora
 EFMZK3wP5fyC/lyC+y9ngx/uLqfpxQqhUW705csK2v1dqEwjwgxmkC+6xYkz7Lu0Jk
 9euYKpAbhuZ69+KMILBOkvpPpi/Z9ktxQt4uh32I=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 173/209] lightnvm: do no update csecs and sos on
 1.2
Date: Tue, 12 Nov 2019 20:49:49 -0500
Message-Id: <20191113015025.9685-173-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_175518_706621_1D93693A 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>,
 linux-nvme@lists.infradead.org,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@cnexlabs.com>,
 =?UTF-8?q?Matias=20Bj=C3=B8rling?= <mb@lightnvm.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

RnJvbTogSmF2aWVyIEdvbnrDoWxleiA8amF2aWVyQGphdmlnb24uY29tPgoKWyBVcHN0cmVhbSBj
b21taXQgNmZkMDVjYWQ1ZWUxMjkwYjI3NmRkOGVkOTBhMWUwMTliMWZhNTc3YSBdCgoxLjIgZGV2
aWNlcyBleHBvc2VzIHRoZWlyIGRhdGEgYW5kIG1ldGFkYXRhIHNpemUgdGhyb3VnaCB0aGUgc2Vw
YXJhdGUKaWRlbnRpZnkgY29tbWFuZC4gTWFrZSBzdXJlIHRoYXQgdGhlIE5WTWUgTEJBIGZvcm1h
dCBkb2VzIG5vdCBvdmVycmlkZQp0aGVzZSB2YWx1ZXMuCgpTaWduZWQtb2ZmLWJ5OiBKYXZpZXIg
R29uesOhbGV6IDxqYXZpZXJAY25leGxhYnMuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXRpYXMgQmrD
uHJsaW5nIDxtYkBsaWdodG52bS5pbz4KU2lnbmVkLW9mZi1ieTogSmVucyBBeGJvZSA8YXhib2VA
a2VybmVsLmRrPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+
Ci0tLQogZHJpdmVycy9udm1lL2hvc3QvbGlnaHRudm0uYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvbGlnaHRu
dm0uYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2xpZ2h0bnZtLmMKaW5kZXggNmZlNTkyM2M5NWQ0YS4u
YTY5NTUzZTc1ZjM4ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvbGlnaHRudm0uYwor
KysgYi9kcml2ZXJzL252bWUvaG9zdC9saWdodG52bS5jCkBAIC05NjgsNiArOTY4LDkgQEAgdm9p
ZCBudm1lX252bV91cGRhdGVfbnZtX2luZm8oc3RydWN0IG52bWVfbnMgKm5zKQogCXN0cnVjdCBu
dm1fZGV2ICpuZGV2ID0gbnMtPm5kZXY7CiAJc3RydWN0IG52bV9nZW8gKmdlbyA9ICZuZGV2LT5n
ZW87CiAKKwlpZiAoZ2VvLT52ZXJzaW9uID09IE5WTV9PQ1NTRF9TUEVDXzEyKQorCQlyZXR1cm47
CisKIAlnZW8tPmNzZWNzID0gMSA8PCBucy0+bGJhX3NoaWZ0OwogCWdlby0+c29zID0gbnMtPm1z
OwogfQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bnZtZQo=
