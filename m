Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C34B2DABB
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Apr 2019 05:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PPlbseDeJw9IF2CUdSOKLm3LmEu90KPynYFNDWJlNPA=; b=eyHsNkyiEDvn9KBnjmyxFWM97e
	MgBPItnjAF4/bDBUwK4Zr8xC4Ui003oVnTVHF4b4U3eW0LGz5KJETcZfe9hZSH/mSpW1/O3aJo+lm
	PTXye1+31YwgCXeHS1PcNMar/nIucSmRTus4XMiHhU9mmWYQTaEvkvE7+IqpmlQSbZ+tRvvMBUOfi
	q7AsEk2w4/1e9oBR2HtrkGZM8PDRkz2M1Lg6NMT0AUP0Yn6/ln6ViOah3voHJp14sA/GVSd4xPuyn
	YRTmHAhh8wgu9q/0XeFTAFUbZJriz5vG71N4nXg0OZpted2RsPME7Gpm+//qt0dm7p8qyVpGk7s6Q
	dLIuD1Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKwup-0002z8-Uk; Mon, 29 Apr 2019 03:25:16 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwuQ-0002ki-Rx
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 03:24:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556508291; x=1588044291;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=6WHco+6xubchRXh3TwIkzlXZ8puobDfjwO2QNkByY9w=;
 b=oAnd0v98vYCmCQelf6htRhcWDEkDxaZmv+Zvyw6cJ7rClFFv6Xu65qyw
 XWak2vko3spM+wehkyqBTwpTduTPTxDBohtSc8Q5pCAk10UXvABrsJo+b
 mks+Uaff5kHhxR2BrWpVomupPAv/Yr7mU5kklWWECuMD2Z2mb2AfsLuVd
 X/PyC94Dyk4kmr9Sg7rCGOQnSUA+E0tDX3yJgcPnxoVO5Ixvxz8hykrtE
 pRSM2zllH9JtfpZYt9Y9G7kjI896VHB8fn1P4c/f0TjcwRNSJ6kmdRVoz
 9RKmueBSxzlp+gABEyNvtx9Cg4ADIbN9HARM8Cz5qea/AaYohLDQlGLoE A==;
X-IronPort-AV: E=Sophos;i="5.60,408,1549900800"; d="scan'208";a="108245364"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 29 Apr 2019 11:24:50 +0800
IronPort-SDR: p/DBcp3v/OlYEyTNu5Wlt5rGYwUbFxmBB1mEhW6r/phngctmKz0603LejF6tlRgsXBWgI6YATu
 WDaFC8Q6lJ0PHCqCTuqMb6k0Zw/ZR2pariRN57Ik2U/paMTzs+aHes2nyguxm1FBifuiCMpTRG
 abduAqU03nxTJoEe/IU/PG4dXZFz6lPUFPWAHZQr5AQlG7E/5+na21sbdaEeCgklfw7UcxM6kD
 2lyN8+BycvsfZd9P064A97BjemsRh/I9TNYmxHQ37rxllqozWh998oURLfIyV7rDgNMKf6TLwc
 dtBq51KVdMW9NzSg3tt8g0eU
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 28 Apr 2019 20:01:13 -0700
IronPort-SDR: mW59FB2bUkUaj5tcwTrjLfb/cpfBkPI5WCXyitLF9VGzxlSXcB8EghrLUXq9KEsEGzwDPs2MQg
 dQPzfoWEdE2lImg7W+ev38SypLTDhuo353OYf3J5oY5iyIn+Jjy0SmASj0hUplmGxw3sEbUCU7
 RO2t0aSx6392u7KuDdCDok2XC3r1YuFtY4z93cWPyN1Dy+iIIcyAjDxXkgYLJu1e1ozeAii/Hh
 eXDyTAvK6eq+NpBbwa3nqKvknoDvOKGfI/eivXPK1EvVep/yU9g5hycGrBASjBW+4Sy1ybRgS+
 ulA=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 28 Apr 2019 20:24:50 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 2/3] nvme: improve logging
Date: Sun, 28 Apr 2019 20:24:41 -0700
Message-Id: <20190429032442.5923-3-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_202451_014980_7A2C5D44 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hare@suse.com, hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Hannes Reinecke <hare@suse.com>

Currently nvme is very reluctant if it comes to logging anything,
_unless_ it's an ANA AEN. So this patch tries to remedy this by
decreasing the priority for the ANA AEN logging message, and improve
the logging when calling nvme_reset_ctrl().

Also, print ctrl state transition info.

Signed-off-by: Hannes Reinecke <hare@suse.com>
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/core.c | 41 ++++++++++++++++++++++------------------
 1 file changed, 23 insertions(+), 18 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 3dd043aa6d1f..c17e731f53e3 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -94,6 +94,13 @@ static void nvme_put_subsystem(struct nvme_subsystem *subsys);
 static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
 					   unsigned nsid);
 
+static const char *nvme_get_ctrl_state_name(unsigned int state)
+{
+	if ((unsigned int) state < ARRAY_SIZE(nvme_ctrl_state_name))
+		return nvme_ctrl_state_name[state];
+	return "unknown";
+}
+
 static void nvme_set_queue_dying(struct nvme_ns *ns)
 {
 	/*
@@ -119,10 +126,16 @@ static void nvme_queue_scan(struct nvme_ctrl *ctrl)
 
 int nvme_reset_ctrl(struct nvme_ctrl *ctrl)
 {
-	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
+	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING)) {
+		dev_warn(ctrl->device, "cannot reset ctrl in state %s\n",
+				nvme_get_ctrl_state_name(ctrl->state));
 		return -EBUSY;
-	if (!queue_work(nvme_reset_wq, &ctrl->reset_work))
+	}
+	if (!queue_work(nvme_reset_wq, &ctrl->reset_work)) {
+		dev_dbg(ctrl->device, "ctrl reset already queued\n");
 		return -EBUSY;
+	}
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(nvme_reset_ctrl);
@@ -370,8 +383,13 @@ bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
 		break;
 	}
 
-	if (changed)
+	if (changed) {
 		ctrl->state = new_state;
+		dev_info(ctrl->device, "state change from (%s -> %s)\n",
+				nvme_get_ctrl_state_name(new_state),
+					nvme_get_ctrl_state_name(ctrl->state));
+
+	}
 
 	spin_unlock_irqrestore(&ctrl->lock, flags);
 	if (changed && ctrl->state == NVME_CTRL_LIVE)
@@ -2960,21 +2978,8 @@ static ssize_t nvme_sysfs_show_state(struct device *dev,
 				     char *buf)
 {
 	struct nvme_ctrl *ctrl = dev_get_drvdata(dev);
-	static const char *const state_name[] = {
-		[NVME_CTRL_NEW]		= "new",
-		[NVME_CTRL_LIVE]	= "live",
-		[NVME_CTRL_ADMIN_ONLY]	= "only-admin",
-		[NVME_CTRL_RESETTING]	= "resetting",
-		[NVME_CTRL_CONNECTING]	= "connecting",
-		[NVME_CTRL_DELETING]	= "deleting",
-		[NVME_CTRL_DEAD]	= "dead",
-	};
-
-	if ((unsigned)ctrl->state < ARRAY_SIZE(state_name) &&
-	    state_name[ctrl->state])
-		return sprintf(buf, "%s\n", state_name[ctrl->state]);
-
-	return sprintf(buf, "unknown state\n");
+
+	return sprintf(buf, "%s\n", nvme_get_ctrl_state_name(ctrl->state));
 }
 
 static DEVICE_ATTR(state, S_IRUGO, nvme_sysfs_show_state, NULL);
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
