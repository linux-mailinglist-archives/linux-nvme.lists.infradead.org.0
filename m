Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF7971AA4
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 16:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRhqmw5v4RzDWkaEOb7jg0o8+TxX6HSCWaAkkQRG38k=; b=K3bFDVXZuU4J2h
	BPIy17zGMfqFGL3OYKTgaGYB+WUDbhgOnNS6IdGraleLqTpDQzttNjnm5YOD5nvv97xWYgdrc/mOE
	J2sfMnzHxwD4hwfNiXxx3SnsCw47VWYvJBQFVehJwHQ0t74UIUxCqZLViJUSjRSpg8JoJg9fuAffY
	zdfFA1p4nVmX+tYfGh1+UMeG49atDS/MDw1ujsGmUNeCuLCGopo6IAKZqtgr7kBw6302WhRO2uvLx
	kErVq1m7ZNOXYSSykUL7VTTx6KN/1GjLBQLQBtIqVFni8ugBgprY5QLMZ1eLBwgO1DpecMQ5BFn2q
	gzXx2xzy9yZwiVY+gDeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpw0n-0008QX-UZ; Tue, 23 Jul 2019 14:43:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpw0G-000821-Mm
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 14:42:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id i70so8803311pgd.4
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 07:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KZMGpjWzlbSh3Od6DeJ3sjjIlBfOZT0zf4r6mPm4TL4=;
 b=hi9TTpr0zbRX/5O785ZLYWXYdSgvIIdaoQfwy0ZyKaJrA2CFLEyaw6m8oDhMpdCTwX
 5/+AlziUYdOY45ptskAMC5+JWlN46RcPBsQPKGXwrZxRHLKoxQQfrjd+SSvam7far+i3
 XIVKL9IShdpp3BKqvyVn5/2HqSlpZucHxmSG2aXk6gxvQ98wOXM7GGoQRZ4Fn3jLN1Z5
 G9pmeoV+8+yDiIBLQJV0s5NLIZKQYYWCGYgUwHc6iUG/1FUrXsl6w54tIczoBcIEh2JY
 uTA25s24JCQ1mgU79j07nlKQvzKIT8iGwAZvv/2QjiazrmoXx609avGvMN2/yU+lh9hJ
 qx8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KZMGpjWzlbSh3Od6DeJ3sjjIlBfOZT0zf4r6mPm4TL4=;
 b=UzuWREYR5oEUpVaJcYg0Eam03ysJ/Nkk5JjMVFHMvWPjg2v3SZZLV9NOTrHgZVEXyl
 UnOA/8Z1XRFeLuUwf5VAbxjkMLYunMzB0XmJjKJ/BHLpPOelbAymiUakY+D5LoR8sxvg
 Cak+eoQNogvcgIT6JABTf++9rw3KvlZLO+O1XiVL1BBtoQ4xMNgcO9+MtBbuVqD4Eohu
 0Ae/VrjAyFgiRZzt5Zyc8wNq5NbtueQige2ewo+UesI48ZKxk1KZtveq7PFuXTfoR8dO
 9wdKRJn8kEk7e1AToDQB3R9cems5pbwOswxmkp4mu/33OZ7x92Hj5i9HhuFBx2cLSHRe
 w1DQ==
X-Gm-Message-State: APjAAAW4nMqR4t2xgElav2MxUDUUNYYf/hv07GBGS9MKYE6N2O9Ivxs/
 6RFEbFfjp79m2S9I3icO2AcbG5EEovA=
X-Google-Smtp-Source: APXvYqxKQCNBTGJpIPTBiccWWAPmJ0kLrOQPR/n5OURpxueXwXbQdd6Cdekv1cI9NN+8dLIgTNsdDA==
X-Received: by 2002:a17:90a:a407:: with SMTP id
 y7mr82809619pjp.97.1563892975734; 
 Tue, 23 Jul 2019 07:42:55 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g8sm39866865pgk.1.2019.07.23.07.42.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 07:42:54 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/3] lnvm: do not print 0 when the arg is not given
Date: Tue, 23 Jul 2019 23:42:34 +0900
Message-Id: <20190723144235.12207-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723144235.12207-1-minwoo.im.dev@gmail.com>
References: <20190723144235.12207-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_074256_749833_0A96A35A 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SWYgYW4gYXJndW1lbnQgaXMgbm90IGdpdmVuIGJ5IHRoZSB1c2VyLCBpdCBqdXN0IG5lZWRzIHRv
IHNob3cgdGhlCnNpdHVhdGlvbiwgbm90IGEgcHJvbWluZW50IDAgd2hpY2ggaW5kaWNhdGVzIHRo
ZSBzaXplIG9mIHRoZSBhcmd1bWVudAp2YXJpYWJsZS4KCkNjOiBLZWl0aCBCdXNjaCA8a2J1c2No
QGtlcm5lbC5vcmc+CkNjOiBNYXRpYXMgQmpvcmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgpTaWduZWQt
b2ZmLWJ5OiBNaW53b28gSW0gPG1pbndvby5pbS5kZXZAZ21haWwuY29tPgpSZXZpZXdlZC1ieTog
SmF2aWVyIEdvbnrDoWxleiA8amF2aWVyQGphdmlnb24uY29tPgotLS0KIHBsdWdpbnMvbG52bS9s
bnZtLW52bWUuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3BsdWdpbnMvbG52bS9sbnZtLW52bWUuYyBiL3Bs
dWdpbnMvbG52bS9sbnZtLW52bWUuYwppbmRleCAzN2I2NzMzLi5hYWNkNDY5IDEwMDY0NAotLS0g
YS9wbHVnaW5zL2xudm0vbG52bS1udm1lLmMKKysrIGIvcGx1Z2lucy9sbnZtL2xudm0tbnZtZS5j
CkBAIC00OCw3ICs0OCw3IEBAIHN0YXRpYyBpbnQgbG52bV9pbml0KGludCBhcmdjLCBjaGFyICoq
YXJndiwgc3RydWN0IGNvbW1hbmQgKmNtZCwgc3RydWN0IHBsdWdpbiAqCiAJCXJldHVybiByZXQ7
CiAKIAlpZiAoIXN0cmxlbihjZmcuZGV2bmFtZSkpIHsKLQkJZnByaW50ZihzdGRlcnIsICJkZXZp
Y2UgbmFtZSBtaXNzaW5nICVkXG4iLCAoaW50KXN0cmxlbihjZmcuZGV2bmFtZSkpOworCQlmcHJp
bnRmKHN0ZGVyciwgImRldmljZSBuYW1lIG1pc3NpbmdcbiIpOwogCQlyZXR1cm4gLUVJTlZBTDsK
IAl9CiAKQEAgLTE3OSw3ICsxNzksNyBAQCBzdGF0aWMgaW50IGxudm1fY3JlYXRlX3RndChpbnQg
YXJnYywgY2hhciAqKmFyZ3YsIHN0cnVjdCBjb21tYW5kICpjbWQsIHN0cnVjdCBwbAogCQlyZXR1
cm4gcmV0OwogCiAJaWYgKCFzdHJsZW4oY2ZnLmRldm5hbWUpKSB7Ci0JCWZwcmludGYoc3RkZXJy
LCAiZGV2aWNlIG5hbWUgbWlzc2luZyAlZFxuIiwgKGludClzdHJsZW4oY2ZnLmRldm5hbWUpKTsK
KwkJZnByaW50ZihzdGRlcnIsICJkZXZpY2UgbmFtZSBtaXNzaW5nXG4iKTsKIAkJcmV0dXJuIC1F
SU5WQUw7CiAJfQogCWlmICghc3RybGVuKGNmZy50Z3RuYW1lKSkgewpAQCAtMjY1LDcgKzI2NSw3
IEBAIHN0YXRpYyBpbnQgbG52bV9mYWN0b3J5X2luaXQoaW50IGFyZ2MsIGNoYXIgKiphcmd2LCBz
dHJ1Y3QgY29tbWFuZCAqY21kLCBzdHJ1Y3QKIAkJcmV0dXJuIHJldDsKIAogCWlmICghc3RybGVu
KGNmZy5kZXZuYW1lKSkgewotCQlmcHJpbnRmKHN0ZGVyciwgImRldmljZSBuYW1lIG1pc3Npbmcg
JWRcbiIsIChpbnQpc3RybGVuKGNmZy5kZXZuYW1lKSk7CisJCWZwcmludGYoc3RkZXJyLCAiZGV2
aWNlIG5hbWUgbWlzc2luZ1xuIik7CiAJCXJldHVybiAtRUlOVkFMOwogCX0KIAotLSAKMi4xNy4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
