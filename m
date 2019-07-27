Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA7E77B27
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 20:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNpJ7/wkreJO67wTiRXpS7EfzVyuNioy6wVPNw/WWSc=; b=Q4b1qgpJK268EV
	/jQ6Q275DwEmx6E+VWBQPABKes9kmOGxFy5khpgKCo22RbLHrM2hb/AAx6YhRXXVM04Ow7kENDytW
	n9gFy7GaInB8faokIRBa36SDYJsC1PRpV21aND4UmPV53jE6jFpHYBjASeapyJA5jsvmhR9B2mljZ
	VRtH8w/F1j7LMrKjRvObG1VNH4HLZAAFq/7ktpPUe5c32YGkeD7zh2H7l4xTC3KbhR1UH5hZKHLM/
	LjdCIj83btVocLdCnHcPoSHbFcSxeRcgX/29+uKg545UY7MCpxOvjM8PPurahkyqVquAkpzqRJwbf
	sSoNi2imb0V34pX/yfYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrRej-0003pw-Vw; Sat, 27 Jul 2019 18:42:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrRe9-0003N8-7n
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 18:42:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so25920714plr.11
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 11:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vq0LMVofcyyUAj8GrrjRMewbvaVoYSAXFQt1SNtmrRQ=;
 b=FIdAAFVWgFORKxAGiqjxtgYrVsxB7U35DXDkBatXReG7Vhtqyqhr30iSxoUXcItASw
 2enITYTpoqO/R2qOBMOTj6pE1iMc9m6/+oLHtvlCodeZNzVRO+mPWAoVaLI+BnTS35dz
 zk1VGSd7k0erBZVpe64YHvJp7HFywvpilp0EkqvSOQdHlHp59zFpw76muOJID0WO6I1o
 Ov4DA0KVOIn7TjVp4o8UWO/F3gJ9YAnOQZI3qrCkG1jidKSH9qDHCqZ+6P4o+cM9+XTH
 AoRRNzcqwpR1fBb0ymOAXXkdCObyOEGx7Q6JgKTUUhDHriKIqKDQN5Gx+9RLwGLhQ/nx
 OJeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vq0LMVofcyyUAj8GrrjRMewbvaVoYSAXFQt1SNtmrRQ=;
 b=Y8ZXdXaJoey26a1Yev8m+HVj0Ohcz9dB49HDjzXUC9RZEIeNo1DAXgJ5UfeFGjg0wJ
 g9wTyHaPHbzHjOQegICxbAwj/OxTQdvbLEDgtosw2yw6Qwj3IHuPg2qsXxSzyzEK3SRc
 Q7k7xmYquY5PWFSQUu5TEqDnwetoQ1GEZTc07nkpatl18CX7uvjav+zhYpAXBNOyx2cK
 4INvVVy1y8iNEBwxO2Lyvhav8QuJ/6NL0BLV0jcoIZTPkFxok3p/tisLK3tvAkOf7iJ6
 Zrx3rGUCM6fO8hbG9cksjAy+fQVeuMLIhkKIKai6VRWdL4Mn29JxJKA7tG25EdMtPbfg
 ZkxQ==
X-Gm-Message-State: APjAAAVOA2WWIg/Y/YjIEqenNKtnobpEgzRtX/h0U2qF7upzK8Vmn6iM
 0GWmy8Zbcuq4Vqby/HRiSrNO8In0qVA=
X-Google-Smtp-Source: APXvYqwIZwWQNtvEK8+1eIDP2gW1m3op/JgEqIE7sbuSBpLNHqP9eF8yhqwPsYS3HIkDTDAGJRDjpQ==
X-Received: by 2002:a17:902:a514:: with SMTP id
 s20mr96918801plq.162.1564252940420; 
 Sat, 27 Jul 2019 11:42:20 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id m6sm57733367pfb.151.2019.07.27.11.42.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 11:42:19 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/4] nvme: lightnvm: trace opcode name
Date: Sun, 28 Jul 2019 03:41:54 +0900
Message-Id: <20190727184155.18014-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
References: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_114221_538093_F96365A3 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

VGhpcyBwYXRjaCBtb3ZlZCBvcGNvZGUgZW51bSB2YWx1ZXMgdG8gbnZtZS5oIHRvIG1ha2UgaXQg
c3VwcG9ydCBmb3IKY29tbWFuZCB0cmFjZSB3aXRoIG9wY29kZSBuYW1lIGlzdGVhZCBvZiByYXcg
b3Bjb2RlIHZhbHVlLgoKRXhhbXBsZSBvZiBWZWN0b3IgQ2h1bmsgUmVhZDoKCS4uLiBjbWQ9KDB4
ZTIgY2R3MTA9MDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgLi4uCgpJdCB3b3VsZCBiZSBsaWtl
OgoJLi4uIGNtZD0obnZtZV9udm1fYWRtaW5faWRlbnRpdHkgY2R3MTA9MDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgLi4uCgpBbHRob3VnaCBPQ1NTRCAxLjIgaGFzIGJlZW4gZGVwcmVjYXRlZCwg
d2UgaGF2ZSB0aGUgY29kZXMgZm9yIDEuMiBzbwp0aGF0IHRoaXMga2luZCBvZiB0cmFjZXMgbWln
aHQgYmUgZGVwcmVjYXRlZCBsYXRlciB0aW1lLgoKQ2M6IEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2Vy
bmVsLm9yZz4KQ2M6IEplbnMgQXhib2UgPGF4Ym9lQGZiLmNvbT4KQ2M6IENocmlzdG9waCBIZWxs
d2lnIDxoY2hAbHN0LmRlPgpDYzogU2FnaSBHcmltYmVyZyA8c2FnaUBncmltYmVyZy5tZT4KQ2M6
IE1hdGlhcyBCasO4cmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgpDYzogSmF2aWVyIEdvbnrDoWxleiA8
amF2aWVyQGphdmlnb24uY29tPgpTaWduZWQtb2ZmLWJ5OiBNaW53b28gSW0gPG1pbndvby5pbS5k
ZXZAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvbnZtZS9ob3N0L2xpZ2h0bnZtLmMgfCAgNiAtLS0t
LS0KIGluY2x1ZGUvbGludXgvbnZtZS5oICAgICAgICAgfCAxMCArKysrKysrKystCiAyIGZpbGVz
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL252bWUvaG9zdC9saWdodG52bS5jIGIvZHJpdmVycy9udm1lL2hvc3QvbGlnaHRudm0u
YwppbmRleCBiYTAwOWQ0YzlkZmEuLmQwNmQwOTE5YzEzOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9u
dm1lL2hvc3QvbGlnaHRudm0uYworKysgYi9kcml2ZXJzL252bWUvaG9zdC9saWdodG52bS5jCkBA
IC0xNSwxMiArMTUsNiBAQAogI2luY2x1ZGUgPGxpbnV4L3NjaGVkL3N5c2N0bC5oPgogI2luY2x1
ZGUgPHVhcGkvbGludXgvbGlnaHRudm0uaD4KIAotZW51bSBudm1lX252bV9hZG1pbl9vcGNvZGUg
ewotCW52bWVfbnZtX2FkbWluX2lkZW50aXR5CQk9IDB4ZTIsCi0JbnZtZV9udm1fYWRtaW5fZ2V0
X2JiX3RibAk9IDB4ZjIsCi0JbnZtZV9udm1fYWRtaW5fc2V0X2JiX3RibAk9IDB4ZjEsCi19Owot
CiBlbnVtIG52bWVfbnZtX2xvZ19wYWdlIHsKIAlOVk1FX05WTV9MT0dfUkVQT1JUX0NIVU5LCT0g
MHhjYSwKIH07CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L252bWUuaCBiL2luY2x1ZGUvbGlu
dXgvbnZtZS5oCmluZGV4IDAxYWE2YTZjMjQxZC4uZmRkZjRjNzc2Nzg4IDEwMDY0NAotLS0gYS9p
bmNsdWRlL2xpbnV4L252bWUuaAorKysgYi9pbmNsdWRlL2xpbnV4L252bWUuaApAQCAtODE0LDYg
KzgxNCwxMSBAQCBlbnVtIG52bWVfYWRtaW5fb3Bjb2RlIHsKIAludm1lX2FkbWluX3NlY3VyaXR5
X3NlbmQJPSAweDgxLAogCW52bWVfYWRtaW5fc2VjdXJpdHlfcmVjdgk9IDB4ODIsCiAJbnZtZV9h
ZG1pbl9zYW5pdGl6ZV9udm0JCT0gMHg4NCwKKworCS8qIE9DU1NEIDEuMiAqLworCW52bWVfbnZt
X2FkbWluX2lkZW50aXR5CQk9IDB4ZTIsCisJbnZtZV9udm1fYWRtaW5fZ2V0X2JiX3RibAk9IDB4
ZjIsCisJbnZtZV9udm1fYWRtaW5fc2V0X2JiX3RibAk9IDB4ZjEsCiB9OwogCiAjZGVmaW5lIG52
bWVfYWRtaW5fb3Bjb2RlX25hbWUob3Bjb2RlKQl7IG9wY29kZSwgI29wY29kZSB9CkBAIC04NDAs
NyArODQ1LDEwIEBAIGVudW0gbnZtZV9hZG1pbl9vcGNvZGUgewogCQludm1lX2FkbWluX29wY29k
ZV9uYW1lKG52bWVfYWRtaW5fZm9ybWF0X252bSksCQlcCiAJCW52bWVfYWRtaW5fb3Bjb2RlX25h
bWUobnZtZV9hZG1pbl9zZWN1cml0eV9zZW5kKSwJXAogCQludm1lX2FkbWluX29wY29kZV9uYW1l
KG52bWVfYWRtaW5fc2VjdXJpdHlfcmVjdiksCVwKLQkJbnZtZV9hZG1pbl9vcGNvZGVfbmFtZShu
dm1lX2FkbWluX3Nhbml0aXplX252bSkpCisJCW52bWVfYWRtaW5fb3Bjb2RlX25hbWUobnZtZV9h
ZG1pbl9zYW5pdGl6ZV9udm0pLAlcCisJCW52bWVfYWRtaW5fb3Bjb2RlX25hbWUobnZtZV9udm1f
YWRtaW5faWRlbnRpdHkpLAlcCisJCW52bWVfYWRtaW5fb3Bjb2RlX25hbWUobnZtZV9udm1fYWRt
aW5fZ2V0X2JiX3RibCksCVwKKwkJbnZtZV9hZG1pbl9vcGNvZGVfbmFtZShudm1lX252bV9hZG1p
bl9zZXRfYmJfdGJsKSkKIAogZW51bSB7CiAJTlZNRV9RVUVVRV9QSFlTX0NPTlRJRwk9ICgxIDw8
IDApLAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bnZtZQo=
