Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354C719086A
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 10:03:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bY0U9DA5yMaFWzTkxX+ztSFJs5ng1MFTNqh2VgHSNQ=; b=a360kcbXDCz8KQ
	mFRaXkOI6Rs5PRcNbZd2vTDFtsT3Sd2UqCfG4LBaRicwzX30aH6L4HVuXjiLpKX7+Go/jBcsHfcGE
	Vaw9qeItymTHSuURQpoKyrdEw+Wy8QUhaku4yPkDSrElRhqjvvd7yNo5SE1Q60Ie4SMIyUa/ArKdv
	tCW+nFc1Ydj9g+CDKEv3R3PjoQWn9vudE3MBrcfqaeiC5bTgr904BLqgCdBNDt61JagXWlUhfZ2jy
	aVPi61Tixs+4TX6tGLcdxk0yTgAZzMalCKXfvj9eEFzTMNquX+FNsqJQFHCxcWaWurEvLAyJwYI6b
	I5H4zMHxUVVWdFJgDkbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGfTC-0002lT-LI; Tue, 24 Mar 2020 09:03:34 +0000
Received: from [2601:647:4802:9070:45a4:15de:f2dc:1149]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGfT3-0002hx-F6; Tue, 24 Mar 2020 09:03:25 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <kbusch@kernel.org>
Subject: [PATCH rfc 1/2] fabrics: add fabrics_ prefix to fabrics operations
Date: Tue, 24 Mar 2020 02:03:23 -0700
Message-Id: <20200324090324.24459-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200324090324.24459-1-sagi@grimberg.me>
References: <20200324090324.24459-1-sagi@grimberg.me>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

discover/connect/disconnect are generic names which might
clash with other external included libraries.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 fabrics.c |  8 ++++----
 fabrics.h |  8 ++++----
 nvme.c    | 10 +++++-----
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index e2c9bfb37177..a7d628b1f0c9 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -1251,7 +1251,7 @@ out:
 	return ret;
 }
 
-int discover(const char *desc, int argc, char **argv, bool connect)
+int fabrics_discover(const char *desc, int argc, char **argv, bool connect)
 {
 	char argstr[BUF_SIZE];
 	int ret;
@@ -1306,7 +1306,7 @@ out:
 	return nvme_status_to_errno(ret, true);
 }
 
-int connect(const char *desc, int argc, char **argv)
+int fabrics_connect(const char *desc, int argc, char **argv)
 {
 	char argstr[BUF_SIZE];
 	int instance, ret;
@@ -1439,7 +1439,7 @@ static int disconnect_by_device(char *device)
 	return remove_ctrl(instance);
 }
 
-int disconnect(const char *desc, int argc, char **argv)
+int fabrics_disconnect(const char *desc, int argc, char **argv)
 {
 	const char *nqn = "nqn name";
 	const char *device = "nvme device";
@@ -1484,7 +1484,7 @@ out:
 	return nvme_status_to_errno(ret, true);
 }
 
-int disconnect_all(const char *desc, int argc, char **argv)
+int fabrics_disconnect_all(const char *desc, int argc, char **argv)
 {
 	struct nvme_topology t = { };
 	int i, j, err;
diff --git a/fabrics.h b/fabrics.h
index b8e53f492b53..f5b8eaf6bba0 100644
--- a/fabrics.h
+++ b/fabrics.h
@@ -5,9 +5,9 @@
 
 extern char *hostnqn_read(void);
 
-extern int discover(const char *desc, int argc, char **argv, bool connect);
-extern int connect(const char *desc, int argc, char **argv);
-extern int disconnect(const char *desc, int argc, char **argv);
-extern int disconnect_all(const char *desc, int argc, char **argv);
+extern int fabrics_discover(const char *desc, int argc, char **argv, bool connect);
+extern int fabrics_connect(const char *desc, int argc, char **argv);
+extern int fabrics_disconnect(const char *desc, int argc, char **argv);
+extern int fabrics_disconnect_all(const char *desc, int argc, char **argv);
 
 #endif
diff --git a/nvme.c b/nvme.c
index dd3ab5870e62..7e6713a1c8c7 100644
--- a/nvme.c
+++ b/nvme.c
@@ -4779,31 +4779,31 @@ static int show_hostnqn_cmd(int argc, char **argv, struct command *command, stru
 static int discover_cmd(int argc, char **argv, struct command *command, struct plugin *plugin)
 {
 	const char *desc = "Send Get Log Page request to Discovery Controller.";
-	return discover(desc, argc, argv, false);
+	return fabrics_discover(desc, argc, argv, false);
 }
 
 static int connect_all_cmd(int argc, char **argv, struct command *command, struct plugin *plugin)
 {
 	const char *desc = "Discover NVMeoF subsystems and connect to them";
-	return discover(desc, argc, argv, true);
+	return fabrics_discover(desc, argc, argv, true);
 }
 
 static int connect_cmd(int argc, char **argv, struct command *command, struct plugin *plugin)
 {
 	const char *desc = "Connect to NVMeoF subsystem";
-	return connect(desc, argc, argv);
+	return fabrics_connect(desc, argc, argv);
 }
 
 static int disconnect_cmd(int argc, char **argv, struct command *command, struct plugin *plugin)
 {
 	const char *desc = "Disconnect from NVMeoF subsystem";
-	return disconnect(desc, argc, argv);
+	return fabrics_disconnect(desc, argc, argv);
 }
 
 static int disconnect_all_cmd(int argc, char **argv, struct command *command, struct plugin *plugin)
 {
 	const char *desc = "Disconnect from all connected NVMeoF subsystems";
-	return disconnect_all(desc, argc, argv);
+	return fabrics_disconnect_all(desc, argc, argv);
 }
 
 void register_extension(struct plugin *plugin)
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
