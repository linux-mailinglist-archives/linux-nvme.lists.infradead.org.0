Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0B81ACDB
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gU2M3r2BJYBaWaf7DkBEU925LnzmwbKlq1wBzcoaNIo=; b=Q7IqCLqFr7g//OoYUIZz8Z/+dX
	R4jhY7kukyGYp7IVgF/MFx+lIw25X5N633Ghu+dQfJLGd9CgFd6/xA7OR+oDQ5wpCuLwES5Jkmbi4
	Oq/QYQxeBSsKZe4Qpx74gd9Wdqr0x91xaTiomtKj0yAmV565OLl1OtKRhAStFDEhXpRGdKI8pBNqr
	dnQaBkxu3EMSIpS/sYFmoLp1YGLK89Iusf0UrVs+2s9VnVQl8VSFKCajSt0YPJzJz5d2BZ2oJFBhy
	CUvnrNTFu2AlQclLCf2Twr04KzwD5YnxUiSjFg1YGISMjfLQ8hQGT3W8PUyvYaCjsfvYjOxPxBoiv
	isNioSww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqoN-0000Gb-GF; Sun, 12 May 2019 15:54:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqoE-0000Ab-66
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:54:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id z26so5803690pfg.6
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ctPGboDNDGmjFYiEazMcfzgkODikwa3AsFgd4Zyl/aM=;
 b=nMy6goevAU34IOb46/1Hf6xie10X97sMqObsq0qHXdYYxjUm3Z0ZMTba2TOHHACxm9
 Hyom9RmtArj/n2l4n4UL1YySbfieqUZmtjV3+pX4KoE7nm3HWNeA5khS6/uq7GRqt+LB
 X4Y8+d9mS7FwEx/H2+n3IJCH2iKsF2pKiOMD1rEz6CklPfOXvN3JjweWodbP/AGjFFUH
 EVAGqSJ8rRX9U8dRXa3CmLLT55YDj5EWH6FuVrMDNryPUhp7PTxhuErbcbvGVsVVPMEs
 Ou7TgZ/L0kY3pb/hYmcXkjoVmgBCKBiaQOJN5JjwOouWJ+0hzuz94AE5pp0Nz7T5+rxv
 HSJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ctPGboDNDGmjFYiEazMcfzgkODikwa3AsFgd4Zyl/aM=;
 b=ck4UE8+x3ARoyWKw9dVoxb+f12ebF8FCiRVIrbfqgMJBCkjvpYIvDERntKy4oT91Mn
 JBuU+Uwbt2HWZow78zYlW00Aqdqi6Xk+YfvjkX/bVUv2OH0so0kLcIzpvOWcdAwyWVPa
 mP7ZYWB8hLwFcLkvHUMetrH98mRNLDZp+QJuyQY+B9wgQMW6BqBxPIX1EAnPlhii5qWX
 Vi+pDRp4GNJLum2Pvv25xeIt11QA775gZD5shtNvBRoF9JdoMkvmyPf5MmsAnKaU7Gw/
 e/3LJnTBVDrLnR4cj5rmOmGHHUHaUsZZVYF1r5yeqpe0aymeuGUICysceNNR7yckg8at
 DXRA==
X-Gm-Message-State: APjAAAWg3EQ/Jni1ZcXFnqrQJyDQ8tr8K2PL6IsHwxEE1OzcUZtLuw2l
 xCmLKbXedSu/VTi55RFOGWWY3xOi
X-Google-Smtp-Source: APXvYqy5McS61tFBa5pCjUu5eW7VQ4z1D0OAZPgl5XGQeJ5qA+QLnzlKQVtjWnBHCnjVWMybMXjbzQ==
X-Received: by 2002:a62:65c1:: with SMTP id z184mr8671379pfb.130.1557676481624; 
 Sun, 12 May 2019 08:54:41 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:918e:f7e4:1728:3f45])
 by smtp.gmail.com with ESMTPSA id v2sm4470058pgr.2.2019.05.12.08.54.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 12 May 2019 08:54:40 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/7] devcoredump: use memory_read_from_buffer
Date: Mon, 13 May 2019 00:54:11 +0900
Message-Id: <1557676457-4195-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_085442_222269_982F4425 
X-CRM114-Status: GOOD (  15.03  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Kenneth Heitke <kenneth.heitke@intel.com>,
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
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Reviewed-by: Johannes Berg <johannes@sipsolutions.net>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v3
- No change since v2

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
