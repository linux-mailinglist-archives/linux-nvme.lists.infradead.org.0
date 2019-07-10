Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B12A864F39
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 01:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3+M4HgDXUGr/fzcgpvpeezttfOzzHWo7OcRhMod4bEI=; b=dr5rq0Z5DzDK3FdrfK0Dpim/lF
	m8IJnvqFU26qoz0jqa5nayeYxCNV1/vV4fzo0VM8xf2yW2xO+2BAY/UGP4kbKimznIzW2fxc6IPdI
	MoUsKFeCqHFP91OXXAfAyUi08ZiT6LXDlrThhcFqxTI0BIJVnXGpzkfbhFWv5GAQCZVbTfWXsCblw
	ZaP5rKUyBgaZztQt6nKuaX9ft3/9gRpjEbnqdnRPaGLoHRaqp3GygTllTB5lZ4x/+v3Ldh1NSld98
	Xs8RFBcL5o9j3EyKnpLZILNgKcWA8PGGzmPTXb7dwZskepjTc0ZBtUt/X4xT9JO6cbqggezLZxFX5
	g+I+g7PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlM1b-0000Wt-1f; Wed, 10 Jul 2019 23:29:23 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlM0C-00088u-IG
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 23:27:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id u14so1819826pfn.2
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jul 2019 16:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NqpywSqNv8vJgmG3nmjBSbxpe7mjpBDcHydhahPXwEI=;
 b=ZhOo2NxzAjZUEG5ozN7JlgB7Uk9JL0JZ8+OJWZcheIqaPQy7Zu1J6e51QRCP8i8Upe
 vEkXCEaijqSP/Rbz3ozvgf61U9naVl4AwnCNuh0DMKIgKQkSSI67lY0cyuYCZe4JuFbY
 lVQvfaweJAWlCzWm3nvTZntNcUuFNWbFvArM/FVr5lR+KCsTUq3tPQX4JbcTf7FI77sy
 fRlEu+hirIlzW+B04AlAqSCEWCbplHJyR4LtoZohXLkGPmZqzkkeNJ9kVGK5KoVmvIfA
 eFp9HJZyN8/dDJgYjrKIcK9xppCHTyOEb02K7PzyZK694DeC6I70n7UkBa6XYWP2ymXM
 pTOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NqpywSqNv8vJgmG3nmjBSbxpe7mjpBDcHydhahPXwEI=;
 b=RuJcJUF2qEQ0zZwYdmnHJKVUdT20o54UWr39FYvSr8eFJazJHKa7hv2CdQF90GYymD
 2UjVoJR0r0Eg9uPYYt3xQb+IdoLIeSZGO/qbqLdIjDMd7FLMnnfq9vdBrgdbh/FJiAju
 akw1JiOuy0D0JwOHa725976ALIWnGywMkJkfbMHk4GEXix4SIoHvQqly2wNKpRC/DocN
 qNt/Q62OYA5MBtqJp0f3x3XbZvBX+MfUyGKT/YBnnU1N/RSmjBn/fq8vft5/YtG5bl8N
 LclYc5TmVFkv4BId4OC2AmaKRXtG4ir4HSRdIAZxpdJEz1C0pfeqrdrIdZ3iWE23flWR
 u5XQ==
X-Gm-Message-State: APjAAAVu3QvEx4QMSl59dGmIfa5GviEOC7Kgp8ZtNu6UG1oY40srbRrl
 Be2a7vBwoxbYUreBWExhLMKWXv/q
X-Google-Smtp-Source: APXvYqzYt42siVuwk00GLRNT/ZZo79DbvGel6S9e8TXpLyaWxXbuOACxkNh7eNqsT/HaOStbXEdWbA==
X-Received: by 2002:a17:90a:360b:: with SMTP id
 s11mr1031949pjb.51.1562801275402; 
 Wed, 10 Jul 2019 16:27:55 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n140sm3305478pfd.132.2019.07.10.16.27.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 10 Jul 2019 16:27:54 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc 4/6] nvme-cli: expand --device argument processing
Date: Wed, 10 Jul 2019 16:27:38 -0700
Message-Id: <20190710232740.26734-5-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190710232740.26734-1-jsmart2021@gmail.com>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_162756_609532_8A2CD51E 
X-CRM114-Status: GOOD (  28.95  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Hannes Reinecke <hare@suse.com>, James Smart <jsmart2021@gmail.com>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The connect-all --device argument was used to specify a specific device
to be used as the discovery controller. The device is typically a
long-lived discovery controller that posted a discovery event.
No attempt was made to ensure the device is who it is supposed to be
before using it.

Revised the code to use the other arguments in the connect-all request
to validate that the device is the entity that was expected. If the
device doesn't match, the cli will look for an existing matching device
(will be a discovery controller due to nqn) with the same connect
parameters and use it.  If one is not found on the system, a new
discovery controller will be created for the connect-all request.

To implement this:
- The code that existed in the subsystem listing that gathers
  controller data is split into a service routine that gets a
  controllers info. The subsystem routine uses the new routine.
- The controller list element is extended to have the connect
  argument fields, and the new routine extended to set them.
- As the routine may be called independently of a subsystem,
  the new routine obtains the subsysnqn.
- A simple parse routine was created to search for the connect
  tokens in a connect-all string or the address string for a
  controller.
- a new struct was added containing connect args. This is used
  for subsequent searches and matches.
- A new routine was created that compares the new connect arg
  struct vs a controller list entry's connect args.
- A new routine was created that loops through all controllers
  and attempts to match a controller to a set of connect
  args passed in to search for.
- The --device handling was augmented to extract the connect
  args from the connect-all request, attempt to match the
  device vs the args, and if no match, looks for a match on
  the system. If not match, the default path will create a
  new discovery controller instance (non-persistent).

Signed-off-by: James Smart <jsmart2021@gmail.com>
CC: Sagi Grimberg <sagi@grimberg.me>
CC: Hannes Reinecke <hare@suse.com>
---
 fabrics.c |  38 ++++++++++++
 nvme.c    | 207 +++++++++++++++++++++++++++++++++++++++++++++++++++++---------
 nvme.h    |  21 +++++++
 3 files changed, 236 insertions(+), 30 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 1c5ca9a..73c3a49 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -858,12 +858,50 @@ static int connect_ctrls(struct nvmf_disc_rsp_page_hdr *log, int numrec)
 	return ret;
 }
 
+static const char delim_comma  = ',';
+
 static int do_discover(char *argstr, bool connect)
 {
 	struct nvmf_disc_rsp_page_hdr *log = NULL;
 	char *dev_name;
 	int instance, numrec = 0, ret, err;
 
+	if (cfg.device) {
+		struct connect_args cargs;
+
+		memset(&cargs, 0, sizeof(cargs));
+		cargs.subsysnqn = __parse_connect_arg(argstr, delim_comma,
+						conarg_nqn);
+		cargs.transport = __parse_connect_arg(argstr, delim_comma,
+						conarg_transport);
+		cargs.traddr = __parse_connect_arg(argstr, delim_comma,
+						conarg_traddr);
+		cargs.trsvcid = __parse_connect_arg(argstr, delim_comma,
+						conarg_trsvcid);
+		cargs.host_traddr = __parse_connect_arg(argstr, delim_comma,
+						conarg_host_traddr);
+
+		/*
+		 * if the cfg.device passed in matches the connect args
+		 *    cfg.device is left as-is
+		 * else if there exists a controller that matches the
+		 *         connect args
+		 *    cfg.device is the matching ctrl name
+		 * else if no ctrl matches the connect args
+		 *    cfg.device is set to null. This will attempt to
+		 *    create a new ctrl.
+		 * endif
+		 */
+		if (!ctrl_matches_connectargs(cfg.device, &cargs))
+			cfg.device = find_ctrl_with_connectargs(&cargs);
+
+		free(cargs.subsysnqn);
+		free(cargs.transport);
+		free(cargs.traddr);
+		free(cargs.trsvcid);
+		free(cargs.host_traddr);
+	}
+
 	if (!cfg.device)
 		instance = add_ctrl(argstr);
 	else
diff --git a/nvme.c b/nvme.c
index 9819fcb..cfe1479 100644
--- a/nvme.c
+++ b/nvme.c
@@ -1495,12 +1495,120 @@ static void free_ctrl_list_item(struct ctrl_list_item *ctrls)
 	free(ctrls->address);
 	free(ctrls->state);
 	free(ctrls->ana_state);
+	free(ctrls->subsysnqn);
+	free(ctrls->traddr);
+	free(ctrls->trsvcid);
+	free(ctrls->host_traddr);
+}
+
+static const char delim_space  = ' ';
+const char *conarg_nqn = "nqn";
+const char *conarg_transport = "transport";
+const char *conarg_traddr = "traddr";
+const char *conarg_trsvcid = "trsvcid";
+const char *conarg_host_traddr = "host_traddr";
+
+char *__parse_connect_arg(char *conargs, const char delim, const char *fieldnm)
+{
+	char *s, *e;
+	size_t cnt;
+
+	/*
+	 * Note: by chance, both connect arg strings are set up to
+	 * have traddr field followed by host_traddr field. Thus field
+	 * name matching doesn't overlap. So technically, the loop below
+	 * isn't necessary. But just in case...
+	 */
+	do {
+		s = strstr(conargs, fieldnm);
+		if (!s)
+			goto empty_field;
+		/*
+		 * As there are like field names (traddr vs host_traddr)
+		 * validate prior character is the delimiter. If not,
+		 * skip to next delimeter and resume.
+		 */
+		if (s == conargs || *(s - 1) == delim)
+			break;
+		conargs = strchr(s, delim);
+		if (!conargs)
+			goto empty_field;
+		conargs++;
+	} while (1);
+	s += strlen(fieldnm);
+	if (*s++ != '=')
+		goto empty_field;
+	e = strchr(s, delim);
+	if (e)
+		cnt = e - s;
+	else
+		cnt = strlen(s);
+
+	return strndup(s, cnt);
+
+empty_field:
+	return strdup("\0");
+}
+
+
+static int get_nvme_ctrl_info(char *name, char *path,
+			struct ctrl_list_item *ctrl, __u32 nsid)
+{
+	char ctrl_path[512];
+
+	ctrl->name = strdup(name);
+
+	snprintf(ctrl_path, sizeof(ctrl_path), "%s/%s", path, ctrl->name);
+
+	ctrl->address = get_nvme_ctrl_attr(ctrl_path, "address");
+	if (!ctrl->address) {
+		fprintf(stderr, "%s: failed to get controller address.\n",
+			ctrl->name);
+		goto free_ctrl_items;
+	}
+
+	ctrl->transport = get_nvme_ctrl_attr(ctrl_path, "transport");
+	if (!ctrl->transport) {
+		fprintf(stderr, "%s: failed to get controller transport.\n",
+			ctrl->name);
+		goto free_ctrl_items;
+	}
+
+	ctrl->state = get_nvme_ctrl_attr(ctrl_path, "state");
+	if (!ctrl->state) {
+		fprintf(stderr, "%s: failed to get controller state.\n",
+			ctrl->name);
+		goto free_ctrl_items;
+	}
+
+	if (nsid != NVME_NSID_ALL)
+		ctrl->ana_state = get_nvme_ctrl_path_ana_state(ctrl_path, nsid);
+
+	ctrl->subsysnqn = get_nvme_ctrl_attr(ctrl_path, "subsysnqn");
+	if (!ctrl->subsysnqn) {
+		fprintf(stderr, "%s: failed to get controller subsysnqn.\n",
+			ctrl->name);
+		goto free_ctrl_items;
+	}
+
+	ctrl->traddr = __parse_connect_arg(ctrl->address, delim_space,
+					conarg_traddr);
+	ctrl->trsvcid = __parse_connect_arg(ctrl->address, delim_space,
+					conarg_trsvcid);
+	ctrl->host_traddr = __parse_connect_arg(ctrl->address, delim_space,
+					conarg_host_traddr);
+
+	return 0;	/* success */
+
+free_ctrl_items:
+	free_ctrl_list_item(ctrl);
+
+	return 1;	/* failure */
 }
 
 static int get_nvme_subsystem_info(char *name, char *path,
 				struct subsys_list_item *item, __u32 nsid)
 {
-	char ctrl_path[512];
 	struct dirent **ctrls;
 	int n, i, ret = 1, ccnt = 0;
 
@@ -1527,38 +1635,13 @@ static int get_nvme_subsystem_info(char *name, char *path,
 	item->nctrls = n;
 
 	for (i = 0; i < n; i++) {
-		item->ctrls[ccnt].name = strdup(ctrls[i]->d_name);
-
-		snprintf(ctrl_path, sizeof(ctrl_path), "%s/%s", path,
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
+		if (get_nvme_ctrl_info(ctrls[i]->d_name, path,
+				&item->ctrls[ccnt], nsid)) {
+			fprintf(stderr, "failed to get controller[%d] info.\n",
+					i);
 			continue;
 		}
 
-		if (nsid != NVME_NSID_ALL)
-			item->ctrls[ccnt].ana_state =
-				get_nvme_ctrl_path_ana_state(ctrl_path, nsid);
 		ccnt++;
 	}
 
@@ -1871,6 +1954,70 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 	return ret;
 }
 
+static char *nvme_ctrl_dir = "/sys/class/nvme/";
+
+bool ctrl_matches_connectargs(char *name, struct connect_args *args)
+{
+	struct ctrl_list_item *ctrl;
+	bool found = false;
+
+	ctrl = malloc(sizeof(*ctrl));
+	if (!ctrl) {
+		fprintf(stderr, "Failed to allocate controller list element\n");
+		return false;
+	}
+	memset(ctrl, 0, sizeof(*ctrl));
+
+	if (get_nvme_ctrl_info(name, nvme_ctrl_dir, ctrl, NVME_NSID_ALL))
+		goto cleanup_exit;
+
+	if (!strcmp(ctrl->subsysnqn, args->subsysnqn) &&
+	    !strcmp(ctrl->transport, args->transport) &&
+	    (!strcmp(ctrl->traddr, args->traddr) ||
+	     !strcmp(args->traddr, "none")) &&
+	    (!strcmp(ctrl->trsvcid, args->trsvcid) ||
+	     !strcmp(args->trsvcid, "none")) &&
+	    (!strcmp(ctrl->host_traddr, args->host_traddr) ||
+	     !strcmp(args->host_traddr, "none")))
+		found = true;
+
+cleanup_exit:
+	free_ctrl_list_item(ctrl);
+	free(ctrl);
+
+	return found;
+}
+
+char *find_ctrl_with_connectargs(struct connect_args *args)
+{
+	struct dirent **devices;
+	char *devname = NULL;
+	int i, n;
+
+	n = scandir(nvme_ctrl_dir, &devices, scan_ctrls_filter, alphasort);
+	if (n < 0) {
+		fprintf(stderr, "no NVMe controller(s) detected.\n");
+		return NULL;
+	}
+
+	for (i = 0; i < n; i++) {
+		if (ctrl_matches_connectargs(devices[i]->d_name, args)) {
+			devname = strdup(devices[i]->d_name);
+			if (devname == NULL)
+				fprintf(stderr, "no memory for ctlr name %s\n",
+						devices[i]->d_name);
+			goto cleanup_devices;
+		}
+	}
+
+cleanup_devices:
+	for (i = 0; i < n; i++)
+		free(devices[i]);
+	free(devices);
+
+	return devname;
+}
+
 int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root))
 {
 	const char *desc = "Send an Identify Controller command to "\
diff --git a/nvme.h b/nvme.h
index a149005..5d71541 100644
--- a/nvme.h
+++ b/nvme.h
@@ -148,6 +148,10 @@ struct ctrl_list_item {
 	char *transport;
 	char *state;
 	char *ana_state;
+	char *subsysnqn;
+	char *traddr;
+	char *trsvcid;
+	char *host_traddr;
 };
 
 struct subsys_list_item {
@@ -163,6 +167,23 @@ enum {
 	BINARY,
 };
 
+struct connect_args {
+	char *subsysnqn;
+	char *transport;
+	char *traddr;
+	char *trsvcid;
+	char *host_traddr;
+};
+
+bool ctrl_matches_connectargs(char *name, struct connect_args *args);
+char *find_ctrl_with_connectargs(struct connect_args *args);
+char *__parse_connect_arg(char *conargs, const char delim, const char *fieldnm);
+extern const char *conarg_nqn;
+extern const char *conarg_transport;
+extern const char *conarg_traddr;
+extern const char *conarg_trsvcid;
+extern const char *conarg_host_traddr;
+
 void register_extension(struct plugin *plugin);
 
 #include "argconfig.h"
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
