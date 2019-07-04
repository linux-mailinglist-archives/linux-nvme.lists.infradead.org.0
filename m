Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226395F67C
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 12:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=r/KGi0ZCzdkvTPHMqeqTLzE4cVKybeiN3sFqlu4vU20=; b=nX8
	BKzjqKBbCGU/znCWLA0Odhjt0AzgDq0yf/p/h5Q6Pb+C9hGAzcdcskFbtpBZZMGPWPNKhFi410q/d
	UgIJwuT9YlFfanZSjeaFjtwvAKgJoVCJlhxJe1laXbcEhc8cjffJeFAGu7buU2/lWgjqMPXlMrz2t
	12qO4sVXKWcEMc83IgTmMQ5NLqPYBwSW1fqCXWIjVyRmnyOi1+YemGxHWKgKzu1rjI5nDUFhtTTvR
	Y4MvntF1tDsB5CdwgY7E07Nyg/9ucpeMqNfFGukoAqaGlqMAijIZz7ea/kOH701xJL1k6avVcnBty
	LVZ4p74I2244s7f+nujYW8Sgl+K7QFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyqy-0001z2-0Z; Thu, 04 Jul 2019 10:20:36 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyqg-0001yU-Dp
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 10:20:20 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 tomwu@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 4 Jul 2019 13:20:13 +0300
Received: from rsws46.mtr.labs.mlnx (rsws46.mtr.labs.mlnx [10.209.40.46])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x64AKDvB000843;
 Thu, 4 Jul 2019 13:20:13 +0300
Received: from rsws46.mtr.labs.mlnx (localhost [127.0.0.1])
 by rsws46.mtr.labs.mlnx (8.14.7/8.14.7) with ESMTP id x64AKD4D007900;
 Thu, 4 Jul 2019 10:20:13 GMT
Received: (from tomwu@localhost)
 by rsws46.mtr.labs.mlnx (8.14.7/8.14.7/Submit) id x64AKBaQ007899;
 Thu, 4 Jul 2019 10:20:11 GMT
From: Tom Wu <tomwu@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>, <keith.busch@intel.com>,
 <hch@lst.de>, <sagi@grimberg.me>
Subject: [PATCH] nvme: add delete completion and submission queue to admin
 cmds tracer
Date: Thu,  4 Jul 2019 10:19:54 +0000
Message-Id: <1562235594-7847-1-git-send-email-tomwu@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_032018_870824_55E73607 
X-CRM114-Status: UNSURE (   5.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Tom Wu <tomwu@mellanox.com>, Israel Rukshin <israelr@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The trace log for 'delete I/O submission queue' and 'delete I/O
completion queue' command will look like as below:

kworker/u49:1-3438  [003] ....  6693.070865: nvme_setup_cmd: nvme0: qid=0, cmdid=11, nsid=0, flags=0x0, meta=0x0, cmd=(nvme_admin_delete_sq sqid=1)
kworker/u49:1-3438  [003] ....  6693.071171: nvme_setup_cmd: nvme0: qid=0, cmdid=8, nsid=0, flags=0x0, meta=0x0, cmd=(nvme_admin_delete_cq cqid=24)

Signed-off-by: Tom Wu <tomwu@mellanox.com>
Reviewed-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/trace.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
index 5f24ea7..a19978f 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/host/trace.c
@@ -7,6 +7,17 @@
 #include <asm/unaligned.h>
 #include "trace.h"
 
+static const char *nvme_trace_delete_sq(struct trace_seq *p, u8 *cdw10)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+	u16 sqid = get_unaligned_le16(cdw10);
+
+	trace_seq_printf(p, "sqid=%u", sqid);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
 static const char *nvme_trace_create_sq(struct trace_seq *p, u8 *cdw10)
 {
 	const char *ret = trace_seq_buffer_ptr(p);
@@ -23,6 +34,17 @@ static const char *nvme_trace_create_sq(struct trace_seq *p, u8 *cdw10)
 	return ret;
 }
 
+static const char *nvme_trace_delete_cq(struct trace_seq *p, u8 *cdw10)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+	u16 cqid = get_unaligned_le16(cdw10);
+
+	trace_seq_printf(p, "cqid=%u", cqid);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
 static const char *nvme_trace_create_cq(struct trace_seq *p, u8 *cdw10)
 {
 	const char *ret = trace_seq_buffer_ptr(p);
@@ -107,8 +129,12 @@ const char *nvme_trace_parse_admin_cmd(struct trace_seq *p,
 				       u8 opcode, u8 *cdw10)
 {
 	switch (opcode) {
+	case nvme_admin_delete_sq:
+		return nvme_trace_delete_sq(p, cdw10);
 	case nvme_admin_create_sq:
 		return nvme_trace_create_sq(p, cdw10);
+	case nvme_admin_delete_cq:
+		return nvme_trace_delete_cq(p, cdw10);
 	case nvme_admin_create_cq:
 		return nvme_trace_create_cq(p, cdw10);
 	case nvme_admin_identify:
-- 
1.8.4.3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
