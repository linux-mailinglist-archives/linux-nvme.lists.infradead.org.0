Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F1F1688F
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 18:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W1WRNr+wZ6Bae3riimJLoKDjZ2lb/uoKhx5+qvc2dKc=; b=X+gn7SuMVAuJ04DtLmluc72Zsg
	V/ZFeWgBdnvZL/IGjP/MIGYWa/4ZMcxA6JphWoDlwZUY4otMayaaaahxI8aAZHwYNvor0cusOPeQh
	CchKn0qWS+i8aelwH5oo0D20AB6OafHx02+HuHYGoxZxKt7tAgfPZH464L12RuLJJN79021hNRzPU
	Mg42FTOviKAK4QXTBfS8pSSX26JO0gCK6DqtWR11eEJ9uzZpvh6FVinKdHxoZ0NxMhbOqcxQlu+Bt
	4KIuznc7KUAF2MTWvJIi/i5E7LnZQa8XEH4w5x5Ey0c5uZ1bfIjiqYyNSTnuRYiux4BsjSBWgYwXk
	6+Dctjcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3Qx-0007iG-Ch; Tue, 07 May 2019 16:59:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3Qe-0007MB-SH
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 16:59:09 +0000
Received: by mail-pf1-x442.google.com with SMTP id y13so8951912pfm.11
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 09:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=O3F7bdzCJVvXWFJraTuep0VKxXgWnuSEosT9JtZwBl0=;
 b=OtMY5pBCve9l9++jLockjsXtTUN3BkfdYW7oPEAh0dYgmTcA/93NWuCEUP11bOFiSo
 c0pg3aKoNwBbSCINAka02TpSDyp6ItYTYEoFjOnyKi/UqGZ8DyxNNfktPjOff5gJelqV
 uXHar6beyiLocJ35FJ7YuNCGC0xlsslYwEb+vyvzk4XGCpgwq0hVVSdKHNo2nuP8Busr
 CRx49DluRN5LyjrUqUExJrvA5mg0S2jsG7mJcHENfF+KREUM5Lty2vLjvs9mCzrowniq
 D3y1xd/7CRfzJPxPcP/dwqgonOUjc+cWPtysmdiOGqRRF3ifgbK8acwCCrryEFVSuY/3
 enzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=O3F7bdzCJVvXWFJraTuep0VKxXgWnuSEosT9JtZwBl0=;
 b=WzhYdlAVOlSIL1Tckfh31XQfTSt61UNfINPoE3qPY4MaOR0rVsPKGXO4gX3f0mVVxO
 5bNhNnwsvCMFTffrll+IZPGXVkWNyOwG73XUfba7ii+4IK0BsGGS8HuJeuz2CEBOsNBy
 /A369W8VjU7xzy6R066lSHnpcN2tzL9tbGab8K7tV+baD3PQy6rn8jCRFCxR2L2oQkCj
 kEmErN7+OrcdULxlfT+pHZ0no/94Gty49aBKagw+8gr4bxhjG6/DcqL9bA4C9dG4bbFp
 2bT4vH5QxLtT95EQ9bCModL8/o3urC8GGGYqevkkYGc5o3AnfdCatYyA6ArBrmgFWVlf
 x5+w==
X-Gm-Message-State: APjAAAUAcqoGnjxlLyjNxXxWSC4WZjCUh5IqtHxOzxkRGc9pE2JZUFKm
 9y8JioQKdTgwwPJ2fl6DUJtVZZKd
X-Google-Smtp-Source: APXvYqy7UEeAGiQO6c3HCRaC+GO0QSzUNg75f1Nl9sihob97Wg+kpW2IdWtx7ktPjr9ApscZfh7yLw==
X-Received: by 2002:a63:8e4b:: with SMTP id k72mr8953049pge.428.1557248335921; 
 Tue, 07 May 2019 09:58:55 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id r12sm18140093pfn.144.2019.05.07.09.58.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 09:58:55 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/7] devcoredump: fix typo in comment
Date: Wed,  8 May 2019 01:58:29 +0900
Message-Id: <1557248314-4238-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_095857_258160_0E2240B9 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

s/dev_coredumpmsg/dev_coredumpsg/

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v2
- New patch in this version.

 drivers/base/devcoredump.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/devcoredump.c b/drivers/base/devcoredump.c
index 3c960a6..e42d0b5 100644
--- a/drivers/base/devcoredump.c
+++ b/drivers/base/devcoredump.c
@@ -314,7 +314,7 @@ void dev_coredumpm(struct device *dev, struct module *owner,
 EXPORT_SYMBOL_GPL(dev_coredumpm);
 
 /**
- * dev_coredumpmsg - create device coredump that uses scatterlist as data
+ * dev_coredumpsg - create device coredump that uses scatterlist as data
  * parameter
  * @dev: the struct device for the crashed device
  * @table: the dump data
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
