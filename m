Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75DA5A773
	for <lists+linux-nvme@lfdr.de>; Sat, 29 Jun 2019 01:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0mGkjchhexjoS2uOf2PvOHBrR1zrcJVw6qfeHCmgqxA=; b=jA5
	YdrsQVc8+5JqWMh2F9tVyHwkXfe9wxYjXrZTH5fFy3q42OUStyl4dRVMITOK3ECghDD3ax3sMx77q
	T3ffpYDmoyxDvJS7OvJ/2tVxoukj2OvZnZUvWpp7WRrpTvT8fvJVUChy35xooRVM1PI7Xlsf7Z2Ag
	KjJI3rOxV6LtWfMXbm6QpVhZg/EnzD3LH2oQ26hLHlP6EhXQfXXEjjJcGxYjyWegBmq/+vkOAC+EN
	w/Eunt6FyKcOUvKDtDewJ9gAlGoBSoZjeFCfv4fVpWe+pjl9zWnvSxw0g/VdoPVGYFdIHRHV5EsRy
	5B+qJaoqhAgLSfFmqHrKd8VZaYkqbUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh06m-00042J-6X; Fri, 28 Jun 2019 23:16:44 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh06g-00041u-TX
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 23:16:40 +0000
Received: by mail-oi1-x243.google.com with SMTP id w79so5459903oif.10
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 16:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Y155gQ0CGiUbsUfgaQGtVwikMzR4gisVTl8mvpvxuxA=;
 b=AN2WMMas3i7/FPMP1aAyMcDzzPv2BtgCkSjynSHob/evw4cViMUHtRlqvpiOHj9PPE
 jmX6IKm/ND3GwVuk/osYR5bRrDqO4rMPIf4v6fKH9tfWqvmuWbRjaPCbapBhyk45oRQT
 LdIKeUSHK4eKnnXje7nJWjMrxSrUnJ8DxdZG/1StwexQ9nZtDFN4NLYHlmAJ20DkcTlm
 zPRxCLkHoUrBdr8AexUbPQeHntsFZHr2016M+7QX4S6S4V+WA0LXUxed+gfQsN+JM39u
 qkhcVhCzap73sgH30y+cKgQWG/ZYTt+bs/28QNlelex7MRgycbysw/TspifjJCxFcM04
 3mww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Y155gQ0CGiUbsUfgaQGtVwikMzR4gisVTl8mvpvxuxA=;
 b=N/FpjW2ssQsK4f4CCqDFZHAsGzUxaFE+G5y0IN6O6V6d9/NoCnWpXE1CTWxpUQ/T9b
 /XrjwektlWOo9jI6FMokHOtodBqhjYpZU2KdvENfoVgVM7r3Yv7bs239d0n+g/zDEBqv
 pomUeZi9Db8ucrcxKC9rfOLh66HZv6XAju1DknSRng2kfvFKdmL1taoBaUub0LoB9lxJ
 ALoxajN4LrEFyRODlfEie+D3HztgwPDYpAW0oBN3O0rILhYYDkimwGqKfKt/iIv9Pn6k
 gsfvXEs9neNMibjqw6VqPcJfmm497ERfJyV2jPETiC77n5JF6EQOj/9/1exl/Yz3NKQy
 7kdg==
X-Gm-Message-State: APjAAAXbY0KciICRnGB2gt1eCEKMQT4GI6u6TwY1hSWsBk4bh0/lj2jy
 3yXqM0XopI5W3UWxcBu/rE9MRAn/
X-Google-Smtp-Source: APXvYqzTIg/oip1IMIKOto1bgtR+nCzij3C18qzj+EAnF74w4/GxPDLW70TvJUvezmqmRWYaVhbIng==
X-Received: by 2002:aca:f513:: with SMTP id t19mr234920oih.76.1561763794411;
 Fri, 28 Jun 2019 16:16:34 -0700 (PDT)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z69sm1244346oia.48.2019.06.28.16.16.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 28 Jun 2019 16:16:33 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2] nvme-fc: fix module unloads while lports still pending
Date: Fri, 28 Jun 2019 16:16:21 -0700
Message-Id: <20190628231621.15867-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_161638_958923_CC40C573 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
V2: replaced self-module references with code that actually deletes
  the outstanding structures.
---
 drivers/nvme/host/fc.c | 55 ++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 53 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 9b497d785ed7..75a81d6c9fa6 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -204,6 +204,9 @@ static DEFINE_IDA(nvme_fc_ctrl_cnt);
 
 static struct workqueue_struct *nvme_fc_wq;
 
+static bool nvme_fc_waiting_to_unload;
+struct completion nvme_fc_unload_proceed;
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
@@ -237,6 +242,7 @@ nvme_fc_free_lport(struct kref *ref)
 	put_device(lport->dev);
 
 	kfree(lport);
+
 }
 
 static void
@@ -3444,6 +3450,8 @@ static int __init nvme_fc_init_module(void)
 	if (ret)
 		goto out_destroy_device;
 
+	nvme_fc_waiting_to_unload = false;
+
 	return 0;
 
 out_destroy_device:
@@ -3456,11 +3464,54 @@ static int __init nvme_fc_init_module(void)
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
+	unsigned long flags;
+
+	spin_lock_irqsave(&nvme_fc_lock, flags);
+	list_for_each_entry(lport, &nvme_fc_lport_list, port_list) {
+		list_for_each_entry(rport, &lport->endp_list, endp_list) {
+			nvme_fc_delete_controllers(rport);
+		}
+	}
+	spin_unlock_irqrestore(&nvme_fc_lock, flags);
+
+	pr_info("%s: waiting for ctlr deletes\n", __func__);
+	wait_for_completion(&nvme_fc_unload_proceed);
+	pr_info("%s: ctrl deletes complete\n", __func__);
+}
+
 static void __exit nvme_fc_exit_module(void)
 {
-	/* sanity check - all lports should be removed */
+	unsigned long flags;
+	bool need_cleanup = false;
+
+	spin_lock_irqsave(&nvme_fc_lock, flags);
+	nvme_fc_waiting_to_unload = true;
+	init_completion(&nvme_fc_unload_proceed);
 	if (!list_empty(&nvme_fc_lport_list))
-		pr_warn("%s: localport list not empty\n", __func__);
+		need_cleanup = true;
+	spin_unlock_irqrestore(&nvme_fc_lock, flags);
+	if (need_cleanup)
+		nvme_fc_cleanup_for_unload();
 
 	nvmf_unregister_transport(&nvme_fc_transport);
 
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
