Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AD717FF1
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 20:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cE2GuQkEPKFX7US4J3fW6wAcJlbkjrMKHDCz+vme21k=; b=qSwKm6NrGGcjyZ0Kyed2oI+3/z
	w/n3s3DdNYna1GtTPwWF4arrX/zdLGsepKVxH6zEVBRXlE7ynXob2QVCbMdWd7kZMHlHvuJ653u0D
	dDHHeewAYAwHv5myJzFqA+m5PggfIWD8Fp2EMMF+8i1xL1HxoBXUCM5bMUTFJ7msyFiBvHkPZXRbf
	niBRBTPB5n2Ttlth4AQmbjd1TUojwriydOLwV8DZgLC713uyznBi1r8AgiWBzugg13pLJPzdKBphN
	9RfSBgL7z5j5v2HnSRQZwQg08zMvnswwZ/FNt76NEx1+kAf6Z7Hxc79oYUmTModYx3TiFb65R7zyX
	ZoGZiLzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORRB-0004uf-Kb; Wed, 08 May 2019 18:37:05 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORQu-0004gD-Jq
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 18:36:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557340609; x=1588876609;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=SmQU5Rn3csYnfn8rvO+9YBjW9eaaYcosd8CoMusiCRg=;
 b=MFrwX8A5Ouvecv4s9uQCJwBHnBUN2s48LpK2H836ni5G9hCmhXRy+5Pu
 CwcUv5UjcWGaGddRTbySkEursuQIrrv1gSxgoqJp6ZKs1gq116Ve6/20X
 5vfQaVaGV5mel1kYILzeteYRrw8IFVRlPu7WyxJbtzxRj5k2Ht5dNXB7H
 Y98FgEVgEONw+JP8OqLgwIhG/VYQrQodVr0LUoQcU8dVgeUPI7F+EXBcG
 j6h0CZEimqbSqb+An0y6JYYoTX6nlkLMGsKEIN7+0j5zLNR+Vwaf6oUJ0
 uF4AP2Q3RlP+EeWPi1CUMSDCGNYdyvQmR9gm6Gk95JFoOeJ8z6K6FMKXt Q==;
X-IronPort-AV: E=Sophos;i="5.60,446,1549900800"; d="scan'208";a="109543228"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 02:36:46 +0800
IronPort-SDR: c+ByuRkQ0JDdY1raNHH0buWAhUDpIidK9FefoQurSs8jMqvoVyCfD1UvSntJF4aBSXIXSlz/YL
 8YsKGi8t31Ap6msqrM48bZJoZo2MfrCGYU7mUMkOuPVST5XLPluqMDN5Zs0yUd/p4IZ0kwpyD6
 WTklC/zD0u19gMxKxSiAJEyE9TNk6MkVcVdxb+3Wvyagt3sxTt5jDGfaIFaoj6oEzkTvROZ0wE
 zLr6DgeFeVTW4GpWjsLCseK/ZzsvchxS6SqFHvDxzIOrYwwwVeeqGsHEznJEDgjjFd1o2ma91Q
 GI4ZTfUAakLqm+6EWFGCZwap
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 08 May 2019 11:14:59 -0700
IronPort-SDR: 7Xrju5fcgNCGYcHGom6BdbbX7XH5LdLl1/Nf9O372zgDGM0C0adErXwMnxSOusnwpUVFw2gtm3
 ySKayJzaS8967iT68jLOY7vPdiXAu/vYyI6XHgq2LmrWkq1imXF2Wiz6mxG8lSjONmGbv+By3E
 jEzKPE/4TD0Pb3kNFPsAqc7M3YpoAVDT6vawsZ2hkkMKd87gfw8wrMS91kP7F/goIV+qBUGvWU
 e6DBjLS+NwP2Bg5GJkcXe2YJ0f2KjZErEKq5Urx5PZSEkjzRWS7Q1d8BqjWYTc5I4BzTb73lZy
 riI=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 08 May 2019 11:36:46 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/3] nvme-core: add filter for user commands
Date: Wed,  8 May 2019 11:36:34 -0700
Message-Id: <20190508183634.4682-4-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
References: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_113648_686411_EE9AB2DB 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds a filter for the user commands. Right now we only check
for the NVMe Get Log Page commands. We only allow the user to issue get
log page command with RAE == 0 where we generate uevent for the async
event associated with this log page id.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/core.c | 64 +++++++++++++++++++++++++++++++++++++---
 1 file changed, 60 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index eebaeadaa800..afd303489473 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1305,6 +1305,59 @@ static void nvme_passthru_end(struct nvme_ctrl *ctrl, u32 effects)
 		nvme_queue_scan(ctrl);
 }
 
+static inline bool nvme_get_log_page_allowed(struct nvme_command *c)
+{
+	bool ret;
+	u8 lid = c->get_log_page.lid;
+	int rae = le32_to_cpu(c->common.cdw10) & NVME_LOG_PAGE_RAE;
+
+	/* if rae == 1 or lid == Vendor specific allow get log page cmd */
+	if (rae || (lid >= 0xC && 0xFF <= lid))
+		return true;
+
+	switch (lid) {
+	/*
+	 * We send uevent for the following logs, See nvme_aen_uevent(), hence
+	 * allow only those log-pages to be cleared by the user for log page
+	 * rae == 0 command.
+	 */
+	case NVME_LOG_ERROR:
+	case NVME_LOG_SMART:
+	case NVME_LOG_RESERVATION:
+	case NVME_LOG_SANITIZE:
+	case NVME_LOG_DISC:
+		ret = true;
+		break;
+	default:
+		ret = false;
+	}
+	return ret;
+}
+
+static inline bool nvme_user_admin_cmd_allowed(struct nvme_command *c)
+{
+	bool ret;
+
+	switch (c->common.opcode) {
+	case nvme_admin_get_log_page:
+		ret = nvme_get_log_page_allowed(c);
+		break;
+	default:
+		ret = true;
+	}
+	return ret;
+}
+
+static inline bool nvme_user_cmd_allowed(struct nvme_ns *ns,
+		struct nvme_command *c)
+{
+	/*
+	 * Right now only check for admin commands, in future for I/O commands
+	 * please introduce nvme_user_io_cmd_allowed().
+	 */
+	return ns == NULL ? nvme_user_admin_cmd_allowed(c) : true;
+}
+
 static int nvme_user_cmd(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 			struct nvme_passthru_cmd __user *ucmd)
 {
@@ -1337,6 +1390,10 @@ static int nvme_user_cmd(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 	if (cmd.timeout_ms)
 		timeout = msecs_to_jiffies(cmd.timeout_ms);
 
+	/* use nvme_command to make code more readable */
+	if (!nvme_user_cmd_allowed(ns, &c))
+		return -EINVAL;
+
 	effects = nvme_passthru_start(ctrl, ns, cmd.opcode);
 	status = nvme_submit_user_cmd(ns ? ns->queue : ctrl->admin_q, &c,
 			(void __user *)(uintptr_t)cmd.addr, cmd.data_len,
@@ -3434,10 +3491,9 @@ static void nvme_clear_changed_ns_log(struct nvme_ctrl *ctrl)
 		return;
 
 	/*
-	 * We need to read the log to clear the AEN, but we don't want to rely
-	 * on it for the changed namespace information as userspace could have
-	 * raced with us in reading the log page, which could cause us to miss
-	 * updates.
+	 * We don't allow userspace to clear this log page as we filter the user
+	 * log page command with RAE == 0, see nvme_user_admin_cmd_allowed().
+	 * Now we can rely on this updated log page information.
 	 */
 	error = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_CHANGED_NS, 0, log,
 			log_size, 0);
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
