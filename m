Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF7C26873
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 18:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nOkQfrUqm8ZNxKq/3r6oAt3n0Z3mqRmcOb3MWN3Gem8=; b=JsXe4lviVOtmDdbVM/vpS74y1b
	DXhjGzKvxvm6IzDvgfvNv2/dK9xfeJ9vSBBRKi7/pN3WfT1Ba+QXT1PaFSto8tF8c4HJCtkJLtOC0
	HPGLxT4VmSYD+WVUlnOeRSdP5eO6RsXmITMhCZCwkkd/nxsxjTh54Z+8VwjODEKQRzijNdskzaHTK
	u6iG3uEtyL2HTrzbfPyRvNBa+6zIVoaUoK52Js8qodCLysQ3uYL0pvTv6F609Jq3VBnU/1n+1kbYw
	NRNxqYuOA3aJW+1R5QWtgtpI1QkZgQ5M+/GryQ6DoJJ27vxWzRfLoUbL5lANqg5QG/vAh67FM/47c
	cDYf4uCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUHp-0001oo-VE; Wed, 22 May 2019 16:40:17 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUHX-0000uY-8k
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 16:40:01 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 22 May 2019 19:39:53 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4MGdrAN001383;
 Wed, 22 May 2019 19:39:53 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 1/9] nvme: update list-ns nsid option
Date: Wed, 22 May 2019 19:39:45 +0300
Message-Id: <1558543193-24752-2-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
References: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_093959_707641_AB1E33A6 
X-CRM114-Status: GOOD (  10.75  )
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
Cc: maxg@mellanox.com, martin.petersen@oracle.com, shlomin@mellanox.com
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

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 nvme.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/nvme.c b/nvme.c
index 9819fcb..de77956 100644
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
@@ -976,7 +976,8 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 	if (fd < 0)
 		return fd;
 
-	err = nvme_identify_ns_list(fd, cfg.namespace_id, !!cfg.all, ns_list);
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
