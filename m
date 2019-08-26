Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5179D97D
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 00:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z3Sx5776V1cnkliEbPiu3W735/GbcaIGrxhC6PVN4GM=; b=soP
	84iKtABpiO/BAandOwkSLwyJ5yXr50i+AbGCWK6zwqj5MTZ/rDPsdAO0/uJAn+VQtN6+j4aKIl1Fr
	KRKsmTxodMjyRlIWhJ1oqnqA4WScNffd97bl/mwNEpmwoaRWplr8HwFgBdKLNXM/tIjXsnj9mWUsU
	IPLS9DlPt03RF2UoL29HIORziYptv1Cwex5+fX6IG3NegC2lRHZdlbCbEaqdWfj4GpOb7g3Rjt3z9
	jc4NLsb9eBvXCc3sl6T9oIw9AxYkZ1Fmn/C4CRFaa+zzT7a4yEwIvaxoTSNGei2iAC1ztPGDbTirN
	inOlXMa30SFvUijEZ/PKENYerpOhVUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Nml-0007Mm-5o; Mon, 26 Aug 2019 22:48:27 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2NmS-0007MR-Px
 for linux-nvme@lists.infradead.org; Mon, 26 Aug 2019 22:48:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 15:48:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="191918137"
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 26 Aug 2019 15:48:05 -0700
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-cli: Make 'list' more useful
Date: Mon, 26 Aug 2019 16:46:14 -0600
Message-Id: <20190826224614.22161-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.13.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_154808_872654_6E3F96EC 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The original 'list' subcommand was a bit of an ad-hoc development. Not
a whole lot of forethought was made toward subsystems, multipathing,
multi-namespace capabilities.

Those more complicated topologies we see today have become difficult
for users to visualize and understand the relationships among many
devices co-existing in the same, and 'list' has not kept up with these
complications.

As newer kernels provide more information for user space to discover,
provide a more verbose option to list this information while maintaining
backward compatibility for kernels that do not provide nvme subsystem
suppport.

Much of this patch is the start of a badly needed refactor, so I'd agree
this patch looks a bit messy, but I'm more interested on feedback on the
output.

The following examples are using the column format, however I find the
json output more satisfying.

The old way (no verbose options):

  # nvme list
  Node             SN                   Model                                    Namespace Usage                      Format           FW Rev
  ---------------- -------------------- ---------------------------------------- --------- -------------------------- ---------------- --------
  /dev/nvme0n1     PHLE7200015N6P4BGN-1 7335943:ICDPC5ED2ORA6.4T                 1           3.20  TB /   3.20  TB    512   B +  0 B   QDV1RD07
  /dev/nvme1n1     PHLE7200015N6P4BGN-2 7335943:ICDPC5ED2ORA6.4T                 1           3.20  TB /   3.20  TB    512   B +  0 B   QDV1RD03
  /dev/nvme2n1     CVFT50850022400GGN   INTEL SSDPE2MD400G4                      1         400.09  GB / 400.09  GB      4 KiB +  0 B   8DV101J0
  /dev/nvme3n1     CVMD4215002W1P6DGN   INTEL SSDPEDME012T4                      1           1.20  TB /   1.20  TB      4 KiB +  0 B   8DV101B0
  /dev/nvme4n1     e559e5e004175109     Linux                                    1           3.20  TB /   3.20  TB    512   B +  0 B   5.3.0-rc
  /dev/nvme4n2     e559e5e004175109     Linux                                    1           3.20  TB /   3.20  TB    512   B +  0 B   5.3.0-rc
  /dev/nvme5n1     FUMB5256000J280A     INTEL SSDPED1D140GA                      1         140.04  GB / 140.04  GB    512   B +  0 B   E40A0208

And with the new 'verbose' flag:

  # nvme list -v
  NVM Express Subsystems

  Subsystem        Subsystem-NQN                                                                                    Controllers
  ---------------- ------------------------------------------------------------------------------------------------ ----------------
  nvme-subsys0     nqn.2014.08.org.nvmexpress:8086108ePHLE7200015N6P4BGN-17335943:ICDPC5ED2ORA6.4T                  nvme1
  nvme-subsys1     nqn.2014.08.org.nvmexpress:8086108ePHLE7200015N6P4BGN-27335943:ICDPC5ED2ORA6.4T                  nvme2
  nvme-subsys2     nqn.2014.08.org.nvmexpress:80868086CVFT50850022400GGN  INTEL SSDPE2MD400G4                       nvme0
  nvme-subsys3     nqn.2014.08.org.nvmexpress:80868086CVMD4215002W1P6DGN  INTEL SSDPEDME012T4                       nvme3
  nvme-subsys4     keith-loopback-testnqn                                                                           nvme4, nvme5
  nvme-subsys5     nqn.2014.08.org.nvmexpress:80868086FUMB5256000J280A    INTEL SSDPED1D140GA                       nvme6

  NVM Express Controllers

  Device   SN                   MN                                       FR       TxPort Address        Subsystem    Namespaces
  -------- -------------------- ---------------------------------------- -------- ------ -------------- ------------ ----------------
  nvme1    PHLE7200015N6P4BGN-1 7335943:ICDPC5ED2ORA6.4T                 QDV1RD07 pcie   0000:88:00.0   nvme-subsys0 nvme0n1
  nvme2    PHLE7200015N6P4BGN-2 7335943:ICDPC5ED2ORA6.4T                 QDV1RD03 pcie   0000:89:00.0   nvme-subsys1 nvme1n1
  nvme0    CVFT50850022400GGN   INTEL SSDPE2MD400G4                      8DV101J0 pcie   0000:5e:00.0   nvme-subsys2 nvme2n1
  nvme3    CVMD4215002W1P6DGN   INTEL SSDPEDME012T4                      8DV101B0 pcie   0000:d8:00.0   nvme-subsys3 nvme3n1
  nvme4    e559e5e004175109     Linux                                    5.3.0-rc loop                  nvme-subsys4 nvme4n1, nvme4n2
  nvme5    e559e5e004175109     Linux                                    5.3.0-rc loop                  nvme-subsys4 nvme4n1, nvme4n2
  nvme6    FUMB5256000J280A     INTEL SSDPED1D140GA                      E40A0208 pcie   10001:01:00.0  nvme-subsys5 nvme5n1

  NVM Express Namespaces

  Device       NSID     Usage                      Format           Controllers
  ------------ -------- -------------------------- ---------------- ----------------
  nvme0n1      1          3.20  TB /   3.20  TB    512   B +  0 B   nvme1
  nvme1n1      1          3.20  TB /   3.20  TB    512   B +  0 B   nvme2
  nvme2n1      1        400.09  GB / 400.09  GB      4 KiB +  0 B   nvme0
  nvme3n1      1          1.20  TB /   1.20  TB      4 KiB +  0 B   nvme3
  nvme4n1      1          3.20  TB /   3.20  TB    512   B +  0 B   nvme4, nvme5
  nvme4n2      1          3.20  TB /   3.20  TB    512   B +  0 B   nvme4, nvme5
  nvme5n1      1        140.04  GB / 140.04  GB    512   B +  0 B   nvme6

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 Documentation/nvme-list.txt |   6 +
 json.c                      |   2 +-
 json.h                      |   1 +
 nvme-print.c                | 421 ++++++++++++++++++++++++++++++++++----------
 nvme-print.h                |   4 +-
 nvme.c                      | 416 ++++++++++++++++++++++++++++++++-----------
 nvme.h                      |  53 +++++-
 7 files changed, 704 insertions(+), 199 deletions(-)

diff --git a/Documentation/nvme-list.txt b/Documentation/nvme-list.txt
index a52e14b..22e0081 100644
--- a/Documentation/nvme-list.txt
+++ b/Documentation/nvme-list.txt
@@ -22,6 +22,12 @@ OPTIONS
 	Set the reporting format to 'normal' or 'json'. Only one output
 	format can be used at a time.
 
+-v::
+--verbose::
+	Increase the information in the output, showing nvme subsystems,
+	controllers and namespaces separately and how they're realted to each
+	other.
+
 ENVIRONMENT
 -----------
 PCI_IDS_PATH - Full path of pci.ids file in case nvme could not find it in common locations.
diff --git a/json.c b/json.c
index ee40035..f213fec 100644
--- a/json.c
+++ b/json.c
@@ -173,7 +173,7 @@ void json_free_object(struct json_object *obj)
 	free(obj);
 }
 
-static void json_free_array(struct json_array *array)
+void json_free_array(struct json_array *array)
 {
 	int i;
 
diff --git a/json.h b/json.h
index c4ea531..d78d3db 100644
--- a/json.h
+++ b/json.h
@@ -52,6 +52,7 @@ struct json_object *json_create_object(void);
 struct json_array *json_create_array(void);
 
 void json_free_object(struct json_object *obj);
+void json_free_array(struct json_array *array);
 
 int json_object_add_value_type(struct json_object *obj, const char *name, int type, ...);
 #define json_object_add_value_int(obj, name, val) \
diff --git a/nvme-print.c b/nvme-print.c
index 45cc4ce..a8cb1c7 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -2383,11 +2383,11 @@ void show_lba_status(struct nvme_lba_status *list)
 	}
 }
 
-static void show_list_item(struct list_item list_item)
+static void show_list_item(struct nvme_namespace *n)
 {
-	long long int lba = 1 << list_item.ns.lbaf[(list_item.ns.flbas & 0x0f)].ds;
-	double nsze       = le64_to_cpu(list_item.ns.nsze) * lba;
-	double nuse       = le64_to_cpu(list_item.ns.nuse) * lba;
+	long long lba	= 1 << n->ns.lbaf[(n->ns.flbas & 0x0f)].ds;
+	double nsze	= le64_to_cpu(n->ns.nsze) * lba;
+	double nuse	= le64_to_cpu(n->ns.nuse) * lba;
 
 	const char *s_suffix = suffix_si_get(&nsze);
 	const char *u_suffix = suffix_si_get(&nuse);
@@ -2399,110 +2399,353 @@ static void show_list_item(struct list_item list_item)
 	sprintf(usage,"%6.2f %2sB / %6.2f %2sB", nuse, u_suffix,
 		nsze, s_suffix);
 	sprintf(format,"%3.0f %2sB + %2d B", (double)lba, l_suffix,
-		le16_to_cpu(list_item.ns.lbaf[(list_item.ns.flbas & 0x0f)].ms));
-	printf("%-16s %-*.*s %-*.*s %-9d %-26s %-16s %-.*s\n", list_item.node,
-            (int)sizeof(list_item.ctrl.sn), (int)sizeof(list_item.ctrl.sn), list_item.ctrl.sn,
-            (int)sizeof(list_item.ctrl.mn), (int)sizeof(list_item.ctrl.mn), list_item.ctrl.mn,
-            list_item.nsid, usage, format, (int)sizeof(list_item.ctrl.fr), list_item.ctrl.fr);
+		le16_to_cpu(n->ns.lbaf[(n->ns.flbas & 0x0f)].ms));
+	printf("/dev/%-11s %-*.*s %-*.*s %-9d %-26s %-16s %-.*s\n", n->name,
+		(int)sizeof(n->ctrl->id.sn), (int)sizeof(n->ctrl->id.sn), n->ctrl->id.sn,
+		(int)sizeof(n->ctrl->id.mn), (int)sizeof(n->ctrl->id.mn), n->ctrl->id.mn,
+		n->nsid, usage, format, (int)sizeof(n->ctrl->id.fr), n->ctrl->id.fr);
 }
 
-void show_list_items(struct list_item *list_items, unsigned len)
+static const char dash[] = "---------------------------------------------------------------------------------------------------";
+
+static void show_simple_list(struct nvme_topology *t)
 {
-	unsigned i;
+	int i, j, k;
 
 	printf("%-16s %-20s %-40s %-9s %-26s %-16s %-8s\n",
 	    "Node", "SN", "Model", "Namespace", "Usage", "Format", "FW Rev");
-	printf("%-16s %-20s %-40s %-9s %-26s %-16s %-8s\n",
-            "----------------", "--------------------", "----------------------------------------",
-            "---------", "--------------------------", "----------------", "--------");
-	for (i = 0 ; i < len ; i++)
-		show_list_item(list_items[i]);
+	printf("%-.16s %-.20s %-.40s %-.9s %-.26s %-.16s %-.8s\n", dash, dash,
+		dash, dash, dash, dash, dash);
+
+	for (i = 0; i < t->nr_subsystems; i++) {
+		struct nvme_subsystem *s = &t->subsystems[i];
+
+		for (j = 0; j < s->nr_ctrls; j++) {
+			struct nvme_ctrl *c = &s->ctrls[j];
+
+			for (k = 0; k < c->nr_namespaces; k++) {
+				struct nvme_namespace *n = &c->namespaces[k];
+				show_list_item(n);
+			}
+		}
+
+		for (j = 0; j < s->nr_namespaces; j++) {
+			struct nvme_namespace *n = &s->namespaces[j];
+			show_list_item(n);
+		}
+	}
+}
+
+static void show_details_ns(struct nvme_namespace *n, bool ctrl)
+{
+	long long lba	= 1 << n->ns.lbaf[(n->ns.flbas & 0x0f)].ds;
+	double nsze	= le64_to_cpu(n->ns.nsze) * lba;
+	double nuse	= le64_to_cpu(n->ns.nuse) * lba;
+
+	const char *s_suffix = suffix_si_get(&nsze);
+	const char *u_suffix = suffix_si_get(&nuse);
+	const char *l_suffix = suffix_binary_get(&lba);
+
+	char usage[128];
+	char format[128];
+
+	sprintf(usage,"%6.2f %2sB / %6.2f %2sB", nuse, u_suffix,
+		nsze, s_suffix);
+	sprintf(format,"%3.0f %2sB + %2d B", (double)lba, l_suffix,
+		le16_to_cpu(n->ns.lbaf[(n->ns.flbas & 0x0f)].ms));
+
+	printf("%-12s %-8x %-26s %-16s ", n->name, n->nsid, usage, format);
+
+	if (ctrl)
+		printf("%s", n->ctrl->name);
+	else {
+		struct nvme_subsystem *s = n->ctrl->subsys;
+		int i;
+
+		for (i = 0; i < s->nr_ctrls; i++)
+			printf("%s%s", i ? ", " : "", s->ctrls[i].name);
+	}
+	printf("\n");
+}
+
+static void show_detailed_list(struct nvme_topology *t)
+{
+	int i, j, k;
+
+	printf("NVM Express Subsystems\n\n");
+	printf("%-16s %-96s %-.16s\n", "Subsystem", "Subsystem-NQN", "Controllers");
+	printf("%-.16s %-.96s %-.16s\n", dash, dash, dash);
+	for (i = 0; i < t->nr_subsystems; i++) {
+		struct nvme_subsystem *s = &t->subsystems[i];
+
+		printf("%-16s %-96s ", s->name, s->subsysnqn);
+		for (j = 0; j < s->nr_ctrls; j++) {
+			struct nvme_ctrl *c = &s->ctrls[j];
 
+			printf("%s%s", j ? ", " : "", c->name);
+		}
+		printf("\n");
+	};
+
+	printf("\nNVM Express Controllers\n\n");
+	printf("%-8s %-20s %-40s %-8s %-6s %-14s %-12s %-16s\n", "Device",
+		"SN", "MN", "FR", "TxPort", "Address", "Subsystem", "Namespaces");
+	printf("%-.8s %-.20s %-.40s %-.8s %-.6s %-.14s %-.12s %-.16s\n", dash, dash,
+		dash, dash, dash, dash, dash, dash);
+	for (i = 0; i < t->nr_subsystems; i++) {
+		struct nvme_subsystem *s = &t->subsystems[i];
+
+		for (j = 0; j < s->nr_ctrls; j++) {
+			bool comma = false;
+			struct nvme_ctrl *c = &s->ctrls[j];
+
+			printf("%-8s %-.20s %-.40s %-.8s %-6s %-14s %-12s ",
+				c->name, c->id.sn, c->id.mn, c->id.fr,
+				c->transport, c->address, s->name);
+
+			for (k = 0; k < c->nr_namespaces; k++) {
+				struct nvme_namespace *n = &c->namespaces[k];
+				printf("%s%s", comma ? ", " : "", n->name);
+			}
+			for (k = 0; k < s->nr_namespaces; k++) {
+				struct nvme_namespace *n = &s->namespaces[k];
+				printf("%s%s", comma ? ", " : "", n->name);
+			}
+			printf("\n");
+		}
+	}
+
+	printf("\nNVM Express Namespaces\n\n");
+	printf("%-12s %-8s %-26s %-16s %-16s\n", "Device", "NSID", "Usage", "Format", "Controllers");
+	printf("%-.12s %-.8s %-.26s %-.16s %-.16s\n", dash, dash, dash, dash, dash);
+
+	for (i = 0; i < t->nr_subsystems; i++) {
+		struct nvme_subsystem *s = &t->subsystems[i];
+
+		for (j = 0; j < s->nr_ctrls; j++) {
+			struct nvme_ctrl *c = &s->ctrls[j];
+
+			for (k = 0; k < c->nr_namespaces; k++) {
+				struct nvme_namespace *n = &c->namespaces[k];
+				show_details_ns(n, true);
+			}
+		}
+		for (j = 0; j < s->nr_namespaces; j++) {
+			struct nvme_namespace *n = &s->namespaces[j];
+			show_details_ns(n, false);
+		}
+	}
 }
 
-void json_print_list_items(struct list_item *list_items, unsigned len)
+void show_list_items(struct nvme_topology *t, unsigned verbose)
+{
+	switch (verbose) {
+	case 0:
+		show_simple_list(t);
+		break;
+	case 1:
+	default:
+		show_detailed_list(t);
+		break;
+	}
+}
+
+static void json_simple_ns(struct nvme_namespace *n, struct json_array *devices)
+{
+	struct json_object *device_attrs;
+	char formatter[41] = { 0 };
+	double nsze, nuse;
+	int index = -1;
+	long long lba;
+	char *devnode;
+
+	if (asprintf(&devnode, "/dev/%s", n->name) < 0)
+		return;
+
+	device_attrs = json_create_object();
+	json_object_add_value_int(device_attrs, "NameSpace", n->nsid);
+
+	json_object_add_value_string(device_attrs, "DevicePath", devnode);
+	free(devnode);
+
+	format(formatter, sizeof(formatter),
+			   n->ctrl->id.fr,
+			   sizeof(n->ctrl->id.fr));
+
+	json_object_add_value_string(device_attrs, "Firmware", formatter);
+
+	if (sscanf(n->ctrl->name, "nvme%d", &index) == 1)
+		json_object_add_value_int(device_attrs, "Index", index);
+
+	format(formatter, sizeof(formatter),
+		       n->ctrl->id.mn,
+		       sizeof(n->ctrl->id.mn));
+
+	json_object_add_value_string(device_attrs, "ModelNumber", formatter);
+
+	if (index >= 0) {
+		char *product = nvme_product_name(index);
+
+		json_object_add_value_string(device_attrs, "ProductName", product);
+		free((void*)product);
+	}
+
+	format(formatter, sizeof(formatter),
+	       n->ctrl->id.sn,
+	       sizeof(n->ctrl->id.sn));
+
+	json_object_add_value_string(device_attrs, "SerialNumber", formatter);
+
+	lba = 1 << n->ns.lbaf[(n->ns.flbas & 0x0f)].ds;
+	nsze = le64_to_cpu(n->ns.nsze) * lba;
+	nuse = le64_to_cpu(n->ns.nuse) * lba;
+
+	json_object_add_value_uint(device_attrs, "UsedBytes", nuse);
+	json_object_add_value_uint(device_attrs, "MaximumLBA",
+				  le64_to_cpu(n->ns.nsze));
+	json_object_add_value_uint(device_attrs, "PhysicalSize", nsze);
+	json_object_add_value_uint(device_attrs, "SectorSize", lba);
+
+	json_array_add_value_object(devices, device_attrs);
+}
+
+static void json_simple_list(struct nvme_topology *t)
 {
 	struct json_object *root;
 	struct json_array *devices;
-	struct json_object *device_attrs;
+	int i, j, k;
+
+	root = json_create_object();
+	devices = json_create_array();
+	for (i = 0; i < t->nr_subsystems; i++) {
+		struct nvme_subsystem *s = &t->subsystems[i];
+
+		for (j = 0; j < s->nr_ctrls; j++) {
+			struct nvme_ctrl *c = &s->ctrls[j];
+
+			for (k = 0; k < c->nr_namespaces; k++) {
+				struct nvme_namespace *n = &c->namespaces[k];
+				json_simple_ns(n, devices);
+			}
+		}
+
+		for (j = 0; j < s->nr_namespaces; j++) {
+			struct nvme_namespace *n = &s->namespaces[j];
+			json_simple_ns(n, devices);
+		}
+	}
+	json_object_add_value_array(root, "Devices", devices);
+	json_print_object(root, NULL);
+}
+
+static void json_detail_ns(struct nvme_namespace *n, struct json_object *ns_attrs)
+{
+	long long lba;
+	double nsze, nuse;
+
+	lba = 1 << n->ns.lbaf[(n->ns.flbas & 0x0f)].ds;
+	nsze = le64_to_cpu(n->ns.nsze) * lba;
+	nuse = le64_to_cpu(n->ns.nuse) * lba;
+
+	json_object_add_value_string(ns_attrs, "NameSpace", n->name);
+	json_object_add_value_uint(ns_attrs, "NSID", n->nsid);
+
+	json_object_add_value_uint(ns_attrs, "UsedBytes", nuse);
+	json_object_add_value_uint(ns_attrs, "MaximumLBA",
+		le64_to_cpu(n->ns.nsze));
+	json_object_add_value_uint(ns_attrs, "PhysicalSize", nsze);
+	json_object_add_value_uint(ns_attrs, "SectorSize", lba);
+}
+
+static void json_detail_list(struct nvme_topology *t)
+{
+	int i, j, k;
+	struct json_object *root;
+	struct json_array *devices;
 	char formatter[41] = { 0 };
-	int index, i = 0;
-	char *product;
-	long long int lba;
-	double nsze;
-	double nuse;
 
 	root = json_create_object();
 	devices = json_create_array();
-	for (i = 0; i < len; i++) {
-		device_attrs = json_create_object();
-
-	    json_object_add_value_int(device_attrs,
-	                              "NameSpace",
-	                              list_items[i].nsid);
-
-		json_object_add_value_string(device_attrs,
-					     "DevicePath",
-					     list_items[i].node);
-
-		format(formatter, sizeof(formatter),
-			   list_items[i].ctrl.fr,
-			   sizeof(list_items[i].ctrl.fr));
-
-		json_object_add_value_string(device_attrs,
-					     "Firmware",
-					     formatter);
-
-		if (sscanf(list_items[i].node, "/dev/nvme%d", &index) == 1)
-			json_object_add_value_int(device_attrs,
-						  "Index",
-						  index);
-
-		format(formatter, sizeof(formatter),
-		       list_items[i].ctrl.mn,
-		       sizeof(list_items[i].ctrl.mn));
-
-		json_object_add_value_string(device_attrs,
-					     "ModelNumber",
-					     formatter);
-
-		product = nvme_product_name(index);
-
-		json_object_add_value_string(device_attrs,
-					     "ProductName",
-					     product);
-
-		format(formatter, sizeof(formatter),
-		       list_items[i].ctrl.sn,
-		       sizeof(list_items[i].ctrl.sn));
-
-		json_object_add_value_string(device_attrs,
-					     "SerialNumber",
-					     formatter);
-
-		json_array_add_value_object(devices, device_attrs);
-
-		lba = 1 << list_items[i].ns.lbaf[(list_items[i].ns.flbas & 0x0f)].ds;
-		nsze = le64_to_cpu(list_items[i].ns.nsze) * lba;
-		nuse = le64_to_cpu(list_items[i].ns.nuse) * lba;
-		json_object_add_value_uint(device_attrs,
-					  "UsedBytes",
-					  nuse);
-		json_object_add_value_uint(device_attrs,
-					  "MaximumLBA",
-					  le64_to_cpu(list_items[i].ns.nsze));
-		json_object_add_value_uint(device_attrs,
-					  "PhysicalSize",
-					  nsze);
-		json_object_add_value_uint(device_attrs,
-					  "SectorSize",
-					  lba);
 
-		free((void*)product);
+	for (i = 0; i < t->nr_subsystems; i++) {
+		struct nvme_subsystem *s = &t->subsystems[i];
+		struct json_object *subsys_attrs;
+		struct json_array *namespaces, *ctrls;
+
+		subsys_attrs = json_create_object();
+		json_object_add_value_string(subsys_attrs, "Subsystem", s->name);
+		json_object_add_value_string(subsys_attrs, "SubsystemNQN", s->subsysnqn);
+
+		ctrls = json_create_array();
+		json_object_add_value_array(subsys_attrs, "Controllers", ctrls);
+		for (j = 0; j < s->nr_ctrls; j++) {
+			struct json_object *ctrl_attrs = json_create_object();
+			struct nvme_ctrl *c = &s->ctrls[j];
+			struct json_array *namespaces;
+
+			json_object_add_value_string(ctrl_attrs, "Controller", c->name);
+			json_object_add_value_string(ctrl_attrs, "Transport", c->transport);
+			json_object_add_value_string(ctrl_attrs, "Address", c->address);
+			json_object_add_value_string(ctrl_attrs, "State", c->state);
+
+			format(formatter, sizeof(formatter), c->id.fr, sizeof(c->id.fr));
+			json_object_add_value_string(ctrl_attrs, "Firmware", formatter);
+
+			format(formatter, sizeof(formatter), c->id.mn, sizeof(c->id.mn));
+			json_object_add_value_string(ctrl_attrs, "ModelNumber", formatter);
+
+			format(formatter, sizeof(formatter), c->id.sn, sizeof(c->id.sn));
+			json_object_add_value_string(ctrl_attrs, "SerialNumber", formatter);
+
+			namespaces = json_create_array();
+
+			for (k = 0; k < c->nr_namespaces; k++) {
+				struct json_object *ns_attrs = json_create_object();
+				struct nvme_namespace *n = &c->namespaces[k];
+
+				json_detail_ns(n, ns_attrs);
+				json_array_add_value_object(namespaces, ns_attrs);
+			}
+			if (k)
+				json_object_add_value_array(ctrl_attrs, "Namespaces", namespaces);
+			else
+				json_free_array(namespaces);
+
+			json_array_add_value_object(ctrls, ctrl_attrs);
+		}
+
+		namespaces = json_create_array();
+		for (k = 0; k < s->nr_namespaces; k++) {
+			struct json_object *ns_attrs = json_create_object();
+			struct nvme_namespace *n = &s->namespaces[k];
+
+			json_detail_ns(n, ns_attrs);
+			json_array_add_value_object(namespaces, ns_attrs);
+		}
+		if (k)
+			json_object_add_value_array(subsys_attrs, "Namespaces", namespaces);
+		else
+			json_free_array(namespaces);
+
+		json_array_add_value_object(devices, subsys_attrs);
 	}
-	if (i)
-		json_object_add_value_array(root, "Devices", devices);
+
+	json_object_add_value_array(root, "Devices", devices);
 	json_print_object(root, NULL);
+	printf("\n");
+	json_free_object(root);
+}
+
+void json_print_list_items(struct nvme_topology *t, unsigned verbose)
+{
+	switch (verbose) {
+	case 0:
+		json_simple_list(t);
+		break;
+	default:
+		json_detail_list(t);
+		break;
+	}
 }
 
 void json_nvme_id_ns(struct nvme_id_ns *ns, unsigned int mode)
diff --git a/nvme-print.h b/nvme-print.h
index 340ba68..daccb0b 100644
--- a/nvme-print.h
+++ b/nvme-print.h
@@ -37,7 +37,7 @@ void show_ctrl_registers(void *bar, unsigned int mode, bool fabrics);
 void show_single_property(int offset, uint64_t prop, int human);
 void show_nvme_id_ns_descs(void *data);
 void show_lba_status(struct nvme_lba_status *list);
-void show_list_items(struct list_item *list_items, unsigned len);
+void show_list_items(struct nvme_topology *t, unsigned verbose);
 void show_nvme_subsystem_list(struct subsys_list_item *slist, int n);
 void show_nvme_id_nvmset(struct nvme_id_nvmset *nvmset);
 void show_nvme_list_secondary_ctrl(const struct nvme_secondary_controllers_list *sc_list, __u32 count);
@@ -64,7 +64,7 @@ void json_fw_log(struct nvme_firmware_log_page *fw_log, const char *devname);
 void json_changed_ns_list_log(struct nvme_changed_ns_list_log *log, const char *devname);
 void json_endurance_log(struct nvme_endurance_group_log *endurance_group,
 			__u16 group_id, const char *devname);
-void json_print_list_items(struct list_item *items, unsigned amnt);
+void json_print_list_items(struct nvme_topology *t, unsigned verbose);
 void json_nvme_id_ns_descs(void *data);
 void json_print_nvme_subsystem_list(struct subsys_list_item *slist, int n);
 void json_self_test_log(struct nvme_self_test_log *self_test, const char *devname);
diff --git a/nvme.c b/nvme.c
index 49c57ee..3990a08 100644
--- a/nvme.c
+++ b/nvme.c
@@ -61,6 +61,7 @@ const char *devicename;
 
 static const char nvme_version_string[] = NVME_VERSION;
 
+
 #define CREATE_CMD
 #include "nvme-builtin.h"
 
@@ -82,6 +83,17 @@ static struct program nvme = {
 	.extensions = &builtin,
 };
 
+static const char *dev = "/dev/";
+static const char *subsys_dir = "/sys/class/nvme-subsystem/";
+static const char *output_format = "Output format: normal|json|binary";
+
+static const char delim_space  = ' ';
+const char *conarg_nqn = "nqn";
+const char *conarg_transport = "transport";
+const char *conarg_traddr = "traddr";
+const char *conarg_trsvcid = "trsvcid";
+const char *conarg_host_traddr = "host_traddr";
+
 static unsigned long long elapsed_utime(struct timeval start_time,
 					struct timeval end_time)
 {
@@ -150,8 +162,6 @@ int parse_and_open(int argc, char **argv, const char *desc,
 	return ret;
 }
 
-static const char *output_format = "Output format: normal|json|binary";
-
 int validate_output_format(char *format)
 {
 	if (!format)
@@ -1354,8 +1364,6 @@ static void *get_registers(void)
 	return membase;
 }
 
-static const char *subsys_dir = "/sys/class/nvme-subsystem/";
-
 static char *get_nvme_subsnqn(char *path)
 {
 	char sspath[320];
@@ -1444,6 +1452,19 @@ err_free_path:
 	return NULL;
 }
 
+static int scan_namespace_filter(const struct dirent *d)
+{
+	int i, n;
+
+	if (d->d_name[0] == '.')
+		return 0;
+
+	if (strstr(d->d_name, "nvme"))
+		if (sscanf(d->d_name, "nvme%dn%d", &i, &n) == 2)
+			return 1;
+	return 0;
+}
+
 static int scan_ctrl_paths_filter(const struct dirent *d)
 {
 	int id, cntlid, nsid;
@@ -1533,7 +1554,9 @@ static int scan_ctrls_filter(const struct dirent *d)
 	if (strstr(d->d_name, "nvme")) {
 		if (sscanf(d->d_name, "nvme%dn%d", &id, &nsid) == 2)
 			return 0;
-		return 1;
+		if (sscanf(d->d_name, "nvme%dn", &id) == 1)
+			return 1;
+		return 0;
 	}
 
 	return 0;
@@ -1552,13 +1575,6 @@ static void free_ctrl_list_item(struct ctrl_list_item *ctrls)
 	free(ctrls->host_traddr);
 }
 
-static const char delim_space  = ' ';
-const char *conarg_nqn = "nqn";
-const char *conarg_transport = "transport";
-const char *conarg_traddr = "traddr";
-const char *conarg_trsvcid = "trsvcid";
-const char *conarg_host_traddr = "host_traddr";
-
 /*
  * parse strings with connect arguments to find a particular field.
  * If field found, return string containing field value. If field
@@ -1883,137 +1899,337 @@ ret:
 	return nvme_status_to_errno(ret, false);
 }
 
-static int get_nvme_info(int fd, struct list_item *item, const char *node)
+static int scan_namespace(struct nvme_namespace *n)
 {
-	int err;
+	int ret, fd;
+	char *path;
 
-	err = nvme_identify_ctrl(fd, &item->ctrl);
-	if (err)
-		return err;
-	item->nsid = nvme_get_nsid(fd);
-	if (item->nsid <= 0)
-		return item->nsid;
-	err = nvme_identify_ns(fd, item->nsid,
-			       0, &item->ns);
-	if (err)
-		return err;
-	strcpy(item->node, node);
-	item->block = S_ISBLK(nvme_stat.st_mode);
+	ret = asprintf(&path, "%s%s", dev, n->name);
+	if (ret < 0)
+		return ret;
+
+	fd = open(path, O_RDONLY);
+	if (fd < 0)
+		goto free;
 
+	n->nsid = get_nsid(fd);
+	ret = nvme_identify_ns(fd, n->nsid, 0, &n->ns);
+	if (ret < 0)
+		goto close_fd;
+close_fd:
+	close(fd);
+free:
+	free(path);
 	return 0;
 }
 
-static const char *dev = "/dev/";
+static int scan_ctrl(struct nvme_ctrl *c, char *p)
+{
+	struct nvme_namespace *n;
+	struct dirent **ns;
+	char *path;
+	int i, fd, ret;
+
+	ret = asprintf(&path, "%s/%s", p, c->name);
+	if (ret < 0)
+		return ret;
+
+	c->address = get_nvme_ctrl_attr(path, "address");
+	c->transport = get_nvme_ctrl_attr(path, "transport");
+	c->state = get_nvme_ctrl_attr(path, "state");
+
+	c->nr_namespaces = scandir(path, &ns, scan_namespace_filter, alphasort);
+	c->namespaces = calloc(c->nr_namespaces, sizeof(*n));
+	for (i = 0; i < c->nr_namespaces; i++) {
+		n = &c->namespaces[i];
+		n->name = strdup(ns[i]->d_name);
+		n->ctrl = c;
+		scan_namespace(n);
+	}
+
+	while (i--)
+		free(ns[i]);
+	free(ns);
+	free(path);
+
+	ret = asprintf(&path, "%s%s", dev, c->name);
+	if (ret < 0)
+		return ret;
+
+	fd = open(path, O_RDONLY);
+	if (fd < 0)
+		goto free;
+
+	ret = nvme_identify_ctrl(fd, &c->id);
+	if (ret < 0)
+		goto close_fd;
+close_fd:
+	close(fd);
+free:
+	free(path);
+	return 0;
+}
+
+static int scan_subsystem(struct nvme_subsystem *s)
+{
+	struct dirent **ctrls, **ns;
+	struct nvme_namespace *n;
+	struct nvme_ctrl *c;
+	int i, ret;
+	char *path;
+
+	ret = asprintf(&path, "%s%s", subsys_dir, s->name);
+	if (ret < 0)
+		return ret;
+
+	s->subsysnqn = get_nvme_subsnqn(path);
+	s->nr_ctrls = scandir(path, &ctrls, scan_ctrls_filter, alphasort);
+	s->ctrls = calloc(s->nr_ctrls, sizeof(*c));
+	for (i = 0; i < s->nr_ctrls; i++) {
+		c = &s->ctrls[i];
+		c->name = strdup(ctrls[i]->d_name);
+		c->subsys = s;
+		scan_ctrl(c, path);
+	}
+
+	while (i--)
+		free(ctrls[i]);
+	free(ctrls);
+
+	s->nr_namespaces = scandir(path, &ns, scan_namespace_filter, alphasort);
+	s->namespaces = calloc(s->nr_namespaces, sizeof(*n));
+	for (i = 0; i < s->nr_namespaces; i++) {
+		n = &s->namespaces[i];
+		n->name = strdup(ns[i]->d_name);
+		n->ctrl = &s->ctrls[0];
+		scan_namespace(n);
+	}
+	while (i--)
+		free(ns[i]);
+	free(ns);
+
+	free(path);
+	return 0;
+}
+
+/* global, used for controller specific namespace filter */
+static int current_index;
 
-/* Assume every block device starting with /dev/nvme is an nvme namespace */
 static int scan_dev_filter(const struct dirent *d)
 {
-	char path[264];
-	struct stat bd;
 	int ctrl, ns, part;
 
 	if (d->d_name[0] == '.')
 		return 0;
 
 	if (strstr(d->d_name, "nvme")) {
-		snprintf(path, sizeof(path), "%s%s", dev, d->d_name);
-		if (stat(path, &bd))
-			return 0;
-		if (!S_ISBLK(bd.st_mode))
-			return 0;
 		if (sscanf(d->d_name, "nvme%dn%dp%d", &ctrl, &ns, &part) == 3)
 			return 0;
-		return 1;
+		if (sscanf(d->d_name, "nvme%dn%d", &ctrl, &ns) == 2)
+			return ctrl == current_index;
+	}
+	return 0;
+}
+
+/* Sanity check that this namespace's parent matches itself */
+static int verify_legacy_ns(struct nvme_namespace *n)
+{
+	struct nvme_ctrl *c = n->ctrl;
+	struct nvme_id_ctrl id;
+	char *path;
+	int ret, fd;
+
+	ret = asprintf(&path, "%s%s", dev, n->name);
+	if (ret < 0)
+		return ret;
+
+	fd = open(path, O_RDONLY);
+	free (path);
+
+	if (fd < 0)
+		return fd;
+
+	ret = nvme_identify_ctrl(fd, &id);
+	close(fd);
+
+	if (ret)
+		return ret;
+
+	if (memcmp(id.mn, c->id.mn, sizeof(id.mn)) ||
+	    memcmp(id.sn, c->id.mn, sizeof(id.sn)))
+		return -ENODEV;
+	return 0;
+}
+
+/*
+ * For pre-subsystem enabled kernel. Topology information is limited, but we can
+ * assume controller names are always a prefix to their namespaces, i.e. nvme0
+ * is the controller to nvme0n1 for such older kernels. We will also assume
+ * every controller is its own subsystem.
+ */
+static int legacy_list(struct nvme_topology *t)
+{
+	struct nvme_ctrl *c;
+	struct nvme_subsystem *s;
+	struct nvme_namespace *n;
+        struct dirent **devices, **namespaces;
+	int ret = 0, fd, i;
+	char *path;
+
+	t->nr_subsystems = scandir(dev, &devices, scan_ctrls_filter, alphasort);
+        if (t->nr_subsystems < 0) {
+		fprintf(stderr, "no NVMe device(s) detected.\n");
+		return t->nr_subsystems;
+        }
+
+	t->subsystems = calloc(t->nr_subsystems, sizeof(*s));
+	for (i = 0; i < t->nr_subsystems; i++) {
+		int j;
+
+		s = &t->subsystems[i];
+		s->nr_ctrls = 1;
+		s->ctrls = calloc(s->nr_ctrls, sizeof(*c));
+		s->name = strdup(devices[i]->d_name);
+		s->subsysnqn = strdup(s->name);
+		s->nr_namespaces = 0;
+
+		c = s->ctrls;
+		c->name = strdup(s->name);
+		sscanf(c->name, "nvme%d", &current_index);
+		c->nr_namespaces = scandir(dev, &namespaces, scan_dev_filter,
+					   alphasort);
+		c->namespaces = calloc(c->nr_namespaces, sizeof(*n));
+
+		for (j = 0; j < c->nr_namespaces; j++) {
+			n = &c->namespaces[j];
+			n->name = strdup(namespaces[j]->d_name);
+			n->ctrl = c;
+			scan_namespace(n);
+			ret = verify_legacy_ns(n);
+			if (ret)
+				goto free;
+		}
+		while (j--)
+			free(namespaces[j]);
+		free(namespaces);
+
+		ret = asprintf(&path, "%s%s", dev, c->name);
+		if (ret < 0)
+			continue;
+		ret = 0;
+
+		fd = open(path, O_RDONLY);
+		if (fd > 0) {
+			nvme_identify_ctrl(fd, &c->id);
+			close(fd);
+		}
+		free(path);
 	}
+
+free:
+	while (i--)
+		free(devices[i]);
+	free(devices);
+	return ret;
+}
+
+static int scan_subsystems(struct nvme_topology *t)
+{
+	struct nvme_subsystem *s;
+	struct dirent **subsys;
+	int i;
+
+	t->nr_subsystems = scandir(subsys_dir, &subsys, scan_subsys_filter, alphasort);
+	if (t->nr_subsystems < 0)
+		return legacy_list(t);
+
+	t->subsystems = calloc(t->nr_subsystems, sizeof(*s));
+	for (i = 0; i < t->nr_subsystems; i++) {
+		s = &t->subsystems[i];
+		s->name = strdup(subsys[i]->d_name);
+		scan_subsystem(s);
+	}
+
+	while (i--)
+		free(subsys[i]);
+	free(subsys);
 	return 0;
 }
 
+static void free_topology(struct nvme_topology *t)
+{
+	int i, j, k;
+
+	for (i = 0; i < t->nr_subsystems; i++) {
+		struct nvme_subsystem *s = &t->subsystems[i];
+
+		for (j = 0; j < s->nr_ctrls; j++) {
+			struct nvme_ctrl *c = &s->ctrls[j];
+
+			for (k = 0; k < c->nr_namespaces; k++) {
+				struct nvme_namespace *n = &c->namespaces[k];
+				free(n->name);
+			}
+			free(c->name);
+			if (c->transport)
+				free(c->transport);
+			if (c->address)
+				free(c->address);
+			if (c->state)
+				free(c->state);
+			if (c->namespaces)
+				free(c->namespaces);
+		}
+		free(s->name);
+		free(s->subsysnqn);
+		free(s->ctrls);
+		free(s->namespaces);
+	}
+	free(t->subsystems);
+}
+
 static int list(int argc, char **argv, struct command *cmd, struct plugin *plugin)
 {
-	char path[264];
-	struct dirent **devices;
-	struct list_item *list_items;
-	unsigned int list_cnt = 0;
-	int fmt, ret, fd, i, n;
 	const char *desc = "Retrieve basic information for all NVMe namespaces";
+	struct nvme_topology t;
+	int fmt, ret = 0;
+
 	struct config {
 		char *output_format;
+		int verbose;
 	};
 
 	struct config cfg = {
 		.output_format = "normal",
+		.verbose = 0,
 	};
 
 	const struct argconfig_commandline_options opts[] = {
-		{"output-format", 'o', "FMT", CFG_STRING, &cfg.output_format, required_argument, "Output Format: normal|json"},
+		{"output-format", 'o', "FMT",  CFG_STRING,    &cfg.output_format, required_argument, "Output Format: normal|json"},
+		{"verbose",       'v', "FLAG", CFG_INCREMENT, &cfg.verbose,       no_argument,       "Increase output verbosity"},
 		{NULL}
 	};
 
 	ret = argconfig_parse(argc, argv, desc, opts, &cfg, sizeof(cfg));
 	if (ret < 0)
-		goto ret;
+		return ret;
 
 	fmt = validate_output_format(cfg.output_format);
+	if (fmt != JSON && fmt != NORMAL)
+		return -EINVAL;
 
-	if (fmt != JSON && fmt != NORMAL) {
-		ret = -EINVAL;
-		goto ret;
-	}
-
-	n = scandir(dev, &devices, scan_dev_filter, alphasort);
-	if (n < 0) {
-		fprintf(stderr, "no NVMe device(s) detected.\n");
-		ret = n;
-		goto ret;
-	}
-
-	list_items = calloc(n, sizeof(*list_items));
-	if (!list_items) {
-		fprintf(stderr, "can not allocate controller list payload\n");
-		ret = -ENOMEM;
-		goto cleanup_devices;
-	}
-
-	for (i = 0; i < n; i++) {
-		snprintf(path, sizeof(path), "%s%s", dev, devices[i]->d_name);
-		fd = open(path, O_RDONLY);
-		if (fd < 0) {
-			fprintf(stderr, "Failed to open %s: %s\n", path,
-					strerror(errno));
-			ret = -errno;
-			goto cleanup_list_items;
-		}
-		ret = get_nvme_info(fd, &list_items[list_cnt], path);
-		close(fd);
-		if (ret == 0) {
-			list_cnt++;
-		}
-		else if (ret > 0) {
-			fprintf(stderr, "identify failed\n");
-			show_nvme_status(ret);
-		}
-		else {
-			fprintf(stderr, "%s: failed to obtain nvme info: %s\n",
-					path, strerror(-ret));
-		}
-	}
-
-	if (list_cnt) {
-		if (fmt == JSON)
-			json_print_list_items(list_items, list_cnt);
-		else
-			show_list_items(list_items, list_cnt);
+	ret = scan_subsystems(&t);
+	if (ret) {
+		fprintf(stderr, "Failed to scan namespaces\n");
+		return ret;
 	}
 
-cleanup_list_items:
-	free(list_items);
-
-cleanup_devices:
-	for (i = 0; i < n; i++)
-		free(devices[i]);
-	free(devices);
-ret:
-	return nvme_status_to_errno(ret, false);
+	if (fmt == JSON)
+		json_print_list_items(&t, cfg.verbose);
+	else
+		show_list_items(&t, cfg.verbose);
+	free_topology(&t);
+	return 0;
 }
 
 /*
diff --git a/nvme.h b/nvme.h
index 7e0278b..f7b9c31 100644
--- a/nvme.h
+++ b/nvme.h
@@ -145,13 +145,52 @@ static inline uint64_t le64_to_cpu(__le64 x)
 	return le64toh((__force __u64)x);
 }
 
-#define MAX_LIST_ITEMS 256
-struct list_item {
-	char                node[1024];
-	struct nvme_id_ctrl ctrl;
-	int                 nsid;
-	struct nvme_id_ns   ns;
-	unsigned            block;
+struct nvme_subsystem;
+struct nvme_ctrl;
+
+struct nvme_namespace {
+	char *name;
+	struct nvme_ctrl *ctrl;
+
+	unsigned nsid;
+	struct nvme_id_ns ns;
+};
+
+struct nvme_path {
+	char *name;
+};
+
+struct nvme_ctrl {
+	char *name;
+	struct nvme_subsystem *subsys;
+
+	char *address;
+	char *transport;
+	char *state;
+
+	struct nvme_id_ctrl id;
+
+	int    nr_namespaces;
+	struct nvme_namespace *namespaces;
+
+	int    nr_paths;
+	struct nvme_path *paths;
+};
+
+struct nvme_subsystem {
+	char *name;
+	char *subsysnqn;
+
+	int    nr_ctrls;
+	struct nvme_ctrl *ctrls;
+
+	int    nr_namespaces;
+	struct nvme_namespace *namespaces;
+};
+
+struct nvme_topology {
+	int    nr_subsystems;
+	struct nvme_subsystem *subsystems;
 };
 
 struct ctrl_list_item {
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
