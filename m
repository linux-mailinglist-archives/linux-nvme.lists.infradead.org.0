Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4FD6F404
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r7SyT0fYbH4xZuwv+9FBwjibSbZgEnEe2hd9mwfhEnk=; b=QqyqBmi5R1FNDUXDjrZjtk5P4d
	0mJxzqAxsThzNNT9/ShkGzO1ro/LmRr0tkLgmw3AcBKvD8oCysMJ9VJ+C1+sRZS5rDtgbmzf9428t
	M6VhVxUu0IuRrwhK4bOGGNzXbkYcp+ySVY7t2Io8icHLtUpPttWgt6I59crF+Ka6IUXby2WnvbL22
	xtBBqxEpqIOlB+31YKz1enzz4Dw0w18mtpJ52uITBmZtBRIqqoDTbdC7uMi9f/4EG+Mo/UT1xoxaP
	qI+881BoS+zE91bgTiMUcFCAIKP64QmKAMNiGacgMOHvw/eNlf6jut7D+uPAZI3rkP+a4/kRGQWrW
	+oMTVmcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDqW-0000yi-GW; Sun, 21 Jul 2019 15:33:56 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDpU-0000Ny-PM
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:32:57 +0000
Received: by mail-pl1-x642.google.com with SMTP id t14so17904834plr.11
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=klex8wyreZ+Dlzf75cRgF/AScaMNmoCn0btnAAuMIzA=;
 b=aUR5q9rLIY1SW2tMmg+E1P+JuhqlinOaJK4ucoAxw3Gwfp0e1+kLuzODGoW1NifRAT
 pb0icIM5gIpBUQZYxQhlVVv1DLiGa1CDp4UqLoPFAzMYUn208Riay9ZAGpzq+2A5UTEA
 6WmW9UAq6JCWpLkL37DxTSsrRUyv1vJqAR/+Ictcm5mmMwlBtMi65FDdzACUwCXxGNho
 iSHTGfiT4bGXnN4aOQYgLgG4bp0ix1YnM2+iwPcTaGWuRiFtQhoS6ETjrK+0IxvjrBBt
 M/f+wMcNYb3enEKNVU4shTswM26eg6iQH/nDfVc6saFpPuVW92ahS1ycMRH8RNPC2Voj
 v0hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=klex8wyreZ+Dlzf75cRgF/AScaMNmoCn0btnAAuMIzA=;
 b=bh6/TaxsMXBRQ9+LeU6OsnR1I4UnJJ5NVLb6DTX4NB3z+AlbmHwcsi1W92OWuYEKLW
 /WZqt3ngvjKTgLykCGEiOECo5xHRm2POHP1HhoHCfs9zr8JlrENVt0uuYIzX31j/q0MJ
 y1Jrac4P719MRr2tmS8xrsh9Clyi88TXLQvILTe+m0Uvdx0z0GAiAIuMxkZoznyfWmKD
 UpKg0SF5mVrfchg3NDMZMrnjC7++Je006Ta01+k97EVAx2i87hyF4rUPeekGRW9U1IQo
 SmsHfjbPX5mivEj7jPIcsPeauSUp9BOSEU4X1WjIv3xyATHwZKK3PCkPfgl7XBr9kJgq
 igxw==
X-Gm-Message-State: APjAAAXETQZPkvdm3FdmfUEWYlW4JUadB+9cB2L7G5MJehwScgpZdcV4
 lnaxC1yv28+Xj0KgWU9cTIOKQJfT3mU=
X-Google-Smtp-Source: APXvYqxI3C2RDJFDUHnmzZDGMAoV8ThQj5odPT2smCSgIsGOBuAX1bGXgCK4yR1fBGDfJEKZdWmW9w==
X-Received: by 2002:a17:902:aa41:: with SMTP id
 c1mr69888464plr.201.1563723171530; 
 Sun, 21 Jul 2019 08:32:51 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a3sm28957384pfc.70.2019.07.21.08.32.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 08:32:50 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/4] lnvm: sync-up uapi lightnvm.h header from kernel
Date: Mon, 22 Jul 2019 00:32:19 +0900
Message-Id: <20190721153219.5730-5-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
References: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_083252_882321_A8CA7BEC 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch just syncs-up UAPI header from the kernel.  No functional
changes included.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 linux/lightnvm.h | 52 +++++++++++++++++++++++++++++++++++++++++++++++-
 nvme-lightnvm.c  |  2 +-
 2 files changed, 52 insertions(+), 2 deletions(-)

diff --git a/linux/lightnvm.h b/linux/lightnvm.h
index f678ffb..c937160 100644
--- a/linux/lightnvm.h
+++ b/linux/lightnvm.h
@@ -77,7 +77,7 @@ struct nvm_ioctl_create_simple {
 struct nvm_ioctl_create_extended {
 	__u16 lun_begin;
 	__u16 lun_end;
-	__u16 over_prov;
+	__u16 op;
 	__u16 rsv;
 };
 
@@ -135,6 +135,44 @@ struct nvm_ioctl_dev_factory {
 	__u32 flags;
 };
 
+struct nvm_user_vio {
+	__u8 opcode;
+	__u8 flags;
+	__u16 control;
+	__u16 nppas;
+	__u16 rsvd;
+	__u64 metadata;
+	__u64 addr;
+	__u64 ppa_list;
+	__u32 metadata_len;
+	__u32 data_len;
+	__u64 status;
+	__u32 result;
+	__u32 rsvd3[3];
+};
+
+struct nvm_passthru_vio {
+	__u8 opcode;
+	__u8 flags;
+	__u8 rsvd[2];
+	__u32 nsid;
+	__u32 cdw2;
+	__u32 cdw3;
+	__u64 metadata;
+	__u64 addr;
+	__u32 metadata_len;
+	__u32 data_len;
+	__u64 ppa_list;
+	__u16 nppas;
+	__u16 control;
+	__u32 cdw13;
+	__u32 cdw14;
+	__u32 cdw15;
+	__u64 status;
+	__u32 result;
+	__u32 timeout_ms;
+};
+
 /* The ioctl type, 'L', 0x20 - 0x2F documented in ioctl-number.txt */
 enum {
 	/* top level cmds */
@@ -150,6 +188,11 @@ enum {
 
 	/* Factory reset device */
 	NVM_DEV_FACTORY_CMD,
+
+	/* Vector user I/O */
+	NVM_DEV_VIO_ADMIN_CMD = 0x41,
+	NVM_DEV_VIO_CMD = 0x42,
+	NVM_DEV_VIO_USER_CMD = 0x43,
 };
 
 #define NVM_IOCTL 'L' /* 0x4c */
@@ -167,6 +210,13 @@ enum {
 #define NVM_DEV_FACTORY		_IOW(NVM_IOCTL, NVM_DEV_FACTORY_CMD, \
 						struct nvm_ioctl_dev_factory)
 
+#define NVME_NVM_IOCTL_IO_VIO		_IOWR(NVM_IOCTL, NVM_DEV_VIO_USER_CMD, \
+						struct nvm_passthru_vio)
+#define NVME_NVM_IOCTL_ADMIN_VIO	_IOWR(NVM_IOCTL, NVM_DEV_VIO_ADMIN_CMD,\
+						struct nvm_passthru_vio)
+#define NVME_NVM_IOCTL_SUBMIT_VIO	_IOWR(NVM_IOCTL, NVM_DEV_VIO_CMD,\
+						struct nvm_user_vio)
+
 #define NVM_VERSION_MAJOR	1
 #define NVM_VERSION_MINOR	0
 #define NVM_VERSION_PATCHLEVEL	0
diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
index 62bdc40..b4b20ec 100644
--- a/nvme-lightnvm.c
+++ b/nvme-lightnvm.c
@@ -167,7 +167,7 @@ int lnvm_do_create_tgt(char *devname, char *tgtname, char *tgttype,
 		c.conf.type = NVM_CONFIG_TYPE_EXTENDED;
 		c.conf.e.lun_begin = lun_begin;
 		c.conf.e.lun_end = lun_end;
-		c.conf.e.over_prov = over_prov;
+		c.conf.e.op = over_prov;
 	} else {
 		c.conf.type = NVM_CONFIG_TYPE_SIMPLE;
 		c.conf.s.lun_begin = lun_begin;
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
