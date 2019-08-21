Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD519877E
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 00:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=00rnclfeYK4whsjChwZ/lPK8KdBfUKCOxPal8pJ6+HM=; b=eeL
	Ae8uxsVye5d6DKP3jlfrYCtOuUQpWNMaQrf5NC37YvIVA1Yz/xQ21WIN1bfEi1gTMQ15/i7DB84et
	/d01kl1CI6LhPNIpaRMkmYF04DPRCqhcTXXQaHfcvU57N0CmHmSmmsugkmItSYGGe4iIEo7uFonWe
	0U1qgryMRNAfRTQie0S98sSy9TWu9x/rodZnLsLBzcP1sxmtPHI9pTyM1XLc+P+sTbfgjsQCb5Hkf
	ssf2CMvyIOF7eJa3CFplblNozRreNiXgG9kYKfOQtFGz8LFw/I4/JlyP+mtYzK2VcSMVovElq7C8u
	0azMbAZxc5W/h39PZ5fNwm0HUR+eh1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ZLp-0004Lh-N6; Wed, 21 Aug 2019 22:45:09 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ZLk-0003TY-1s
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 22:45:05 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 15:45:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,414,1559545200"; d="scan'208";a="354085261"
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 21 Aug 2019 15:44:59 -0700
From: Keith Busch <keith.busch@intel.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-cli: Warn and delay before formatting
Date: Wed, 21 Aug 2019 16:42:49 -0600
Message-Id: <20190821224249.14281-1-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_154504_144708_AA9AB7AE 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <kbusch@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <kbusch@kernel.org>

By popular demand, have format print a warning that shows the relatives of
the device the format was sent to.

  If this command was issued to a block device, its relative are the
  parent controllers.

  If this command was issued to a controller device, its relative children
  are namespace block devices.

This provides a visual clue that /dev/nvme0 may or may not be the parent
controller to namespace /dev/nvme0n1, and provides ample time for the
user to abort the operation if they didn't mean to do this.

Here are some examples of what this change provides sending this command
to a controller first, then to a multipathed namespace:

  # nvme format /dev/nvme0 -n 1
  You are about to format nvme0, namespace 0x1.
  Controller nvme0 has child namespace(s):nvme2n1

  # nvme format /dev/nvme4n1
  You are about to format nvme4n1, namespace 0x1.
  Namespace nvme4n1 has parent controller(s):nvme4, nvme5

Link: https://github.com/linux-nvme/nvme-cli/issues/501
Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 Documentation/nvme-format.txt |  5 +++
 nvme.c                        | 87 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 92 insertions(+)

diff --git a/Documentation/nvme-format.txt b/Documentation/nvme-format.txt
index 7030808..9ef788a 100644
--- a/Documentation/nvme-format.txt
+++ b/Documentation/nvme-format.txt
@@ -16,6 +16,7 @@ SYNOPSIS
 		    [--pi=<pi> | -i <pi>]
 		    [--ms=<ms> | -m <ms>]
 		    [--reset | -r ]
+		    [--force | -f ]
 		    [--timeout=<timeout> | -t <timeout> ]
 
 DESCRIPTION
@@ -127,6 +128,10 @@ cryptographically. This is accomplished by deleting the encryption key.
 	Issue a reset after successful format. Must use the character
 	device for this.
 
+-f::
+--force::
+	Just send the command immediately without warning of the implications.
+
 -t <timeout>::
 --timeout=<timeout>::
 	Override default timeout value. In milliseconds.
diff --git a/nvme.c b/nvme.c
index c867b98..362f807 100644
--- a/nvme.c
+++ b/nvme.c
@@ -3491,6 +3491,77 @@ ret:
 	return nvme_status_to_errno(err, false);
 }
 
+/* Requires global 'devicename' was set */
+static void print_relatives()
+{
+	unsigned id, i, nsid = NVME_NSID_ALL;
+	char *path = NULL;
+	bool block = true;
+	int ret;
+
+	ret = sscanf(devicename, "nvme%dn%d", &id, &nsid);
+	switch (ret) {
+	case 1:
+		asprintf(&path, "/sys/class/nvme/%s", devicename);
+		block = false;
+		break;
+	case 2:
+		asprintf(&path, "/sys/block/%s/device", devicename);
+		break;
+	default:
+		return;
+	}
+	if (!path)
+		return;
+
+	if (block) {
+		char *subsysnqn;
+		struct subsys_list_item *slist;
+		int subcnt = 0;
+
+		subsysnqn = get_nvme_subsnqn(path);
+		if (!subsysnqn)
+			return;
+		slist = get_subsys_list(&subcnt, subsysnqn, nsid);
+		if (subcnt != 1) {
+			free(subsysnqn);
+			free(path);
+			return;
+		}
+
+		fprintf(stderr, "Namespace %s has parent controller(s):", devicename);
+		for (i = 0; i < slist[0].nctrls; i++)
+			fprintf(stderr, "%s%s", i ? ", " : "", slist[0].ctrls[i].name);
+		fprintf(stderr, "\n\n");
+	} else {
+		struct dirent **paths;
+		bool comma = false;
+		int n, ns, cntlid;
+
+		n = scandir(path, &paths, scan_ctrl_paths_filter, alphasort);
+		if (n < 0) {
+			free(path);
+			return;
+		}
+
+		fprintf(stderr, "Controller %s has child namespace(s):", devicename);
+		for (i = 0; i < n; i++) {
+			if (sscanf(paths[i]->d_name, "nvme%dc%dn%d",
+				   &id, &cntlid, &ns) != 3) {
+				if (sscanf(paths[i]->d_name, "nvme%dn%d",
+					   &id, &ns) != 2) {
+					continue;
+				}
+			}
+			fprintf(stderr, "%snvme%dn%d", comma ? ", " : "", id, ns);
+			comma = true;
+		}
+		fprintf(stderr, "\n\n");
+		free(paths);
+	}
+	free(path);
+}
+
 static int format(int argc, char **argv, struct command *cmd, struct plugin *plugin)
 {
 	const char *desc = "Re-format a specified namespace on the "\
@@ -3506,6 +3577,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 	const char *reset = "Automatically reset the controller after successful format";
 	const char *timeout = "timeout value, in milliseconds";
 	const char *bs = "target block size";
+	const char *force = "The \"I know what I'm doing\" flag, skip confirmation before sending command";
 	struct nvme_id_ns ns;
 	int err, fd, i;
 	__u8 prev_lbaf = 0;
@@ -3521,6 +3593,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 		__u8  ms;
 		__u64 bs;
 		int reset;
+		int force;
 	};
 
 	struct config cfg = {
@@ -3530,6 +3603,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 		.ses          = 0,
 		.pi           = 0,
 		.reset        = 0,
+		.force        = 0,
 		.bs           = 0,
 	};
 
@@ -3542,6 +3616,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 		{"pil",          'p', "NUM",  CFG_BYTE,     &cfg.pil,          required_argument, pil},
 		{"ms",           'm', "NUM",  CFG_BYTE,     &cfg.ms,           required_argument, ms},
 		{"reset",        'r', "",     CFG_NONE,     &cfg.reset,        no_argument,       reset},
+		{"force",        'f', "NUM",  CFG_NONE,     &cfg.force,        no_argument,       force},
 		{"block-size",   'b', "NUM",  CFG_LONG_SUFFIX, &cfg.bs,        required_argument, bs},
 		{NULL}
 	};
@@ -3567,6 +3642,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 			goto close_fd;
 		}
 	}
+
 	if (S_ISBLK(nvme_stat.st_mode)) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
@@ -3656,6 +3732,17 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 		goto close_fd;
 	}
 
+	if (!cfg.force) {
+		fprintf(stderr, "You are about to format %s, namespace %#x.\n",
+			devicename, cfg.namespace_id);
+		print_relatives();
+		fprintf(stderr, "WARNING: Format may irrevocably delete this device's data.\n"
+			"You have 10 seconds to press Ctrl-C to cancel this operation.\n\n"
+			"Use the force [--force|-f] option to suppress this warning.\n");
+		sleep(10);
+		fprintf(stderr, "Sending format operation ... \n");
+	}
+
 	err = nvme_format(fd, cfg.namespace_id, cfg.lbaf, cfg.ses, cfg.pi,
 				cfg.pil, cfg.ms, cfg.timeout);
 	if (err < 0)
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
