Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CE32AB30
	for <lists+linux-nvme@lfdr.de>; Sun, 26 May 2019 18:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZPLCOckdZxKOcfp6Dxn3uP4ROixB8jho5LmC7vPx0uw=; b=Dk0Y80PK8PpIagHAlOWRF/u4KQ
	uxfcxcZEUiIVDmYNYFNiwge/11iD82gEDL8o5truJdhc+hnNw6Z57Vtu2Ti8f+LzaJbOXaJs5VbXu
	OaE7KEZriOPC0R1HraEIMO/TFbSWvZ0K9IH+gnS9In5sER6Tt/IxgAi9+EVHyC1bCcBhd9saE+z92
	hscFqCx8QHFjpW++VS5pBRQjK5UJ9YgpHlj8weixnP2FCyVn25QNumZPviYeAImrReoFs3bLBP2Yx
	ByDJCYXch/oiEnl066vbTlVqEVpSYpTyy7jIaus+SNk2XIIKPM6RUqzcgHyL94+qTz7CPNmjBG4qq
	KPZEmJFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUw1s-0001cT-78; Sun, 26 May 2019 16:29:48 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUw1g-0001YU-1h
 for linux-nvme@lists.infradead.org; Sun, 26 May 2019 16:29:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id r18so6056043pls.13
 for <linux-nvme@lists.infradead.org>; Sun, 26 May 2019 09:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1BqvJJeVVCvs0h+j3cS25Wx+bnAq+ov/vIwl8l2RLms=;
 b=BNLmADcNmNIb0xyZY4640jC68/vGLSOFkKRCsEnldzfXm8AvSwFH1rlc3vR88myTKT
 llk+6ct4c930HK0KJZ/jJH9epqKx46Oc4tKmEXN6XCAjM5OGwT3G4871cMVuGn+eXlHX
 JJK2CTcG9vo/If7fPsbwHngHLGuoRrQq7yuaKdPH7nUGR7q3YFGytJCkrjlLdpPkKuM6
 M+55b4KOSyZSmzyRTTx+vntGakn2p6MumwMnLDar7YM+ywS3pYNzrUUJlfunY6ZfK1V+
 20bUuxYk6H7PMNXfEW+2rmJpXR8xCIAhaTeXP2ydt2b/ftXXCVPUllWsC9OUWqmka15U
 ciug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1BqvJJeVVCvs0h+j3cS25Wx+bnAq+ov/vIwl8l2RLms=;
 b=KVn2UgzhIgUdIK0fJq1tCViMRO54KdRvoyrxj+0tSuIavwmZEbMkGMU5xnJ7qc+Noq
 8Ta1CUALIjanJQfhOhDOq2yEZSQxr3z0wi/WTaWnbyTrjFOl1Dw1t5SBLWTqzMzf5uKr
 qVSkgi6UPb7TLhdnZ3lQhVo7LO7zS9Fol8QXsAZ4pwy/CXAkHAu5o99c2JcM5ENZRCkq
 TQC41mZ8OmbBH8af06zZYqBEX9BLqt2gxDl+MqZpmjAVD6eF+/vKyt0DZa+/ibIhlYGR
 ajkj5Idd5eE0NN3E73kIh6jHovOLo+gKpyiJZ9tC5hevmyA4/4X0WQNiujZD2LFy5izO
 5Kzw==
X-Gm-Message-State: APjAAAVcX5Vw4XwGv0i0MtSV10IBGURWpWylcJYkRQlVcA7zrAXEblQ1
 WULoCCX4Eo6kSajSvBhn7hUJbogMmLQ=
X-Google-Smtp-Source: APXvYqwcMnR13bWuM/qj//SA6dYy9/isqc4TFI68/tH71VAeSbjJ7Qdub2NSgkNp6mEoef7NjCATUA==
X-Received: by 2002:a17:902:4906:: with SMTP id
 u6mr22258670pld.220.1558888175361; 
 Sun, 26 May 2019 09:29:35 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:3427:8c7f:94e8:c445])
 by smtp.gmail.com with ESMTPSA id a11sm8671107pff.128.2019.05.26.09.29.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 26 May 2019 09:29:34 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 1/3] nvme: Export get and set features
Date: Mon, 27 May 2019 01:29:01 +0900
Message-Id: <1558888143-5121-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_092936_087455_9BD941A4 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
---
 drivers/nvme/host/core.c | 24 +++++++++++++++++++++---
 drivers/nvme/host/nvme.h |  6 ++++++
 2 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index c6a29a3..c950916 100644
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
index de624ec..802aa19 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -460,6 +460,12 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
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
