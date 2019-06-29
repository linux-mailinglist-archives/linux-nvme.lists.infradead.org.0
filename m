Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A96565A7DC
	for <lists+linux-nvme@lfdr.de>; Sat, 29 Jun 2019 02:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iL5ke1/K+tCVZKFq6XfmwpMhLEldf+VGzcVj2pRfOCU=; b=s5+
	TeVe5XokvZPZlS2NGGsz54TO+rTXki+5ORv99x2zMWZAdzIhA10u8fo2CKWWAl4A80cJH6PMTxigl
	BcNkFeQGUooDDoUjXwvUpPXDsPK4fWbfuM0cDX9s2kWUxED0GV0esU0ge9/yYpfGAGAmSIHYxg0MS
	mSlcQSObl5b9mlplXaoTfaKvCIR98mfVrHjxyGzkN7uMUhl7m8EVKEIm/BLfIx1TbvrWY8O9SzP5Q
	3O2qfsZClSQ9Qe1t6J8MF2wmBSRlOqkXGfkjv0Y8lbkywz8K8AMXlx77BfgAiduN2DOebkziXJZIO
	N1BYRuepUtYsT8yk6cBy1u1632zMIig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh1CG-0000oy-4h; Sat, 29 Jun 2019 00:26:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh1C5-0000oZ-Dt
 for linux-nvme@lists.infradead.org; Sat, 29 Jun 2019 00:26:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so3272577pgp.11
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 17:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7ixNHMPLUX/tsvi5DjNsTrJM2EFIgkWMfYwbX4FUMEU=;
 b=gGUaprFJC7mqMX8I0GptioiSlMgqIEhBhKtIvEwfMIvCnXEmJT4eL2FaA+smyIMFTT
 NuOfgAk9ilFk/eM0dbfzAOmBrAHp/cTApLMpDGdB7cjK38ldtq/4RVu9sEWKid2obiVW
 H4Ye82cSs3LCcZqIWnHC9YjCE9HGoAlwTsB+Ky7hK5M+6uoU0QxrR9A/EoVmOL6sH7Jt
 dwxIIAsPjiNdADjx/qjqox+gWQWavHdxjovhKP0VgD5xIxR0oCMfr0v++7V1aWBpJZNT
 c27jL6XEYN35VBKE6tI8mmn2GsDTsWnxnh/oHpKWocrRnAiRQQ4aX1w7Oik7Ag8PCzpv
 it/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7ixNHMPLUX/tsvi5DjNsTrJM2EFIgkWMfYwbX4FUMEU=;
 b=f6cq0hM37NfT9NCMfoGo4iSs6ypIqiR3oMgt+tUqTL0SazIbfq5mKrXmL7ZuE2pgaq
 /5Kkcl51LM46hXZOGd4vULpW/+GWhsaZHHAQTPLr8q5GF7ugdaJAXEg6CJW0P2QgGMMX
 g/4li4RUyciQB37QnhUjBznn48WWQMHAZ6Jxz56v5QQ7bB8O4uaQhYO82uGznfeHUqE7
 5tKs25FpzbfM1kA/BJodVaI9opNAxwo2zo7xcXBp7KjmGIie8SUm57lkdo1HH3io+EBC
 WltW4180RvKAKkCiJaJk76RWHkZTR6b9yFg2oQNAQDeIe8/3Hqy7fxHcrQnnl9Ii+CQu
 m80Q==
X-Gm-Message-State: APjAAAVuU6VKZKjb6YX+YR79bMKu/Kyx0Ws4BIAT9zJrFVzW7zbJz1mY
 SbmlxaEXIy0Z2iskqZSrmxEsSJXZ
X-Google-Smtp-Source: APXvYqwpT3SMUOC7I0TlH9nYMQCEs94xxwtRTJqqTYbIBRYguT9kPdyz7cX0ey06WUVIxeYv+7WixA==
X-Received: by 2002:a65:6102:: with SMTP id z2mr11465440pgu.194.1561767976125; 
 Fri, 28 Jun 2019 17:26:16 -0700 (PDT)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v3sm3278554pfm.188.2019.06.28.17.26.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 28 Jun 2019 17:26:15 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3] nvme-fc: fix module unloads while lports still pending
Date: Fri, 28 Jun 2019 17:26:08 -0700
Message-Id: <20190629002608.3419-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_172617_497239_DC7E88EA 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Current code allows the module to be unloaded even if there are
pending data structures, such as localports and controllers on
the localports, that have yet to hit their reference counting
to remove them.

Fix by having exit entrypoint explicitly delete every controller,
which in turn will remove references on the remoteports and localports
causing them to be deleted as well. The exit entrypoint, after
initiating the deletes, will wait for the last localport to be deleted
before continuing.

Signed-off-by: James Smart <jsmart2021@gmail.com>

---
V2:
  replaced self-module references with code that actually deletes
  the outstanding structures.
v3:
  remove spurious whitespace
  slightly rework cleanup call sequence to avoid locking calls
  use DECLARE_COMPLETION
---
 drivers/nvme/host/fc.c | 53 +++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 50 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 9b497d785ed7..24bac12b8dfd 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -204,6 +204,9 @@ static DEFINE_IDA(nvme_fc_ctrl_cnt);
 
 static struct workqueue_struct *nvme_fc_wq;
 
+static bool nvme_fc_waiting_to_unload;
+static DECLARE_COMPLETION(nvme_fc_unload_proceed);
+
 /*
  * These items are short-term. They will eventually be moved into
  * a generic FC class. See comments in module init.
@@ -229,6 +232,8 @@ nvme_fc_free_lport(struct kref *ref)
 	/* remove from transport list */
 	spin_lock_irqsave(&nvme_fc_lock, flags);
 	list_del(&lport->port_list);
+	if (nvme_fc_waiting_to_unload && list_empty(&nvme_fc_lport_list))
+		complete(&nvme_fc_unload_proceed);
 	spin_unlock_irqrestore(&nvme_fc_lock, flags);
 
 	ida_simple_remove(&nvme_fc_local_port_cnt, lport->localport.port_num);
@@ -3444,6 +3449,8 @@ static int __init nvme_fc_init_module(void)
 	if (ret)
 		goto out_destroy_device;
 
+	nvme_fc_waiting_to_unload = false;
+
 	return 0;
 
 out_destroy_device:
@@ -3456,11 +3463,51 @@ static int __init nvme_fc_init_module(void)
 	return ret;
 }
 
+static void
+nvme_fc_delete_controllers(struct nvme_fc_rport *rport)
+{
+	struct nvme_fc_ctrl *ctrl;
+
+	spin_lock(&rport->lock);
+	list_for_each_entry(ctrl, &rport->ctrl_list, ctrl_list) {
+		dev_warn(ctrl->ctrl.device,
+			"NVME-FC{%d}: transport unloading: deleting ctrl\n",
+			ctrl->cnum);
+		nvme_delete_ctrl(&ctrl->ctrl);
+	}
+	spin_unlock(&rport->lock);
+}
+
+static void
+nvme_fc_cleanup_for_unload(void)
+{
+	struct nvme_fc_lport *lport;
+	struct nvme_fc_rport *rport;
+
+	list_for_each_entry(lport, &nvme_fc_lport_list, port_list) {
+		list_for_each_entry(rport, &lport->endp_list, endp_list) {
+			nvme_fc_delete_controllers(rport);
+		}
+	}
+}
+
 static void __exit nvme_fc_exit_module(void)
 {
-	/* sanity check - all lports should be removed */
-	if (!list_empty(&nvme_fc_lport_list))
-		pr_warn("%s: localport list not empty\n", __func__);
+	unsigned long flags;
+	bool need_cleanup = false;
+
+	spin_lock_irqsave(&nvme_fc_lock, flags);
+	nvme_fc_waiting_to_unload = true;
+	if (!list_empty(&nvme_fc_lport_list)) {
+		need_cleanup = true;
+		nvme_fc_cleanup_for_unload();
+	}
+	spin_unlock_irqrestore(&nvme_fc_lock, flags);
+	if (need_cleanup) {
+		pr_info("%s: waiting for ctlr deletes\n", __func__);
+		wait_for_completion(&nvme_fc_unload_proceed);
+		pr_info("%s: ctrl deletes complete\n", __func__);
+	}
 
 	nvmf_unregister_transport(&nvme_fc_transport);
 
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
