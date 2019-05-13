Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF4E1BC28
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 19:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IOHp1ABpZbahzBPQSd8e9wYPQ/4QWP3r+yqhSK7yXsg=; b=t4v
	owz8HxHeGribk8iVAgF6rja7MzL+CnbddvChhH0CsYxlq2ukbiyJUm9eCcp+E16EyTOuUghHai+/V
	6QJ7CYRiTC+vwdpVQzR3Txt9vyxXo28DaQSR5iJMxkbJu6uCgVpwx6MqnFD8GhrdAQ9SeJdUcE+pv
	ca4KiQjxya4fNcVicSwjZDg4VmgXcC7wRFSGY2UkFMe57HEC0jieGZiTzAq0AdZuDn0TyeEyf/Nhj
	Dy9o8Intr4C9h5bUNksdddOhzLL8r313RtCceWXM70aMdf/KB8RnT5JTIr+h7EYJLKGAod2302V0h
	dkxRGaQdufmH7Uj3PApkjqVd8axl8OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQF1n-0005gs-FF; Mon, 13 May 2019 17:46:19 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQF1i-0005gK-KV
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 17:46:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557769598; x=1589305598;
 h=from:to:cc:subject:date:message-id;
 bh=WI7Tjvea4i+qMcLNXeH3RFeVvIyJqXnZQjI0Ehvjfyw=;
 b=iL8MJyWDNVJzaaIdtX5jRlyjCxPFPGcIIYloer1ommZwW65vN631WxWn
 qgUY7LZWM0oFimIWkkrgYHISV02WZqT6n9pQS/NMrEfGu+9o+JkhISaL2
 Ptz0JqveP8o0R4OCvif5tSlK6nIZMAW4lzDvrr1AWes0o34Ihc/bWH/OI
 XhWIid5jgQYGu3Hd1s1Ae1nUvQ1XKfKufRUz8HTsNASqFVIV6FFKYu1Tm
 Vzbrf0ftPvy2T4DuoX9ZGBEv0MngUBJydRGANwIvi0pIbZqawgLEDMmrR
 JyTzQqK+A1Cv7DjRpFJeJWoSDSvmsuQGIkHgaZkqGk1EDRDVnZYslO1mk g==;
X-IronPort-AV: E=Sophos;i="5.60,465,1549900800"; d="scan'208";a="207538249"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 14 May 2019 01:46:27 +0800
IronPort-SDR: UQk0JtqMj7CJFC2r8/KZhh5IVFvnUKWfFl6iQQ6stlatEqouYo0X525UIMKSutqUzpNos2D6Jn
 YhHt0PDYAyXSm5aswLg7WYcpjEhupiwu9t/TX1LP9n0rtLF3C7ec+NCDTuukutLh262m6E5CIA
 DjC3uDP/HI1n02CkZ4f0jBG41aZdRNdnVdJSpmGmPNhLh0C83/CE4G0shqJi/+1PX5+aMGJZqG
 XHMxvd0YJNKSKxzfcl9mUbXB4VEid2aXXz6pmD34Fz08XGUvdbBQMFksPP2jfjhC7dIsWeRE8c
 diA2g6ebrm8pDebWvrr/zqb2
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 13 May 2019 10:21:57 -0700
IronPort-SDR: Cim13pVAFybwg2B+6JuCCblKJ1LE8RKqGJj3XtLlsqepr0ZBqCjC60uCT6+5OdTDcFGJzJdWjV
 a+Ypn3iqwhy3+2FMkFcrtb67LvDwnMUeeR5zU44eX4sQyNVhw2+QSYvHzq2BgKo8VzB0MR9nGT
 yePCK64ZChP3IkV4/1MyeKw7f9xU9yapeVp3XO1P6nfiVFdsNxaeyA5yhmhc8PA1VhXPyiZPsb
 LsRMZDv9+/lnB7P+/4SzSHkMNJqpWBxxSJDQwE07CpuhW/zUpxNqbvNmtW9cwXHxr3gxrOQQUi
 FoM=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 13 May 2019 10:46:07 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2] nvme-core: trace all async notice events
Date: Mon, 13 May 2019 10:46:05 -0700
Message-Id: <20190513174605.9017-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_104614_710184_3F339BFA 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch removes the tracing of the NVMe Async events out of the
switch so that it can trace all the events including the ones which
are not handled in the nvme_handle_aen_notice(). The events which
are not handled in the nvme_handle_aen_notice() such as 
NVME_AER_NOTICE_DISC_CHANGED corresponding event identifier needs
to be added in the drivers/nvme/host/trace.h so that it can stringify
the AER .

Reviewed-by: Johannes Thumshirn <jthumshirn@suse.de>
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
Changes since V1:-

1. Move trace_nvme_async_event() outside of switch (hch@lst.de)
2. Change the subject line from. 
   "nvme-core: trace discovery log change AEN" ->
    "nvme-core: trace all async notice events".
3. Add missing notice disc changes identifier in the trace.h.
---
 drivers/nvme/host/core.c  | 5 ++---
 drivers/nvme/host/trace.h | 1 +
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index eebaeadaa800..f22925b5eeca 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3604,19 +3604,18 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
 {
 	u32 aer_notice_type = (result & 0xff00) >> 8;
 
+	trace_nvme_async_event(ctrl, aer_notice_type);
+
 	switch (aer_notice_type) {
 	case NVME_AER_NOTICE_NS_CHANGED:
-		trace_nvme_async_event(ctrl, aer_notice_type);
 		set_bit(NVME_AER_NOTICE_NS_CHANGED, &ctrl->events);
 		nvme_queue_scan(ctrl);
 		break;
 	case NVME_AER_NOTICE_FW_ACT_STARTING:
-		trace_nvme_async_event(ctrl, aer_notice_type);
 		queue_work(nvme_wq, &ctrl->fw_act_work);
 		break;
 #ifdef CONFIG_NVME_MULTIPATH
 	case NVME_AER_NOTICE_ANA:
-		trace_nvme_async_event(ctrl, aer_notice_type);
 		if (!ctrl->ana_log_buf)
 			break;
 		queue_work(nvme_wq, &ctrl->ana_work);
diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index 97d3c77365b8..e71502d141ed 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -167,6 +167,7 @@ TRACE_EVENT(nvme_async_event,
 		aer_name(NVME_AER_NOTICE_NS_CHANGED),
 		aer_name(NVME_AER_NOTICE_ANA),
 		aer_name(NVME_AER_NOTICE_FW_ACT_STARTING),
+		aer_name(NVME_AER_NOTICE_DISC_CHANGED),
 		aer_name(NVME_AER_ERROR),
 		aer_name(NVME_AER_SMART),
 		aer_name(NVME_AER_CSS),
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
