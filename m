Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE878154BB7
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Feb 2020 20:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vQ2ZeSquH9ELwqk0c7uZJS47rkIOWDyl07CdXGvHFlU=; b=A/M6lXEVn7zChcz7LnHMSZUE8K
	3odSCwVjNeWTqqXnb0d5LGoL84GQ8z6NbAzAP3fvjyyxmROeGOYY/pwoNfoXrR/bzM05NBB72yaVw
	FMzHAzJjx2MKclYLgIMXDhnolGZiS5qiT9UmMHME0qjIzhPmHbpbvJnpUIieMc2+1w7ha3XhmZng0
	OEduXuitO2yfnZvOtCPTAyqETZSVZ2YJZYVD05Ksv4th2MxGC6ABDjd/KzkHajDg+atHrI0qkTMBF
	ArgufxxVZ79DLck5AFTpII7j/0H58g/gq/pms1btyq1oCut7Lie+gBN6b77lnnUFkACjP73MhNMMp
	Vy5nTZhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmbI-0005yd-Pk; Thu, 06 Feb 2020 19:14:08 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmb8-0005um-2l
 for linux-nvme@lists.infradead.org; Thu, 06 Feb 2020 19:13:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id z124so3200175pgb.13
 for <linux-nvme@lists.infradead.org>; Thu, 06 Feb 2020 11:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=N7AAMTSp/MWp4hgOr+tstKj35eRbZ/xZXTcKyTYB/70=;
 b=Gvi6JM0AK+EbSijngXvYTlyp8YF9QLzx/HOk0+6EuHDLscGKmAHyEzqq83O2crxMnZ
 poyfM3BxmGrY1eAJQ3xyB3UtVcmyHizt6UXO6TqQ6XNEaO/Uob0TkHpEtct+YLHPwIfS
 QnWpkrpDjKHOVw/4BsvbJPvd8mSEcUjmSGHy/hhEbG4xer0IJlNcz4eMeKN4NcIw6/gJ
 X7yHy+TQVvG7IHu7Uc7lw3FLDVTLATfEEQrrroXnEWSpYVHO8dyI9fV4ZzTwNKjQel8j
 ZuN/b7mdV92MJSaZUj0Ksb86ETK3aCI5Niu1+TnqTxSR/ui2lRDNTk0Trglh1JanBy3Z
 uoVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=N7AAMTSp/MWp4hgOr+tstKj35eRbZ/xZXTcKyTYB/70=;
 b=J1wrz/J5W9u8qG/UHq8y3PkDywwxVfu9+ojcvthAZrTLUS2Ex1sUvxoJ7tS9hWbvuy
 V4EEwQPx5c7smqmddsJmMCGTgJUnzKqOAD1T57oZFszinDGQxzUVeMrEzeAcruPaWNrb
 Kxo0I2zj5wqZ7qUIWAA4OFAoVtQgP6BQyWbOMEI9LPtFrR9jxEXFY7fACzAERqNbRhO9
 f8nChrPvIUcLcONsY30r14pcad/X05MaOsB39cUXlLTCRkN1h774KvXwYpFZreUXFIOO
 Eiqy20l6y/UZDopF2wK7wJzEdZ8P6Gs6O9EttG35HRJ+bgomN1K3r5DCIIEUm+f2XsHp
 PuAA==
X-Gm-Message-State: APjAAAXiEXXJclUmTAvJXRRCRzjRCzaY5wZuEvl4Z7KjnPxJaSn7BI1d
 y9D81wvXB/xfVP6PmAou9Y43hkrq
X-Google-Smtp-Source: APXvYqzvxAUjmkfPiRMiISEKOVQO/ZC9m+YqTaoiaKd5gPr4Uc+G/+dD+Vrp6vwd6TDvwGq2Jj0d0A==
X-Received: by 2002:a63:fa0b:: with SMTP id y11mr5190293pgh.137.1581016431545; 
 Thu, 06 Feb 2020 11:13:51 -0800 (PST)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n15sm147297pfq.168.2020.02.06.11.13.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 06 Feb 2020 11:13:51 -0800 (PST)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/2] nvme-rdma/nvme-tcp: Move err_work to nvme_reset_wq
Date: Thu,  6 Feb 2020 11:13:42 -0800
Message-Id: <20200206191342.10190-3-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200206191342.10190-1-jsmart2021@gmail.com>
References: <20200206191342.10190-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_111358_118719_34C193D4 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Smart <jsmart2021@gmail.com>, sagi@grimberg.me,
 Nigel Kirkland <nigel.kirkland@broadcom.com>, maxg@mellanox.com,
 mark.wunderlich@intel.com, hch@lst.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

With keep alive processing being moved to nvme_wq, it potentially creates
a conflicting position with err_work also processing on nvme_wq and needing
to flush/stop keep alives.

To avoid issues, schedule err_work on nvme_reset_wq. It looks like this is
not only a good thing for keep alives, but also brings the transports in
line with the RESETTING state and processing work relative to RESETTING
on nvme_reset_wq.

This change is made to both nvme-rdma and nvme-tcp which have like code.

Signed-off-by: Nigel Kirkland <nigel.kirkland@broadcom.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/host/rdma.c | 2 +-
 drivers/nvme/host/tcp.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 2a47c6c5007e..3e85c5cacefd 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1088,7 +1088,7 @@ static void nvme_rdma_error_recovery(struct nvme_rdma_ctrl *ctrl)
 	if (!nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_RESETTING))
 		return;
 
-	queue_work(nvme_wq, &ctrl->err_work);
+	queue_work(nvme_reset_wq, &ctrl->err_work);
 }
 
 static void nvme_rdma_wr_error(struct ib_cq *cq, struct ib_wc *wc,
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 6d43b23a0fc8..a28f9144954c 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -422,7 +422,7 @@ static void nvme_tcp_error_recovery(struct nvme_ctrl *ctrl)
 	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
 		return;
 
-	queue_work(nvme_wq, &to_tcp_ctrl(ctrl)->err_work);
+	queue_work(nvme_reset_wq, &to_tcp_ctrl(ctrl)->err_work);
 }
 
 static int nvme_tcp_process_nvme_cqe(struct nvme_tcp_queue *queue,
-- 
2.13.7


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
