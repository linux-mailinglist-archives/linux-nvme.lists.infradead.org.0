Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1872270D
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 17:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hY58TI6h5WvyZjkcBliBYrvFdvJ7FXZQczyQnhxDcas=; b=k/vcdbeJmt/0hvJD4JN+OQ2xCl
	SA7R/QTemZnYmS74EhVaCnDe6WEPcCHCuhOoNcAitQ2LKesXHpNWWkG/vvYC3J55vah7/GqmwlCN3
	1X9CE7zQ90HsBr7URq+9H/1hMYh37i0DTRbpIZm8DQGbU0JPKV89mjc3KFfM26jZQx6rmaZP+MLib
	t6zdsIrzqEwu4ChWfN7jp3nV5iFGu722Okb1fD1b/w8/pxzbklSNZ3RVkjt5f86XfzbyzROE63e7J
	eYX79i/m/6LmY+Qz/VTOEKKYwB1FJE1HG1pxummA6ttRDaTTiDjcpQpHWRxlr+CCbXYj4jfin5Qad
	E72MdoLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSNPY-0004t2-0C; Sun, 19 May 2019 15:07:40 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSNPG-0004hI-HK
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 15:07:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id z28so5990423pfk.0
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 08:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VTpDnGpSlH3sitRA1I0tP2N8TOBZbLCzCKErVuqixPw=;
 b=Xe9T/z4kHbUN5PPMLszy4q/YrdRAwME43PLuBHkM+Hzma52O2VPXyaQME/McxWTsj0
 9ie7U33Py6iF2OV8NvZA/HyHWMJzJILk9HxDchjBQLz84jdolRHHo8wN3dAOf+4SYlZ1
 xUZxObPRj4Y9PGVXXvpdPlC7Hb76rVz1/enOCJXIwg6nAsfMlmjZ0LRLfKXG7OXX8J0o
 yReU8cv2fKINMFk71zwy77aHeGIvmUZlXleKviH26hn8i0zHkK/WXTiUgpEBt/DIPdi2
 7zOrbXcov6cMx8ixJdni1kjKoNxqAU/GaR5yjYUPpVdgZIcNfJeA7KJTYyHigJrS8Tjt
 ELBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VTpDnGpSlH3sitRA1I0tP2N8TOBZbLCzCKErVuqixPw=;
 b=VqzbUkEjhE1g/QpUueLgqQytCUrBfW1h9A3V/etgiUqzEa76ZvCQNwVziBXpcl3i6m
 FzvYizY2TORXMOY0sQRyNZxBACI7eyH2Ww1qanFhGuMXM6cz7b4j9Jlzf85SQQ694v64
 5LIRPeqqgUCuRZ5gsl7aB2WdfNrGKNtb+c5LKBx1rcYC843BCuFi+tMtYGmcyoxZJqe9
 QySM/0PblCEm22y6fD7JveOAhc/BGwLXuaj//DCiObWAJ53sEUYqa3EAXYZaSvoZzPZo
 zYxNsIVJZ3TRV9oHZsAEb0hdNowsXJt3WiJBlbliTAh/hWo7ZxLZrDt7/DpTJbbg0nV3
 pUQg==
X-Gm-Message-State: APjAAAV8dG4JksIzPybnYmdaFyKzbTmFvbe9bP/sULOm4HGxh6K11EUR
 UEYedeVv7ZUoqR8X7zGxNZd1gbgV
X-Google-Smtp-Source: APXvYqxn+YXcNTZuduG70hpfaq1BM9K3JvhmJLAfft2z8UBpYUir/hMdb3/9Ug/qeDVHh1+cXhNNpw==
X-Received: by 2002:a63:d354:: with SMTP id u20mr21757566pgi.129.1558278440716; 
 Sun, 19 May 2019 08:07:20 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:5085:bb4a:e3a8:fc9d])
 by smtp.gmail.com with ESMTPSA id g17sm2441105pfb.56.2019.05.19.08.07.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 May 2019 08:07:20 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/7] devcoredump: fix typo in comment
Date: Mon, 20 May 2019 00:06:53 +0900
Message-Id: <1558278418-5702-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
References: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_080722_832812_80DA0BF7 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
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
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v4
- Add Reviewed-by tag

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
