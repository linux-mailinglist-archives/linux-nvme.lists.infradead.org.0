Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E0C1688E
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 18:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FOEafn3zWCyMKp9r8r6dzeUPT/xKoaEKCuOA+W0nLOY=; b=Bzjl8JmQbyoadXXXuSl72LmsHn
	cXedLRv54N2xaxDEvB6XL48Gko34+50wzvYlrAXMt4yPGAVNaKqBRm+HAOnGyEUWH6P8SAvSjKnh9
	UOf/vYfntW7vJDRVYmd82qlhCjO2ZQ4lf6CewNArPyUyx5a+mRooNynsJD66PTDjMcH/7yvaWDs3A
	ltYGvCVSB0nTXiAzRhQpPZYT+4jRYUyuklf67dSl23HWPqCmjah1jkb7iDVppBzqyBO59PQgsov6h
	2vh+CivvoXovoGjNE1IH9qzr1gTW+EguN4sWeuO4zfc7jOVZRWHSuMc7Ro/2HUGnguDGsorrPcweE
	kmwd6nNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3Qp-0007RS-9X; Tue, 07 May 2019 16:59:07 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3Qb-0007Ie-E5
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 16:58:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id t187so4480350pgb.13
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 09:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yCv8sSMR6ScKjEy1rfKWXGO+DU+5zcc2adHgmKc5Xg8=;
 b=MbQxKye7rA//CkI9bEGuRwPAFkJISCOT4QAqjGufCOelreGxFdXLEZcRtwrcr/bvmn
 5F8SCUFRLBYgFUOndqdEsgbFiQCyk3BAF+glzr8cWI49YTy12LnWHKErN20OhtXqlOTK
 jUPUYtC31fYoW8RLeI9pWHBT+kN1iMHh/Qh/nBkCTNfNTyD0ZBDTE9v5swEddHPAiBp5
 fTyMkrRmy2KlbWlaGSKuE88RQGhhaCYQg4yDvsKRfjrh1ANSoheFZ3uExna2UEn5jxyy
 OstuX6uCMHAxWF7VTPw776bKcU5k+SpegZh+Pa8Une6s9XSM4f54lWCsOBpF9iv1lXMD
 xgCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yCv8sSMR6ScKjEy1rfKWXGO+DU+5zcc2adHgmKc5Xg8=;
 b=I/wTjfMsBr9bO2qkk4cR7uDxbuWtHGSHbC/h04m4l6jy/lf0FMwnHf0hV3IdTC38vJ
 AwdbjjLUOa7bJFCYlGmzFhGSyULkuoqKtkfhoF8F1QCCF1cFcOhk7nvN8UeLsrsXL2VF
 j62z8WBTyXZAaG1LkWPnQtYvwa5yniwF0k/Qog34fDOgtJOYPGhY+n2vED90oojKn5ts
 imJ01YP0c8zDCsx4gqR+zA0LG638a85u/TMbcy1ivq+2CsXI7NjgvI9Ar2we8dw8rTPE
 oePec7Tg+rYXOpyjnxA5gn7TZ+IGuvW9GDrg7YxohJfeWP6wvSc/ZkNN/D5RydU6zecx
 FZHg==
X-Gm-Message-State: APjAAAUtQLoJ+f9PuOWCNw9BlBpvzt5XerR/p3u+8WmlUy4m2QTM9j3C
 j0tXTNj9xV/sfT0jbEgtDMXW1H8G
X-Google-Smtp-Source: APXvYqy3RvniSsGhL6GQuYhBIGPKuJeK5+qo9p8zgaZO6UBphnwJmO5t/7I7TYPdO3EnicMp8ubK7A==
X-Received: by 2002:a63:2d41:: with SMTP id t62mr41260420pgt.113.1557248332851; 
 Tue, 07 May 2019 09:58:52 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id r12sm18140093pfn.144.2019.05.07.09.58.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 09:58:52 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/7] devcoredump: use memory_read_from_buffer
Date: Wed,  8 May 2019 01:58:28 +0900
Message-Id: <1557248314-4238-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_095853_472649_AA267F03 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Use memory_read_from_buffer() to simplify devcd_readv().

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Johannes Berg <johannes@sipsolutions.net>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v2
- Add Reviewed-by tag.

 drivers/base/devcoredump.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/base/devcoredump.c b/drivers/base/devcoredump.c
index f1a3353..3c960a6 100644
--- a/drivers/base/devcoredump.c
+++ b/drivers/base/devcoredump.c
@@ -164,16 +164,7 @@ static struct class devcd_class = {
 static ssize_t devcd_readv(char *buffer, loff_t offset, size_t count,
 			   void *data, size_t datalen)
 {
-	if (offset > datalen)
-		return -EINVAL;
-
-	if (offset + count > datalen)
-		count = datalen - offset;
-
-	if (count)
-		memcpy(buffer, ((u8 *)data) + offset, count);
-
-	return count;
+	return memory_read_from_buffer(buffer, count, &offset, data, datalen);
 }
 
 static void devcd_freev(void *data)
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
