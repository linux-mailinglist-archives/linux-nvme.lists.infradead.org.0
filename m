Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4458043A72
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Jun 2019 17:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L5ivaqIMTuYCFuJpjJdXlK2QeMWZL7ZFVeRMCtlrm3U=; b=sCNuK4d+3anvDV+JbxPEc7jxoK
	iQHS9Sx87KAEaFV1SPd88ZBM45EQ/7Lif+0Py4hdrQVvl37VSNRU04iYMr/sNhbfpcAtSKBAwruyP
	v3WTwUYeB1unSlGR4+EmHs+swQPS2fgRcmSzP06uqI2Cmm/7oNS+Ka5QY9VNLzs75BGwtfM6XgY5A
	n7ZkvX5gx8mxE/Y/nAa+vmF3S405dwbQBaV9KdSLIOkp+EjwO2hWg1voGcclZrhVc/5UWedqWBHHq
	FCjkDkuxNTJlR/axmwdamHX8bxC7GzWB1vyLsgUoSkb7/vVMZBBJ/hVJ+BmJEa/ljRS2+2E+uLRB5
	e6ZJ/7pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRXX-00075v-0z; Thu, 13 Jun 2019 15:21:23 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRX5-0006wI-Vq
 for linux-nvme@lists.infradead.org; Thu, 13 Jun 2019 15:20:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id p184so8759098pfp.7
 for <linux-nvme@lists.infradead.org>; Thu, 13 Jun 2019 08:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8OmPO/eHJbUrIaHIx1TwZNS7VwjUu85zkfJ8NN4LaHM=;
 b=P45WYDk7n3DFpbQgGzihriYhk5YcQjHctVcI0423tKzzQWQ4jf978jTWyrzeA2jaWW
 Od+JF5SIbrsEIQYT7cDVrNO9vGIVyNKHCAiMA0XX6dLf/OjMBJ/kBtNIbqlwNCTDXmWg
 vZOHQtSMmuPRZR0ubqReoIt6QBiZ/L3fIiRmsdwDQclDODQCYtbWro3iLSws4yfW/CW0
 5lnEQTKAnCajC2t8e9rrVq1YIAN+wHen6gy0DSNYOG11Fcbeng3xxuqgTqORjrHECETw
 Hb9BlG53+XXgAkDBv43Dp97+F5StNj5KQ29XWpv49QuEV+SLYsgtZWAfLeaXWZTwYTbd
 zFlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8OmPO/eHJbUrIaHIx1TwZNS7VwjUu85zkfJ8NN4LaHM=;
 b=OaxKerBtzl801tsWWX/k4SXOC8jOL9CHfmdxa8Cy5En3CXaY1W+3gsrgPU+sErDx+M
 12ER86zY7+DEP6WtA0oTu1OUuWtYUS+wP4bGKJcUMUFdO/iOK0s3RojVxgkmuhZPAM8j
 YXbyxY7ddjJc2+FCVfA7JxqvnREd6jGRaOARhmKcFxqnmJDQsDDj8/6tak6nHkMuiVkq
 f8/P/rpnRJk+7zJVemvaWfc1o3m2+/XVc3FKKBDE7d/cpuHspdSvdCA83vhT7j8D74zr
 JC5j5vWN2ltUEQX4Dp7cmXOYh6bVqlciYoKDpZ8yy19QyEPfoedu5Zc4W6EEnHZIykYT
 qQZg==
X-Gm-Message-State: APjAAAVM/R2sgYtLWjRH0doHC8k6IePMQNyCBTBxGR3CHIu7Yj2vkxbD
 U0TujpwsLH/s3LzqbKvk7uuoDkwbhwc=
X-Google-Smtp-Source: APXvYqyFOyby9WANnjddgrH7WxB0cc/U4wmWWqqDVIhsFKKlhiCMshhDja9qc0wLnc/+V2OTxZAmdQ==
X-Received: by 2002:a17:90a:a397:: with SMTP id
 x23mr6302485pjp.118.1560439255098; 
 Thu, 13 Jun 2019 08:20:55 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id n66sm40988pfn.52.2019.06.13.08.20.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 13 Jun 2019 08:20:54 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v4 1/3] nvme: Export get and set features
Date: Fri, 14 Jun 2019 00:20:36 +0900
Message-Id: <1560439238-4054-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
References: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_082056_126359_07BC0EE8 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Akinobu Mita <akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <keith.busch@intel.com>

Future use intends to make use of both, so export these functions. And
since their implementation is identical except for the opcode, provide a
new function that implement both.

[akinobu.mita@gmail.com>: fix line over 80 characters]
Signed-off-by: Keith Busch <keith.busch@intel.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/core.c | 24 +++++++++++++++++++++---
 drivers/nvme/host/nvme.h |  6 ++++++
 2 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 120fb59..7e3c786 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1113,15 +1113,15 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
 	return id;
 }
 
-static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
-		      void *buffer, size_t buflen, u32 *result)
+static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned int fid,
+		unsigned int dword11, void *buffer, size_t buflen, u32 *result)
 {
 	struct nvme_command c;
 	union nvme_result res;
 	int ret;
 
 	memset(&c, 0, sizeof(c));
-	c.features.opcode = nvme_admin_set_features;
+	c.features.opcode = op;
 	c.features.fid = cpu_to_le32(fid);
 	c.features.dword11 = cpu_to_le32(dword11);
 
@@ -1132,6 +1132,24 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
 	return ret;
 }
 
+int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid,
+		      unsigned int dword11, void *buffer, size_t buflen,
+		      u32 *result)
+{
+	return nvme_features(dev, nvme_admin_set_features, fid, dword11, buffer,
+			     buflen, result);
+}
+EXPORT_SYMBOL_GPL(nvme_set_features);
+
+int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid,
+		      unsigned int dword11, void *buffer, size_t buflen,
+		      u32 *result)
+{
+	return nvme_features(dev, nvme_admin_get_features, fid, dword11, buffer,
+			     buflen, result);
+}
+EXPORT_SYMBOL_GPL(nvme_get_features);
+
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
 {
 	u32 q_count = (*count - 1) | ((*count - 1) << 16);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 55553d2..038b893 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -459,6 +459,12 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
 		union nvme_result *result, void *buffer, unsigned bufflen,
 		unsigned timeout, int qid, int at_head,
 		blk_mq_req_flags_t flags, bool poll);
+int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid,
+		      unsigned int dword11, void *buffer, size_t buflen,
+		      u32 *result);
+int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid,
+		      unsigned int dword11, void *buffer, size_t buflen,
+		      u32 *result);
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
 void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
 int nvme_reset_ctrl(struct nvme_ctrl *ctrl);
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
