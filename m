Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907DED7A8C
	for <lists+linux-nvme@lfdr.de>; Tue, 15 Oct 2019 17:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2xxUFZASaopt2Wo1tr8G3Qf9+YmkMEe4NDXWBKeWiKM=; b=Y4x
	RzsAv0YGOH4xdol3ogRlWzpVG5AL5DspXeOXLcQiST/IDG8RtK4Yyw3B5+7M0I7IU9tnNCa/t+pfs
	vOVz3ShEBN3cgplscPfL+Ik58cAgFW5fK/+UV8tRUgqExQxsKxQkaBpjxvWe2R9kw7PjvNNIGlNaG
	ydHai1kgJfNxThFdHngnV2KRnQZCuM4FCwTGDHl6Lkh43KOS4/EddVCy6TZZd6BNh6VDPzmaGUCbv
	M+0HJW4Q822brd3/ZAsOs385MdbAre2kwxvaoimDTUeMkA1OUb88laT+qqzCkVGpkpulnG+8sZBtZ
	Bl9Fpfids1fR1swQYyXp6G5laTWaQkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKP83-0004zL-Tg; Tue, 15 Oct 2019 15:52:55 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKP6g-0003mO-Om
 for linux-nvme@lists.infradead.org; Tue, 15 Oct 2019 15:51:32 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:51:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="370499318"
Received: from unknown (HELO revanth-X299-AORUS-Gaming-3-Pro.lm.intel.com)
 ([10.232.116.91])
 by orsmga005.jf.intel.com with ESMTP; 15 Oct 2019 08:51:28 -0700
From: Revanth Rajashekar <revanth.rajashekar@intel.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: resync include/linux/nvme.h with nvmecli
Date: Tue, 15 Oct 2019 09:54:02 -0600
Message-Id: <20191015155402.10462-1-revanth.rajashekar@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_085130_827711_D0C2E115 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Revanth Rajashekar <revanth.rajashekar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Update enumerations and structures in include/linux/nvme.h
to resync with the nvmecli.

All the updates are mentioned in the ratified NVMe 1.4 spec
https://nvmexpress.org/wp-content/uploads/NVM-Express-1_4-2019.06.10-Ratified.pdf

Signed-off-by: Revanth Rajashekar <revanth.rajashekar@intel.com>
---
 include/linux/nvme.h | 53 +++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 50 insertions(+), 3 deletions(-)

diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index f61d6906e59d..902b7e097f73 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -107,8 +107,22 @@ enum {
 	NVME_REG_AQA	= 0x0024,	/* Admin Queue Attributes */
 	NVME_REG_ASQ	= 0x0028,	/* Admin SQ Base Address */
 	NVME_REG_ACQ	= 0x0030,	/* Admin CQ Base Address */
-	NVME_REG_CMBLOC = 0x0038,	/* Controller Memory Buffer Location */
+	NVME_REG_CMBLOC	= 0x0038,	/* Controller Memory Buffer Location */
 	NVME_REG_CMBSZ	= 0x003c,	/* Controller Memory Buffer Size */
+	NVME_REG_BPINFO	= 0x0040,	/* Boot Partition Information */
+	NVME_REG_BPRSEL	= 0x0044,	/* Boot Partition Read Select */
+	NVME_REG_BPMBL	= 0x0048,	/* Boot Partition Memory Buffer
+					 * Location
+					 */
+	NVME_REG_PMRCAP	= 0x0e00,	/* Persistent Memory Capabilities */
+	NVME_REG_PMRCTL	= 0x0e04,	/* Persistent Memory Region Control */
+	NVME_REG_PMRSTS	= 0x0e08,	/* Persistent Memory Region Status */
+	NVME_REG_PMREBS	= 0x0e0c,	/* Persistent Memory Region Elasticity
+					 * Buffer Size
+					 */
+	NVME_REG_PMRSWTP = 0x0e10,	/* Persistent Memory Region Sustained
+					 * Write Throughput
+					 */
 	NVME_REG_DBS	= 0x1000,	/* SQ 0 Tail Doorbell */
 };

@@ -295,6 +309,14 @@ enum {
 	NVME_CTRL_OACS_DIRECTIVES		= 1 << 5,
 	NVME_CTRL_OACS_DBBUF_SUPP		= 1 << 8,
 	NVME_CTRL_LPA_CMD_EFFECTS_LOG		= 1 << 1,
+	NVME_CTRL_CTRATT_128_ID			= 1 << 0,
+	NVME_CTRL_CTRATT_NON_OP_PSP		= 1 << 1,
+	NVME_CTRL_CTRATT_NVM_SETS		= 1 << 2,
+	NVME_CTRL_CTRATT_READ_RECV_LVLS		= 1 << 3,
+	NVME_CTRL_CTRATT_ENDURANCE_GROUPS	= 1 << 4,
+	NVME_CTRL_CTRATT_PREDICTABLE_LAT	= 1 << 5,
+	NVME_CTRL_CTRATT_NAMESPACE_GRANULARITY	= 1 << 7,
+	NVME_CTRL_CTRATT_UUID_LIST		= 1 << 9,
 };

 struct nvme_lbaf {
@@ -352,6 +374,9 @@ enum {
 	NVME_ID_CNS_NS_PRESENT		= 0x11,
 	NVME_ID_CNS_CTRL_NS_LIST	= 0x12,
 	NVME_ID_CNS_CTRL_LIST		= 0x13,
+	NVME_ID_CNS_SCNDRY_CTRL_LIST	= 0x15,
+	NVME_ID_CNS_NS_GRANULARITY	= 0x16,
+	NVME_ID_CNS_UUID_LIST		= 0x17,
 };

 enum {
@@ -409,7 +434,8 @@ struct nvme_smart_log {
 	__u8			avail_spare;
 	__u8			spare_thresh;
 	__u8			percent_used;
-	__u8			rsvd6[26];
+	__u8			endu_grp_crit_warn_sumry;
+	__u8			rsvd7[25];
 	__u8			data_units_read[16];
 	__u8			data_units_written[16];
 	__u8			host_reads[16];
@@ -423,7 +449,11 @@ struct nvme_smart_log {
 	__le32			warning_temp_time;
 	__le32			critical_comp_time;
 	__le16			temp_sensor[8];
-	__u8			rsvd216[296];
+	__le32			thm_temp1_trans_count;
+	__le32			thm_temp2_trans_count;
+	__le32			thm_temp1_total_time;
+	__le32			thm_temp2_total_time;
+	__u8			rsvd232[280];
 };

 struct nvme_fw_slot_info_log {
@@ -440,6 +470,7 @@ enum {
 	NVME_CMD_EFFECTS_NIC		= 1 << 3,
 	NVME_CMD_EFFECTS_CCC		= 1 << 4,
 	NVME_CMD_EFFECTS_CSE_MASK	= 3 << 16,
+	NVME_CMD_EFFECTS_UUID_SEL	= 1 << 19,
 };

 struct nvme_effects_log {
@@ -563,6 +594,7 @@ enum nvme_opcode {
 	nvme_cmd_compare	= 0x05,
 	nvme_cmd_write_zeroes	= 0x08,
 	nvme_cmd_dsm		= 0x09,
+	nvme_cmd_verify		= 0x0c,
 	nvme_cmd_resv_register	= 0x0d,
 	nvme_cmd_resv_report	= 0x0e,
 	nvme_cmd_resv_acquire	= 0x11,
@@ -806,10 +838,14 @@ enum nvme_admin_opcode {
 	nvme_admin_ns_mgmt		= 0x0d,
 	nvme_admin_activate_fw		= 0x10,
 	nvme_admin_download_fw		= 0x11,
+	nvme_admin_dev_self_test	= 0x14,
 	nvme_admin_ns_attach		= 0x15,
 	nvme_admin_keep_alive		= 0x18,
 	nvme_admin_directive_send	= 0x19,
 	nvme_admin_directive_recv	= 0x1a,
+	nvme_admin_virtual_mgmt		= 0x1c,
+	nvme_admin_nvme_mi_send		= 0x1d,
+	nvme_admin_nvme_mi_recv		= 0x1e,
 	nvme_admin_dbbuf		= 0x7C,
 	nvme_admin_format_nvm		= 0x80,
 	nvme_admin_security_send	= 0x81,
@@ -873,6 +909,7 @@ enum {
 	NVME_FEAT_PLM_CONFIG	= 0x13,
 	NVME_FEAT_PLM_WINDOW	= 0x14,
 	NVME_FEAT_HOST_BEHAVIOR	= 0x16,
+	NVME_FEAT_SANITIZE	= 0x17,
 	NVME_FEAT_SW_PROGRESS	= 0x80,
 	NVME_FEAT_HOST_ID	= 0x81,
 	NVME_FEAT_RESV_MASK	= 0x82,
@@ -883,6 +920,10 @@ enum {
 	NVME_LOG_FW_SLOT	= 0x03,
 	NVME_LOG_CHANGED_NS	= 0x04,
 	NVME_LOG_CMD_EFFECTS	= 0x05,
+	NVME_LOG_DEVICE_SELF_TEST = 0x06,
+	NVME_LOG_TELEMETRY_HOST = 0x07,
+	NVME_LOG_TELEMETRY_CTRL = 0x08,
+	NVME_LOG_ENDURANCE_GROUP = 0x09,
 	NVME_LOG_ANA		= 0x0c,
 	NVME_LOG_DISC		= 0x70,
 	NVME_LOG_RESERVATION	= 0x80,
@@ -1290,7 +1331,11 @@ enum {
 	NVME_SC_SGL_INVALID_OFFSET	= 0x16,
 	NVME_SC_SGL_INVALID_SUBTYPE	= 0x17,

+	NVME_SC_SANITIZE_FAILED		= 0x1C,
+	NVME_SC_SANITIZE_IN_PROGRESS	= 0x1D,
+
 	NVME_SC_NS_WRITE_PROTECTED	= 0x20,
+	NVME_SC_CMD_INTERRUPTED		= 0x21,

 	NVME_SC_LBA_RANGE		= 0x80,
 	NVME_SC_CAP_EXCEEDED		= 0x81,
@@ -1328,6 +1373,8 @@ enum {
 	NVME_SC_NS_NOT_ATTACHED		= 0x11a,
 	NVME_SC_THIN_PROV_NOT_SUPP	= 0x11b,
 	NVME_SC_CTRL_LIST_INVALID	= 0x11c,
+	NVME_SC_BP_WRITE_PROHIBITED	= 0x11e,
+	NVME_SC_PMR_SAN_PROHIBITED	= 0x123,

 	/*
 	 * I/O Command Set Specific - NVM commands:
--
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
