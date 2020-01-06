Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83A213130B
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Jan 2020 14:38:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzM1/xDcI+CIKHfz0qLRFTH4WhxYlBppAfMhZ4r9gp4=; b=GC1FUSpdpgE0Eh
	1ybnOcEDSFYVwvsRA+P8EjHQHDY+9EueHGo8izY0lSz0Ix3GctL/I2KKBUfU9NoN3mqgDc1aBcUKl
	Gf4dTxeTlctJGs0B14TjKDOCVgqPKFdla3RNiGfroIOk2dyr3xUmeOqKKUSK/PkNWOaUiLkjU/fQO
	jMezyGf7vXdbaOaM8CchLJik4vxQrYuc/aW9k71cjj31tdfywqDRKdoHex7c30T1WJhUFeoImX9Tu
	o5hPTvrgJIV+qoWxgMFVXO+BSdyrh4asdL8p/pSOYV9OBNJa/zI0G2u5/eDzG82qDuG6aX8tIak3a
	Gpab9FNMkTr1D3245kBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSZy-0005io-Lg; Mon, 06 Jan 2020 13:37:58 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSZp-0005aU-FW
 for linux-nvme@lists.infradead.org; Mon, 06 Jan 2020 13:37:51 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 6 Jan 2020 15:37:36 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 006DbaFB029740;
 Mon, 6 Jan 2020 15:37:36 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me, martin.petersen@oracle.com
Subject: [PATCH] nvme-cli/fabrics: Add pi_enable param to connect cmd
Date: Mon,  6 Jan 2020 15:37:21 +0200
Message-Id: <20200106133736.123038-2-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200106133736.123038-1-maxg@mellanox.com>
References: <20200106133736.123038-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_053749_951263_7832A0DC 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: axboe@kernel.dk, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, idanb@mellanox.com, oren@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

Added 'pi_enable' to 'connect' command so users can enable metadata support.

usage examples:
nvme connect --pi_enable --transport=rdma --traddr=10.0.1.1 --nqn=test-nvme
nvme connect -p -t rdma -a 10.0.1.1 -n test_nvme

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 fabrics.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/fabrics.c b/fabrics.c
index 8982ae4..b22ea14 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -72,6 +72,7 @@ static struct config {
 	int  disable_sqflow;
 	int  hdr_digest;
 	int  data_digest;
+	int  pi_enable;
 	bool persistent;
 	bool quiet;
 } cfg = { NULL };
@@ -756,7 +757,9 @@ static int build_options(char *argstr, int max_len, bool discover)
 	    add_bool_argument(&argstr, &max_len, "disable_sqflow",
 				cfg.disable_sqflow) ||
 	    add_bool_argument(&argstr, &max_len, "hdr_digest", cfg.hdr_digest) ||
-	    add_bool_argument(&argstr, &max_len, "data_digest", cfg.data_digest))
+	    add_bool_argument(&argstr, &max_len, "data_digest",
+				cfg.data_digest) ||
+	    add_bool_argument(&argstr, &max_len, "pi_enable", cfg.pi_enable))
 		return -EINVAL;
 
 	return 0;
@@ -885,6 +888,13 @@ retry:
 		p += len;
 	}
 
+	if (cfg.pi_enable) {
+		len = sprintf(p, ",pi_enable");
+		if (len < 0)
+			return -EINVAL;
+		p += len;
+	}
+
 	switch (e->trtype) {
 	case NVMF_TRTYPE_RDMA:
 	case NVMF_TRTYPE_TCP:
@@ -1171,6 +1181,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		OPT_INT("tos",             'T', &cfg.tos,             "type of service"),
 		OPT_FLAG("hdr_digest",     'g', &cfg.hdr_digest,      "enable transport protocol header digest (TCP transport)"),
 		OPT_FLAG("data_digest",    'G', &cfg.data_digest,     "enable transport protocol data digest (TCP transport)"),
+		OPT_FLAG("pi_enable",      'p', &cfg.pi_enable,       "enable metadata (T10-PI) support (default false)"),
 		OPT_INT("nr-io-queues",    'i', &cfg.nr_io_queues,    "number of io queues to use (default is core count)"),
 		OPT_INT("nr-write-queues", 'W', &cfg.nr_write_queues, "number of write queues to use (default 0)"),
 		OPT_INT("nr-poll-queues",  'P', &cfg.nr_poll_queues,  "number of poll queues to use (default 0)"),
@@ -1231,6 +1242,7 @@ int connect(const char *desc, int argc, char **argv)
 		OPT_FLAG("disable-sqflow",    'd', &cfg.disable_sqflow,    "disable controller sq flow control (default false)"),
 		OPT_FLAG("hdr-digest",        'g', &cfg.hdr_digest,        "enable transport protocol header digest (TCP transport)"),
 		OPT_FLAG("data-digest",       'G', &cfg.data_digest,       "enable transport protocol data digest (TCP transport)"),
+		OPT_FLAG("pi_enable",         'p', &cfg.pi_enable,         "enable metadata (T10-PI) support (default false)"),
 		OPT_END()
 	};
 
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
