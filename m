Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4825AECF57
	for <lists+linux-nvme@lfdr.de>; Sat,  2 Nov 2019 15:55:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xaPMGXXdJt5DWOx8efdv4ra8WjZsn14wDhP+iDmBtoo=; b=ilyxEkHxmo4PaK
	86CbCfmBd47QSsP8oMC0+QClCi71AyecAtQYs7s3FaulJjuGHxjWur/u8upUbHTSL9OuiYxu0swLP
	QQCMGSCMNrcFWNomIhqk0w+eL6wpQfsTc3Ho27D/GuLEH5wxD++2PtMkEtcKXDbqEObju5AqkvKj3
	N5wkh5ehrRTU7DTDX5vPKshi26GyDdO+V2zn8Kv+hRcc/3SjikWPhJhqbVFBZuKUPw9dP2ZJfirdN
	d2xjU4p7POOdX5Ui1KYK2T8qgl4Fb4yBkHzAarhhJxo++UWC37aFytSkeSp9DkpmqeUxPV0jQVj3A
	e+7tqVgIcU0X5czg7ltA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQuoV-0004Hi-KV; Sat, 02 Nov 2019 14:55:39 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQuoQ-0004HP-Os
 for linux-nvme@lists.infradead.org; Sat, 02 Nov 2019 14:55:36 +0000
Received: by mail-pg1-x543.google.com with SMTP id p12so8284630pgn.6
 for <linux-nvme@lists.infradead.org>; Sat, 02 Nov 2019 07:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=thMGiWtPotBrPzDcwNB43U0hWmRVdlpTgozjZolFM50=;
 b=Pb4hjB1Hy0RJIHZMjfzigpr5wF6tmqmtxVqjfmaQ5JztMvVW47hqxokNeSptkmRBG6
 Nfu5KnZvVUT33J78V53d8uCuoHTm5nE+eGPNbXRQR3FcATKnaHWLbjhnKD2ScpUIiLlw
 NNY8R3XFcNfi+JC/dD0tjwGSsJIuyCI0kSpVffzxYAVqJxQADPe6Na5kq5ui9vN4Qq5G
 wuSlvSkcMqUoMKQZgN0dbsl92jtp+FC81McbPt5WKrjiiTblbPscKcN8i7JRZ1zKPv/b
 xmVMFGr6OW1nbF4+PiT+wsgM5n4AIkXmp0UmMlSJG9ec8Y/iTwvSi6YLxrQu5onJZEWn
 PTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=thMGiWtPotBrPzDcwNB43U0hWmRVdlpTgozjZolFM50=;
 b=DVQBf7FQ5ICfrq3yKj2DxS10bOKP3qh4Z1vAv6ZZIVDI/uBQE7TVFYNnneiWFB9cDR
 p/6CS2oENE3esUj78M75DgkoQgWaUibkfcY+tBMcB0V2CfDlkcWhB94cNzk4L1gchkIh
 mTB4efC3VwLbYSK5zuhPjoxKh0ySThd95/6qtqepAJBRMnyZz+1sIp2vADuUwwmXAkhK
 JFD5oap6i/jzkBNDCyXycAcWRWoC2YQM5Q7b3I47GIkk/3pVvWKUKt/IVHRXsHoFwbYp
 UdB/mcQZeSOQP/Wp1YcDYU5R7M35Dyt1gGcRjPU3ROWxxK0jwoY+UCPgHX5OOksesbEq
 KG6Q==
X-Gm-Message-State: APjAAAVWoJtmopbYSWMiLWY9aK+bi9rEEBms4QJcvN0QXZbv46+kbPcb
 SHUpNnmWdeIF6v9JTpg9uR4=
X-Google-Smtp-Source: APXvYqz3AcS9YgLMPOLwFF/ppQIwJgrkw00mSOE7E9RLWB0lCnCpgDmRKNfyOetfHmcqwfabXoQJig==
X-Received: by 2002:a62:2686:: with SMTP id
 m128mr20762874pfm.143.1572706533632; 
 Sat, 02 Nov 2019 07:55:33 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id q8sm4345861pjp.10.2019.11.02.07.55.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 02 Nov 2019 07:55:32 -0700 (PDT)
From: Guenter Roeck <linux@roeck-us.net>
To: Keith Busch <kbusch@kernel.org>
Subject: [PATCH v4] nvme: Add hardware monitoring support
Date: Sat,  2 Nov 2019 07:55:30 -0700
Message-Id: <20191102145530.16104-1-linux@roeck-us.net>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_075534_838606_9E9A7259 
X-CRM114-Status: GOOD (  23.57  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Guenter Roeck <linux@roeck-us.net>, Christoph Hellwig <hch@lst.de>,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

bnZtZSBkZXZpY2VzIHJlcG9ydCB0ZW1wZXJhdHVyZSBpbmZvcm1hdGlvbiBpbiB0aGUgY29udHJv
bGxlciBpbmZvcm1hdGlvbgooZm9yIGxpbWl0cykgYW5kIGluIHRoZSBzbWFydCBsb2cuIEN1cnJl
bnRseSwgdGhlIG9ubHkgbWVhbnMgdG8gcmV0cmlldmUKdGhpcyBpbmZvcm1hdGlvbiBpcyB0aGUg
bnZtZSBjb21tYW5kIGxpbmUgaW50ZXJmYWNlLCB3aGljaCByZXF1aXJlcwpzdXBlci11c2VyIHBy
aXZpbGVnZXMuCgpBdCB0aGUgc2FtZSB0aW1lLCBpdCB3b3VsZCBiZSBkZXNpcmFibGUgdG8gYmUg
YWJsZSB0byB1c2UgTlZNZSB0ZW1wZXJhdHVyZQppbmZvcm1hdGlvbiBmb3IgdGhlcm1hbCBjb250
cm9sLgoKVGhpcyBwYXRjaCBhZGRzIHN1cHBvcnQgdG8gcmVhZCBOVk1lIHRlbXBlcmF0dXJlcyBm
cm9tIHRoZSBrZXJuZWwgdXNpbmcgdGhlCmh3bW9uIEFQSSBhbmQgYWRkcyB0ZW1wZXJhdHVyZSB6
b25lcyBmb3IgTlZNZSBkcml2ZXMuIFRoZSB0aGVybWFsIHN1YnN5c3RlbQpjYW4gdXNlIHRoaXMg
aW5mb3JtYXRpb24gdG8gc2V0IHRoZXJtYWwgcG9saWNpZXMsIGFuZCB1c2Vyc3BhY2UgY2FuIGFj
Y2VzcwppdCB1c2luZyBsaWJzZW5zb3JzIGFuZC9vciB0aGUgInNlbnNvcnMiIGNvbW1hbmQuCgpF
eGFtcGxlIG91dHB1dCBmcm9tIHRoZSAic2Vuc29ycyIgY29tbWFuZDoKCm52bWUtcGNpLTAxMDAK
QWRhcHRlcjogUENJIGFkYXB0ZXIKQ29tcG9zaXRlOiAgICArMzkuMMKwQyAgKGhpZ2ggPSArODUu
MMKwQywgY3JpdCA9ICs4NS4wwrBDKQpTZW5zb3IgMTogICAgICszOS4wwrBDClNlbnNvciAyOiAg
ICAgKzQxLjDCsEMKClNpZ25lZC1vZmYtYnk6IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVz
Lm5ldD4KLS0tCnY0OiBBdHRhY2ggaHdtb24gZGV2aWNlIHRvIGN0cmwtPmRldiBpbnN0ZWFkIG9m
IGN0cmwtPmRldmljZQogICAgVXNlICJudm1lIiBhcyBod21vbiBkZXZpY2UgY2hpcCBuYW1lCgp2
MzogTlZNRSAtPiBOVk1lCiAgICBDYWxsIG52bWVfaHdtb25faW5pdCgpIG9ubHkgb25jZSwgd2hl
biB0aGUgY29udHJvbGxlciBpcyBmaXJzdAogICAgaWRlbnRpZmllZAogICAgUHJvdGVjdCBjYWxs
IHRvIG52bWVfZ2V0X2xvZygpIGFuZCByZWFkaW5nIHRoZSBsb2cgd2l0aCBtdXRleAogICAgQ29u
dmVydCBlcnJvciByZXR1cm4gZnJvbSBudm1lX2dldF9sb2coKSB0byBMaW51eCBlcnJvciBjb2Rl
CiAgICBpbiBudm1lX2h3bW9uX2dldF9zbWFydF9sb2coKQogICAgRG9uJ3QgcmVhZCBzbWFydCBs
b2cgZm9yIHJlcG9ydGluZyB3YXJuaW5nIGFuZCBjcml0aWNhbCBsaW1pdHMKICAgIFVzZSBnZXRf
dW5hbGlnbmVkX2xlMTYoKSBpbnN0ZWFkIG9mIGxlMTZfdG9fY3B1cCgpIHRvIHJlYWQgdGhlCiAg
ICBjb21wb3NpdGUgdGVtcGVyYXR1cmUKICAgIFVzZSAjaWZkZWYgQ09ORklHX05WTUVfSFdNT04g
aW5zdGVhZCBvZiBJU19FTkFCTEVEKENPTkZJR19OVk1FX0hXTU9OKQogICAgLUVQUk9UTyAtPiAt
RUlPIGZvciBnZW5lcmljIE5WTWUgbGV2ZWwgZXJyb3JzCiAgICBUYWItYWxpZ24gJz0nIGluIGRh
dGEgc3RydWN0dXJlIGluaXRpYWxpemF0aW9ucwoKdjI6IFVzZSBkZXZtX2tmcmVlKCkgdG8gcmVs
ZWFzZSBtZW1vcnkgaW4gZXJyb3IgcGF0aAoKVGVzdGVkIHdpdGggdGhlIGZvbGxvd2luZyBOVk1l
IGRyaXZlczoKCUludGVsIFNTRFBFS0tXNTEyRzcgNTAwR0IKCVNhbXN1bmcgU1NEIDk2MCBFVk8g
NTAwR0IKCVNhbXN1bmcgU1NEIDk3MCBFVk8gNTAwR0IKCVNhbXN1bmcgU1NEIDk3MCBFVk8gMVRC
CiBkcml2ZXJzL252bWUvaG9zdC9LY29uZmlnICAgICAgfCAgMTAgKysKIGRyaXZlcnMvbnZtZS9o
b3N0L01ha2VmaWxlICAgICB8ICAgMSArCiBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgICAgICAg
fCAgIDYgKysKIGRyaXZlcnMvbnZtZS9ob3N0L252bWUtaHdtb24uYyB8IDE4MSArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbnZtZS9ob3N0L252bWUuaCAgICAgICB8
ICAgOCArKwogNSBmaWxlcyBjaGFuZ2VkLCAyMDYgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvbnZtZS9ob3N0L252bWUtaHdtb24uYwoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbnZtZS9ob3N0L0tjb25maWcgYi9kcml2ZXJzL252bWUvaG9zdC9LY29uZmlnCmluZGV4IDJi
MzZmMDUyYmZiOS4uYzY0Mzk2MzhhNDE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL252bWUvaG9zdC9L
Y29uZmlnCisrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L0tjb25maWcKQEAgLTIzLDYgKzIzLDE2IEBA
IGNvbmZpZyBOVk1FX01VTFRJUEFUSAogCSAgIC9kZXYvbnZtZVhuWSBkZXZpY2Ugd2lsbCBzaG93
IHVwIGZvciBlYWNoIE5WTWUgbmFtZXNwYWNlcywKIAkgICBldmVuIGlmIGl0IGlzIGFjY2Vzc2li
bGUgdGhyb3VnaCBtdWx0aXBsZSBjb250cm9sbGVycy4KIAorY29uZmlnIE5WTUVfSFdNT04KKwli
b29sICJOVk1lIGhhcmR3YXJlIG1vbml0b3JpbmciCisJZGVwZW5kcyBvbiAoTlZNRV9DT1JFPXkg
JiYgSFdNT049eSkgfHwgKE5WTUVfQ09SRT1tICYmIEhXTU9OKQorCWhlbHAKKwkgIFRoaXMgcHJv
dmlkZXMgc3VwcG9ydCBmb3IgTlZNZSBoYXJkd2FyZSBtb25pdG9yaW5nLiBJZiBlbmFibGVkLAor
CSAgYSBoYXJkd2FyZSBtb25pdG9yaW5nIGRldmljZSB3aWxsIGJlIGNyZWF0ZWQgZm9yIGVhY2gg
TlZNZSBkcml2ZQorCSAgaW4gdGhlIHN5c3RlbS4KKworCSAgSWYgdW5zdXJlLCBzYXkgTi4KKwog
Y29uZmlnIE5WTUVfRkFCUklDUwogCXRyaXN0YXRlCiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZt
ZS9ob3N0L01ha2VmaWxlIGIvZHJpdmVycy9udm1lL2hvc3QvTWFrZWZpbGUKaW5kZXggOGE0YjY3
MWM1ZjBjLi4wM2RlNDc5N2E4NzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L01ha2Vm
aWxlCisrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L01ha2VmaWxlCkBAIC0xNCw2ICsxNCw3IEBAIG52
bWUtY29yZS0kKENPTkZJR19UUkFDSU5HKQkJKz0gdHJhY2UubwogbnZtZS1jb3JlLSQoQ09ORklH
X05WTUVfTVVMVElQQVRIKQkrPSBtdWx0aXBhdGgubwogbnZtZS1jb3JlLSQoQ09ORklHX05WTSkJ
CQkrPSBsaWdodG52bS5vCiBudm1lLWNvcmUtJChDT05GSUdfRkFVTFRfSU5KRUNUSU9OX0RFQlVH
X0ZTKQkrPSBmYXVsdF9pbmplY3QubworbnZtZS1jb3JlLSQoQ09ORklHX05WTUVfSFdNT04pCQkr
PSBudm1lLWh3bW9uLm8KIAogbnZtZS15CQkJCQkrPSBwY2kubwogCmRpZmYgLS1naXQgYS9kcml2
ZXJzL252bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKaW5kZXggZmE3
YmEwOWRjYTc3Li5kMDM5ZTM5MmRlMzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2Nv
cmUuYworKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKQEAgLTI3OTYsNiArMjc5Niw5IEBA
IGludCBudm1lX2luaXRfaWRlbnRpZnkoc3RydWN0IG52bWVfY3RybCAqY3RybCkKIAljdHJsLT5v
bmNzID0gbGUxNl90b19jcHUoaWQtPm9uY3MpOwogCWN0cmwtPm10ZmEgPSBsZTE2X3RvX2NwdShp
ZC0+bXRmYSk7CiAJY3RybC0+b2FlcyA9IGxlMzJfdG9fY3B1KGlkLT5vYWVzKTsKKwljdHJsLT53
Y3RlbXAgPSBsZTE2X3RvX2NwdShpZC0+d2N0ZW1wKTsKKwljdHJsLT5jY3RlbXAgPSBsZTE2X3Rv
X2NwdShpZC0+Y2N0ZW1wKTsKKwogCWF0b21pY19zZXQoJmN0cmwtPmFib3J0X2xpbWl0LCBpZC0+
YWNsICsgMSk7CiAJY3RybC0+dndjID0gaWQtPnZ3YzsKIAlpZiAoaWQtPm1kdHMpCkBAIC0yODk1
LDYgKzI4OTgsOSBAQCBpbnQgbnZtZV9pbml0X2lkZW50aWZ5KHN0cnVjdCBudm1lX2N0cmwgKmN0
cmwpCiAJaWYgKHJldCA8IDApCiAJCXJldHVybiByZXQ7CiAKKwlpZiAoIWN0cmwtPmlkZW50aWZp
ZWQpCisJCW52bWVfaHdtb25faW5pdChjdHJsKTsKKwogCWN0cmwtPmlkZW50aWZpZWQgPSB0cnVl
OwogCiAJcmV0dXJuIDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9udm1lLWh3bW9u
LmMgYi9kcml2ZXJzL252bWUvaG9zdC9udm1lLWh3bW9uLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi4yOGI0YjdmNDNiYjAKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2
ZXJzL252bWUvaG9zdC9udm1lLWh3bW9uLmMKQEAgLTAsMCArMSwxODEgQEAKKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCisvKgorICogTlZNIEV4cHJlc3MgaGFyZHdhcmUgbW9u
aXRvcmluZyBzdXBwb3J0CisgKiBDb3B5cmlnaHQgKGMpIDIwMTksIEd1ZW50ZXIgUm9lY2sKKyAq
LworCisjaW5jbHVkZSA8bGludXgvaHdtb24uaD4KKyNpbmNsdWRlIDxhc20vdW5hbGlnbmVkLmg+
CisKKyNpbmNsdWRlICJudm1lLmgiCisKK3N0cnVjdCBudm1lX2h3bW9uX2RhdGEgeworCXN0cnVj
dCBudm1lX2N0cmwgKmN0cmw7CisJc3RydWN0IG52bWVfc21hcnRfbG9nIGxvZzsKKwlzdHJ1Y3Qg
bXV0ZXggcmVhZF9sb2NrOworfTsKKworc3RhdGljIGludCBudm1lX2h3bW9uX2dldF9zbWFydF9s
b2coc3RydWN0IG52bWVfaHdtb25fZGF0YSAqZGF0YSkKK3sKKwlpbnQgcmV0OworCisJcmV0ID0g
bnZtZV9nZXRfbG9nKGRhdGEtPmN0cmwsIE5WTUVfTlNJRF9BTEwsIE5WTUVfTE9HX1NNQVJULCAw
LAorCQkJICAgJmRhdGEtPmxvZywgc2l6ZW9mKGRhdGEtPmxvZyksIDApOworCisJcmV0dXJuIHJl
dCA8PSAwID8gcmV0IDogLUVJTzsKK30KKworc3RhdGljIGludCBudm1lX2h3bW9uX3JlYWQoc3Ry
dWN0IGRldmljZSAqZGV2LCBlbnVtIGh3bW9uX3NlbnNvcl90eXBlcyB0eXBlLAorCQkJICAgdTMy
IGF0dHIsIGludCBjaGFubmVsLCBsb25nICp2YWwpCit7CisJc3RydWN0IG52bWVfaHdtb25fZGF0
YSAqZGF0YSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOworCXN0cnVjdCBudm1lX3NtYXJ0X2xvZyAq
bG9nID0gJmRhdGEtPmxvZzsKKwlpbnQgdGVtcDsKKwlpbnQgZXJyOworCisJLyoKKwkgKiBGaXJz
dCBoYW5kbGUgYXR0cmlidXRlcyB3aGljaCBkb24ndCByZXF1aXJlIHVzIHRvIHJlYWQKKwkgKiB0
aGUgc21hcnQgbG9nLgorCSAqLworCXN3aXRjaCAoYXR0cikgeworCWNhc2UgaHdtb25fdGVtcF9t
YXg6CisJCSp2YWwgPSAoZGF0YS0+Y3RybC0+d2N0ZW1wIC0gMjczKSAqIDEwMDA7CisJCXJldHVy
biAwOworCWNhc2UgaHdtb25fdGVtcF9jcml0OgorCQkqdmFsID0gKGRhdGEtPmN0cmwtPmNjdGVt
cCAtIDI3MykgKiAxMDAwOworCQlyZXR1cm4gMDsKKwlkZWZhdWx0OgorCQlicmVhazsKKwl9CisK
KwltdXRleF9sb2NrKCZkYXRhLT5yZWFkX2xvY2spOworCWVyciA9IG52bWVfaHdtb25fZ2V0X3Nt
YXJ0X2xvZyhkYXRhKTsKKwlpZiAoZXJyKQorCQlnb3RvIHVubG9jazsKKworCXN3aXRjaCAoYXR0
cikgeworCWNhc2UgaHdtb25fdGVtcF9pbnB1dDoKKwkJaWYgKCFjaGFubmVsKQorCQkJdGVtcCA9
IGdldF91bmFsaWduZWRfbGUxNihsb2ctPnRlbXBlcmF0dXJlKTsKKwkJZWxzZQorCQkJdGVtcCA9
IGxlMTZfdG9fY3B1KGxvZy0+dGVtcF9zZW5zb3JbY2hhbm5lbCAtIDFdKTsKKwkJKnZhbCA9ICh0
ZW1wIC0gMjczKSAqIDEwMDA7CisJCWJyZWFrOworCWNhc2UgaHdtb25fdGVtcF9jcml0X2FsYXJt
OgorCQkqdmFsID0gISEobG9nLT5jcml0aWNhbF93YXJuaW5nICYgTlZNRV9TTUFSVF9DUklUX1RF
TVBFUkFUVVJFKTsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJZXJyID0gLUVPUE5PVFNVUFA7CisJ
CWJyZWFrOworCX0KK3VubG9jazoKKwltdXRleF91bmxvY2soJmRhdGEtPnJlYWRfbG9jayk7CisJ
cmV0dXJuIGVycjsKK30KKworc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBudm1lX2h3bW9uX3Nl
bnNvcl9uYW1lc1tdID0geworCSJDb21wb3NpdGUiLAorCSJTZW5zb3IgMSIsCisJIlNlbnNvciAy
IiwKKwkiU2Vuc29yIDMiLAorCSJTZW5zb3IgNCIsCisJIlNlbnNvciA1IiwKKwkiU2Vuc29yIDYi
LAorCSJTZW5zb3IgNyIsCisJIlNlbnNvciA4IiwKK307CisKK3N0YXRpYyBpbnQgbnZtZV9od21v
bl9yZWFkX3N0cmluZyhzdHJ1Y3QgZGV2aWNlICpkZXYsCisJCQkJICBlbnVtIGh3bW9uX3NlbnNv
cl90eXBlcyB0eXBlLCB1MzIgYXR0ciwKKwkJCQkgIGludCBjaGFubmVsLCBjb25zdCBjaGFyICoq
c3RyKQoreworCSpzdHIgPSBudm1lX2h3bW9uX3NlbnNvcl9uYW1lc1tjaGFubmVsXTsKKwlyZXR1
cm4gMDsKK30KKworc3RhdGljIHVtb2RlX3QgbnZtZV9od21vbl9pc192aXNpYmxlKGNvbnN0IHZv
aWQgKl9kYXRhLAorCQkJCSAgICAgZW51bSBod21vbl9zZW5zb3JfdHlwZXMgdHlwZSwKKwkJCQkg
ICAgIHUzMiBhdHRyLCBpbnQgY2hhbm5lbCkKK3sKKwljb25zdCBzdHJ1Y3QgbnZtZV9od21vbl9k
YXRhICpkYXRhID0gX2RhdGE7CisKKwlzd2l0Y2ggKGF0dHIpIHsKKwljYXNlIGh3bW9uX3RlbXBf
Y3JpdDoKKwkJaWYgKCFjaGFubmVsICYmIGRhdGEtPmN0cmwtPmNjdGVtcCkKKwkJCXJldHVybiAw
NDQ0OworCQlicmVhazsKKwljYXNlIGh3bW9uX3RlbXBfbWF4OgorCQlpZiAoIWNoYW5uZWwgJiYg
ZGF0YS0+Y3RybC0+d2N0ZW1wKQorCQkJcmV0dXJuIDA0NDQ7CisJCWJyZWFrOworCWNhc2UgaHdt
b25fdGVtcF9jcml0X2FsYXJtOgorCQlpZiAoIWNoYW5uZWwpCisJCQlyZXR1cm4gMDQ0NDsKKwkJ
YnJlYWs7CisJY2FzZSBod21vbl90ZW1wX2lucHV0OgorCWNhc2UgaHdtb25fdGVtcF9sYWJlbDoK
KwkJaWYgKCFjaGFubmVsIHx8IGRhdGEtPmxvZy50ZW1wX3NlbnNvcltjaGFubmVsIC0gMV0pCisJ
CQlyZXR1cm4gMDQ0NDsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJYnJlYWs7CisJfQorCXJldHVy
biAwOworfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IGh3bW9uX2NoYW5uZWxfaW5mbyAqbnZtZV9o
d21vbl9pbmZvW10gPSB7CisJSFdNT05fQ0hBTk5FTF9JTkZPKGNoaXAsIEhXTU9OX0NfUkVHSVNU
RVJfVFopLAorCUhXTU9OX0NIQU5ORUxfSU5GTyh0ZW1wLAorCQkJICAgSFdNT05fVF9JTlBVVCB8
IEhXTU9OX1RfTUFYIHwgSFdNT05fVF9DUklUIHwKKwkJCQlIV01PTl9UX0xBQkVMIHwgSFdNT05f
VF9DUklUX0FMQVJNLAorCQkJICAgSFdNT05fVF9JTlBVVCB8IEhXTU9OX1RfTEFCRUwsCisJCQkg
ICBIV01PTl9UX0lOUFVUIHwgSFdNT05fVF9MQUJFTCwKKwkJCSAgIEhXTU9OX1RfSU5QVVQgfCBI
V01PTl9UX0xBQkVMLAorCQkJICAgSFdNT05fVF9JTlBVVCB8IEhXTU9OX1RfTEFCRUwsCisJCQkg
ICBIV01PTl9UX0lOUFVUIHwgSFdNT05fVF9MQUJFTCwKKwkJCSAgIEhXTU9OX1RfSU5QVVQgfCBI
V01PTl9UX0xBQkVMLAorCQkJICAgSFdNT05fVF9JTlBVVCB8IEhXTU9OX1RfTEFCRUwsCisJCQkg
ICBIV01PTl9UX0lOUFVUIHwgSFdNT05fVF9MQUJFTCksCisJTlVMTAorfTsKKworc3RhdGljIGNv
bnN0IHN0cnVjdCBod21vbl9vcHMgbnZtZV9od21vbl9vcHMgPSB7CisJLmlzX3Zpc2libGUJPSBu
dm1lX2h3bW9uX2lzX3Zpc2libGUsCisJLnJlYWQJCT0gbnZtZV9od21vbl9yZWFkLAorCS5yZWFk
X3N0cmluZwk9IG52bWVfaHdtb25fcmVhZF9zdHJpbmcsCit9OworCitzdGF0aWMgY29uc3Qgc3Ry
dWN0IGh3bW9uX2NoaXBfaW5mbyBudm1lX2h3bW9uX2NoaXBfaW5mbyA9IHsKKwkub3BzCT0gJm52
bWVfaHdtb25fb3BzLAorCS5pbmZvCT0gbnZtZV9od21vbl9pbmZvLAorfTsKKwordm9pZCBudm1l
X2h3bW9uX2luaXQoc3RydWN0IG52bWVfY3RybCAqY3RybCkKK3sKKwlzdHJ1Y3QgZGV2aWNlICpk
ZXYgPSBjdHJsLT5kZXY7CisJc3RydWN0IG52bWVfaHdtb25fZGF0YSAqZGF0YTsKKwlzdHJ1Y3Qg
ZGV2aWNlICpod21vbjsKKwlpbnQgZXJyOworCisJZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNp
emVvZigqZGF0YSksIEdGUF9LRVJORUwpOworCWlmICghZGF0YSkKKwkJcmV0dXJuOworCisJZGF0
YS0+Y3RybCA9IGN0cmw7CisJbXV0ZXhfaW5pdCgmZGF0YS0+cmVhZF9sb2NrKTsKKworCWVyciA9
IG52bWVfaHdtb25fZ2V0X3NtYXJ0X2xvZyhkYXRhKTsKKwlpZiAoZXJyKSB7CisJCWRldl93YXJu
KGRldiwgIkZhaWxlZCB0byByZWFkIHNtYXJ0IGxvZyAoZXJyb3IgJWQpXG4iLCBlcnIpOworCQlk
ZXZtX2tmcmVlKGRldiwgZGF0YSk7CisJCXJldHVybjsKKwl9CisKKwlod21vbiA9IGRldm1faHdt
b25fZGV2aWNlX3JlZ2lzdGVyX3dpdGhfaW5mbyhkZXYsICJudm1lIiwgZGF0YSwKKwkJCQkJCSAg
ICAgJm52bWVfaHdtb25fY2hpcF9pbmZvLAorCQkJCQkJICAgICBOVUxMKTsKKwlpZiAoSVNfRVJS
KGh3bW9uKSkgeworCQlkZXZfd2FybihkZXYsICJGYWlsZWQgdG8gaW5zdGFudGlhdGUgaHdtb24g
ZGV2aWNlXG4iKTsKKwkJZGV2bV9rZnJlZShkZXYsIGRhdGEpOworCX0KK30KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaCBiL2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaAppbmRl
eCAyMmU4NDAxMzUyYzIuLmNiM2IyNDJhMjE0ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9udm1lL2hv
c3QvbnZtZS5oCisrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaApAQCAtMjMxLDYgKzIzMSw4
IEBAIHN0cnVjdCBudm1lX2N0cmwgewogCXUxNiBrYXM7CiAJdTggbnBzczsKIAl1OCBhcHN0YTsK
Kwl1MTYgd2N0ZW1wOworCXUxNiBjY3RlbXA7CiAJdTMyIG9hZXM7CiAJdTMyIGFlbl9yZXN1bHQ7
CiAJdTMyIGN0cmF0dDsKQEAgLTY1Miw0ICs2NTQsMTAgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3Qg
bnZtZV9ucyAqbnZtZV9nZXRfbnNfZnJvbV9kZXYoc3RydWN0IGRldmljZSAqZGV2KQogCXJldHVy
biBkZXZfdG9fZGlzayhkZXYpLT5wcml2YXRlX2RhdGE7CiB9CiAKKyNpZmRlZiBDT05GSUdfTlZN
RV9IV01PTgordm9pZCBudm1lX2h3bW9uX2luaXQoc3RydWN0IG52bWVfY3RybCAqY3RybCk7Cisj
ZWxzZQorc3RhdGljIGlubGluZSB2b2lkIG52bWVfaHdtb25faW5pdChzdHJ1Y3QgbnZtZV9jdHJs
ICpjdHJsKSB7IH0KKyNlbmRpZgorCiAjZW5kaWYgLyogX05WTUVfSCAqLwotLSAKMi4xNy4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
