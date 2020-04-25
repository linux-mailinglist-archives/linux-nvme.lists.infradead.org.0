Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2361B8912
	for <lists+linux-nvme@lfdr.de>; Sat, 25 Apr 2020 21:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ucxy0bruG45nvBncrPeMTpQL6joFXd+IIl44QbiBBMA=; b=J9Dq/vNVMkutc7
	IB/FXxtTQQvxmsk2X1Ev+mnAoptt7gaM3E6As9m8SNnyg4iFT5UWl7dcWkLOkI30fW5bU0u2C7Q2F
	lz6ilseVVp2A0Nm7YWqxfWE4ctbYfDgzAPCP2vtUPab88uT5CuegxSbsb+ge7CHhk3hdPogCm35fc
	m1Q8TvxzMCAusfxvBuiSEVoOL0xSEEZiikgRq6i16Doz0Bc78tzqhDG4svyDY5Ws8sLdaqNiQYIAw
	YaOyo3yO/m+H9qq0WmwyErOb4mspJ6HL1KWL4CSMT5VkziEBRKWXSvv2G/esZH+ONpsPGoFTvFIKt
	6nHG2YfyelCpzODMoBjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQdx-0000B9-PV; Sat, 25 Apr 2020 19:39:17 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQdt-0000AO-GO
 for linux-nvme@lists.infradead.org; Sat, 25 Apr 2020 19:39:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587843555; x=1619379555;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lVsNxFElNjqMQ7v4k4wKDVH0KyWZwpHeQME135wGwOA=;
 b=Kj1E5aOE9DSgUHWvAQRB7uHNFnj+/0eHfn6/fkXjJJ0LKVtzdanEzxpF
 H3/b9tv+Mf2B8buWfuCrFguQarmpsHfKTSueT4jrboBWfuR+iVybou9tU
 Tlb+9RdTFYQhbgkhD6IHZEezkdENy/RXoHBVeD+WG86+flvVuPaDy0egW
 QZRZ6JaukOYhYdBaBaqe+w8WLjatOlHcUf1lCWobu7tuMG9mz31I5HABR
 V6iUde3aZzlQjYpDVr3gHk7MXG3XBHCMI+ppJf5qyx9wiu8mosCEQ/BV+
 r+vLKZhPTNHcesLjyZwr1wdR8jy/PVVZyWt9l2CcIuNENiO9WdK7cbTbp w==;
IronPort-SDR: STm9Fus1STsUdkAqU/2SPxTNhDjQ4IeEhAdiJVnAG8ISsXyHqfO28hlzdujFxjVTs9mUqUN9+y
 ysY5oAIhJ+KjU2vHn0RKOR2YM7l5C9xPuppgchazTfT8lu4E/4RYQCHqKwoOeOIqWhZlHB5xAF
 sx74Uz8S5CL67dHlYGgmmrynsHbULZQhXNu0JR/71PLJIP5lF51I6BRcxXm/mCUcQnnLTniIg5
 PTG82PIOX025T316TEFR2424NdhojjGgyBtrtI0QsZlKjMfIl6Ww5pB590ydYes5Os0CO/xzJR
 4Xw=
X-IronPort-AV: E=Sophos;i="5.73,317,1583164800"; d="scan'208";a="238675053"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 26 Apr 2020 03:39:12 +0800
IronPort-SDR: 99kTU2RCF2IUGNHYkWDJnnsCHOIV6bpUJP3ilMyibZtUssUFfAbzwVyLLeddct6PMC4fBRJchW
 MrEOpzM5itFKmbkmtrpwTEaSUbVru10vI=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2020 12:29:22 -0700
IronPort-SDR: Ji8HkhRbzaKNnHP4usxnfXWc++Rc9Z/TeoRl2yEALapu0fyXwRoKldqZiu+eH7va6D+rP9e33N
 auhdMBxztnUg==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 25 Apr 2020 12:39:09 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: remove unused variable
Date: Sat, 25 Apr 2020 12:39:09 -0700
Message-Id: <20200425193909.7145-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_123913_655525_B713780F 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

bnZtZXRfZmlsZV9uc19lbmFibGUoKSBub3cgdXNlc8KgbnZtZXRfZmlsZV9uc19yZXZhbGlkYXRl
KCkgdG8gcmVhZAp0aGUgc2l6ZSBvZiB0aGUgZmlsZS4gUmVtb3ZlIHZhcmlhYmxlIHN0YXQgd2hp
Y2ggYWxzbyBmaXhlcyB0aGUKZm9sbG93aW5nIGNvbXBpbGF0aW9uIHdhcm5pbmc6LQoKZHJpdmVy
cy9udm1lLy90YXJnZXQvaW8tY21kLWZpbGUuYzogSW4gZnVuY3Rpb24g4oCYbnZtZXRfZmlsZV9u
c19lbmFibGXigJk6CmRyaXZlcnMvbnZtZS8vdGFyZ2V0L2lvLWNtZC1maWxlLmM6NDU6MTU6IHdh
cm5pbmc6IHVudXNlZCB2YXJpYWJsZSDigJhzdGF04oCZIFstV3VudXNlZC12YXJpYWJsZV0KICBz
dHJ1Y3Qga3N0YXQgc3RhdDsKClNpZ25lZC1vZmYtYnk6IENoYWl0YW55YSBLdWxrYXJuaSA8Y2hh
aXRhbnlhLmt1bGthcm5pQHdkYy5jb20+Ci0tLQogZHJpdmVycy9udm1lL3RhcmdldC9pby1jbWQt
ZmlsZS5jIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbnZtZS90YXJnZXQvaW8tY21kLWZpbGUuYyBiL2RyaXZlcnMvbnZtZS90YXJnZXQv
aW8tY21kLWZpbGUuYwppbmRleCA4ZWNlOWNhYjUxMTQuLmYwYmQwOGQ4NmFjMCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9udm1lL3RhcmdldC9pby1jbWQtZmlsZS5jCisrKyBiL2RyaXZlcnMvbnZtZS90
YXJnZXQvaW8tY21kLWZpbGUuYwpAQCAtNDIsNyArNDIsNiBAQCB2b2lkIG52bWV0X2ZpbGVfbnNf
ZGlzYWJsZShzdHJ1Y3QgbnZtZXRfbnMgKm5zKQogaW50IG52bWV0X2ZpbGVfbnNfZW5hYmxlKHN0
cnVjdCBudm1ldF9ucyAqbnMpCiB7CiAJaW50IGZsYWdzID0gT19SRFdSIHwgT19MQVJHRUZJTEU7
Ci0Jc3RydWN0IGtzdGF0IHN0YXQ7CiAJaW50IHJldDsKIAogCWlmICghbnMtPmJ1ZmZlcmVkX2lv
KQotLSAKMi4yMi4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
