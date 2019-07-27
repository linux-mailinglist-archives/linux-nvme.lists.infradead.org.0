Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754C777B7C
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 21:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YA+Ta5e8Cr95pc+3uNsNufyc8jMaYE+cNpbPNIrjCLE=; b=ZoTV78NzqptrRv
	IUxOrDNfHnS8RWV1Tij8R8Q/nzvqst8+e9bJdl0dJSdjF+ZDbHMml5F3a/TBpxM9ZUG/aFgEIbfeO
	mKr4F0HW31/o5iWRHT2Vbl2t4mePEcZjW1LC9K3MTJ3RsLjILFXktnvN5eVWMTvjS24yN09H+zdlv
	3hM5uKGAbHISlOtHnkyzd/zHJslB8o8wpkuYpDzP1Y9SYQvRTRXMyFI02a3d2Wf1QKR2zvW4UODIT
	XW7YFj1fVz4lEQn4Thh8PyS6L+p56Apdky3wBNUWcEeKVn4+0+BM6Z302xbHBe7ml9UJs4eLRp9E0
	2JGr+6AJNcsMrAu7f7PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSRK-0003Xx-Q4; Sat, 27 Jul 2019 19:33:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSRD-0003XJ-U2
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 19:33:05 +0000
Received: by mail-pg1-x544.google.com with SMTP id k189so7246452pgk.13
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 12:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ccAjHj838SUEik9QQDnnFjUjeDAVfc2zSQU9BKh2xuo=;
 b=TcktJ8hJu8JcLH0YJUZsQGNKiEHfUruZCeCMvzqHBTXawamowJ0DSTo3OzJD1a2VbT
 u6w9OKYTS4tHTyikUYYWmbdSl/T0M3kOQTqSgDOjDGELZ9AFbq71eBnCVllSe+U2x4fh
 cjZr5zxkhUMS1eY4SDGNH8uXoXT83yP8cnfI5GmuZkX4C+ZkJeDcIe8/Fw8Crg5HFV6a
 FN9Ws2LLwlSBISNuWu46cxf0ctMuoIR/Gn4VwRX55je+NFH2xsGHlVEtyhB2d2ZKRylf
 fAtm8fsz0kyqLwcZZamvL6WM5JZBNf/jd9aFXni+eMft9Di4+qDDk6CRgUVdpQPgDi3Q
 CMUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ccAjHj838SUEik9QQDnnFjUjeDAVfc2zSQU9BKh2xuo=;
 b=cdi3DgahecbK1B0wQaOLFkv086Nc5/VYwFmcm+s5zGusU8YIuWGt1l4Fp0fWK75NBi
 4GxKLi2zhgPCXxmtzDx6mF3L54v6PpWRTdrxjWsagRKTtHrN9Y5VRDlc2A1tp3ZUTk8h
 HreEPB0D8HhjJ3S+Xcuv023ZU1WuRCd9ch00gKAzK9UJ+0mlRou4da8dqmk5zXefcj4l
 zAf8YR60e5M/0edgUt7b/rYDXjclKzr1tepYxYzOPtYg3tvx+tUMoDZV2nt8nQKZ4Bu2
 48c+lvfwTF5kWaeJK+Lmaqm/ZYn0yAwPituRZ+5af0LzJuOqNLfARaAKaUXq0G6Wj2VP
 UIYw==
X-Gm-Message-State: APjAAAVZz4LIstmtkkM3Icn20mbczKqZeRziA0FvsSlCyFQw8pnus4w5
 v5hOIrBoFxy9zaRn95w8Hp/N8eva46o=
X-Google-Smtp-Source: APXvYqwnHj4hZjib3I/zTaLWMdI/9O2SZ1ixXGa1ey+NyIsMbypq2OvPlHeCFlYXdb6u3jTWPE7+XQ==
X-Received: by 2002:a63:7358:: with SMTP id d24mr96969300pgn.224.1564255982826; 
 Sat, 27 Jul 2019 12:33:02 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k36sm58027716pgl.42.2019.07.27.12.33.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 12:33:02 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 1/3] lnvm: make data_len to sizeof() instead of magic number
Date: Sun, 28 Jul 2019 04:32:47 +0900
Message-Id: <20190727193249.22655-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190727193249.22655-1-minwoo.im.dev@gmail.com>
References: <20190727193249.22655-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_123303_993562_D1DA8CE9 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
