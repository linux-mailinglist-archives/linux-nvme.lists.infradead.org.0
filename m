Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6D626878
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 18:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xBn7IzBBdFbivyIUTZkbbKSExeQY1ydIfKGE8aDe61E=; b=gyT1w6GdvaUQxsbhrHLxgd548q
	AkNG5Q61szIKosRcHP5XMkzVce1CBCvJ4qKoEtA2Twb9+n2a8Yzlo5ZUr66q+7Eh16Zw/8Dtdyt/1
	Tyi9Tr9YAgdNprpjiO9gafViWj0dypRGeRhbpntGCakwLABARuGerDmVOgRPfNyEB9K2h5HtsBL6k
	20lyBARvnDHi9/l3QplLU+C8hiv3H2jF7VIbGZ2PXsOKsCU6dZ9ydAJWFannk9jKBSdIMZNN1REWX
	JUvOVi/k/d++Yb8ty88XePQs4gT6Xh9o7WerRWU3fLRW1K5g2bPns6AyhFflVZ1MG4GT6y6HoKj4q
	etnfCjxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUIP-00031e-I0; Wed, 22 May 2019 16:40:53 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUHY-0000uk-21
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 16:40:04 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 22 May 2019 19:39:54 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4MGdrAS001383;
 Wed, 22 May 2019 19:39:53 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 6/9] nvme: update list-subsys command to show the entire list
Date: Wed, 22 May 2019 19:39:50 +0300
Message-Id: <1558543193-24752-7-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
References: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_094000_502901_D97E679A 
X-CRM114-Status: GOOD (  13.94  )
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

Make it similar to "nvme list" command. For that, remove the
unnecessary ana_state parsing (was introduced only if specific namespace
handle was given).

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 fabrics.c    |   5 +-
 nvme-print.c |  10 +---
 nvme.c       | 149 +++++++----------------------------------------------------
 nvme.h       |   3 +-
 4 files changed, 23 insertions(+), 144 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index b42a3ce..3dadb4e 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -1190,7 +1190,10 @@ int disconnect_all(const char *desc, int argc, char **argv)
 	if (ret)
 		return ret;
 
-	slist = get_subsys_list(&subcnt, NULL, NVME_NSID_ALL);
+	ret = get_subsys_list(&subcnt, &slist);
+	if (ret)
+		return ret;
+
 	for (i = 0; i < subcnt; i++) {
 		struct subsys_list_item *subsys = &slist[i];
 
diff --git a/nvme-print.c b/nvme-print.c
index 6f85e73..7316117 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -2851,12 +2851,10 @@ static void show_nvme_subsystem(struct subsys_list_item *item)
 	printf("\\\n");
 
 	for (i = 0; i < item->nctrls; i++) {
-		printf(" +- %s %s %s %s %s\n", item->ctrls[i].name,
+		printf(" +- %s %s %s %s\n", item->ctrls[i].name,
 				item->ctrls[i].transport,
 				item->ctrls[i].address,
-				item->ctrls[i].state,
-				item->ctrls[i].ana_state ?
-					item->ctrls[i].ana_state : "");
+				item->ctrls[i].state);
 	}
 
 }
@@ -2902,10 +2900,6 @@ void json_print_nvme_subsystem_list(struct subsys_list_item *slist, int n)
 					slist[i].ctrls[j].address);
 			json_object_add_value_string(path_attrs, "State",
 					slist[i].ctrls[j].state);
-			if (slist[i].ctrls[j].ana_state)
-				json_object_add_value_string(path_attrs,
-						"ANAState",
-						slist[i].ctrls[j].ana_state);
 			json_array_add_value_object(paths, path_attrs);
 		}
 		if (j) {
diff --git a/nvme.c b/nvme.c
index 62f01c8..0fa141b 100644
--- a/nvme.c
+++ b/nvme.c
@@ -1394,85 +1394,6 @@ err_free_path:
 	return NULL;
 }
 
-static int scan_ctrl_paths_filter(const struct dirent *d)
-{
-	int id, cntlid, nsid;
-
-	if (d->d_name[0] == '.')
-		return 0;
-
-	if (strstr(d->d_name, "nvme")) {
-		if (sscanf(d->d_name, "nvme%dc%dn%d", &id, &cntlid, &nsid) == 3)
-			return 1;
-		if (sscanf(d->d_name, "nvme%dn%d", &id, &nsid) == 2)
-			return 1;
-	}
-
-	return 0;
-}
-
-static char *get_nvme_ctrl_path_ana_state(char *path, int nsid)
-{
-	struct dirent **paths;
-	char *ana_state;
-	int i, n;
-
-	ana_state = calloc(1, 16);
-	if (!ana_state)
-		return NULL;
-
-	n = scandir(path, &paths, scan_ctrl_paths_filter, alphasort);
-	if (n <= 0) {
-		free(ana_state);
-		return NULL;
-	}
-	for (i = 0; i < n; i++) {
-		int id, cntlid, ns, fd;
-		ssize_t ret;
-		char *ctrl_path;
-
-		if (sscanf(paths[i]->d_name, "nvme%dc%dn%d",
-			   &id, &cntlid, &ns) != 3) {
-			if (sscanf(paths[i]->d_name, "nvme%dn%d",
-				   &id, &ns) != 2) {
-				continue;
-			}
-		}
-		if (ns != nsid)
-			continue;
-
-		ret = asprintf(&ctrl_path, "%s/%s/ana_state",
-			       path, paths[i]->d_name);
-		if (ret < 0) {
-			free(ana_state);
-			ana_state = NULL;
-			break;
-		}
-		fd = open(ctrl_path, O_RDONLY);
-		if (fd < 0) {
-			free(ctrl_path);
-			free(ana_state);
-			ana_state = NULL;
-			break;
-		}
-		ret = read(fd, ana_state, 16);
-		if (ret < 0) {
-			fprintf(stderr, "Failed to read ANA state from %s\n",
-				ctrl_path);
-			free(ana_state);
-			ana_state = NULL;
-		} else if (ana_state[strlen(ana_state) - 1] == '\n')
-			ana_state[strlen(ana_state) - 1] = '\0';
-		close(fd);
-		free(ctrl_path);
-		break;
-	}
-	for (i = 0; i < n; i++)
-		free(paths[i]);
-	free(paths);
-	return ana_state;
-}
-
 static int scan_ctrls_filter(const struct dirent *d)
 {
 	int id, nsid;
@@ -1495,11 +1416,10 @@ static void free_ctrl_list_item(struct ctrl_list_item *ctrls)
 	free(ctrls->transport);
 	free(ctrls->address);
 	free(ctrls->state);
-	free(ctrls->ana_state);
 }
 
 static int get_nvme_subsystem_info(char *name, char *path,
-				struct subsys_list_item *item, __u32 nsid)
+				   struct subsys_list_item *item)
 {
 	char ctrl_path[512];
 	struct dirent **ctrls;
@@ -1557,9 +1477,6 @@ static int get_nvme_subsystem_info(char *name, char *path,
 			continue;
 		}
 
-		if (nsid != NVME_NSID_ALL)
-			item->ctrls[ccnt].ana_state =
-				get_nvme_ctrl_path_ana_state(ctrl_path, nsid);
 		ccnt++;
 	}
 
@@ -1624,8 +1541,7 @@ void free_subsys_list(struct subsys_list_item *slist, int n)
 	free(slist);
 }
 
-struct subsys_list_item *get_subsys_list(int *subcnt, char *subsysnqn,
-					 __u32 nsid)
+int get_subsys_list(int *subcnt, struct subsys_list_item **pslist)
 {
 	char path[310];
 	struct dirent **subsys;
@@ -1635,36 +1551,37 @@ struct subsys_list_item *get_subsys_list(int *subcnt, char *subsysnqn,
 	n = scandir(subsys_dir, &subsys, scan_subsys_filter, alphasort);
 	if (n < 0) {
 		fprintf(stderr, "no NVMe subsystem(s) detected.\n");
-		return NULL;
+		return -EINVAL;
 	}
 
 	slist = calloc(n, sizeof(struct subsys_list_item));
-	if (!slist)
+	if (!slist) {
+		ret = -ENOMEM;
 		goto free_subsys;
+	}
 
 	for (i = 0; i < n; i++) {
 		snprintf(path, sizeof(path), "%s%s", subsys_dir,
 			subsys[i]->d_name);
 		ret = get_nvme_subsystem_info(subsys[i]->d_name, path,
-				&slist[*subcnt], nsid);
+				&slist[*subcnt]);
 		if (ret) {
 			fprintf(stderr,
 				"%s: failed to get subsystem info: %s\n",
 				path, strerror(errno));
 			free_subsys_list_item(&slist[*subcnt]);
-		} else if (subsysnqn &&
-			   strncmp(slist[*subcnt].subsysnqn, subsysnqn, 255))
-			free_subsys_list_item(&slist[*subcnt]);
-		else
+		} else {
 			(*subcnt)++;
+		}
 	}
 
+	*pslist = slist;
 free_subsys:
 	for (i = 0; i < n; i++)
 		free(subsys[i]);
 	free(subsys);
 
-	return slist;
+	return ret;
 }
 
 static int list_subsys(int argc, char **argv, struct command *cmd,
@@ -1672,15 +1589,12 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
 {
 	struct subsys_list_item *slist;
 	int fmt, ret, subcnt = 0;
-	char *subsysnqn = NULL;
-	const char *desc = "Retrieve information for subsystems";
+	const char *desc = "Retrieve information for all NVMe subsystems.";
 	struct config {
-		__u32 namespace_id;
 		char *output_format;
 	};
 
 	struct config cfg = {
-		.namespace_id  = NVME_NSID_ALL,
 		.output_format = "normal",
 	};
 
@@ -1694,42 +1608,13 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
 	if (ret < 0)
 		return ret;
 
-	devicename = NULL;
-	if (optind < argc) {
-		char path[512];
-		int id;
-
-		devicename = basename(argv[optind]);
-		if (sscanf(devicename, "nvme%dn%d", &id,
-			   &cfg.namespace_id) != 2) {
-			fprintf(stderr, "%s is not a NVMe namespace device\n",
-				argv[optind]);
-			return -EINVAL;
-		}
-		sprintf(path, "/sys/block/%s/device", devicename);
-		subsysnqn = get_nvme_subsnqn(path);
-		if (!subsysnqn) {
-			fprintf(stderr, "Cannot read subsys NQN from %s\n",
-				devicename);
-			return -EINVAL;
-		}
-		optind++;
-	}
-
-	if (ret < 0) {
-		argconfig_print_help(desc, opts);
-		if (subsysnqn)
-			free(subsysnqn);
-		return ret;
-	}
 	fmt = validate_output_format(cfg.output_format);
-	if (fmt != JSON && fmt != NORMAL) {
-		if (subsysnqn)
-			free(subsysnqn);
+	if (fmt != JSON && fmt != NORMAL)
 		return -EINVAL;
-	}
 
-	slist = get_subsys_list(&subcnt, subsysnqn, cfg.namespace_id);
+	ret = get_subsys_list(&subcnt, &slist);
+	if (ret)
+		return ret;
 
 	if (fmt == JSON)
 		json_print_nvme_subsystem_list(slist, subcnt);
@@ -1737,8 +1622,6 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
 		show_nvme_subsystem_list(slist, subcnt);
 
 	free_subsys_list(slist, subcnt);
-	if (subsysnqn)
-		free(subsysnqn);
 	return ret;
 }
 
diff --git a/nvme.h b/nvme.h
index a149005..7c444a4 100644
--- a/nvme.h
+++ b/nvme.h
@@ -147,7 +147,6 @@ struct ctrl_list_item {
 	char *address;
 	char *transport;
 	char *state;
-	char *ana_state;
 };
 
 struct subsys_list_item {
@@ -174,7 +173,7 @@ extern const char *devicename;
 int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root));
 int	validate_output_format(char *format);
 
-struct subsys_list_item *get_subsys_list(int *subcnt, char *subsysnqn, __u32 nsid);
+int get_subsys_list(int *subcnt, struct subsys_list_item **pslist);
 void free_subsys_list(struct subsys_list_item *slist, int n);
 char *nvme_char_from_block(char *block);
 
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
