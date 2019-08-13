Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12DC8B9E3
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 15:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jmdeCbOILltgfSAeW6qlb1pphXU+ay5bfnGvOH3D3B4=; b=bWBqGFmrejkdwRA9gDqOaBks0L
	cbrRtXni6/89L+pzNfRvH0YYUeGv6zRlBprp8RounjfA1CXQ0t9zGD10An1XOzjoGwaLRWXVuQRHB
	v+MX09KTVh++Qn72Ri+/NY8V3eS9wLQiYVsnNsHf+aWOWa4r0+qmpXa4GpUYadWJXJ3C5g+Mst0X9
	0wgG/fotQQ9PZJAtjQObKiqWDeXPcL9d4ifWnfQzGwfXfO5kppOLUpfeh73zF9bm5MiaLkdgoUXXf
	wCkpiIsTp45cp4xqxv+HQuwLaoFqwKb2dX8KxVM7CuTzosBSZfWNkMWLC+BWqMRe2yydaaYeaZNGT
	VkwK10zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWhU-0006SX-5J; Tue, 13 Aug 2019 13:18:56 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWgG-0004b4-RB
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 13:17:43 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 13 Aug 2019 16:17:33 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7DDHXgu029568;
 Tue, 13 Aug 2019 16:17:33 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH] nvme-cli/fabrics: Add tos param to connect cmd
Date: Tue, 13 Aug 2019 16:17:26 +0300
Message-Id: <1565702251-17198-2-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_061741_282556_BA4F27D4 
X-CRM114-Status: UNSURE (   9.62  )
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Israel Rukshin <israelr@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Added 'tos' to 'connect' command so users can specify the type of service.

usage examples:
nvme connect --tos=0 --transport=rdma --traddr=10.0.1.1 --nqn=test-nvme
nvme connect -T 0 -t rdma -a 10.0.1.1 -n test_nvme

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 fabrics.c | 33 ++++++++++++++++++++++++---------
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 333669f..f952722 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -60,6 +60,7 @@ static struct config {
 	int  keep_alive_tmo;
 	int  reconnect_delay;
 	int  ctrl_loss_tmo;
+	int  tos;
 	char *raw;
 	char *device;
 	int  duplicate_connect;
@@ -576,11 +577,12 @@ add_bool_argument(char **argstr, int *max_len, char *arg_str, bool arg)
 }
 
 static int
-add_int_argument(char **argstr, int *max_len, char *arg_str, int arg)
+add_int_argument(char **argstr, int *max_len, char *arg_str, int arg,
+		 bool allow_zero)
 {
 	int len;
 
-	if (arg) {
+	if ((arg && !allow_zero) || (arg != -1 && allow_zero)) {
 		len = snprintf(*argstr, *max_len, ",%s=%d", arg_str, arg);
 		if (len < 0)
 			return -EINVAL;
@@ -640,21 +642,23 @@ static int build_options(char *argstr, int max_len, bool discover)
 		    add_argument(&argstr, &max_len, "hostid", cfg.hostid)) ||
 	    (!discover &&
 	      add_int_argument(&argstr, &max_len, "nr_io_queues",
-				cfg.nr_io_queues)) ||
+				cfg.nr_io_queues, false)) ||
 	    add_int_argument(&argstr, &max_len, "nr_write_queues",
-				cfg.nr_write_queues) ||
+				cfg.nr_write_queues, false) ||
 	    add_int_argument(&argstr, &max_len, "nr_poll_queues",
-				cfg.nr_poll_queues) ||
+				cfg.nr_poll_queues, false) ||
 	    (!discover &&
 	      add_int_argument(&argstr, &max_len, "queue_size",
-				cfg.queue_size)) ||
+				cfg.queue_size, false)) ||
 	    (!discover &&
 	      add_int_argument(&argstr, &max_len, "keep_alive_tmo",
-				cfg.keep_alive_tmo)) ||
+				cfg.keep_alive_tmo, false)) ||
 	    add_int_argument(&argstr, &max_len, "reconnect_delay",
-				cfg.reconnect_delay) ||
+				cfg.reconnect_delay, false) ||
 	    add_int_argument(&argstr, &max_len, "ctrl_loss_tmo",
-				cfg.ctrl_loss_tmo) ||
+				cfg.ctrl_loss_tmo, false) ||
+	    add_int_argument(&argstr, &max_len, "tos",
+				cfg.tos, true) ||
 	    add_bool_argument(&argstr, &max_len, "duplicate_connect",
 				cfg.duplicate_connect) ||
 	    add_bool_argument(&argstr, &max_len, "disable_sqflow",
@@ -749,6 +753,13 @@ retry:
 		p += len;
 	}
 
+	if (cfg.tos != -1) {
+		len = sprintf(p, ",tos=%d", cfg.tos);
+		if (len < 0)
+			return -EINVAL;
+		p += len;
+	}
+
 	if (cfg.keep_alive_tmo && !discover) {
 		len = sprintf(p, ",keep_alive_tmo=%d", cfg.keep_alive_tmo);
 		if (len < 0)
@@ -1065,6 +1076,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		{"keep-alive-tmo",  'k', "LIST", CFG_INT, &cfg.keep_alive_tmo,  required_argument, "keep alive timeout period in seconds" },
 		{"reconnect-delay", 'c', "LIST", CFG_INT, &cfg.reconnect_delay, required_argument, "reconnect timeout period in seconds" },
 		{"ctrl-loss-tmo",   'l', "LIST", CFG_INT, &cfg.ctrl_loss_tmo,   required_argument, "controller loss timeout period in seconds" },
+		{"tos",             'T', "LIST", CFG_INT, &cfg.tos,             required_argument, "type of service" },
 		{"hdr_digest", 'g', "", CFG_NONE, &cfg.hdr_digest, no_argument, "enable transport protocol header digest (TCP transport)" },
 		{"data_digest", 'G', "", CFG_NONE, &cfg.data_digest, no_argument, "enable transport protocol data digest (TCP transport)" },
 		{"nr-io-queues",    'i', "LIST", CFG_INT, &cfg.nr_io_queues,    required_argument, "number of io queues to use (default is core count)" },
@@ -1076,6 +1088,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		{NULL},
 	};
 
+	cfg.tos = -1;
 	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
 			sizeof(cfg));
 	if (ret)
@@ -1122,6 +1135,7 @@ int connect(const char *desc, int argc, char **argv)
 		{"keep-alive-tmo",  'k', "LIST", CFG_INT, &cfg.keep_alive_tmo,  required_argument, "keep alive timeout period in seconds" },
 		{"reconnect-delay", 'c', "LIST", CFG_INT, &cfg.reconnect_delay, required_argument, "reconnect timeout period in seconds" },
 		{"ctrl-loss-tmo",   'l', "LIST", CFG_INT, &cfg.ctrl_loss_tmo,   required_argument, "controller loss timeout period in seconds" },
+		{"tos",             'T', "LIST", CFG_INT, &cfg.tos,             required_argument, "type of service" },
 		{"duplicate_connect", 'D', "", CFG_NONE, &cfg.duplicate_connect, no_argument, "allow duplicate connections between same transport host and subsystem port" },
 		{"disable_sqflow", 'd', "", CFG_NONE, &cfg.disable_sqflow, no_argument, "disable controller sq flow control (default false)" },
 		{"hdr_digest", 'g', "", CFG_NONE, &cfg.hdr_digest, no_argument, "enable transport protocol header digest (TCP transport)" },
@@ -1129,6 +1143,7 @@ int connect(const char *desc, int argc, char **argv)
 		{NULL},
 	};
 
+	cfg.tos = -1;
 	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
 			sizeof(cfg));
 	if (ret)
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
