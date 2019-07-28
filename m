Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6AB77E45
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Jul 2019 08:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YA+Ta5e8Cr95pc+3uNsNufyc8jMaYE+cNpbPNIrjCLE=; b=RMzhFy4hbjxIpy
	owsGg61j83KTjN9H4Cbyq9dKnirS3ZLr4w0Ol8wlS0tRGyhPhFSpTiSKRnyxCyOhuoqvOhL0em3Nz
	z4aOnJpiaXRNRy4rgZUOdpc8JpcW9mrEgBY6QH79a5VvL3HqmUaRFljsH9cemUVyXjMKuZRVaNL8U
	VHJCRti+HndHL66nMDVwLRAEshlDsJR5VjNZ8ggvp6eCo8PhJGiM2IWWzysXBJViKhG0CLtzCO08F
	O0cblPMyJFBq1CiLYscRYf/aahayZupA8g37kobBGzPwhwgJl4Y1KPFK7x81NEBbkJ26pHPq/x9Iq
	8vY8NzK/MK6tD7MUbaoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrcmi-0001KM-J6; Sun, 28 Jul 2019 06:35:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrcmJ-0001Dj-6N
 for linux-nvme@lists.infradead.org; Sun, 28 Jul 2019 06:35:33 +0000
Received: by mail-pg1-x541.google.com with SMTP id f5so17843451pgu.5
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 23:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ccAjHj838SUEik9QQDnnFjUjeDAVfc2zSQU9BKh2xuo=;
 b=cUWhRKGk3TQhPa3aR58U2WClCUFXcjlOrYzKOFwXuzzLjKhEHfULdUOCkdoGhkOrkG
 cy22zjrPEOI9vppwOdUtFducrd4V6f5JZgr3YwTRDIzKNV6YIz4pAaw2DIj8YdWjOAWH
 1RvaRkaz6T+2B77rARknMwYT0vWboQJw/ukKcBdMhZ12H/iuwizopHIWAbeGI0900RU9
 TKASd/1iaZNviiQnlDwmePdYwmLtvs0iOavimCyNiT03rAoTvYiKCIr+0sMwBVdqpoH+
 YZL6vXr6WRabiCC9XLP27MHUX5/Kx8QVF7m6kUpxIoEIYDnJCBbtTOHXCb9w95Rcsnjf
 6YUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ccAjHj838SUEik9QQDnnFjUjeDAVfc2zSQU9BKh2xuo=;
 b=argeJgV5Ca1LsSnboJc0NktTOxWuQQqzOLusgOLWCbIHQQCUXLWONslpNOenGskOpw
 qOnbxlT72SJZDBJ/6mmHNhTu3TrUf/ywO4pZiEz7RTXnUuvwrfs9FASF/u65m86Lz+w1
 ZcoHKa28KtsfjwQIKMThXjV/us1GTP6//eG4YT9qjLg8LDIPyXBl60jTDoztRmJqru3B
 sZRk5fqDaEzXmN3Wgp1fWu9DtLyX5rifjNEMk2ZPCPaDTuF4tnm0N1FDzcJh2fpgscAa
 3q5jEsl9vHlow5dXgbsizCpaqqnYY8TJJv3EBpdxXDy3hz3I3DytR4WS9yWc3CrgVjpT
 WbJA==
X-Gm-Message-State: APjAAAUZcq92EphBC9jHz9iXrXaTdnnswgEi4Q+sMq+4oM27yi+34jQ1
 uxm8ouDKBPcDMmFercjC5ZV4ilrNxtg=
X-Google-Smtp-Source: APXvYqwQVwG2+jyDZZy9OQK+nN1htOpzLNv8E3exlnlC5YVzr+sVFV/DX+hVdGXFdZ1uM6W5xaMZxw==
X-Received: by 2002:a62:cdc3:: with SMTP id
 o186mr30680162pfg.168.1564295726544; 
 Sat, 27 Jul 2019 23:35:26 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id h1sm72419277pfg.55.2019.07.27.23.35.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 23:35:25 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 1/3] lnvm: make data_len to sizeof() instead of magic number
Date: Sun, 28 Jul 2019 15:35:14 +0900
Message-Id: <20190728063516.17732-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190728063516.17732-1-minwoo.im.dev@gmail.com>
References: <20190728063516.17732-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_233532_448246_12F789A4 
X-CRM114-Status: GOOD (  10.87  )
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
Cc: =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Matias Bjorling <mb@lightnvm.io>,
 =?UTF-8?q?Matias=20Bj=C3=B8rling?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

V2UgY2FuIGhhdmUgaXQgYXMgYSBzaXplb2YoKSBpbnN0ZWFkIG9mIHRoZSBoYXJkLWNvZGVkIHZh
bHVlIGZvciB0aGUKZGF0YSBzdHJ1Y3R1cmUuCgpDYzogS2VpdGggQnVzY2ggPGtidXNjaEBrZXJu
ZWwub3JnPgpDYzogTWF0aWFzIEJqb3JsaW5nIDxtYkBsaWdodG52bS5pbz4KU2lnbmVkLW9mZi1i
eTogTWlud29vIEltIDxtaW53b28uaW0uZGV2QGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0
aWFzIEJqw7hybGluZyA8bWF0aWFzLmJqb3JsaW5nQHdkYy5jb20+ClJldmlld2VkLWJ5OiBKYXZp
ZXIgR29uesOhbGV6IDxqYXZpZXJAamF2aWdvbi5jb20+Ci0tLQogbnZtZS1saWdodG52bS5jIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvbnZtZS1saWdodG52bS5jIGIvbnZtZS1saWdodG52bS5jCmluZGV4IDBiOTk3ODYu
LmU4Y2RjY2QgMTAwNjQ0Ci0tLSBhL252bWUtbGlnaHRudm0uYworKysgYi9udm1lLWxpZ2h0bnZt
LmMKQEAgLTQ0Miw3ICs0NDIsNyBAQCBzdGF0aWMgaW50IGxudm1fZ2V0X2lkZW50aXR5KGludCBm
ZCwgaW50IG5zaWQsIHN0cnVjdCBudm1lX252bV9pZCAqbnZtX2lkKQogCQkub3Bjb2RlCQk9IG52
bWVfbnZtX2FkbWluX2lkZW50aXR5LAogCQkubnNpZAkJPSBuc2lkLAogCQkuYWRkcgkJPSAoX191
NjQpKHVpbnRwdHJfdCludm1faWQsCi0JCS5kYXRhX2xlbgk9IDB4MTAwMCwKKwkJLmRhdGFfbGVu
CT0gc2l6ZW9mKHN0cnVjdCBudm1lX252bV9pZCksCiAJfTsKIAogCXJldHVybiBudm1lX3N1Ym1p
dF9wYXNzdGhydShmZCwgTlZNRV9JT0NUTF9BRE1JTl9DTUQsICZjbWQpOwotLSAKMi4xNy4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
