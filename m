Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49128278A7
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 11:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cvv6ibFVzJe9dzZ33UWGdvod+eoIhNd4xLwX6BZKtPk=; b=Et3qdltBzUyx1hrs3YNDOpK7vc
	HadKFx6iifNdZHa8Tef/5ND75q7bZXXtVTyzs9mIRjH1F4gtMx2xaNMY5TT0X5hw0PGF9O+NpnEgs
	OPO1EfwT7oLf/XV6KQ/himaerVe2byWDEyrp2BM2XvvjC5voJng8FHLCbUSh/FZHP68zEoj/tFwkS
	jbkK+ZChkJ8fsDdSyhy8g0YT1yHm4I2u9PFmEEvTWAM3JziUQlnbNucNzaku7+K/KK5FMJeVqnh/c
	SJdx7WZO45ezlmhAd+u79ia8V3sPS9ENlxx6Ur5jCgLc3yXo5D6gPj5svjIs16yW1JlmdYP4hWhj7
	ip0a/TCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjbI-0008Nc-M1; Thu, 23 May 2019 09:01:24 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjav-00084v-KK
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 09:01:07 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 23 May 2019 12:00:59 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4N90wUE007383;
 Thu, 23 May 2019 12:00:59 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 1/9] nvme: update list-ns nsid option
Date: Thu, 23 May 2019 12:00:50 +0300
Message-Id: <1558602058-29434-2-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
References: <1558602058-29434-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_020104_555212_F3F21CE9 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: shlomin@mellanox.com, maxg@mellanox.com, martin.petersen@oracle.com,
 minwoo.im@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This commit updates the optional nsid argument to define the wanted
nsid for start, instead of starting from nsid + 1. E.g. in case we've
wanted to get the list of namespaces starting from 1, before this
commit, we used the "--namespace-id=0" option. Nsid 0 is not valid in
NVMe spec, thus change it to start counting from the given nsid.

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 nvme.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/nvme.c b/nvme.c
index 9819fcb..3c1bcb1 100644
--- a/nvme.c
+++ b/nvme.c
@@ -950,9 +950,9 @@ close_fd:
 
 static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
 {
-	const char *desc = "For the specified device, show the "\
-		"namespace list in a NVMe subsystem, optionally starting with a given namespace";
-	const char *namespace_id = "namespace number returned list should to start after";
+	const char *desc = "For the specified controller handle, show the "\
+		"namespace list in the associated NVMe subsystem, optionally starting with a given nsid.";
+	const char *namespace_id = "first nsid returned list should start from";
 	const char *all = "show all namespaces in the subsystem, whether attached or inactive";
 	int err, i, fd;
 	__u32 ns_list[1024];
@@ -963,7 +963,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 	};
 
 	struct config cfg = {
-		.namespace_id = 0,
+		.namespace_id = 1,
 	};
 
 	const struct argconfig_commandline_options command_line_options[] = {
@@ -976,7 +976,11 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 	if (fd < 0)
 		return fd;
 
-	err = nvme_identify_ns_list(fd, cfg.namespace_id, !!cfg.all, ns_list);
+	if (!cfg.namespace_id)
+		return -EINVAL;
+
+	err = nvme_identify_ns_list(fd, cfg.namespace_id - 1, !!cfg.all,
+				    ns_list);
 	if (!err) {
 		for (i = 0; i < 1024; i++)
 			if (ns_list[i])
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
