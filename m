Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473FDFCA17
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 16:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8J4aIwXrEYnsWvVfAqRuVeSmPf4ErScX7n4UG37SuQQ=; b=gJWXLqbO+NJIqW
	c3Wd2Jp7UWnIvek+UPT+TgxQcohTzcwxg9qSJrjKzTSp03HFUTrmKcLsMe4PI06dGNq3m509gARqT
	bcMGRVW60A7ct4xKz4xTC/qkDWnrpPKiEMzwGE65QoE5IvoXZoq4AzUJXmtg18+WNdRFxGQ9prdsS
	DsxlWGjogmwsCU652+qnTwl9zwmNrp6+8h322r2M5tXt2KWz7+hKHQEmrvKZ6MJevXShn4GJa1izk
	m5YfnSf2sBhXHVbnA6RnvtmryIVo3P4QWggYpk59/jlr51CC1NhxTlz8H9bSYax0nkc3O0SGdr4Em
	yQHdX1a0NU96NMThBfjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHEh-0006W1-0C; Thu, 14 Nov 2019 15:40:43 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHER-0006TS-Nj
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 15:40:29 +0000
Received: by mail-pf1-x434.google.com with SMTP id q13so4494753pff.2
 for <linux-nvme@lists.infradead.org>; Thu, 14 Nov 2019 07:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R2+zodGVtvQoiEBKHSA6Mn33Zg1Y72Q25ujavzGtPdg=;
 b=NbMc98CrhfbDtbnNgJ+nqKURZmp0zWK2p8rZca8DdEMJmHfaHM9qH+6+Yfm6BdbGBt
 SjwWZtjcNVwsBd3HyuJwSuHwDDUclRPhtSUDac0M/qQw/tpMvaJVrgeco1sq+Q7UrJjn
 7kbwfVqmWh98Frf0e0RkuhEV/gGXNjs+njK/GCmlQYpoCgBao9t6R7cz6ThZkWKJWVNd
 aMAgY/WYID5VyE1JJv/2BEterm14oxg8LsTe8TAy1HA+T/VemiznZJywAmaUYbNtveoj
 C8JDLgis5IZFCc7ToTw6eTz2VNQDsRSGugUbMpnakwEIsdu2l/OtDrWrjB+23M5GswqG
 Z8Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R2+zodGVtvQoiEBKHSA6Mn33Zg1Y72Q25ujavzGtPdg=;
 b=PdyA6KelO3qPWZ1EnnpattNf2F3LQre3BddsTJjLtTKTBzzW2+dWEz5+F8e1MhA0Xu
 y4aoHTn0qAobPE53xo+9Y9dTvbYdDyCg5s3RYP2dsZJ+BroEqkit8Fn7ota69d7suXK5
 tDegGurpS5Oub3caOCJyHTgJjLp5UFnidCUXG1O2QTTOi2EtDfxw37S8WbuR61LdAJ05
 m4RovV/RlxJ3cyQ26RMyraBv6vLAICFC7znUqG3zncL0MKw9MCWOqFVol9udAuVd8Lkr
 K+crS82vT7QC7uPHeAL6oK/ieVqh1spaAN5sJsiit6qGDsfM4JXAJYFoH+9UfhfXBmst
 RJtA==
X-Gm-Message-State: APjAAAUZaUxF21XfNLyPV0595zVOobiMllYcxJ/7kkH21/ifH2EQ3/4K
 p5y6RV3VjyQdKh5bqWP5l/VFCs4r
X-Google-Smtp-Source: APXvYqw2g4ndHVQNTcWEt5PWEF9YT0GVPS6a9Hh3cmuJz8aSHsDQW1cywIoZISAzJwHzP3Me0HR8bA==
X-Received: by 2002:a17:90a:1a08:: with SMTP id
 8mr13490426pjk.12.1573746026077; 
 Thu, 14 Nov 2019 07:40:26 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id 206sm11490858pfu.45.2019.11.14.07.40.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 14 Nov 2019 07:40:25 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-hwmon@vger.kernel.org
Subject: [PATCH v2 1/2] nvme: hwmon: provide temperature min and max values
 for each sensor
Date: Fri, 15 Nov 2019 00:40:00 +0900
Message-Id: <1573746001-20979-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573746001-20979-1-git-send-email-akinobu.mita@gmail.com>
References: <1573746001-20979-1-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_074027_771783_9FBA8B70 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

QWNjb3JkaW5nIHRvIHRoZSBOVk1lIHNwZWNpZmljYXRpb24sIHRoZSBvdmVyIHRlbXBlcmF0dXJl
IHRocmVzaG9sZCBhbmQKdW5kZXIgdGVtcGVyYXR1cmUgdGhyZXNob2xkIGZlYXR1cmVzIHNoYWxs
IGJlIGltcGxlbWVudGVkIGZvciBDb21wb3NpdGUKVGVtcGVyYXR1cmUgaWYgYSBub24temVybyBX
Q1RFTVAgZmllbGQgdmFsdWUgaXMgcmVwb3J0ZWQgaW4gdGhlIElkZW50aWZ5CkNvbnRyb2xsZXIg
ZGF0YSBzdHJ1Y3R1cmUuICBUaGUgZmVhdHVyZXMgYXJlIGFsc28gaW1wbGVtZW50ZWQgZm9yIGFs
bAppbXBsZW1lbnRlZCB0ZW1wZXJhdHVyZSBzZW5zb3JzIChpLmUuLCBhbGwgVGVtcGVyYXR1cmUg
U2Vuc29yIGZpZWxkcyB0aGF0CnJlcG9ydCBhIG5vbi16ZXJvIHZhbHVlKS4KClRoaXMgcHJvdmlk
ZXMgdGhlIG92ZXIgdGVtcGVyYXR1cmUgdGhyZXNob2xkIGFuZCB1bmRlciB0ZW1wZXJhdHVyZQp0
aHJlc2hvbGQgZm9yIGVhY2ggc2Vuc29yIGFzIHRlbXBlcmF0dXJlIG1pbiBhbmQgbWF4IHZhbHVl
cyBvZiBod21vbgpzeXNmcyBhdHRyaWJ1dGVzLgoKVGhlIFdDVEVNUCBpcyBhbHJlYWR5IHByb3Zp
ZGVkIGFzIGEgdGVtcGVyYXR1cmUgbWF4IHZhbHVlIGZvciBDb21wb3NpdGUKVGVtcGVyYXR1cmUs
IGJ1dCB0aGlzIGNoYW5nZSBpc24ndCBpbmNvbXBhdGlibGUuICBCZWNhdXNlIHRoZSBkZWZhdWx0
CnZhbHVlIG9mIHRoZSBvdmVyIHRlbXBlcmF0dXJlIHRocmVzaG9sZCBmb3IgQ29tcG9zaXRlIFRl
bXBlcmF0dXJlIGlzCnRoZSBXQ1RFTVAuCgpOb3cgdGhlIGFsYXJtIGF0dHJpYnV0ZSBmb3IgQ29t
cG9zaXRlIFRlbXBlcmF0dXJlIGluZGljYXRlcyBvbmUgb2YgdGhlCnRlbXBlcmF0dXJlIGlzIG91
dHNpZGUgb2YgYSB0ZW1wZXJhdHVyZSB0aHJlc2hvbGQuICBCZWNhdXNlIHRoZXJlIGlzIG9ubHkK
YSBzaW5nbGUgYml0IGluIENyaXRpY2FsIFdhcm5pbmcgZmllbGQgdGhhdCBpbmRpY2F0ZXMgYSB0
ZW1wZXJhdHVyZSBpcwpvdXRzaWRlIG9mIGEgdGhyZXNob2xkLgoKRXhhbXBsZSBvdXRwdXQgZnJv
bSB0aGUgInNlbnNvcnMiIGNvbW1hbmQ6Cgpudm1lLXBjaS0wMTAwCkFkYXB0ZXI6IFBDSSBhZGFw
dGVyCkNvbXBvc2l0ZTogICAgKzMzLjnCsEMgIChsb3cgID0gLTI3My4xwrBDLCBoaWdoID0gKzY5
LjjCsEMpCiAgICAgICAgICAgICAgICAgICAgICAgKGNyaXQgPSArNzkuOMKwQykKU2Vuc29yIDE6
ICAgICArMzQuOcKwQyAgKGxvdyAgPSAtMjczLjHCsEMsIGhpZ2ggPSArNjUyNjEuOMKwQykKU2Vu
c29yIDI6ICAgICArMzEuOcKwQyAgKGxvdyAgPSAtMjczLjHCsEMsIGhpZ2ggPSArNjUyNjEuOMKw
QykKU2Vuc29yIDU6ICAgICArNDcuOcKwQyAgKGxvdyAgPSAtMjczLjHCsEMsIGhpZ2ggPSArNjUy
NjEuOMKwQykKClRoaXMgYWxzbyBhZGRzIGhlbHBlciBtYWNyb3MgZm9yIGtlbHZpbiBmcm9tL3Rv
IG1pbGxpIENlbHNpdXMgY29udmVyc2lvbiwKYW5kIHJlcGxhY2VzIHRoZSByZXBlYXRlZCBjb2Rl
IGluIG52bWUtaHdtb24uYy4KCkNjOiBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5vcmc+CkNj
OiBKZW5zIEF4Ym9lIDxheGJvZUBmYi5jb20+CkNjOiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxz
dC5kZT4KQ2M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+CkNjOiBKZWFuIERlbHZh
cmUgPGpkZWx2YXJlQHN1c2UuY29tPgpDYzogR3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMu
bmV0PgpTaWduZWQtb2ZmLWJ5OiBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0YUBnbWFpbC5jb20+
Ci0tLQogZHJpdmVycy9udm1lL2hvc3QvbnZtZS1od21vbi5jIHwgMTA2ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKystLS0tLS0tCiBpbmNsdWRlL2xpbnV4L252bWUuaCAgICAgICAg
ICAgfCAgIDYgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDk2IGluc2VydGlvbnMoKyksIDE2IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L252bWUtaHdtb24uYyBiL2Ry
aXZlcnMvbnZtZS9ob3N0L252bWUtaHdtb24uYwppbmRleCA1NDgwY2JiLi45N2E4NGI0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL252bWUvaG9zdC9udm1lLWh3bW9uLmMKKysrIGIvZHJpdmVycy9udm1l
L2hvc3QvbnZtZS1od21vbi5jCkBAIC05LDEyICs5LDU3IEBACiAKICNpbmNsdWRlICJudm1lLmgi
CiAKKy8qIFRoZXNlIG1hY3JvcyBzaG91bGQgYmUgbW92ZWQgdG8gbGludXgvdGVtcGVyYXR1cmUu
aCAqLworI2RlZmluZSBNSUxMSUNFTFNJVVNfVE9fS0VMVklOKHQpIERJVl9ST1VORF9DTE9TRVNU
KCh0KSArIDI3MzE1MCwgMTAwMCkKKyNkZWZpbmUgS0VMVklOX1RPX01JTExJQ0VMU0lVUyh0KSAo
KHQpICogMTAwMEwgLSAyNzMxNTApCisKIHN0cnVjdCBudm1lX2h3bW9uX2RhdGEgewogCXN0cnVj
dCBudm1lX2N0cmwgKmN0cmw7CiAJc3RydWN0IG52bWVfc21hcnRfbG9nIGxvZzsKIAlzdHJ1Y3Qg
bXV0ZXggcmVhZF9sb2NrOwogfTsKIAorc3RhdGljIGludCBudm1lX2dldF90ZW1wX3RocmVzaChz
dHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCBpbnQgc2Vuc29yLCBib29sIHVuZGVyLAorCQkJCWxvbmcg
KnRlbXApCit7CisJdW5zaWduZWQgaW50IHRocmVzaG9sZCA9IHNlbnNvciA8PCBOVk1FX1RFTVBf
VEhSRVNIX1NFTEVDVF9TSElGVDsKKwl1MzIgc3RhdHVzOworCWludCByZXQ7CisKKwlpZiAodW5k
ZXIpCisJCXRocmVzaG9sZCB8PSBOVk1FX1RFTVBfVEhSRVNIX1RZUEVfVU5ERVI7CisKKwlyZXQg
PSBudm1lX2dldF9mZWF0dXJlcyhjdHJsLCBOVk1FX0ZFQVRfVEVNUF9USFJFU0gsIHRocmVzaG9s
ZCwgTlVMTCwgMCwKKwkJCQkmc3RhdHVzKTsKKwlpZiAocmV0ID4gMCkKKwkJcmV0dXJuIC1FSU87
CisJaWYgKHJldCA8IDApCisJCXJldHVybiByZXQ7CisJKnRlbXAgPSBLRUxWSU5fVE9fTUlMTElD
RUxTSVVTKHN0YXR1cyAmIE5WTUVfVEVNUF9USFJFU0hfTUFTSyk7CisKKwlyZXR1cm4gMDsKK30K
Kworc3RhdGljIGludCBudm1lX3NldF90ZW1wX3RocmVzaChzdHJ1Y3QgbnZtZV9jdHJsICpjdHJs
LCBpbnQgc2Vuc29yLCBib29sIHVuZGVyLAorCQkJCWxvbmcgdGVtcCkKK3sKKwl1bnNpZ25lZCBp
bnQgdGhyZXNob2xkID0gc2Vuc29yIDw8IE5WTUVfVEVNUF9USFJFU0hfU0VMRUNUX1NISUZUOwor
CWludCByZXQ7CisKKwl0ZW1wID0gTUlMTElDRUxTSVVTX1RPX0tFTFZJTih0ZW1wKTsKKwl0aHJl
c2hvbGQgfD0gY2xhbXBfdmFsKHRlbXAsIDAsIE5WTUVfVEVNUF9USFJFU0hfTUFTSyk7CisKKwlp
ZiAodW5kZXIpCisJCXRocmVzaG9sZCB8PSBOVk1FX1RFTVBfVEhSRVNIX1RZUEVfVU5ERVI7CisK
KwlyZXQgPSBudm1lX3NldF9mZWF0dXJlcyhjdHJsLCBOVk1FX0ZFQVRfVEVNUF9USFJFU0gsIHRo
cmVzaG9sZCwgTlVMTCwgMCwKKwkJCQlOVUxMKTsKKwlpZiAocmV0ID4gMCkKKwkJcmV0dXJuIC1F
SU87CisKKwlyZXR1cm4gcmV0OworfQorCiBzdGF0aWMgaW50IG52bWVfaHdtb25fZ2V0X3NtYXJ0
X2xvZyhzdHJ1Y3QgbnZtZV9od21vbl9kYXRhICpkYXRhKQogewogCWludCByZXQ7CkBAIC0zOSwx
MCArODQsMTEgQEAgc3RhdGljIGludCBudm1lX2h3bW9uX3JlYWQoc3RydWN0IGRldmljZSAqZGV2
LCBlbnVtIGh3bW9uX3NlbnNvcl90eXBlcyB0eXBlLAogCSAqLwogCXN3aXRjaCAoYXR0cikgewog
CWNhc2UgaHdtb25fdGVtcF9tYXg6Ci0JCSp2YWwgPSAoZGF0YS0+Y3RybC0+d2N0ZW1wIC0gMjcz
KSAqIDEwMDA7Ci0JCXJldHVybiAwOworCQlyZXR1cm4gbnZtZV9nZXRfdGVtcF90aHJlc2goZGF0
YS0+Y3RybCwgY2hhbm5lbCwgZmFsc2UsIHZhbCk7CisJY2FzZSBod21vbl90ZW1wX21pbjoKKwkJ
cmV0dXJuIG52bWVfZ2V0X3RlbXBfdGhyZXNoKGRhdGEtPmN0cmwsIGNoYW5uZWwsIHRydWUsIHZh
bCk7CiAJY2FzZSBod21vbl90ZW1wX2NyaXQ6Ci0JCSp2YWwgPSAoZGF0YS0+Y3RybC0+Y2N0ZW1w
IC0gMjczKSAqIDEwMDA7CisJCSp2YWwgPSBLRUxWSU5fVE9fTUlMTElDRUxTSVVTKGRhdGEtPmN0
cmwtPmNjdGVtcCk7CiAJCXJldHVybiAwOwogCWRlZmF1bHQ6CiAJCWJyZWFrOwpAQCAtNTksNyAr
MTA1LDcgQEAgc3RhdGljIGludCBudm1lX2h3bW9uX3JlYWQoc3RydWN0IGRldmljZSAqZGV2LCBl
bnVtIGh3bW9uX3NlbnNvcl90eXBlcyB0eXBlLAogCQkJdGVtcCA9IGdldF91bmFsaWduZWRfbGUx
Nihsb2ctPnRlbXBlcmF0dXJlKTsKIAkJZWxzZQogCQkJdGVtcCA9IGxlMTZfdG9fY3B1KGxvZy0+
dGVtcF9zZW5zb3JbY2hhbm5lbCAtIDFdKTsKLQkJKnZhbCA9ICh0ZW1wIC0gMjczKSAqIDEwMDA7
CisJCSp2YWwgPSBLRUxWSU5fVE9fTUlMTElDRUxTSVVTKHRlbXApOwogCQlicmVhazsKIAljYXNl
IGh3bW9uX3RlbXBfYWxhcm06CiAJCSp2YWwgPSAhIShsb2ctPmNyaXRpY2FsX3dhcm5pbmcgJiBO
Vk1FX1NNQVJUX0NSSVRfVEVNUEVSQVRVUkUpOwpAQCAtNzMsNiArMTE5LDIzIEBAIHN0YXRpYyBp
bnQgbnZtZV9od21vbl9yZWFkKHN0cnVjdCBkZXZpY2UgKmRldiwgZW51bSBod21vbl9zZW5zb3Jf
dHlwZXMgdHlwZSwKIAlyZXR1cm4gZXJyOwogfQogCitzdGF0aWMgaW50IG52bWVfaHdtb25fd3Jp
dGUoc3RydWN0IGRldmljZSAqZGV2LCBlbnVtIGh3bW9uX3NlbnNvcl90eXBlcyB0eXBlLAorCQkJ
ICAgIHUzMiBhdHRyLCBpbnQgY2hhbm5lbCwgbG9uZyB2YWwpCit7CisJc3RydWN0IG52bWVfaHdt
b25fZGF0YSAqZGF0YSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOworCisJc3dpdGNoIChhdHRyKSB7
CisJY2FzZSBod21vbl90ZW1wX21heDoKKwkJcmV0dXJuIG52bWVfc2V0X3RlbXBfdGhyZXNoKGRh
dGEtPmN0cmwsIGNoYW5uZWwsIGZhbHNlLCB2YWwpOworCWNhc2UgaHdtb25fdGVtcF9taW46CisJ
CXJldHVybiBudm1lX3NldF90ZW1wX3RocmVzaChkYXRhLT5jdHJsLCBjaGFubmVsLCB0cnVlLCB2
YWwpOworCWRlZmF1bHQ6CisJCWJyZWFrOworCX0KKworCXJldHVybiAtRU9QTk9UU1VQUDsKK30K
Kwogc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBudm1lX2h3bW9uX3NlbnNvcl9uYW1lc1tdID0g
ewogCSJDb21wb3NpdGUiLAogCSJTZW5zb3IgMSIsCkBAIC0xMDUsOCArMTY4LDEwIEBAIHN0YXRp
YyB1bW9kZV90IG52bWVfaHdtb25faXNfdmlzaWJsZShjb25zdCB2b2lkICpfZGF0YSwKIAkJCXJl
dHVybiAwNDQ0OwogCQlicmVhazsKIAljYXNlIGh3bW9uX3RlbXBfbWF4OgotCQlpZiAoIWNoYW5u
ZWwgJiYgZGF0YS0+Y3RybC0+d2N0ZW1wKQotCQkJcmV0dXJuIDA0NDQ7CisJY2FzZSBod21vbl90
ZW1wX21pbjoKKwkJaWYgKCghY2hhbm5lbCAmJiBkYXRhLT5jdHJsLT53Y3RlbXApIHx8CisJCSAg
ICAoY2hhbm5lbCAmJiBkYXRhLT5sb2cudGVtcF9zZW5zb3JbY2hhbm5lbCAtIDFdKSkKKwkJCXJl
dHVybiAwNjQ0OwogCQlicmVhazsKIAljYXNlIGh3bW9uX3RlbXBfYWxhcm06CiAJCWlmICghY2hh
bm5lbCkKQEAgLTEyNiwxNiArMTkxLDI0IEBAIHN0YXRpYyB1bW9kZV90IG52bWVfaHdtb25faXNf
dmlzaWJsZShjb25zdCB2b2lkICpfZGF0YSwKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaHdtb25fY2hh
bm5lbF9pbmZvICpudm1lX2h3bW9uX2luZm9bXSA9IHsKIAlIV01PTl9DSEFOTkVMX0lORk8oY2hp
cCwgSFdNT05fQ19SRUdJU1RFUl9UWiksCiAJSFdNT05fQ0hBTk5FTF9JTkZPKHRlbXAsCi0JCQkg
ICBIV01PTl9UX0lOUFVUIHwgSFdNT05fVF9NQVggfCBIV01PTl9UX0NSSVQgfAotCQkJCUhXTU9O
X1RfTEFCRUwgfCBIV01PTl9UX0FMQVJNLAotCQkJICAgSFdNT05fVF9JTlBVVCB8IEhXTU9OX1Rf
TEFCRUwsCi0JCQkgICBIV01PTl9UX0lOUFVUIHwgSFdNT05fVF9MQUJFTCwKLQkJCSAgIEhXTU9O
X1RfSU5QVVQgfCBIV01PTl9UX0xBQkVMLAotCQkJICAgSFdNT05fVF9JTlBVVCB8IEhXTU9OX1Rf
TEFCRUwsCi0JCQkgICBIV01PTl9UX0lOUFVUIHwgSFdNT05fVF9MQUJFTCwKLQkJCSAgIEhXTU9O
X1RfSU5QVVQgfCBIV01PTl9UX0xBQkVMLAotCQkJICAgSFdNT05fVF9JTlBVVCB8IEhXTU9OX1Rf
TEFCRUwsCi0JCQkgICBIV01PTl9UX0lOUFVUIHwgSFdNT05fVF9MQUJFTCksCisJCQkgICBIV01P
Tl9UX0lOUFVUIHwgSFdNT05fVF9NQVggfCBIV01PTl9UX01JTiB8CisJCQkJSFdNT05fVF9DUklU
IHwgSFdNT05fVF9MQUJFTCB8IEhXTU9OX1RfQUxBUk0sCisJCQkgICBIV01PTl9UX0lOUFVUIHwg
SFdNT05fVF9NQVggfCBIV01PTl9UX01JTiB8CisJCQkJSFdNT05fVF9MQUJFTCwKKwkJCSAgIEhX
TU9OX1RfSU5QVVQgfCBIV01PTl9UX01BWCB8IEhXTU9OX1RfTUlOIHwKKwkJCQlIV01PTl9UX0xB
QkVMLAorCQkJICAgSFdNT05fVF9JTlBVVCB8IEhXTU9OX1RfTUFYIHwgSFdNT05fVF9NSU4gfAor
CQkJCUhXTU9OX1RfTEFCRUwsCisJCQkgICBIV01PTl9UX0lOUFVUIHwgSFdNT05fVF9NQVggfCBI
V01PTl9UX01JTiB8CisJCQkJSFdNT05fVF9MQUJFTCwKKwkJCSAgIEhXTU9OX1RfSU5QVVQgfCBI
V01PTl9UX01BWCB8IEhXTU9OX1RfTUlOIHwKKwkJCQlIV01PTl9UX0xBQkVMLAorCQkJICAgSFdN
T05fVF9JTlBVVCB8IEhXTU9OX1RfTUFYIHwgSFdNT05fVF9NSU4gfAorCQkJCUhXTU9OX1RfTEFC
RUwsCisJCQkgICBIV01PTl9UX0lOUFVUIHwgSFdNT05fVF9NQVggfCBIV01PTl9UX01JTiB8CisJ
CQkJSFdNT05fVF9MQUJFTCwKKwkJCSAgIEhXTU9OX1RfSU5QVVQgfCBIV01PTl9UX01BWCB8IEhX
TU9OX1RfTUlOIHwKKwkJCQlIV01PTl9UX0xBQkVMKSwKIAlOVUxMCiB9OwogCkBAIC0xNDMsNiAr
MjE2LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBod21vbl9vcHMgbnZtZV9od21vbl9vcHMgPSB7
CiAJLmlzX3Zpc2libGUJPSBudm1lX2h3bW9uX2lzX3Zpc2libGUsCiAJLnJlYWQJCT0gbnZtZV9o
d21vbl9yZWFkLAogCS5yZWFkX3N0cmluZwk9IG52bWVfaHdtb25fcmVhZF9zdHJpbmcsCisJLndy
aXRlCQk9IG52bWVfaHdtb25fd3JpdGUsCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGh3bW9u
X2NoaXBfaW5mbyBudm1lX2h3bW9uX2NoaXBfaW5mbyA9IHsKZGlmZiAtLWdpdCBhL2luY2x1ZGUv
bGludXgvbnZtZS5oIGIvaW5jbHVkZS9saW51eC9udm1lLmgKaW5kZXggMjY5YjJlOC4uMzQ3YTQ0
ZiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9udm1lLmgKKysrIGIvaW5jbHVkZS9saW51eC9u
dm1lLmgKQEAgLTgwMyw2ICs4MDMsMTIgQEAgc3RydWN0IG52bWVfd3JpdGVfemVyb2VzX2NtZCB7
CiAKIC8qIEZlYXR1cmVzICovCiAKK2VudW0geworCU5WTUVfVEVNUF9USFJFU0hfTUFTSwkJPSAw
eGZmZmYsCisJTlZNRV9URU1QX1RIUkVTSF9TRUxFQ1RfU0hJRlQJPSAxNiwKKwlOVk1FX1RFTVBf
VEhSRVNIX1RZUEVfVU5ERVIJPSAweDEwMDAwMCwKK307CisKIHN0cnVjdCBudm1lX2ZlYXRfYXV0
b19wc3QgewogCV9fbGU2NCBlbnRyaWVzWzMyXTsKIH07Ci0tIAoyLjcuNAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBs
aXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
