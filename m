Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A83077B26
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 20:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZM5eQzJ/SLCRN7p7UX7ZvU15pEjmp8dKV5wtPBPrTQ=; b=eWWRQhsj2I3Kkv
	DdEXHY/UUT9Jh9J+eatas3e6W12tyz26t+FchKfQfqSJeF87T2CLbMhQ0TRUNXoBinah3c50BbhLa
	F2Z4Rb13whiL2mgZ8tPFsVzo//CTx3iJ+VloRyXB5XQ9REPjWnZwefrjG6cGNaUWYH5ERMesv6Jl8
	wCCpBLtRTOv8iqcDJgaFjqDaWXAs9dS2n9fP4KcLfErw8tCGGwlCrnY282OXYjQclHcOUgOzeboE6
	2ozDCdmnyKYerk7BD3V5weg0xgY/Dt01fOfW9njYoofesrgBkyN0o0dZXhfG2P12mdWPJ0jOSM6jR
	fdVGS/+KqmXYgTrsQXzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrReY-0003fr-Ei; Sat, 27 Jul 2019 18:42:46 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrRe6-0003JE-CP
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 18:42:20 +0000
Received: by mail-pl1-x642.google.com with SMTP id w24so25952319plp.2
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 11:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l8sv0TA05KkL0HwozWdEAEfpNg1k9QkFJwfylIwz4V0=;
 b=be5wzvyUTebXIL3NlAwlr4WpjHJPHWSjmXxtnrkRn+mkqYVieqWGx6XG5a5IzZ4QHA
 TQob4sYQvIE9x9FSh73sQf8DnOlyIdvQSFmw7lxUCWhR8EbxYBX6FgoodPUQTXM3COlN
 wtVoL2Gkml8HgUgXn9amUMIpVO0Mi4JMhJEC835EVj/gKe3v8sSvkz5msTl4bTkPcj9e
 C82W+fx8wWOySjlggZcnuVIiUuITLFxm//3OJF+ROafP8PtsteqLp5CEjG0/LtfLPnV8
 WJ/gcQxJUSHSiU2nw6w6CCPxzXcmozCOI3kTL74ovn3phEycjOGM2svIkOPqF6C4OhSj
 jFDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l8sv0TA05KkL0HwozWdEAEfpNg1k9QkFJwfylIwz4V0=;
 b=dsD0wnk58tTfZBNHn5DTC84upFPZYyk29IJX/vFGD2C61+lpBuRFp2r0BRfCadrt6x
 Wb01eSioZcB2SRSO+3d/+hiXk9rinDT8LU9osM6AhWE3HJ3G1wuRKPda3DZ7HVm6D94e
 GYLZC5L+bGFr/pMLJPPgItu3iyNRnUMo6TvDz7ll3HkYNVJlWHfDvnbMzJ9/7OJC0vDD
 wjyx1CVlUEorcoyGTr5ksFmRqAIfhf/q5AsqYD4X6+gVPSCA5AziDDv7NehUQWkWEJ+N
 JydROBDvy9hPxwKEpCjmW5SHdAl4R1YBbrQKIhZLFOUbkvoBgaOCY5sgzd3j/7pPDmdD
 hMdg==
X-Gm-Message-State: APjAAAUmeuyhUJkOBORhEtYwF0sm15tgr3dVZiiGLRN8PgY9QNV2e+Nh
 FMnXYS+PK1hwkZb0F8c2BAwA5l6wQzs=
X-Google-Smtp-Source: APXvYqx6jq/VEzNdHxzYogR5dFowTeJ5TVIwtmnLz038C7tdTrs4RX8yslEhdJ8aD1AwhUXeE6kfpg==
X-Received: by 2002:a17:902:830c:: with SMTP id
 bd12mr104463732plb.237.1564252937180; 
 Sat, 27 Jul 2019 11:42:17 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id m6sm57733367pfb.151.2019.07.27.11.42.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 11:42:16 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/4] nvme: check admin queue with ctrl->admin_q, not rq_disk
Date: Sun, 28 Jul 2019 03:41:53 +0900
Message-Id: <20190727184155.18014-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
References: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_114218_500822_9667CC60 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

SXQgdXNlZCB0byBmaWd1cmUgb3V0IHdoZXRoZXIgdGhlIGdpdmVuIHJlcXVlc3QgaXMgYWJvdXQg
dGhlIGFkbWluIHF1ZXVlCm9yIG5vdCBieSB0aGUgcmVxLT5ycV9kaXNrIG9ubHkuICBCdXQsIGlu
IGNhc2Ugb2YgbGlnaHRudm0sIHRoZSByZXF1ZXN0Cm1heSBub3QgaGF2ZSBycV9kaXNrIG1hcHBl
ZCBzbyB0aGF0IHdlIGp1c3QgY2FuJ3QgcmV0dXJuIHRoZSBwcm9wZXIgcWlkCmZvciB0aGUgSS9P
IE5WTSBjb21tYW5kcyBsaWtlIFZlY3RvciBDaHVuayBSZWFkL1dyaXRlLgoKVGhpcyBwYXRjaCBy
ZXBsYWNlcyB0aGUgY29uZGl0aW9uIGZyb20gcnFfZGlzayB0byBjaGVjawpudm1lX2N0cmwtPmFk
bWluX3EgYW5kIHRoZSBnaXZlbiByZXF1ZXN0X3F1ZXVlIGZyb20gdGhlIHJlcXVlc3QgaXRzZWxm
LgoKVGhpcyBwYXRjaCBhbHNvIG1vdmVkIG52bWVfcmVxX3FpZCgpIHJpZ2h0IG5leHQgdG8gc3Ry
dWN0IG52bWVfY3RybCB0bwpoYXZlIGl0IGluc2lkZS4KCkNjOiBLZWl0aCBCdXNjaCA8a2J1c2No
QGtlcm5lbC5vcmc+CkNjOiBKZW5zIEF4Ym9lIDxheGJvZUBmYi5jb20+CkNjOiBDaHJpc3RvcGgg
SGVsbHdpZyA8aGNoQGxzdC5kZT4KQ2M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+
CkNjOiBNYXRpYXMgQmrDuHJsaW5nIDxtYkBsaWdodG52bS5pbz4KQ2M6IEphdmllciBHb256w6Fs
ZXogPGphdmllckBqYXZpZ29uLmNvbT4KU2lnbmVkLW9mZi1ieTogTWlud29vIEltIDxtaW53b28u
aW0uZGV2QGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL252bWUvaG9zdC9udm1lLmggfCAxNiArKysr
KysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaCBiL2RyaXZlcnMvbnZt
ZS9ob3N0L252bWUuaAppbmRleCAyZTc2MTk4ZjU4MzMuLjYwYzFhYmY4ZGNlMSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9udm1lL2hvc3QvbnZtZS5oCisrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L252bWUu
aApAQCAtMTIyLDEzICsxMjIsNiBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBudm1lX3JlcXVlc3Qg
Km52bWVfcmVxKHN0cnVjdCByZXF1ZXN0ICpyZXEpCiAJcmV0dXJuIGJsa19tcV9ycV90b19wZHUo
cmVxKTsKIH0KIAotc3RhdGljIGlubGluZSB1MTYgbnZtZV9yZXFfcWlkKHN0cnVjdCByZXF1ZXN0
ICpyZXEpCi17Ci0JaWYgKCFyZXEtPnJxX2Rpc2spCi0JCXJldHVybiAwOwotCXJldHVybiByZXEt
Pm1xX2hjdHgtPnF1ZXVlX251bSArIDE7Ci19Ci0KIC8qIFRoZSBiZWxvdyB2YWx1ZSBpcyB0aGUg
c3BlY2lmaWMgYW1vdW50IG9mIGRlbGF5IG5lZWRlZCBiZWZvcmUgY2hlY2tpbmcKICAqIHJlYWRp
bmVzcyBpbiBjYXNlIG9mIHRoZSBQQ0lfREVWSUNFKDB4MWM1OCwgMHgwMDAzKSwgd2hpY2ggbmVl
ZHMgdGhlCiAgKiBOVk1FX1FVSVJLX0RFTEFZX0JFRk9SRV9DSEtfUkRZIHF1aXJrIGVuYWJsZWQu
IFRoZSB2YWx1ZSAoaW4gbXMpIHdhcwpAQCAtMjYwLDYgKzI1MywxNSBAQCBzdHJ1Y3QgbnZtZV9j
dHJsIHsKIAlzdHJ1Y3QgbnZtZV9mYXVsdF9pbmplY3QgZmF1bHRfaW5qZWN0OwogfTsKIAorc3Rh
dGljIGlubGluZSB1MTYgbnZtZV9yZXFfcWlkKHN0cnVjdCByZXF1ZXN0ICpyZXEpCit7CisJc3Ry
dWN0IG52bWVfY3RybCAqY3RybCA9IG52bWVfcmVxKHJlcSktPmN0cmw7CisKKwlpZiAocmVxLT5x
ID09IGN0cmwtPmFkbWluX3EpCisJCXJldHVybiAwOworCXJldHVybiByZXEtPm1xX2hjdHgtPnF1
ZXVlX251bSArIDE7Cit9CisKIGVudW0gbnZtZV9pb3BvbGljeSB7CiAJTlZNRV9JT1BPTElDWV9O
VU1BLAogCU5WTUVfSU9QT0xJQ1lfUlIsCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
