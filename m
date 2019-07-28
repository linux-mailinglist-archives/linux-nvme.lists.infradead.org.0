Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1785F77E47
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Jul 2019 08:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UgCpz7HO/Zg7zf2H0C3iByL/VvVitWP2HDddPXZBJg=; b=OReyhqcRmUt355
	YKIeoo7KN/W+3BbN/J3QagSEZAr/bVdxijm8FzCQYbwhQmo1X1yySH5c694XonF/GJuMZLRHnFFwS
	q/cznFoDw8OD0Kw4D9YdT7cUIQNAE5EBBzOs2FjhpOThM3l3EiWC45wd3zM4xTNkMSr6FaYIjMncd
	15clt9fn3cWAvvmLHXl++XwMcEpieZOYkj3HGMtXci4RD8mAOiY15QxsJSsc/3Gb9AnLUzitqgt1A
	oVqALDV8KT6mnB7OflqmMQlJkmuoTt6TgbGu5Vc+r67B+rn1ApXjMqrstOXZ0OH2GfLyAQ0YF2SF0
	k3yfcJrOShMxANv9v4sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrcnV-0001hj-8j; Sun, 28 Jul 2019 06:36:45 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrcmK-0001FF-VS
 for linux-nvme@lists.infradead.org; Sun, 28 Jul 2019 06:35:35 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so26644312pgp.12
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 23:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MQSurYi4517FFWiGfb/sszOoo3m4tmTHzm7TpPtkvSQ=;
 b=ZnlmYOMXuRttoSaaWM9JD8GEa83Y9/KHCHgnQ3Ie5+Lk/uq8QXX+iuolq1Qgxhps3G
 FDIKJRQAZEzgU7Fn6ZoZKveo7LaQN5HELwTP1fpautGCjlTVSiPB9XmS0+VnMrIq87J0
 fn0Cn49wKg8J6dHbiIpN844/WWmBlFELyW66WFjYkK95sfHuZBUJPCspMpw/wBcG6v4r
 OGnwmyGaWb6tWxYSQOw3Z0sMIPqCG+PrLf0KZ3N5vhbmNzlHEcDDX/qE5JtaGcJvMpHx
 Os0P95z8nhIpkq5ycYx0C/Hb0vO3iDYlFwXWolsGkB/angTePC7OPkWtZ+YIoOarauO3
 vI+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MQSurYi4517FFWiGfb/sszOoo3m4tmTHzm7TpPtkvSQ=;
 b=IYalOlVeCwB9hmwTA7w+hzNzSuH6FQ60mJ9SkTbit4V04vQ1RWJEf/egbvqhhfM3au
 UZaU8wVnyBncV2ctM1013FdHFDwvRWADAfIC9hG1IMoqoTy9UdI9Qb2ZlPCv5C286k7t
 58qOPsRbX9dDuXs+CuyDSjNSrL6eEZUSCajdSYWr6c3EkkF6aihS6y8nspCm0edSq9m7
 v8EXQh2rM8JlHXn/005QQ4pwcWXIZYY2LmbRxZCVunuLKRH34HaIzuE2JR1SHfuslx/3
 ny4+j4377iFHMfu/YkvPxC+AsRGOFQOtbcuv6F1PHOH1YGISjXZApUOoxkgg4CrWkv2e
 1zIA==
X-Gm-Message-State: APjAAAX2pvZxm4AVnzYUz5nK0LLj7O+vtBM/uqCfdzciqXIfM62E1OHD
 E5+XzOmbdVYe3xjHkhcDNkeoLtFs/+k=
X-Google-Smtp-Source: APXvYqyk4ffvcBli00rqEBqi1Os4HP0DkRkeI07oBZX/6sZq1A7Ez21v7HZCnTLXmpC/+uKeunweGA==
X-Received: by 2002:a63:2b84:: with SMTP id
 r126mr55023144pgr.308.1564295732040; 
 Sat, 27 Jul 2019 23:35:32 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id h1sm72419277pfg.55.2019.07.27.23.35.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 23:35:31 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 3/3] lnvm: introduce alias geometry for id-ns for lnvm
Date: Sun, 28 Jul 2019 15:35:16 +0900
Message-Id: <20190728063516.17732-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190728063516.17732-1-minwoo.im.dev@gmail.com>
References: <20190728063516.17732-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_233534_332723_6053A64B 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <klaus@birkelund.eu>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Tm93IHdlIGhhdmUgMi4wIE9DU1NEIHNwZWMgd2hpY2ggaW50cm91ZGNlcyBHZW9tZXRyeSBjb21t
YW5kIGluc3RlYWQgb2YKSWRlbnRpdHkgb3Igc29tZXRoaW5nIGVsc2UuICBUaGlzIHBhdGNoIGp1
c3QgYWRkcyBhbiBhbGlhcyBmb3IgdGhpcwpjb21tYW5kIGZvciB0aGUgZ2l2ZW4gTlZNZSBuYW1l
c3BhY2Ugd2l0aCBiYWNrd2FyZCBjb21wYXRpYmlsaXR5LgoKQ2M6IEtlaXRoIEJ1c2NoIDxrYnVz
Y2hAa2VybmVsLm9yZz4KQ2M6IE1hdGlhcyBCam9ybGluZyA8bWJAbGlnaHRudm0uaW8+CkNjOiBK
YXZpZXIgR29uesOhbGV6IDxqYXZpZXJAamF2aWdvbi5jb20+ClNpZ25lZC1vZmYtYnk6IE1pbndv
byBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+ClNpbmdlZC1vZmYtYnk6IE1hdGlhcyBCasO4
cmxpbmcgPG1iQGxpZ2h0bnZtLmlvPgotLS0KIHBsdWdpbnMvbG52bS9sbnZtLW52bWUuaCB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL3BsdWdpbnMvbG52bS9sbnZtLW52bWUuaCBiL3BsdWdpbnMvbG52bS9sbnZtLW52bWUu
aAppbmRleCBlMjVmNzU2Li40NWIzY2YwIDEwMDY0NAotLS0gYS9wbHVnaW5zL2xudm0vbG52bS1u
dm1lLmgKKysrIGIvcGx1Z2lucy9sbnZtL2xudm0tbnZtZS5oCkBAIC0xMSw3ICsxMSw3IEBAIFBM
VUdJTihOQU1FKCJsbnZtIiwgIkxpZ2h0TlZNIHNwZWNpZmljIGV4dGVuc2lvbnMiKSwKIAlDT01N
QU5EX0xJU1QoCiAJCUVOVFJZKCJsaXN0IiwgIkxpc3QgYXZhaWxhYmxlIExpZ2h0TlZNIGRldmlj
ZXMiLCBsbnZtX2xpc3QpCiAJCUVOVFJZKCJpbmZvIiwgIkxpc3QgZ2VuZXJhbCBpbmZvcm1hdGlv
biBhbmQgYXZhaWxhYmxlIHRhcmdldCBlbmdpbmVzIiwgbG52bV9pbmZvKQotCQlFTlRSWSgiaWQt
bnMiLCAiTGlzdCBnZW9tZXRyeSBmb3IgTGlnaHROVk0gZGV2aWNlIiwgbG52bV9pZF9ucykKKwkJ
RU5UUlkoImlkLW5zIiwgIkxpc3QgZ2VvbWV0cnkgZm9yIExpZ2h0TlZNIGRldmljZSIsIGxudm1f
aWRfbnMsICJnZW9tZXRyeSIpCiAJCUVOVFJZKCJjaHVuay1sb2ciLCAiQ2h1bmsgSW5mb3JtYXRp
b24gTG9nIFBhZ2UiLCBsbnZtX2NodW5rX2xvZykKIAkJRU5UUlkoImluaXQiLCAiSW5pdGlhbGl6
ZSBtZWRpYSBtYW5hZ2VyIG9uIExpZ2h0TlZNIGRldmljZSIsIGxudm1faW5pdCkKIAkJRU5UUlko
ImNyZWF0ZSIsICJDcmVhdGUgdGFyZ2V0IG9uIHRvcCBvZiBhIExpZ2h0TlZNIGRldmljZSIsIGxu
dm1fY3JlYXRlX3RndCkKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW52bWUK
