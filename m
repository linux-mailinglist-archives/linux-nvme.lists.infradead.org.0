Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715DC4C023
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bsI4a2WyuPbclopBh/t47ksowezWLB/QqfcNjJA7TE=; b=jcIlKMrQpJ1TUH
	AnisJIYTcwn6pwVW8zK2wuGmCHV6bhUV/CKgzYCu9BD0unPNHZZAGG0/VhwU4B/8T81bZYEtHSmLz
	oIn0nqGBongR+9KduC2NSBWy129E/G/01nv5Z4C7OzCMRiYcg04VLUMOfNxD4H5yKGPkZuIsyo9R3
	f3/sKC95fzm32tRCC8i49mSOl14fVjl2HclFu4DTysUJNRKYMqhZdyQMBv2Ocmi3oUlXSN70iX1EP
	K5QjufsSUFnswXbSeK3cjazTwXymhx+nVcWDqIXxMZZfA+/AmXf1jeFwKyuTaofgstkWsuqsOtcUd
	u5pyrw/+aMT6SbGhweCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdefq-0003FY-4e; Wed, 19 Jun 2019 17:47:06 +0000
Received: from mail-pg1-f172.google.com ([209.85.215.172])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWJ-0006eM-4n
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:17 +0000
Received: by mail-pg1-f172.google.com with SMTP id 196so56133pgc.6
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SwgUanhPx0dqP3tl8la156ivKFnG/FWXu+fcYajPTww=;
 b=Csf/pN+A/GbMbHotzMU1dBn8VcYabdysTpkvmjpZABA2lBzIrWDypb0xldHK9NZjCe
 VdE9AQCwcR4s2biJbnaAwfA71poY20bSq+zwysWjem9IKd0G+0Ujs4GqBIVVv8vZCxGW
 ApMyWDGJwA0mxex7tlBTeRk3ShJxTk4hC7Vh7k+Yb7zLEJp/7Ib4wUP6WvrhclWC1vAr
 xj3tNCe85edEgveHU7f/Pu5YXvEZQ2e82WjLO28jnpIRhJF04jXeFZt2ci7g0krCk036
 N6tvSJBJC22rif25Cz1RuEkD3QTOjIvQMb0rGEZUQZsamrKgIvOQY4EwrvSFPmWj+C/b
 omsA==
X-Gm-Message-State: APjAAAViK9DzU3JoO3Deh2SylEPh5xIMuAaZFijdfzo+je6oN3HTooSW
 APTWtEWMlhH+Pr0DhhfjJ8M=
X-Google-Smtp-Source: APXvYqzWYD2cGms2j+bNG3bOSXValgYPmTVbPdFux6/ErnlvpNrdFLU2jiKqTB+e1zerpGExK7M7nw==
X-Received: by 2002:aa7:82cd:: with SMTP id
 f13mr131162115pfn.203.1560965833860; 
 Wed, 19 Jun 2019 10:37:13 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:12 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 04/13] seagate: Declare local functions static
Date: Wed, 19 Jun 2019 10:36:52 -0700
Message-Id: <20190619173701.8263-5-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103715_207887_83347BB6 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.172 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org, Muhammad Ahmad <muhammad.ahmad@seagate.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch avoids that sparse complains about missing declarations.

Cc: Muhammad Ahmad <muhammad.ahmad@seagate.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 nvme-models.c                  |  1 +
 plugins/seagate/seagate-nvme.c | 24 +++++++++++++-----------
 2 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/nvme-models.c b/nvme-models.c
index f90ab9574d04..9b5077d0cdbb 100644
--- a/nvme-models.c
+++ b/nvme-models.c
@@ -7,6 +7,7 @@
 #include <fcntl.h>
 #include <unistd.h>
 #include <errno.h>
+#include "nvme-models.h"
 
 static char *_fmt1 = "/sys/class/nvme/nvme%d/device/subsystem_vendor";
 static char *_fmt2 = "/sys/class/nvme/nvme%d/device/subsystem_device";
diff --git a/plugins/seagate/seagate-nvme.c b/plugins/seagate/seagate-nvme.c
index 69f3667d5b16..a93bf8537315 100644
--- a/plugins/seagate/seagate-nvme.c
+++ b/plugins/seagate/seagate-nvme.c
@@ -46,7 +46,7 @@
 /***************************************
 *Command for "log-pages-supp"
 ***************************************/
-char* log_pages_supp_print(__u32 pageID)
+static char *log_pages_supp_print(__u32 pageID)
 {
 	switch(pageID) {
 	case 0x01:
@@ -128,7 +128,7 @@ char* log_pages_supp_print(__u32 pageID)
 }
 
 
-void json_log_pages_supp(log_page_map *logPageMap)
+static void json_log_pages_supp(log_page_map *logPageMap)
 {
 	struct json_object *root;
 	struct json_array *logPages;
@@ -214,7 +214,7 @@ static int log_pages_supp(int argc, char **argv, struct command *cmd,
 /***************************************
 * Extended-SMART Information
 ***************************************/
-char* print_ext_smart_id(__u8 attrId)
+static char *print_ext_smart_id(__u8 attrId)
 {
 	switch(attrId) {
 	case VS_ATTR_ID_SOFT_READ_ERROR_RATE:
@@ -360,7 +360,7 @@ char* print_ext_smart_id(__u8 attrId)
 	}
 }
 
-__u64 smart_attribute_vs(__u16 verNo, SmartVendorSpecific attr)
+static __u64 smart_attribute_vs(__u16 verNo, SmartVendorSpecific attr)
 {
 	__u64 val = 0;
 	vendor_smart_attribute_data *attrVendor;
@@ -376,7 +376,7 @@ __u64 smart_attribute_vs(__u16 verNo, SmartVendorSpecific attr)
 		return le32_to_cpu(attr.Raw0_3);
 }
 
-void print_smart_log(__u16 verNo, SmartVendorSpecific attr, int lastAttr)
+static void print_smart_log(__u16 verNo, SmartVendorSpecific attr, int lastAttr)
 {
 	static __u64 lsbGbErased = 0, msbGbErased = 0, lsbLifWrtToFlash = 0, msbLifWrtToFlash = 0,
 		lsbLifWrtFrmHost = 0, msbLifWrtFrmHost = 0, lsbLifRdToHost = 0, msbLifRdToHost = 0, lsbTrimCnt = 0, msbTrimCnt = 0;
@@ -491,7 +491,8 @@ void print_smart_log(__u16 verNo, SmartVendorSpecific attr, int lastAttr)
 	}
 }
 
-void json_print_smart_log(struct json_object *root, EXTENDED_SMART_INFO_T* ExtdSMARTInfo )
+static void json_print_smart_log(struct json_object *root,
+				 EXTENDED_SMART_INFO_T *ExtdSMARTInfo )
 {
 	/*struct json_object *root; */
 	struct json_array *lbafs;
@@ -606,7 +607,7 @@ void json_print_smart_log(struct json_object *root, EXTENDED_SMART_INFO_T* ExtdS
 	*/
 }
 
-void print_smart_log_CF(vendor_log_page_CF *pLogPageCF)
+static void print_smart_log_CF(vendor_log_page_CF *pLogPageCF)
 {
 	__u64 currentTemp, maxTemp;
 	printf("\n\nSeagate DRAM Supercap SMART Attributes :\n");
@@ -648,7 +649,8 @@ void print_smart_log_CF(vendor_log_page_CF *pLogPageCF)
 
 }
 
-void json_print_smart_log_CF(struct json_object *root, vendor_log_page_CF *pLogPageCF)
+static void json_print_smart_log_CF(struct json_object *root,
+				    vendor_log_page_CF *pLogPageCF)
 {
 	/*struct json_object *root;*/
 	struct json_array *logPages;
@@ -904,7 +906,7 @@ static int temp_stats(int argc, char **argv, struct command *cmd, struct plugin
 /***************************************
  * PCIe error-log information
  ***************************************/
-void print_vs_pcie_error_log(pcie_error_log_page  pcieErrorLog)
+static void print_vs_pcie_error_log(pcie_error_log_page  pcieErrorLog)
 {
 	__u32 correctPcieEc = 0;
 	__u32 uncorrectPcieEc = 0;
@@ -944,7 +946,7 @@ void print_vs_pcie_error_log(pcie_error_log_page  pcieErrorLog)
 	printf("%-45s : %s\n", "Completer Abort Status (CAS)", "Not Supported");
 }
 
-void json_vs_pcie_error_log(pcie_error_log_page  pcieErrorLog)
+static void json_vs_pcie_error_log(pcie_error_log_page pcieErrorLog)
 {
 	struct json_object *root;
 	root = json_create_object();
@@ -1392,7 +1394,7 @@ static int vs_internal_log(int argc, char **argv, struct command *cmd, struct pl
 }
 
 //SEAGATE-PLUGIN Version
-int seagate_plugin_version(int argc, char **argv, struct command *cmd,
+static int seagate_plugin_version(int argc, char **argv, struct command *cmd,
 			   struct plugin *plugin)
 {
 	printf("Seagate-Plugin version : %d.%d \n", SEAGATE_PLUGIN_VERSION_MAJOR, SEAGATE_PLUGIN_VERSION_MINOR);
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
