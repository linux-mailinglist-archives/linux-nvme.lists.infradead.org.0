Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23F5154BB8
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Feb 2020 20:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4Q5DNPSdaFzxZKjlqo+/hTOAWdeVevgu7sfuC4vTmrw=; b=mihHmq13KiyUhPw0ArAsQHVR2v
	XWPS/6mqBOOepMLpcMQf0hZ3YTytJOeFxOC947H/je0vNoAg4QaZ3fXoIHbEumJFyo7qh472Bn4Z7
	CLJEnt+9WsHxtjZjTG2odnFFVVfbxn2UZ3CWtP0hJ3bAKPrtzTQVGm3dQ3Tlp6wF0mPqOsyjV8fSy
	X9DqkRveKTi1UZNrxEQI2aqEGLmNkQtIe2je9l+XklkbOQB5qoCv26xOqYQzaCzDq9lG8G8OMP/DC
	gPUaSwp6lB5s2tLkhXs5WU7xMt7sitEaIcHiGMLwJYKFigAGOgY6n81Jcef0Fj3vcNFPKY+hWXzck
	4AABI1Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmbc-00065i-Ti; Thu, 06 Feb 2020 19:14:28 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmb8-0005uk-0i
 for linux-nvme@lists.infradead.org; Thu, 06 Feb 2020 19:13:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id j9so3589787pfa.8
 for <linux-nvme@lists.infradead.org>; Thu, 06 Feb 2020 11:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uwJPc1n0DEVDHa2k2BYGLogln5Pk0hurhZ9J+5NzUg8=;
 b=FJDWu++47+WjXXQs+NNc5TWgTPu5DHv1K3sAW9O1KwBQfnFa/7cQCiuBklOyo3AwD+
 uhYzsd0ESAasVMHqnVY3HHfwe5x5KTBoB/NNwReu1O876yfjgo+ZfkuPPE7A+LrWvp1k
 lpETgI5AxvlMI5mYPb0dsx9qLp2h94SDUXXgHfjuRxUX2evGwoCMvMmi1fXvFxnfTVfP
 RZXIzjuBMQ6eRWTRjczFnvjoRNkb50exY3hDTEJAwQdbkyj3lDjoJKVrKib+FClT4zA1
 SVgtbeBjGj4E5CTlkb7bh4g3PowmsS55FRRcg5tfyjxb1rLFY5hKOADyXzCuZ0yoosLk
 8+nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uwJPc1n0DEVDHa2k2BYGLogln5Pk0hurhZ9J+5NzUg8=;
 b=mubEZHW2VLVJ4A954RGDIZVehxjwWgBgBYMkwbku8u4+VnfBkLo95CPAZly6AT2kd9
 o0N/+h6JOq5wbaarTa6OeDXHh1IK/A14/1Tb6ELCi9IO3oAWCH/QnbSVr2Jh5QDkDlt5
 WD23JSd3tkz04kR/X9ncueSIXF30X/ZTH5Zv7aImtz3Bigl7N5qaVtBbiGPtkfvNoWpc
 tctg+9pw+Gz287P3Jy1Tky+45WXY1F87pZIAmZGunUw3dio4L0K1nicXNHjGY3vezCgo
 E+gpio/dkmQQx2Ilm8xpGh3aMwLNIXBjjMnymm70lvX/e6NpJr+b3u4KO+BnvCSN/cha
 xpyA==
X-Gm-Message-State: APjAAAV3b9hM3q+aY3MXNUMwjAJQ5ZULCspwDqKTf7iT5slyb1o7d1vp
 0y7yGpN/0bS7xP6R0wFdXsbLT9Rk
X-Google-Smtp-Source: APXvYqySpIWF2g0vfY5DSnGfzOiSk03AtjVOOkEZAy6YyDsbstSbqJR/2N47BdCZL2jA0r89+/Xtsw==
X-Received: by 2002:a63:3751:: with SMTP id g17mr5363506pgn.150.1581016430644; 
 Thu, 06 Feb 2020 11:13:50 -0800 (PST)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n15sm147297pfq.168.2020.02.06.11.13.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 06 Feb 2020 11:13:50 -0800 (PST)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvme: move keep alive processing to nvme-wq
Date: Thu,  6 Feb 2020 11:13:41 -0800
Message-Id: <20200206191342.10190-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200206191342.10190-1-jsmart2021@gmail.com>
References: <20200206191342.10190-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_111358_060798_DE38E721 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Delayed keep alive work is queued on system workqueue and may be cancelled
via nvme_stop_keep_alive from nvme-reset-wq, nvme-fc-wq or nvme-wq.

Check_flush_dependency detects mismatched attributes between the work-queue
context used to cancel the keep alive work and system-wq. Specifically
system-wq does not have the WQ_MEM_RECLAIM flag, whereas the contexts used
to cancel keep alive work have WQ_MEM_RECLAIM flag.

Example warning:

  workqueue: WQ_MEM_RECLAIM nvme-reset-wq:nvme_fc_reset_ctrl_work [nvme_fc]
	is flushing !WQ_MEM_RECLAIM events:nvme_keep_alive_work [nvme_core]

To avoid the flags mismatch, move keep alive work to nvme-wq.

Signed-off-by: Nigel Kirkland <nigel.kirkland@broadcom.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/host/core.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 6ec03507da68..303b308fde52 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -66,8 +66,8 @@ MODULE_PARM_DESC(streams, "turn on support for Streams write directives");
  * nvme_reset_wq - hosts nvme reset works
  * nvme_delete_wq - hosts nvme delete works
  *
- * nvme_wq will host works such are scan, aen handling, fw activation,
- * keep-alive error recovery, periodic reconnects etc. nvme_reset_wq
+ * nvme_wq will host works such as scan, aen handling, fw activation,
+ * keep-alive, periodic reconnects etc. nvme_reset_wq
  * runs reset works which also flush works hosted on nvme_wq for
  * serialization purposes. nvme_delete_wq host controller deletion
  * works which flush reset works for serialization.
@@ -974,7 +974,7 @@ static void nvme_keep_alive_end_io(struct request *rq, blk_status_t status)
 		startka = true;
 	spin_unlock_irqrestore(&ctrl->lock, flags);
 	if (startka)
-		schedule_delayed_work(&ctrl->ka_work, ctrl->kato * HZ);
+		queue_delayed_work(nvme_wq, &ctrl->ka_work, ctrl->kato * HZ);
 }
 
 static int nvme_keep_alive(struct nvme_ctrl *ctrl)
@@ -1004,7 +1004,7 @@ static void nvme_keep_alive_work(struct work_struct *work)
 		dev_dbg(ctrl->device,
 			"reschedule traffic based keep-alive timer\n");
 		ctrl->comp_seen = false;
-		schedule_delayed_work(&ctrl->ka_work, ctrl->kato * HZ);
+		queue_delayed_work(nvme_wq, &ctrl->ka_work, ctrl->kato * HZ);
 		return;
 	}
 
@@ -1021,7 +1021,7 @@ static void nvme_start_keep_alive(struct nvme_ctrl *ctrl)
 	if (unlikely(ctrl->kato == 0))
 		return;
 
-	schedule_delayed_work(&ctrl->ka_work, ctrl->kato * HZ);
+	queue_delayed_work(nvme_wq, &ctrl->ka_work, ctrl->kato * HZ);
 }
 
 void nvme_stop_keep_alive(struct nvme_ctrl *ctrl)
-- 
2.13.7


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
