Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B4D70460
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 17:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oDgLwaBWiwGJQjmSRK29wZbzlREiPq2E7DM8vIR0/0g=; b=qUOjHd6u8yT8Ji/gQ7QnEWx++
	LBGKEJku0EgXFmFvu9nIXcq8GPYS9ojcxw7nRN/veYwuSzd1G86pzkpasdJZWp9FPfGtbfVkSfUtv
	g6zY3uka9fWbIeTJYV6Ny22qGO7I93GzfIuleOociSdU+UUWTNeR/ucNJxpDgsVfLa0703AZQBUgH
	qoaTrol2AVMFcJUGVvhnMZOJ1a+G/Wr6Qfk04w+fb6d0nidGcZYHjkcPOEWLxiYVPIjc2YuzGNvHx
	vTt2GhZCuPaUnecCqGoAa/wvZpVWi9Y7X4+dSqBRZRVkBjXs9lf19/yRmD0UanggcQHlKkakVzdW3
	m8+4k9zdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpaWK-0005d1-J9; Mon, 22 Jul 2019 15:46:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpaSd-0001sb-Ex
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 15:42:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id i8so17827275pgm.13
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 08:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=eoMt+myMqTWPBODYVD4pEnNpObU9i8VmyLC89Cz9vyY=;
 b=Og4U4GsJgRRPLnmq8rQyPaTHLPwqrGrEdatvWC7GK55dSK7OcAWZ9sFQk2SAxiNfXS
 Gz7T/bUZZapctlKN/9ZjpVbsqQk1B89LKL3NKHg0tc0a3QwUynNTGmt6qQzEstHbvDKx
 VxHAI83Y7kOhIbaNiR2hGWXsW/QWPbT3M0TbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=eoMt+myMqTWPBODYVD4pEnNpObU9i8VmyLC89Cz9vyY=;
 b=D2W8NS768rrrwDDrZDnVS/32NjJz6aKl3sV+Pza/yHhsNZKt2d4VUYZ14mEbHtaQSU
 jCCAzrJoTLjCBEc04M+SBeHiaX8t+xLvyxH9eRgjhh+qYAN7Wsg9WPyNfJo3vkMn0rgx
 5kwDVEgI3mNRg28hN6gP1z0+gK+cevlQC/5K1fjoWDPHj7kMwKwSoGOCCr0TyYwPX1tw
 WapCINmjQhAURFL868sJF7uM4kyMVjGifkRbQtyWzBSsQssSI9nqdXr60l2V9nSpKpUp
 9BGBKV2Q00yXVT1O3IS/DkpZVmzekdPBK9WKDdPFqQrlx4r2R+UvTBHxAo1H7xYkdAfd
 7/6Q==
X-Gm-Message-State: APjAAAVLLRqqu9nVqvKeibilay6nKzEjjz+Cm+XIY1BBrBLRAbk35tno
 gTnEGL98t7PExPeQg9bPtybCcGyzG+w=
X-Google-Smtp-Source: APXvYqzTxDCUzUc9UxliX5M7GyRHaNacsWX4m8H/ut/sct1iN1wYuPSlKHNrqErCtHmSG7fSNkR29g==
X-Received: by 2002:a63:e306:: with SMTP id f6mr71029157pgh.39.1563810166386; 
 Mon, 22 Jul 2019 08:42:46 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s3sm1613797pgq.17.2019.07.22.08.42.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 08:42:45 -0700 (PDT)
Subject: Re: [PATCH 0/4] small set of nvme cleanups
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190719194546.24229-1-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <3086fcef-efb2-85e4-4e36-2c5734cf3068@broadcom.com>
Date: Mon, 22 Jul 2019 08:42:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190719194546.24229-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_084247_529780_99852C53 
X-CRM114-Status: GOOD (  12.64  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA3LzE5LzIwMTkgMTI6NDUgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4gQ2VudHJhbGl6
ZXMgcXVldWUgc2l6ZSBzZXR0aW5ncyBmb3IgZmFicmljcyBhbmQKPiByZW1vdmVzIHJlZHVuZGFu
dCBhcmd1bWVudCB0byBudm1lX2Rpc2FibGUvZW5hYmxlX2N0cmwuCj4KPiBTYWdpIEdyaW1iZXJn
ICg0KToKPiAgICBudm1lOiBoYXZlIG52bWVfaW5pdF9pZGVudGlmeSBzZXQgY3RybC0+Y2FwCj4g
ICAgbnZtZTogbW92ZSBzcXNpemUgc2V0dGluZyB0byB0aGUgY29yZQo+ICAgIG52bWU6IGRvbid0
IHBhc3MgY2FwIHRvIG52bWVfZGlzYWJsZV9jdHJsCj4gICAgbnZtZTogZG9uJ3QgcGFzcyBjYXAg
dG8gbnZtZV9lbmFibGVfY3RybAo+Cj4gICBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgICB8IDE5
ICsrKysrKysrKystLS0tLS0tLS0KPiAgIGRyaXZlcnMvbnZtZS9ob3N0L2ZjLmMgICAgIHwgMTIg
Ky0tLS0tLS0tLS0tCj4gICBkcml2ZXJzL252bWUvaG9zdC9udm1lLmggICB8ICA0ICsrLS0KPiAg
IGRyaXZlcnMvbnZtZS9ob3N0L3BjaS5jICAgIHwgIDcgKysrKy0tLQo+ICAgZHJpdmVycy9udm1l
L2hvc3QvcmRtYS5jICAgfCAxNSArKy0tLS0tLS0tLS0tLS0KPiAgIGRyaXZlcnMvbnZtZS9ob3N0
L3RjcC5jICAgIHwgMTMgKystLS0tLS0tLS0tLQo+ICAgZHJpdmVycy9udm1lL3RhcmdldC9sb29w
LmMgfCAxMiArLS0tLS0tLS0tLS0KPiAgIDcgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygr
KSwgNjAgZGVsZXRpb25zKC0pCj4KClRoZSBjaGFuZ2VzIGxvb2sgZmluZSBleGNlcHQgZm9yIDEg
bWFpbiBpc3N1ZTrCoCBBbGwgb2YgdGhlIG52bWYgCnRyYW5zcG9ydHMgY2FsbCBudm1lX2VuYWJs
ZV9jdHJsKCksIHdoaWNoIHN0aWxsIHJlZmVyZW5jZXMgY3RybC0+Y2FwLCAKYmVmb3JlIHRoZXkg
Y2FsbCBudm1lX2luaXRfaWRlbnRpZnkoKS4KCi0tIGphbWVzCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGlu
dXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
