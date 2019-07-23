Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CAA71AA5
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 16:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhF6PT8XnCKCLgMgA7C+uMsIGC9Y/iGPY/fGqgmCHwk=; b=sY3rf+qObBRO8x
	ZDOvJKiRIKS/MKJvbWF9W7cur/HodtWe6/7Hqmc7Kbdqhz/elJrGGQkj6UxPJyqh4/2tD0fe1riPh
	kVr2ps8ZkPyW3YadG7VK2HvQN6C/ZZxF8kv4ZE4yoFIsx4luKXg+MlxvoqXX2VyZRGejeL8BG/x4A
	ljjtY/H0IgvwVlG3yR5BxY9P+/scBZjU8EIahysynHPR0jzSiBy4HCaWSLCS7u599nezoUxfGXaAh
	g89w0oKhXFeIBmRHl3NHaElWdpuAo3vdM8NadN4sJPmaeol6NXwwLkuq5puw5K3cmrL6VQNsmYbh7
	XU1kS4wnVcYP2duxYtxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpw14-0000BV-AI; Tue, 23 Jul 2019 14:43:46 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpw0J-00086C-7w
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 14:43:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id b13so19266224pfo.1
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 07:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vJPiJO+9ujjFtAlmOOqn2GOVX4RIBR5Dl5Qy5dgfNDc=;
 b=k1RbNhAT7XcsA5V3h07891rLoy2oo3F4P0TxeXm/vgLPdQ4Q1S1KzObv5zOdCYma8k
 uJhXkBOg5BlCltE8MQ2cXPa2LrW+K8fkoH51sOnulpONrkRl0J6PYf8EzS2EnzPmY7lw
 P0WDkX3idoubhealydfrdCV6jenq6ZMCLZSUTj3IoKlwbkEBwy8LpQliY8GVxixgZB3m
 qjND38jL1KTUqaEGuITt2EMS9PGnxYA3KXOiEtuEtG9nUO4M82/T2+HW8XI2jI+2Tbho
 XbPWhjkkUJnZvoX/fNV/hMeInIy8NUcX1wvukztxKzmtEO50u2HVb8v6ii4ieibH4g6b
 q5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vJPiJO+9ujjFtAlmOOqn2GOVX4RIBR5Dl5Qy5dgfNDc=;
 b=Unb/LkTTGKgIURbgNmqk9/i/04eO9JkTkT3SKipgcspI18z9aOlXNC3PJ6C9LTcmxF
 ejJ6yW6f25t+cPyY9Se8WmI/CnnwK+Xptkuw67JV4N9t8xiHkA4IRmkVxZlh5pu4HGcI
 S0pGmiSDeo26owNLbIc0C4fPyowF4KvGm2IiP9FM34BWVWzMgtJG3GYOfBdzT0Wxc0Zi
 Eofc1GXgcRvMpN8uGfK4hyrMvZSKbdyJsc8jL3fo5LSArPbvK+NMC+zXD9hOKXnU4oes
 /HbbkNNXGUkIPCLBj3K6kG4yapi8poI7ibQ+Zrl5UmFqfmbTcbW4ynev7pjDpF2U7y2H
 gRBw==
X-Gm-Message-State: APjAAAWWrHB4V6ZQ3lMLKyiowPTSzKL62QApBdMxuoGo+9/JIpZmbVCy
 HSC3bVYNJFiUSvehU1WBMlG4tsNwh3A=
X-Google-Smtp-Source: APXvYqxtq69Vq11vq4ApiYogQReRKQJtkD1iY0fsi9gFPLShZVW1j3uXz9Trxr1Jxf/yUatQaHTluA==
X-Received: by 2002:a17:90a:eb08:: with SMTP id
 j8mr46598418pjz.72.1563892978301; 
 Tue, 23 Jul 2019 07:42:58 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g8sm39866865pgk.1.2019.07.23.07.42.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 07:42:57 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/3] lnvm: cast identity structure to (void *) directly
Date: Tue, 23 Jul 2019 23:42:35 +0900
Message-Id: <20190723144235.12207-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723144235.12207-1-minwoo.im.dev@gmail.com>
References: <20190723144235.12207-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_074259_285646_DC58548F 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

SWYgd2UgdXNlICJ0bXAiIG9yIHNvbWV0aGluZyBsaWtlIHRoaXMsIHdlIGNhbiBleHBlY3QgdGhh
dCBpdCBqdXN0CnN0b3JlcyB0aGUgcHJldmlvdXMgcG9pbnRlciBhbmQgZG8gc29tZXRoaW5nIGVs
c2Ugd2l0aCB0aGUgcHJldmlvdXMKcG9pbnRlci4gIEJ1dCwgaW4gdGhpcyBmdW5jdGlvbiwgaXQg
anVzdCB0byBjYXN0IGl0IG91dC4KCkNjOiBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5vcmc+
CkNjOiBNYXRpYXMgQmpvcmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgpTaWduZWQtb2ZmLWJ5OiBNaW53
b28gSW0gPG1pbndvby5pbS5kZXZAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogSmF2aWVyIEdvbnrD
oWxleiA8amF2aWVyQGphdmlnb24uY29tPgotLS0KIG52bWUtbGlnaHRudm0uYyB8IDUgKystLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvbnZtZS1saWdodG52bS5jIGIvbnZtZS1saWdodG52bS5jCmluZGV4IDBiOTk3ODYuLjYy
YmRjNDAgMTAwNjQ0Ci0tLSBhL252bWUtbGlnaHRudm0uYworKysgYi9udm1lLWxpZ2h0bnZtLmMK
QEAgLTQyMiwxMyArNDIyLDEyIEBAIHN0YXRpYyB2b2lkIHNob3dfbG52bV9pZDIwX25zKHN0cnVj
dCBudm1lX252bV9pZDIwICppZCwgdW5zaWduZWQgaW50IGZsYWdzKQogCiBzdGF0aWMgdm9pZCBz
aG93X2xudm1faWRfbnMoc3RydWN0IG52bWVfbnZtX2lkICppZCwgdW5zaWduZWQgaW50IGZsYWdz
KQogewotCXZvaWQgKnRtcCA9IGlkOwogCXN3aXRjaCAoaWQtPnZlcl9pZCkgewogCQljYXNlIDE6
Ci0JCQlzaG93X2xudm1faWQxMl9ucyh0bXAsIGZsYWdzKTsKKwkJCXNob3dfbG52bV9pZDEyX25z
KCh2b2lkICopIGlkLCBmbGFncyk7CiAJCWJyZWFrOwogCQljYXNlIDI6Ci0JCQlzaG93X2xudm1f
aWQyMF9ucyh0bXAsIGZsYWdzKTsKKwkJCXNob3dfbG52bV9pZDIwX25zKCh2b2lkICopIGlkLCBm
bGFncyk7CiAJCWJyZWFrOwogCQlkZWZhdWx0OgogCQkJZnByaW50ZihzdGRlcnIsICJWZXJzaW9u
ICVkIG5vdCBzdXBwb3J0ZWQuXG4iLAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbnZtZQo=
