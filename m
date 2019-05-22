Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DB52687B
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 18:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ylZRHOxxKuihC2neujRbwoyh96E1pMBvbqypHs164ck=; b=IXmuc+/OPI2GSraGIr+xunXNxy
	2ZjPJYA8OtU8J1oN5a715R4+N63S+k8oZtFUEleVwM9UuU8zcxXMj+gnlV+i0qyEAl1/31fq2BzGy
	MXi84+0dLl3GjU3t099JBYpwDgHVPZZ7j10sBCagRDBg4UuNfxxencoaH6HFj5Auy+TlUPigh+Sbs
	X9/+Gunx/Blx9zfC47vi4EbwpygaOgNru+yYKbjONCYyXbz4DJoWO5HZZhlGf/ssnqrnkEgVJjQem
	1G4MCnQaZrXVrerzePi4h4DmNSVq/UXIdnWllV9qWfuwvd/5HMoLvR6o08vnHN6mGy7Ls+c6/jtuf
	cOQlAyog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUIp-0003Ud-JI; Wed, 22 May 2019 16:41:19 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUHY-0000un-4Y
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 16:40:11 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 22 May 2019 19:39:54 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4MGdrAV001383;
 Wed, 22 May 2019 19:39:54 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 9/9] nvme: Retrieve namespaces during list-subsys cmd
Date: Wed, 22 May 2019 19:39:53 +0300
Message-Id: <1558543193-24752-10-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
References: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_094000_601659_830798F3 
X-CRM114-Status: GOOD (  12.18  )
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

Add an association between subsystems/ctrls/namespaces using
"nvme list-subsys" command. Now this command will show the following:

nvme-subsys4 - NQN=testsubsystem_0
\
 +- nvme4 rdma traddr=12.212.99.85 trsvcid=4420 live
 \
  +- nvme4n1
  +- nvme4n2
  +- nvme4n3
 +- nvme5 rdma traddr=12.212.99.85 trsvcid=4420 live
 \
  +- nvme5n1
  +- nvme5n2
  +- nvme5n3

Instead of:
----------------
nvme-subsys4 - NQN=testsubsystem_0
\
 +- nvme4 rdma traddr=12.212.99.85 trsvcid=4420
 +- nvme5 rdma traddr=12.212.99.85 trsvcid=4420

The new json output is:
--------------------------
{
      "Name" : "nvme-subsys4",
      "NQN" : "testsubsystem_0",
      "Ctrls" : [
        {
          "Name" : "nvme4",
          "Transport" : "rdma",
          "Address" : "traddr=12.212.99.85 trsvcid=4420",
          "State" : "live",
          "Namespaces" : [
            {
              "Name" : "nvme4n1"
            },
            {
              "Name" : "nvme4n2"
            },
            {
              "Name" : "nvme4n3"
            }
          ]
        },
        {
          "Name" : "nvme5",
          "Transport" : "rdma",
          "Address" : "traddr=12.212.99.85 trsvcid=4420",
          "State" : "live",
          "Namespaces" : [
            {
              "Name" : "nvme5n1"
            },
            {
              "Name" : "nvme5n2"
            },
            {
              "Name" : "nvme5n3"
            }
          ]
        }
      ]
}

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 nvme-print.c |  22 ++++++++++++-
 nvme.c       | 106 ++++++++++++++++++++++++++++++++++++++++++++---------------
 nvme.h       |   6 ++++
 3 files changed, 106 insertions(+), 28 deletions(-)

diff --git a/nvme-print.c b/nvme-print.c
index b3f08cf..e578d0b 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -2845,8 +2845,14 @@ void json_sanitize_log(struct nvme_sanitize_log_page *sanitize_log, const char *
 
 static void show_nvme_ctrl(struct ctrl_list_item *item)
 {
+	int i;
+
 	printf(" +- %s %s %s %s\n", item->name, item->transport, item->address,
 	       item->state);
+	printf(" \\\n");
+	for (i = 0; i < item->ns_num; i++) {
+		printf("  +- %s\n", item->namespaces[i].name);
+	}
 }
 
 
@@ -2875,7 +2881,9 @@ void json_print_nvme_subsystem_list(struct subsys_list_item *slist, int n)
 	struct json_object *subsystem_attrs;
 	struct json_array *paths;
 	struct json_object *path_attrs;
-	int i, j;
+	struct json_array *namespaces;
+	struct json_object *ns_attrs;
+	int i, j, k;
 
 	root = json_create_object();
 	subsystems = json_create_array();
@@ -2902,6 +2910,18 @@ void json_print_nvme_subsystem_list(struct subsys_list_item *slist, int n)
 					slist[i].ctrls[j].address);
 			json_object_add_value_string(path_attrs, "State",
 					slist[i].ctrls[j].state);
+
+			namespaces = json_create_array();
+			for (k = 0; k < slist[i].ctrls[j].ns_num; k++) {
+				ns_attrs = json_create_object();
+				json_object_add_value_string(ns_attrs, "Name",
+							     slist[i].ctrls[j].namespaces[k].name);
+				json_array_add_value_object(namespaces, ns_attrs);
+			}
+			if (k)
+				json_object_add_value_array(path_attrs, "Namespaces",
+							    namespaces);
+
 			json_array_add_value_object(paths, path_attrs);
 		}
 		if (j)
diff --git a/nvme.c b/nvme.c
index 0fa141b..08d0cc2 100644
--- a/nvme.c
+++ b/nvme.c
@@ -60,6 +60,9 @@ const char *devicename;
 
 static const char nvme_version_string[] = NVME_VERSION;
 
+static void free_ctrl_list_item(struct ctrl_list_item *ctrls);
+static char *get_nvme_ctrl_attr(char *path, const char *attr);
+
 #define CREATE_CMD
 #include "nvme-builtin.h"
 
@@ -1306,6 +1309,72 @@ static void *get_registers(void)
 
 static const char *subsys_dir = "/sys/class/nvme-subsystem/";
 
+static int scan_ns_filter(const struct dirent *d)
+{
+	int id, nsid;
+
+	if (strstr(d->d_name, "nvme") &&
+	    sscanf(d->d_name, "nvme%dn%d", &id, &nsid) == 2)
+		return 1;
+	return 0;
+}
+
+static int get_nvme_ctrl_info(char *name, char *ctrl_path,
+			      struct ctrl_list_item *item)
+{
+	struct dirent **namespaces;
+	int ret = 0, n, i;
+
+	item->name = strdup(name);
+
+	n = scandir(ctrl_path, &namespaces, scan_ns_filter, alphasort);
+	if (n < 0) {
+		fprintf(stderr, "failed to scan namespace(s).\n");
+		return n;
+	}
+
+	item->namespaces = calloc(n, sizeof(struct ns_list_item));
+	if (!item->namespaces) {
+		ret = -ENOMEM;
+		fprintf(stderr, "failed to allocate controller namespace(s)\n");
+		goto free_namespaces;
+	}
+
+	item->ns_num = n;
+
+	for (i = 0; i < n; i++)
+		item->namespaces[i].name = strdup(namespaces[i]->d_name);
+
+	item->address = get_nvme_ctrl_attr(ctrl_path, "address");
+	if (!item->address) {
+		fprintf(stderr, "failed to get %s address.\n", name);
+		free_ctrl_list_item(item);
+		ret = -EAGAIN;
+		goto free_namespaces;
+	}
+	item->transport = get_nvme_ctrl_attr(ctrl_path, "transport");
+	if (!item->transport) {
+		fprintf(stderr, "failed to get %s transport.\n", name);
+		free_ctrl_list_item(item);
+		ret = -EAGAIN;
+		goto free_namespaces;
+	}
+	item->state = get_nvme_ctrl_attr(ctrl_path, "state");
+	if (!item->state) {
+		fprintf(stderr, "failed to get %s state.\n", name);
+		free_ctrl_list_item(item);
+		ret = -EAGAIN;
+		goto free_namespaces;
+	}
+
+free_namespaces:
+	for (i = 0; i < n; i++)
+		free(namespaces[i]);
+	free(namespaces);
+
+	return ret;
+}
+
 static char *get_nvme_subsnqn(char *path)
 {
 	char sspath[320];
@@ -1412,10 +1481,15 @@ static int scan_ctrls_filter(const struct dirent *d)
 
 static void free_ctrl_list_item(struct ctrl_list_item *ctrls)
 {
+	int i;
+
 	free(ctrls->name);
 	free(ctrls->transport);
 	free(ctrls->address);
 	free(ctrls->state);
+	for (i = 0; i < ctrls->ns_num; i++)
+		free(ctrls->namespaces[i].name);
+	free(ctrls->namespaces);
 }
 
 static int get_nvme_subsystem_info(char *name, char *path,
@@ -1448,36 +1522,14 @@ static int get_nvme_subsystem_info(char *name, char *path,
 	item->nctrls = n;
 
 	for (i = 0; i < n; i++) {
-		item->ctrls[ccnt].name = strdup(ctrls[i]->d_name);
 
 		snprintf(ctrl_path, sizeof(ctrl_path), "%s/%s", path,
-			 item->ctrls[ccnt].name);
-
-		item->ctrls[ccnt].address =
-				get_nvme_ctrl_attr(ctrl_path, "address");
-		if (!item->ctrls[ccnt].address) {
-			fprintf(stderr, "failed to get controller[%d] address.\n", i);
-			free_ctrl_list_item(&item->ctrls[ccnt]);
-			continue;
-		}
-
-		item->ctrls[ccnt].transport =
-				get_nvme_ctrl_attr(ctrl_path, "transport");
-		if (!item->ctrls[ccnt].transport) {
-			fprintf(stderr, "failed to get controller[%d] transport.\n", i);
-			free_ctrl_list_item(&item->ctrls[ccnt]);
-			continue;
-		}
-
-		item->ctrls[ccnt].state =
-				get_nvme_ctrl_attr(ctrl_path, "state");
-		if (!item->ctrls[ccnt].state) {
-			fprintf(stderr, "failed to get controller[%d] state.\n", i);
-			free_ctrl_list_item(&item->ctrls[ccnt]);
-			continue;
-		}
+			 ctrls[i]->d_name);
 
-		ccnt++;
+		ret = get_nvme_ctrl_info(ctrls[i]->d_name, ctrl_path,
+					 &(item->ctrls[ccnt]));
+		if (!ret)
+			ccnt++;
 	}
 
 	item->nctrls = ccnt;
diff --git a/nvme.h b/nvme.h
index 7c444a4..84eaa9f 100644
--- a/nvme.h
+++ b/nvme.h
@@ -142,11 +142,17 @@ struct list_item {
 	unsigned            block;
 };
 
+struct ns_list_item {
+	char *name;
+};
+
 struct ctrl_list_item {
 	char *name;
 	char *address;
 	char *transport;
 	char *state;
+	int ns_num;
+	struct ns_list_item *namespaces;
 };
 
 struct subsys_list_item {
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
