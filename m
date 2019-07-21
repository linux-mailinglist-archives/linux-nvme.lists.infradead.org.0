Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFB36F3FA
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gycCeKN7m0hyiJkXEVvp5H+ST6B5gYDiHrDO0VTYsXY=; b=b2Mx1R5TT4J4W8EBQD5eNUMka8
	YAhd1zYgv/a+Il2E87kl6boVXIlGDRLT+/7HL/sczkoOVBVAGrHLIDCtziARV0tF3I5x+w7uLLkzD
	GGhM2Bbdds/flyUY4t1oj5eiSIm9/ZW7StVc8G4YwgYverLMGwzQO7EveKGdqKMXmHuIiHkfP1+ZD
	cn9WeZHSV+wTaoMJas8/UZx2gP4Nrb6BsO/z+HTOvDTUS+SeuVXEHS3NQHPMOlRIrClqtdFbcZgiF
	vwGXTWfARx/zqXQUZHRzFC9xkSknu3s5GGuBn7Iav3iUccpp5xgtI90iB/Ele6acUM5U30g8JKgox
	LInrI5RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDlV-0006wo-48; Sun, 21 Jul 2019 15:28:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDkH-0006Gl-9g
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:27:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id c73so16154400pfb.13
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cFjuaydSfy6fynPqz9XXwFxOcWhcpzxDxKFl5tMx7h0=;
 b=G6Qw98azkf7MRwhpyWpB7oH5W3waTBisTzyyb+VYb+YneIvhJHSNk10mSUftE4Gygx
 jof8POolTUT4mTQwWQzhHbyk4L9znT/gUC7su1zFDxu2FFMpH0gmy7lojD0yryXX2emj
 QpPaIpCK1FEWKw7qBIIWAemlM4Vs1c2FXqco3c8MuVMC89IaNwSPjVRxJNJ1qalFvgIQ
 q28BAVAFsHRqEdh06IoUHAAn2q2YoVvr9PEpseYpe49zy7x5TNCrAuVhtaR0Qf6/F196
 fsFu5kCfbHkZI/OFpdcw3DcRlZZq1jdNxADPXdEEeK9ttB23DBdA0nr6C9C7LwOPo5gh
 Vztw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cFjuaydSfy6fynPqz9XXwFxOcWhcpzxDxKFl5tMx7h0=;
 b=DpdI//BLDzZ5K6fxG2mN5PE20GWwfG+nkorB/tK4G1zKnFWGhRBtRXHbTibNz3bGDu
 jE621V5J0WenUNBJCRMz2DZxe8TEDM4+TrsGbnbv6RCYaurhzU2TKvnl/jptp289FTs1
 x5xIvxDHpB0CS2x3Ek0fkEcgEoM6BuKtC6c8mMUWkDGntG9B3s/fTepSUSH1kHgyMMOx
 rMIKqF4iKmUpKvZQLCmY0dXu8cPpINndEhkjiYCY3MAWxpJD9QuK/CKQ11QKHV/DiiRX
 kI7LmITNUiElfpiwHqe83dUvErPIQaKpSR2VvQTEd4j5YHLJKcG7kSccrU96q9eMaETs
 BoMA==
X-Gm-Message-State: APjAAAVrhJD9J0+ES//8jXOD/RlzfyB7CMF6rqr2XCqvIDe/hjAOOMY6
 AQfB+NohxC9SSFIy8Z5fsh4lEjjLxwI=
X-Google-Smtp-Source: APXvYqx0B+FKccH7fnfzI05+CECBLhVXkKfqgr4UvkRZwOndYLOnqaEP7liTG3VMC7H8wQI+LGu8EA==
X-Received: by 2002:a63:553:: with SMTP id 80mr68877574pgf.280.1563722847786; 
 Sun, 21 Jul 2019 08:27:27 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e189sm7802512pgc.15.2019.07.21.08.27.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 08:27:27 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/4] lnvm: sync-up uapi lightnvm.h header from kernel
Date: Mon, 22 Jul 2019 00:26:49 +0900
Message-Id: <20190721152649.4894-5-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190721152649.4894-4-minwoo.im.dev@gmail.com>
References: <20190721152649.4894-1-minwoo.im.dev@gmail.com>
 <20190721152649.4894-2-minwoo.im.dev@gmail.com>
 <20190721152649.4894-3-minwoo.im.dev@gmail.com>
 <20190721152649.4894-4-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_082729_503404_B98B5FA2 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 1 file changed, 51 insertions(+), 1 deletion(-)

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
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
