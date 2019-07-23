Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D69C71A9F
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 16:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdUxFNNEiQyHkGKlQd/6ymcZdfWkd9flHyzLvBVncVc=; b=ADfcglPbYvCgO3
	8Nq79TS28G2lLkzfNNwrzjLMlQvcOTckIgcDt5TDNzAvOi/I6/fg3z4MRLDwFhydtDnvt6wtn1JA3
	0fuqsozd8lSHjMVU9CZ1k2Zc9qI6Y0jNgnhbIFeRdgSYytbjW1YKXeDCt713k19iJ/ioOw4qxR7hW
	0b4+RwpGg8ZfXCB7TrjT81KHMZ/khqV0O2kb32azpfSerww2UWbPGWYo3DDhTwRjNHFrUv/tZpSVL
	0Z6NWhs9IYnEgsXesVHiFYSYBDvk+MV10KWU2pVjyalS4JDy7hqjVCPbRj7NOijxQ+3TL+x53H5wx
	07WYTBk3NCmz+0owyn1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpw0M-00085M-LE; Tue, 23 Jul 2019 14:43:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpw0D-0007zF-LY
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 14:42:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so19530484pgp.12
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 07:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+4aEmWV+/H6AIPWbVaHAL8omHBtxBLxkdMJpYG78vmk=;
 b=Qm59iuIogThwJIg8aLARmeu4VpJXU8cZ7Xaws6sI6iReriSjoRtnda5tchjemMvTC3
 FxHvmI+0uHh4mCDSkIfrZ/N79cWz1ZKD/W6+XXnW/cTqJMUO5LqbhtCS/xGVAgAZW2iH
 xE4cr5PQlrFkSLIm+4JwGcjaEyAkdhqWP5Qy6W0VLGvFXQQSHAIiJkdmj/W120//YtM/
 zSWv14Nr5vLOe9ZtYdNUTe7ttgIjc3QIwbq10BcxrMq6AzSVITfGvT5/+5hFk18KwteP
 s8G9Vx2Au1rzbuqtUTfjm4+hj/maXE7nrumrCBkWJ3B849hPZghvbe2MYztYVjWCWLeR
 qchQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+4aEmWV+/H6AIPWbVaHAL8omHBtxBLxkdMJpYG78vmk=;
 b=ZNBaDGxQC3hT53xoDf1aULfMJsvJU4+WmlQKYfElNWqXkXUFhWyVB6t9pH82FExBVF
 C23M37xwmzwPBVSxY89K93AbETvUwkEVOWSAcJWuhAKZW2kiHaMfD2i2MTKmLp563eJl
 1/G5uWtKcPba4I0b3wdJoOLqUSL9tGNf1SYKq287bVh6Oxz81RJol7Oz1M/tuH63w7q9
 YY8Snm2e0gzCZB6Kt9YHFsoqPpArSLIrI4bZU29hWLR+mMrpMcuG6DmwzlbZ1ytK35kF
 qT/lEeglb3ZHnt3JBcc+4lISfD1zWhIA12i30nsnfygYOg0ACjicDc0wiUK8tQIb1SEk
 UqCQ==
X-Gm-Message-State: APjAAAVZ6/m6Ra9d8lq1dvHnAN/1yt+mIPvWhTBFBh4smdX/EfN5/b8d
 2dgQ949Eko+SVonrIH+8Y/gXHELiSUM=
X-Google-Smtp-Source: APXvYqwVyELoFTt2MCBUOHBuaib5yL35m/ysnnjtNiP8spQWPvDaleZpdVhwmgSOHvg0UvyqszM78w==
X-Received: by 2002:a17:90a:a613:: with SMTP id
 c19mr84310326pjq.17.1563892972759; 
 Tue, 23 Jul 2019 07:42:52 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g8sm39866865pgk.1.2019.07.23.07.42.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 07:42:52 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/3] lnvm: remove redundant whitespace in lnvm_init()
Date: Tue, 23 Jul 2019 23:42:33 +0900
Message-Id: <20190723144235.12207-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723144235.12207-1-minwoo.im.dev@gmail.com>
References: <20190723144235.12207-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_074253_734172_C9586636 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

VGhlIGRlc2NyaXB0aW9uIGZvciBsbnZtLWluaXQgc3ViY29tbWFuZCBoYXMgYSByZWR1bmRhbnQg
d2hpdGVzcGFjZS4KCkNjOiBLZWl0aCBCdXNjaCA8a2J1c2NoQGtlcm5lbC5vcmc+CkNjOiBNYXRp
YXMgQmpvcmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgpTaWduZWQtb2ZmLWJ5OiBNaW53b28gSW0gPG1p
bndvby5pbS5kZXZAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogSmF2aWVyIEdvbnrDoWxleiA8amF2
aWVyQGphdmlnb24uY29tPgotLS0KIHBsdWdpbnMvbG52bS9sbnZtLW52bWUuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L3BsdWdpbnMvbG52bS9sbnZtLW52bWUuYyBiL3BsdWdpbnMvbG52bS9sbnZtLW52bWUuYwppbmRl
eCA3NTQ5MzFhLi4zN2I2NzMzIDEwMDY0NAotLS0gYS9wbHVnaW5zL2xudm0vbG52bS1udm1lLmMK
KysrIGIvcGx1Z2lucy9sbnZtL2xudm0tbnZtZS5jCkBAIC0xNyw3ICsxNyw3IEBACiBzdGF0aWMg
aW50IGxudm1faW5pdChpbnQgYXJnYywgY2hhciAqKmFyZ3YsIHN0cnVjdCBjb21tYW5kICpjbWQs
IHN0cnVjdCBwbHVnaW4gKnBsdWdpbikKIHsKIAljb25zdCBjaGFyICpkZXNjID0gIkluaXRpYWxp
emUgTGlnaHROVk0gZGV2aWNlLiBBIExpZ2h0TlZNL09wZW4tQ2hhbm5lbCBTU0QiXAotCQkJICAg
IiBtdXN0IGhhdmUgYSBtZWRpYSBtYW5hZ2VyIGFzc29jaWF0ZWQgYmVmb3JlIGl0IGNhbiAiXAor
CQkJICAgIiBtdXN0IGhhdmUgYSBtZWRpYSBtYW5hZ2VyIGFzc29jaWF0ZWQgYmVmb3JlIGl0IGNh
biJcCiAJCQkgICAiIGJlIGV4cG9zZWQgdG8gdGhlIHVzZXIuIFRoZSBkZWZhdWx0IGlzIHRvIGlu
aXRpYWxpemUiCiAJCQkgICAiIHRoZSBnZW5lcmFsIG1lZGlhIG1hbmFnZXIgb24gdG9wIG9mIHRo
ZSBkZXZpY2UuXG5cbiIKIAkJCSAgICJFeGFtcGxlOiIKLS0gCjIuMTcuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBs
aXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
