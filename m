Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD21610DCA
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 22:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2UxstM/hJYQLWNk53+E5kRlYygRs/Xo3HCXpJDP4dUY=; b=AgDd8qFyzF5+go
	e9o/N+EWWAJCYVIt+D2O2EE9KoxpDXpQisAr3RnVhb2ngt+5a/heoqa8ErsUE5JurGOcrVmnXAdIq
	ZcXHfTYD/ZUyasGAuvbZg4UQcOBaCBANIa2Bk4qoPu7JOT0lX7NndpTC/0eCchGSQYV+9hxdTpxSB
	hDT3xRBgXteTz5bU3zMqpnq4M34iGOOYOVEm3lFNvTbM//H7lnCW8zoxzbEFxxUebZM9ycRI2ti1g
	XRGif385hmHT9c+X4ZgR6fhRjYsxuC4RUI+J/1h6ApJcjvHvNAr69p+sC7bFAV+GrcPpkAl9Z/pSg
	qgKrv8/tsW8Hqkj3+jfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvZL-000614-Cq; Wed, 01 May 2019 20:11:07 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvYF-0004iD-DJ
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 20:10:05 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 13:09:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,418,1549958400"; d="scan'208";a="140467359"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga006.jf.intel.com with ESMTP; 01 May 2019 13:09:57 -0700
Received: from fmsmsx102.amr.corp.intel.com ([169.254.10.97]) by
 FMSMSX105.amr.corp.intel.com ([169.254.4.204]) with mapi id 14.03.0415.000;
 Wed, 1 May 2019 13:09:56 -0700
From: "Tay, Kelly" <kelly.tay@intel.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: [RFC/PATCH nvme-cli] nvme list- separate controllers from namespaces
Thread-Topic: [RFC/PATCH nvme-cli] nvme list- separate controllers from
 namespaces
Thread-Index: AdUAWBdkz9mh650ZRvup/gjUVPJZWg==
Date: Wed, 1 May 2019 20:09:55 +0000
Message-ID: <EB8F1E865882C64ABCEDE282942116B98F467B@FMSMSX102.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmExNTZhMGEtMzMyYS00ZTgyLWE1NzQtZjdjZTk2OTJhZWZhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidTBuaHJXU2dzb3dVakN1dFlhWnBSWmtBUyswS05UTW80OGtiSXhIc2hFdFNZXC9USkh0REFiWXozTUxlNGx5VXUifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_130959_819820_6778890E 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kbusch@kernel.org" <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Separated controllers from namespaces on nvme list
-controller that is not enumerating namespaces is still represented to resolve confusion around missing devices
-prevents duplicate printing of data

Signed-off-by: Kelly Tay <kelly.tay@intel.com>
---
 Documentation/nvme-list.1 |  12 +++
 nvme-print.c              | 226 +++++++++++++++++++++++++++++++++++++++++-----
 nvme-print.h              |  10 +-
 nvme.c                    | 182 ++++++++++++++++++++++++++++++-------
 4 files changed, 373 insertions(+), 57 deletions(-)

diff --git a/Documentation/nvme-list.1 b/Documentation/nvme-list.1
index 9fb0989..987657e 100644
--- a/Documentation/nvme-list.1
+++ b/Documentation/nvme-list.1
@@ -33,6 +33,8 @@ nvme-list \- List all recognized NVMe devices
 .sp
 .nf
 \fInvme list\fR [\-o <fmt> | \-\-output\-format=<fmt>]
+		[\-c | \-\-controller]
+		[\-n | \-\-namespace]
 .fi
 .SH "DESCRIPTION"
 .sp
@@ -46,6 +48,16 @@ Set the reporting format to
 or
 \fIjson\fR\&. Only one output format can be used at a time\&.
 .RE
+.PP
+\-c, \-\-controller
+.RS 4
+Include controller devices in output\&.
+.RE
+.PP
+\-n, \-\-namespace
+.RS 4
+Include namespace devices in output\&.
+.RE
 .SH "ENVIRONMENT"
 .sp
 PCI_IDS_PATH \- Full path of pci\&.ids file in case nvme could not find it in common locations\&.
diff --git a/nvme-print.c b/nvme-print.c
index 156a62c..37e9fae 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -2124,7 +2124,28 @@ void nvme_feature_show_fields(__u32 fid, unsigned int result, unsigned char *buf
 	}
 }
 
-static void show_list_item(struct list_item list_item)
+static void show_ctrl_list_item(struct list_item list_item)
+{
+	printf("%-16s %-*.*s %-*.*s %-.*s\n", list_item.node,
+		(int)sizeof(list_item.ctrl.sn), (int)sizeof(list_item.ctrl.sn), list_item.ctrl.sn,
+		(int)sizeof(list_item.ctrl.mn), (int)sizeof(list_item.ctrl.mn), list_item.ctrl.mn,
+		(int)sizeof(list_item.ctrl.fr), list_item.ctrl.fr);
+}
+
+void show_ctrl_list_items(struct list_item *list_items, unsigned int len)
+{
+	unsigned int i;
+
+	printf("%-16s %-20s %-40s %-8s\n",
+		"Node", "SN", "Model", "FW Rev");
+	printf("%-16s %-20s %-40s %-8s\n",
+		"----------------", "--------------------",
+		"----------------------------------------", "--------");
+	for (i = 0 ; i < len ; i++)
+		show_ctrl_list_item(list_items[i]);
+}
+
+static void show_ns_list_item(struct list_item list_item)
 {
 	long long int lba = 1 << list_item.ns.lbaf[(list_item.ns.flbas & 0x0f)].ds;
 	double nsze       = le64_to_cpu(list_item.ns.nsze) * lba;
@@ -2137,43 +2158,164 @@ static void show_list_item(struct list_item list_item)
 	char usage[128];
 	char format[128];
 
-	sprintf(usage,"%6.2f %2sB / %6.2f %2sB", nuse, u_suffix,
+	sprintf(usage, "%6.2f %2sB / %6.2f %2sB", nuse, u_suffix,
 		nsze, s_suffix);
-	sprintf(format,"%3.0f %2sB + %2d B", (double)lba, l_suffix,
+	sprintf(format, "%3.0f %2sB + %2d B", (double)lba, l_suffix,
 		le16_to_cpu(list_item.ns.lbaf[(list_item.ns.flbas & 0x0f)].ms));
-	printf("%-16s %-*.*s %-*.*s %-9d %-26s %-16s %-.*s\n", list_item.node,
-            (int)sizeof(list_item.ctrl.sn), (int)sizeof(list_item.ctrl.sn), list_item.ctrl.sn,
-            (int)sizeof(list_item.ctrl.mn), (int)sizeof(list_item.ctrl.mn), list_item.ctrl.mn,
-            list_item.nsid, usage, format, (int)sizeof(list_item.ctrl.fr), list_item.ctrl.fr);
+	printf("%-16s %-9d %-26s %-16s\n", list_item.node, list_item.nsid, usage, format);
 }
 
-void show_list_items(struct list_item *list_items, unsigned len)
+void show_ns_list_items(struct list_item *list_items, unsigned int len)
 {
-	unsigned i;
+	unsigned int i;
 
-	printf("%-16s %-20s %-40s %-9s %-26s %-16s %-8s\n",
-	    "Node", "SN", "Model", "Namespace", "Usage", "Format", "FW Rev");
-	printf("%-16s %-20s %-40s %-9s %-26s %-16s %-8s\n",
-            "----------------", "--------------------", "----------------------------------------",
-            "---------", "--------------------------", "----------------", "--------");
+	printf("%-16s %-9s %-26s %-16s\n", "Node", "Namespace", "Usage", "Format");
+	printf("%-16s %-9s %-26s %-16s\n",
+		"----------------", "---------", "--------------------------", "----------------");
 	for (i = 0 ; i < len ; i++)
-		show_list_item(list_items[i]);
+		show_ns_list_item(list_items[i]);
+}
+
+void show_list_items(struct list_item *ctrl_list_items, unsigned int ctrl_len,
+				struct list_item *ns_list_items, unsigned int ns_len)
+{
+	unsigned int i, j;
 
+	printf("%-16s %-20s %-40s %-8s\n",
+		"Node", "SN", "Model", "FW Rev");
+	printf("%-16s %-20s %-40s %-8s\n",
+		"----------------", "--------------------",
+		"----------------------------------------", "--------");
+	for (i = 0 ; i < ctrl_len ; i++)
+		show_ctrl_list_item(ctrl_list_items[i]);
+	printf("\n");
+	printf("%-16s %-9s %-26s %-16s\n", "Node", "Namespace", "Usage", "Format");
+	printf("%-16s %-9s %-26s %-16s\n",
+		"----------------", "---------", "--------------------------", "----------------");
+	for (j = 0 ; j < ns_len ; j++)
+		show_ns_list_item(ns_list_items[j]);
 }
 
-void json_print_list_items(struct list_item *list_items, unsigned len)
+void json_print_list_items(struct list_item *ctrl_list_items, unsigned int ctrl_len,
+				struct list_item *ns_list_items, unsigned int ns_len)
 {
 	struct json_object *root;
-	struct json_array *devices;
+	struct json_array *ctrl_devices, *ns_devices;
 	struct json_object *device_attrs;
 	char formatter[41] = { 0 };
-	int index, i = 0;
+	int index, i = 0, j = 0;
 	char *product;
-	long long int lba;
+	long long lba;
 	double nsze;
 	double nuse;
 
 	root = json_create_object();
+	/*Controllers*/
+	ctrl_devices = json_create_array();
+	for (i = 0; i < ctrl_len; i++) {
+		device_attrs = json_create_object();
+
+		json_object_add_value_string(device_attrs,
+						"DevicePath",
+						ctrl_list_items[i].node);
+
+		format(formatter, sizeof(formatter),
+			ctrl_list_items[i].ctrl.fr,
+			sizeof(ctrl_list_items[i].ctrl.fr));
+
+		json_object_add_value_string(device_attrs,
+						"Firmware",
+						formatter);
+
+		if (sscanf(ctrl_list_items[i].node, "/dev/nvme%d", &index) == 1)
+			json_object_add_value_int(device_attrs,
+						"Index",
+						index);
+
+		format(formatter, sizeof(formatter),
+			ctrl_list_items[i].ctrl.mn,
+			sizeof(ctrl_list_items[i].ctrl.mn));
+
+		json_object_add_value_string(device_attrs,
+						"ModelNumber",
+						formatter);
+
+		product = nvme_product_name(index);
+
+		json_object_add_value_string(device_attrs,
+						"ProductName",
+						product);
+
+		format(formatter, sizeof(formatter),
+			ctrl_list_items[i].ctrl.sn,
+			sizeof(ctrl_list_items[i].ctrl.sn));
+
+		json_object_add_value_string(device_attrs,
+						"SerialNumber",
+						formatter);
+
+		json_array_add_value_object(ctrl_devices, device_attrs);
+
+		free((void *)product);
+	}
+	if (i)
+		json_object_add_value_array(root, "Controllers", ctrl_devices);
+	/*Namespaces*/
+	ns_devices = json_create_array();
+	for (j = 0; j < ns_len; j++) {
+		device_attrs = json_create_object();
+
+		json_object_add_value_string(device_attrs,
+					     "DevicePath",
+					     ns_list_items[j].node);
+
+		if (sscanf(ns_list_items[j].node, "/dev/nvme%d", &index) == 1)
+			json_object_add_value_int(device_attrs,
+						  "Index",
+						  index);
+
+		product = nvme_product_name(index);
+
+		json_object_add_value_string(device_attrs,
+					     "ProductName",
+					     product);
+
+		json_array_add_value_object(ns_devices, device_attrs);
+
+		lba = 1 << ns_list_items[j].ns.lbaf[(ns_list_items[j].ns.flbas & 0x0f)].ds;
+		nsze = le64_to_cpu(ns_list_items[j].ns.nsze) * lba;
+		nuse = le64_to_cpu(ns_list_items[j].ns.nuse) * lba;
+		json_object_add_value_uint(device_attrs,
+					  "UsedBytes",
+					  nuse);
+		json_object_add_value_uint(device_attrs,
+					  "MaximumLBA",
+					  le64_to_cpu(ns_list_items[j].ns.nsze));
+		json_object_add_value_uint(device_attrs,
+					  "PhysicalSize",
+					  nsze);
+		json_object_add_value_uint(device_attrs,
+					  "SectorSize",
+					  lba);
+
+		free((void *)product);
+	}
+	if (j)
+		json_object_add_value_array(root, "Namespaces", ns_devices);
+	json_print_object(root, NULL);
+	json_free_object(root);
+}
+
+void json_print_ctrl_list_items(struct list_item *list_items, unsigned int len)
+{
+	struct json_object *root;
+	struct json_array *devices;
+	struct json_object *device_attrs;
+	char formatter[41] = { 0 };
+	int index, i = 0;
+	char *product;
+
+	root = json_create_object();
 	devices = json_create_array();
 	for (i = 0; i < len; i++) {
 		device_attrs = json_create_object();
@@ -2219,6 +2361,47 @@ void json_print_list_items(struct list_item *list_items, unsigned len)
 
 		json_array_add_value_object(devices, device_attrs);
 
+		free((void *)product);
+	}
+	if (i)
+		json_object_add_value_array(root, "Controllers", devices);
+	json_print_object(root, NULL);
+	json_free_object(root);
+}
+
+void json_print_ns_list_items(struct list_item *list_items, unsigned int len)
+{
+	struct json_object *root;
+	struct json_array *devices;
+	struct json_object *device_attrs;
+	int index, i = 0;
+	char *product;
+	long long lba;
+	double nsze;
+	double nuse;
+
+	root = json_create_object();
+	devices = json_create_array();
+	for (i = 0; i < len; i++) {
+		device_attrs = json_create_object();
+
+		json_object_add_value_string(device_attrs,
+					     "DevicePath",
+					     list_items[i].node);
+
+		if (sscanf(list_items[i].node, "/dev/nvme%d", &index) == 1)
+			json_object_add_value_int(device_attrs,
+						  "Index",
+						  index);
+
+		product = nvme_product_name(index);
+
+		json_object_add_value_string(device_attrs,
+					     "ProductName",
+					     product);
+
+		json_array_add_value_object(devices, device_attrs);
+
 		lba = 1 << list_items[i].ns.lbaf[(list_items[i].ns.flbas & 0x0f)].ds;
 		nsze = le64_to_cpu(list_items[i].ns.nsze) * lba;
 		nuse = le64_to_cpu(list_items[i].ns.nuse) * lba;
@@ -2235,11 +2418,12 @@ void json_print_list_items(struct list_item *list_items, unsigned len)
 					  "SectorSize",
 					  lba);
 
-		free((void*)product);
+		free((void *)product);
 	}
 	if (i)
-		json_object_add_value_array(root, "Devices", devices);
+		json_object_add_value_array(root, "Namespaces", devices);
 	json_print_object(root, NULL);
+	json_free_object(root);
 }
 
 void json_nvme_id_ns(struct nvme_id_ns *ns, unsigned int mode)
diff --git a/nvme-print.h b/nvme-print.h
index bfdb007..d4bd027 100644
--- a/nvme-print.h
+++ b/nvme-print.h
@@ -36,7 +36,10 @@ void show_sanitize_log(struct nvme_sanitize_log_page *sanitize, unsigned int mod
 void show_ctrl_registers(void *bar, unsigned int mode, bool fabrics);
 void show_single_property(int offset, uint64_t prop, int human);
 void show_nvme_id_ns_descs(void *data);
-void show_list_items(struct list_item *list_items, unsigned len);
+void show_list_items(struct list_item *ctrl_list_items, unsigned int ctrl_len,
+				struct list_item *ns_list_items, unsigned int ns_len);
+void show_ctrl_list_items(struct list_item *list_items, unsigned int len);
+void show_ns_list_items(struct list_item *list_items, unsigned int len);
 void show_nvme_subsystem_list(struct subsys_list_item *slist, int n);
 void show_nvme_id_nvmset(struct nvme_id_nvmset *nvmset);
 void show_nvme_list_secondary_ctrl(const struct nvme_secondary_controllers_list *sc_list, __u32 count);
@@ -61,7 +64,10 @@ void json_fw_log(struct nvme_firmware_log_page *fw_log, const char *devname);
 void json_changed_ns_list_log(struct nvme_changed_ns_list_log *log, const char *devname);
 void json_endurance_log(struct nvme_endurance_group_log *endurance_group,
 			__u16 group_id, const char *devname);
-void json_print_list_items(struct list_item *items, unsigned amnt);
+void json_print_list_items(struct list_item *ctrl_list_items,
+				unsigned int ctrl_len, struct list_item *ns_list_items, unsigned int ns_len);
+void json_print_ctrl_list_items(struct list_item *items, unsigned int amnt);
+void json_print_ns_list_items(struct list_item *items, unsigned int amnt);
 void json_nvme_id_ns_descs(void *data);
 void json_print_nvme_subsystem_list(struct subsys_list_item *slist, int n);
 void json_self_test_log(struct nvme_self_test_log *self_test, const char *devname);
diff --git a/nvme.c b/nvme.c
index f4c027b..93d8966 100644
--- a/nvme.c
+++ b/nvme.c
@@ -1735,7 +1735,19 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
 	return ret;
 }
 
-static int get_nvme_info(int fd, struct list_item *item, const char *node)
+static int get_ctrl_nvme_info(int fd, struct list_item *item, const char *node)
+{
+	int err;
+
+	err = nvme_identify_ctrl(fd, &item->ctrl);
+	if (err)
+		return err;
+	strcpy(item->node, node);
+
+	return 0;
+}
+
+static int get_ns_nvme_info(int fd, struct list_item *item, const char *node)
 {
 	int err;
 
@@ -1757,8 +1769,29 @@ static int get_nvme_info(int fd, struct list_item *item, const char *node)
 
 static const char *dev = "/dev/";
 
-/* Assume every block device starting with /dev/nvme is an nvme namespace */
-static int scan_dev_filter(const struct dirent *d)
+static int scan_ctrl_dev_filter(const struct dirent *d)
+{
+	char path[264];
+	struct stat cd;
+	int ctrl, ns, part;
+
+	if (d->d_name[0] == '.')
+		return 0;
+
+	if (strstr(d->d_name, "nvme")) {
+		snprintf(path, sizeof(path), "%s%s", dev, d->d_name);
+		if (stat(path, &cd))
+			return 0;
+		if (!S_ISCHR(cd.st_mode))
+			return 0;
+		if (sscanf(d->d_name, "nvme%dn%dp%d", &ctrl, &ns, &part) == 3)
+			return 0;
+		return 1;
+	}
+	return 0;
+}
+
+static int scan_ns_dev_filter(const struct dirent *d)
 {
 	char path[264];
 	struct stat bd;
@@ -1783,21 +1816,28 @@ static int scan_dev_filter(const struct dirent *d)
 static int list(int argc, char **argv, struct command *cmd, struct plugin *plugin)
 {
 	char path[264];
-	struct dirent **devices;
-	struct list_item *list_items;
-	unsigned int list_cnt = 0;
-	int fmt, ret, fd, i, n;
+	struct dirent **ctrl_devices = NULL, **ns_devices = NULL;
+	struct list_item *ctrl_list_items = NULL, *ns_list_items = NULL;
+	unsigned int ns_list_cnt = 0;
+	unsigned int ctrl_list_cnt = 0;
+	int fmt, ret, fd, i, n = 0, m = 0;
 	const char *desc = "Retrieve basic information for the given device";
 	struct config {
 		char *output_format;
+		bool controller;
+		bool namespace;
 	};
 
 	struct config cfg = {
 		.output_format = "normal",
+		.controller = false,
+		.namespace = false,
 	};
 
 	const struct argconfig_commandline_options opts[] = {
 		{"output-format", 'o', "FMT", CFG_STRING, &cfg.output_format, required_argument, "Output Format: normal|json"},
+		{"controller",    'c', "",    CFG_NONE,   &cfg.controller,    no_argument, "Include controller devices in output"},
+		{"namespace",     'n', "",    CFG_NONE,   &cfg.namespace,     no_argument, "Include namespace devices in output"},
 		{NULL}
 	};
 
@@ -1809,58 +1849,132 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 
 	if (fmt != JSON && fmt != NORMAL)
 		return -EINVAL;
+	
+	if (cfg.controller == false && cfg.namespace == false) {
+		cfg.controller = true;
+		cfg.namespace = true;
+	}
 
-	n = scandir(dev, &devices, scan_dev_filter, alphasort);
-	if (n < 0) {
-		fprintf(stderr, "no NVMe device(s) detected.\n");
-		return n;
+	if (cfg.controller) {
+		n = scandir(dev, &ctrl_devices, scan_ctrl_dev_filter, alphasort);
+		if (n < 0) {
+			fprintf(stderr, "Failed to scan controllers: %s\n",
+					strerror(errno));
+			ret = -errno;
+			goto cleanup_devices;
+		}
+
+		ctrl_list_items = calloc(n, sizeof(*ctrl_list_items));
+		if (!ctrl_list_items) {
+			fprintf(stderr, "can not allocate controller list payload\n");
+			ret = -ENOMEM;
+			goto cleanup_devices;
+		}
 	}
+	if (cfg.namespace) {
+		m = scandir(dev, &ns_devices, scan_ns_dev_filter, alphasort);
+		if (m < 0) {
+			fprintf(stderr, "Failed to scan namespaces: %s\n",
+					strerror(errno));
+			ret = -errno;
+			goto cleanup_devices;
+		}
 
-	list_items = calloc(n, sizeof(*list_items));
-	if (!list_items) {
-		fprintf(stderr, "can not allocate controller list payload\n");
-		ret = -ENOMEM;
-		goto cleanup_devices;
+		ns_list_items = calloc(m, sizeof(*ns_list_items));
+		if (!ns_list_items) {
+			fprintf(stderr, "can not allocate namespace list payload\n");
+			ret = -ENOMEM;
+			goto cleanup_devices;
+		}
+	}
+
+	if (n == 0 && m == 0) {
+		fprintf(stderr, "no NVMe device(s) detected.\n");
+		return 0;
 	}
 
 	for (i = 0; i < n; i++) {
-		snprintf(path, sizeof(path), "%s%s", dev, devices[i]->d_name);
+		snprintf(path, sizeof(path), "%s%s", dev, ctrl_devices[i]->d_name);
 		fd = open(path, O_RDONLY);
 		if (fd < 0) {
-			fprintf(stderr, "Failed to open %s: %s\n", path,
+			fprintf(stderr, "Failed to open controller %s: %s\n", path,
 					strerror(errno));
 			ret = -errno;
 			goto cleanup_list_items;
 		}
-		ret = get_nvme_info(fd, &list_items[list_cnt], path);
+
+		ret = get_ctrl_nvme_info(fd, &ctrl_list_items[ctrl_list_cnt], path);
+
 		close(fd);
 		if (ret == 0) {
-			list_cnt++;
+			ctrl_list_cnt++;
+		} else if (ret > 0) {
+			fprintf(stderr, "Controller identify failed\n");
+					show_nvme_status(ret);
+		} else {
+			fprintf(stderr, "%s: failed to obtain controller info: %s\n",
+					path, strerror(-ret));
 		}
-		else if (ret > 0) {
-			fprintf(stderr, "identify failed\n");
-			show_nvme_status(ret);
+	}
+
+	for (i = 0; i < m; i++) {
+		snprintf(path, sizeof(path), "%s%s", dev, ns_devices[i]->d_name);
+		fd = open(path, O_RDONLY);
+		if (fd < 0) {
+			fprintf(stderr, "Failed to open namespace %s: %s\n", path,
+					strerror(errno));
+			ret = -errno;
+			goto cleanup_list_items;
 		}
-		else {
-			fprintf(stderr, "%s: failed to obtain nvme info: %s\n",
+
+		ret = get_ns_nvme_info(fd, &ns_list_items[ns_list_cnt], path);
+
+		close(fd);
+		if (ret == 0) {
+			ns_list_cnt++;
+		} else if (ret > 0) {
+			fprintf(stderr, "Namespace identify failed\n");
+					show_nvme_status(ret);
+		} else {
+			fprintf(stderr, "%s: failed to obtain namespace info: %s\n",
 					path, strerror(-ret));
 		}
 	}
 
-	if (list_cnt) {
+	if (cfg.controller && cfg.namespace) {
+		if (fmt == JSON)
+			json_print_list_items(ctrl_list_items, ctrl_list_cnt, ns_list_items, ns_list_cnt);
+		else
+			show_list_items(ctrl_list_items, ctrl_list_cnt, ns_list_items, ns_list_cnt);
+	} else if (cfg.controller) {
+		if (fmt == JSON)
+			json_print_ctrl_list_items(ctrl_list_items, ctrl_list_cnt);
+		else
+			show_ctrl_list_items(ctrl_list_items, ctrl_list_cnt);
+	} else if (cfg.namespace) {
 		if (fmt == JSON)
-			json_print_list_items(list_items, list_cnt);
+			json_print_ns_list_items(ns_list_items, ns_list_cnt);
 		else
-			show_list_items(list_items, list_cnt);
+			show_ns_list_items(ns_list_items, ns_list_cnt);
 	}
 
- cleanup_list_items:
-	free(list_items);
+cleanup_list_items:
+	if (ctrl_list_items)
+		free(ctrl_list_items);
+	if (ns_list_items)
+		free(ns_list_items);
 
- cleanup_devices:
-	for (i = 0; i < n; i++)
-		free(devices[i]);
-	free(devices);
+cleanup_devices:
+	if (ctrl_devices) {
+		for (i = 0; i < n; i++)
+			free(ctrl_devices[i]);
+		free(ctrl_devices);
+	}
+	if (ns_devices) {
+		for (i = 0; i < m; i++)
+			free(ns_devices[i]);
+		free(ns_devices);
+	}
 
 	return ret;
 }
-- 
1.8.3.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
