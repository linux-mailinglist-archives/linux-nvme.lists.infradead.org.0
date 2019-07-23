Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE95B71F61
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 20:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gREHytt0fIK2rystvxVyMtVRKlMZQ0wA0iRegVNCN8g=; b=nSAz0cO3S3HwbO6/rrrnVxP79A
	YM/u4MX1QMX7cJg53Rgryk9Xf9tyHM7r3UmY5Sj7OkI0chkP2tCjYgRmQv38ZdoAKvr+CXIHC3o0+
	7OWeqOL2K3q9Ck1/Zf1qxEj2FUOuskxjbeRZNKCXBbCxDUPOHxql1ucH0f665MChxW6OLrxjTri37
	YGiMVnoXQAxOfba1WdjyIdDIExuRqcInfYcRSW2Eroqo6tYiV7R8BvVowDGxau8yvlxdu5j3gbtJB
	W5+2rtfPMaCtuUF2uoBvt4pCpRZ7whZfrP2G8jO/dBipJG15AIfm4ESZt+WtG+KymT9gFgpzHRprd
	Kvl7hPHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzef-0002sc-36; Tue, 23 Jul 2019 18:36:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpze4-0002Wk-Vy
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 18:36:20 +0000
Received: by mail-pf1-x441.google.com with SMTP id c73so19559240pfb.13
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 11:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aYQgN3j/G2blwCkWkl/qejcDJRgtmoVRWDMWxaZoNdU=;
 b=Fs6ekDq/HSJh/fpv3AOJ1SKE1uhkzkEvF7TNXSPnU/qMBqmWMIWD1A2GcGzuFf3nvl
 bBNGxKzqFglDEsAYP3NvtfJPcdU6hptNLgVy9QxVAiFzVg70tMJSm8uAYB31C85Bi6u7
 KQeYe4Iw+XJKyE9H6Eq460jQuKgGQ/civv8bvcUDeVPGtThX+IveHAZmxYmZ2Y7hd3Rr
 mO8OrhXy17239zZmHnvPsBdewYHZ/9S9G6gaIGfkqAzvcNnyON15+HvB9ysKhjQMFouO
 pmHXJbHub1vnnFXPctxzD7LPe8PLA419ZpGNwgNlmHh5SipcxgWA2las+Vb24ZCsSHj1
 2orQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aYQgN3j/G2blwCkWkl/qejcDJRgtmoVRWDMWxaZoNdU=;
 b=PWztpwtWQjPkJ6m+hXjDz7tGtZ8x2eEJMFpmt2C6GBoG3bN3ggT5TjmxiV/PI3WHg0
 BBzWbTzo1NFZoO+9tUVutT4A0J5tOTNlYqhl6HbL1yjcrXX0FsL/TZvEDOvA+YdNtn29
 Z6OTSDXDAQqD2j7aHo87gDQFTQLT5tcO03vj4ghEIvN4fxIXObbKLylvjZSyHTtC6QPd
 NAvrxPGG87STAbEFLe4Oae497TpngEGKRYDYkr9KW2Lx4/GlK7tj9PzEyccLVA0XZtcx
 tI0Q0UH7NL7nt3fp8bSgmyb8HxXXyn6FmJhoq5MMVwKzI+hyl9dkmiByLiDa7Kejw15P
 8Dog==
X-Gm-Message-State: APjAAAW8HLQqbyjhdL+FR1YYiFV3z8qKXFqPX6Jci2qe1jGrPb3xHQpI
 gNtCpRcDcMpOucnTFShWiLCy/SLiURk=
X-Google-Smtp-Source: APXvYqwfTdi1J+25KUM21F5YUgbNrZEW+ZqB/ncHqz+285073jXPijNatBqFRsqZ+FbZmMT7At04sg==
X-Received: by 2002:a65:5183:: with SMTP id h3mr77484690pgq.250.1563906975651; 
 Tue, 23 Jul 2019 11:36:15 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g6sm38548400pgh.64.2019.07.23.11.36.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 11:36:15 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/5] lnvm: export lnvm_get_identity
Date: Wed, 24 Jul 2019 03:35:58 +0900
Message-Id: <20190723183601.29370-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_113617_422989_AA8A24A2 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When a subcommand wants to fetch Geometry, this function would be the
one to be taken.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme-lightnvm.c | 2 +-
 nvme-lightnvm.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
index e8cdccd..2e665bf 100644
--- a/nvme-lightnvm.c
+++ b/nvme-lightnvm.c
@@ -436,7 +436,7 @@ static void show_lnvm_id_ns(struct nvme_nvm_id *id, unsigned int flags)
 	}
 }
 
-static int lnvm_get_identity(int fd, int nsid, struct nvme_nvm_id *nvm_id)
+int lnvm_get_identity(int fd, int nsid, struct nvme_nvm_id *nvm_id)
 {
 	struct nvme_admin_cmd cmd = {
 		.opcode		= nvme_nvm_admin_identity,
diff --git a/nvme-lightnvm.h b/nvme-lightnvm.h
index 9dea912..9dc1868 100644
--- a/nvme-lightnvm.h
+++ b/nvme-lightnvm.h
@@ -299,6 +299,8 @@ static inline struct ppa_addr generic_to_dev_addr(
 	return l;
 }
 
+int lnvm_get_identity(int fd, int nsid, struct nvme_nvm_id *nvm_id);
+
 int lnvm_do_init(char *, char *);
 int lnvm_do_list_devices(void);
 int lnvm_do_info(void);
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
