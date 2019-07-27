Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EF677B7F
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 21:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOy5wneKMZod08kGLtKsMZtuW4br5GnSVtiDYreG65Q=; b=R5aaKP9poP+2wq
	3/bwZnkRq0UvyHUHayurQwwLkecTGuK06F8PwSQEczc7zv91UdupU9RJvR1rwSGn4vWb1NymWb/RL
	reADbsb50qWSRqzonNqRAbuKxiQcN72NuRPQzfqeExiEwHHiIK9dFRkwqYJewNCRr1q1s2rQ1uQp+
	+P4z4n8gl7DNqaTlCfC7VOdeBLbVBJY72y1bd0luETJDB8YTT5ohDdTrhy6wbvdnDSC4hX9ApLZwQ
	im67SY0790vQKSZhG3zivU+OjbYyewi6ftCJeXD+LepV622dEgF21h4pFpHZTa8STNnrrskiFu580
	ekoms7pnaijhkXAav3jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSRv-00045M-Bu; Sat, 27 Jul 2019 19:33:47 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSRJ-0003fD-4e
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 19:33:10 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so26279440pgv.10
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 12:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HKsdJY/hC39/yB8V77YU1MgsDJQVTu409YWwNP72dIE=;
 b=WT3X10qZlE0U7HoDSAzaur47zPnSl0gyS71No6DLUnDQCFjpYK92VmNyrHv+sZcW9Q
 WWKlOiBrolW9BcDYjgpDOG2O+t4EyqUKvatJLoLSD3h3PiiO8eqwLZoWBbkP7XerKyyU
 rFGfIjm75fjBAM2VkV+TM7HLpxdUx2xaGsAPXrNRZeZJqe5rUUHMeRpSH0cbv+CzXXZP
 ORps584kNwKXPXPFQ2mm7nA4zN3G9QaWU3TjemYzuseef+ig4W7Qm6Y9aSg2g4H6VZtB
 pVeUJsZcKwenN6P0na7E3ooDq/ydC+PuhNAELim5wSxtCbcdskQWGRYM6Pwqp7qpBWbB
 qj9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HKsdJY/hC39/yB8V77YU1MgsDJQVTu409YWwNP72dIE=;
 b=hxltCtcSqvIkdmbu8uu8Jgl1HHWD+o/+/5WOVQQxtnxAxVixuA2SFxPS7FeEOIv5WD
 nzfjEaYsiLYU/A43NcrWvTaY22ODjt+Yrqo1x2jhcRCixobkWUsEt1XCdoCeRVL4XC8W
 V4MHNuLRMDiYlW2jjEuXYvALPeSvOv3RnZn9MeBlv7Ee+WTRxdLvh73QV2NuwkWote8C
 m0Qoq4gDFtoME68WJLrO9EroySBviufuB3R83nFLhH0lYZZtBNDMRkajY1gnAD+PxbFf
 wTQsx9sbYDCsFB986VLa3DmlJGkrv9z3s8lFzAhUD1cU1t4lUgvnWEv685jq4rqLNvCI
 S1Ag==
X-Gm-Message-State: APjAAAXuNkPIPJByVVY4xy2+3evBJADJlTGkok7PT5rYn6h/fwzpqV/7
 l4rVg3tfmZr9I4jMyD9b4OFRRLgCisU=
X-Google-Smtp-Source: APXvYqxgbwyzVkpDm2sD004fxkF+5CMwVksoe4W1xAOgp+YpalC+wnHWU35BHA1yzyLnkBpm/JzM9g==
X-Received: by 2002:aa7:9118:: with SMTP id 24mr27605244pfh.56.1564255988213; 
 Sat, 27 Jul 2019 12:33:08 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k36sm58027716pgl.42.2019.07.27.12.33.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 12:33:07 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 3/3] lnvm: introduce alias geometry for id-ns for lnvm
Date: Sun, 28 Jul 2019 04:32:49 +0900
Message-Id: <20190727193249.22655-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190727193249.22655-1-minwoo.im.dev@gmail.com>
References: <20190727193249.22655-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_123309_521378_0AFDE5F3 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
byBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+Ci0tLQogcGx1Z2lucy9sbnZtL2xudm0tbnZt
ZS5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvcGx1Z2lucy9sbnZtL2xudm0tbnZtZS5oIGIvcGx1Z2lucy9sbnZtL2xu
dm0tbnZtZS5oCmluZGV4IGUyNWY3NTYuLjQ1YjNjZjAgMTAwNjQ0Ci0tLSBhL3BsdWdpbnMvbG52
bS9sbnZtLW52bWUuaAorKysgYi9wbHVnaW5zL2xudm0vbG52bS1udm1lLmgKQEAgLTExLDcgKzEx
LDcgQEAgUExVR0lOKE5BTUUoImxudm0iLCAiTGlnaHROVk0gc3BlY2lmaWMgZXh0ZW5zaW9ucyIp
LAogCUNPTU1BTkRfTElTVCgKIAkJRU5UUlkoImxpc3QiLCAiTGlzdCBhdmFpbGFibGUgTGlnaHRO
Vk0gZGV2aWNlcyIsIGxudm1fbGlzdCkKIAkJRU5UUlkoImluZm8iLCAiTGlzdCBnZW5lcmFsIGlu
Zm9ybWF0aW9uIGFuZCBhdmFpbGFibGUgdGFyZ2V0IGVuZ2luZXMiLCBsbnZtX2luZm8pCi0JCUVO
VFJZKCJpZC1ucyIsICJMaXN0IGdlb21ldHJ5IGZvciBMaWdodE5WTSBkZXZpY2UiLCBsbnZtX2lk
X25zKQorCQlFTlRSWSgiaWQtbnMiLCAiTGlzdCBnZW9tZXRyeSBmb3IgTGlnaHROVk0gZGV2aWNl
IiwgbG52bV9pZF9ucywgImdlb21ldHJ5IikKIAkJRU5UUlkoImNodW5rLWxvZyIsICJDaHVuayBJ
bmZvcm1hdGlvbiBMb2cgUGFnZSIsIGxudm1fY2h1bmtfbG9nKQogCQlFTlRSWSgiaW5pdCIsICJJ
bml0aWFsaXplIG1lZGlhIG1hbmFnZXIgb24gTGlnaHROVk0gZGV2aWNlIiwgbG52bV9pbml0KQog
CQlFTlRSWSgiY3JlYXRlIiwgIkNyZWF0ZSB0YXJnZXQgb24gdG9wIG9mIGEgTGlnaHROVk0gZGV2
aWNlIiwgbG52bV9jcmVhdGVfdGd0KQotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbnZtZQo=
