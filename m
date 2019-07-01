Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC004C01A
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyNar/v6q3XnMKyVRvHp973gGygpKywyReJxml0gVdE=; b=QEKT8SfcZu0SGn
	E1w15SiSDGNMSLiZwxier8qF1K/4SqlzhI5GXP4U4aXGZdSANRxoIJ3ShLyDX2++vM2fnJMkTsgmL
	AX8o4NzXVsPgx9aBlSaRoML0CICeo9rRLajzkYOXskIQZQPku0Zp4ruK3YQMAUuBIUI8OKJOW5jqx
	O+SCZDHSz+HEdjhxmNP6UqZlPDi7pGuwvlbloE+SJmFmp/F1L+c7qSFYYyVdyLjp1bx5E3t4xWIxP
	99eLwO0/29m6jPmpf1qM5/3JFmB+B6BuwCP5DOOmoBsRAHaE4tyht0y4/iwQbAXxRb2MZ1e3BqPSE
	Ss/vCWR43HQUY4gEv+GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdefF-0002or-ED; Wed, 19 Jun 2019 17:46:29 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWF-0006at-Bc
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:15 +0000
Received: by mail-pf1-f194.google.com with SMTP id r1so10169790pfq.12
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OeESkOzJJff9MiJHIvvTZUsYbdGGXHeXRCLtEW8n1P0=;
 b=fbZhvJeQCZgu7nqxihOYYk471bO9E/gYllnnglwSGl66kjV8u1AgHdfchc0J+c0Goh
 ylSRpcbfHMWF5s2G3Zv7gZcbDeuG0n9JcPBs6VUL7g4OkhhrHU9nMNz5jWEsRD04NZMa
 C1i+nAoDbFbWPi53MPhmX6G00tl7wzxH4A2vE3TwQohD/hnwNV99c/KV2ubYeqdADQL/
 BgEZYX1CpAfPlpHA0xmLikBV9u24493ZlqykY5TTGU2SeRNo/DE+kBEq268bpAAveL+h
 6RzGTY3ULsN/3Mjfcqt7zzNOB0CUUJJx4GOgS1iPCnNdAmR1zg9olda98Ner2vLZMb10
 VIJQ==
X-Gm-Message-State: APjAAAUGmBLeQgHcPpx4KOh1w5V8H1op9kPLkFsGYx/+rxAww+cw1O9z
 YLtnwesrMmGk3/DQw4u9k7s=
X-Google-Smtp-Source: APXvYqxWgPcSTm7zSExrnHl0a3+tzBdfyVh0I+e4rJjc3BOnmGNSSwzqE4th/BgiNOmx21J/uICP+g==
X-Received: by 2002:a62:289:: with SMTP id 131mr13592530pfc.200.1560965830044; 
 Wed, 19 Jun 2019 10:37:10 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:09 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 01/13] Remove superfluous casts
Date: Wed, 19 Jun 2019 10:36:49 -0700
Message-Id: <20190619173701.8263-2-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103711_594255_CC45ADC9 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Hannes Reinecke <hare@suse.com>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The le64_to_cpu() definition is as follows:

  #define le64_to_cpu(x) le64toh((__force __u64)(x))

According to the le64toh() man page, the return type of that function
is uint64_t. Hence drop the cast from (uint64_t)le64_to_cpu(x)
expressions. This patch has been generated as follows:

  git ls-tree --name-only -r HEAD |
    while read f; do
      [ -f "$f" ] && sed -i 's/(uint64_t)le64_to_cpu(/le64_to_cpu(/g' "$f"
    done

Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 fabrics.c                      |  2 +-
 nvme-print.c                   | 40 +++++++++---------
 plugins/intel/intel-nvme.c     | 16 +++----
 plugins/seagate/seagate-nvme.c | 26 ++++++------
 plugins/wdc/wdc-nvme.c         | 76 +++++++++++++++++-----------------
 5 files changed, 80 insertions(+), 80 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 9ed4a5684f6c..b17f4061e0b8 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -420,7 +420,7 @@ static void print_discovery_log(struct nvmf_disc_rsp_page_hdr *log, int numrec)
 
 	printf("\nDiscovery Log Number of Records %d, "
 	       "Generation counter %"PRIu64"\n",
-		numrec, (uint64_t)le64_to_cpu(log->genctr));
+		numrec, le64_to_cpu(log->genctr));
 
 	for (i = 0; i < numrec; i++) {
 		struct nvmf_disc_rsp_page_entry *e = &log->entries[i];
diff --git a/nvme-print.c b/nvme-print.c
index b058d73f7b57..ea8f720748ef 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -680,9 +680,9 @@ void show_nvme_id_ns(struct nvme_id_ns *ns, unsigned int mode)
 	int human = mode & HUMAN,
 		vs = mode & VS;
 
-	printf("nsze    : %#"PRIx64"\n", (uint64_t)le64_to_cpu(ns->nsze));
-	printf("ncap    : %#"PRIx64"\n", (uint64_t)le64_to_cpu(ns->ncap));
-	printf("nuse    : %#"PRIx64"\n", (uint64_t)le64_to_cpu(ns->nuse));
+	printf("nsze    : %#"PRIx64"\n", le64_to_cpu(ns->nsze));
+	printf("ncap    : %#"PRIx64"\n", le64_to_cpu(ns->ncap));
+	printf("nuse    : %#"PRIx64"\n", le64_to_cpu(ns->nuse));
 	printf("nsfeat  : %#x\n", ns->nsfeat);
 	if (human)
 		show_nvme_id_ns_nsfeat(ns->nsfeat);
@@ -1221,13 +1221,13 @@ void show_error_log(struct nvme_error_log_page *err_log, int entries, const char
 	for (i = 0; i < entries; i++) {
 		printf(" Entry[%2d]   \n", i);
 		printf(".................\n");
-		printf("error_count  : %"PRIu64"\n", (uint64_t)le64_to_cpu(err_log[i].error_count));
+		printf("error_count  : %"PRIu64"\n", le64_to_cpu(err_log[i].error_count));
 		printf("sqid         : %d\n", err_log[i].sqid);
 		printf("cmdid        : %#x\n", err_log[i].cmdid);
 		printf("status_field : %#x(%s)\n", err_log[i].status_field,
 			nvme_status_to_string(err_log[i].status_field >> 1));
 		printf("parm_err_loc : %#x\n", err_log[i].parm_error_location);
-		printf("lba          : %#"PRIx64"\n",(uint64_t)le64_to_cpu(err_log[i].lba));
+		printf("lba          : %#"PRIx64"\n",le64_to_cpu(err_log[i].lba));
 		printf("nsid         : %#x\n", err_log[i].nsid);
 		printf("vs           : %d\n", err_log[i].vs);
 		printf("cs           : %#"PRIx64"\n", (uint64_t) err_log[i].cs);
@@ -1258,8 +1258,8 @@ void show_nvme_resv_report(struct nvme_reservation_status *status, int bytes, __
 			printf("regctl[%d] :\n", i);
 			printf("  cntlid  : %x\n", le16_to_cpu(status->regctl_ds[i].cntlid));
 			printf("  rcsts   : %x\n", status->regctl_ds[i].rcsts);
-			printf("  hostid  : %"PRIx64"\n", (uint64_t)le64_to_cpu(status->regctl_ds[i].hostid));
-			printf("  rkey    : %"PRIx64"\n", (uint64_t)le64_to_cpu(status->regctl_ds[i].rkey));
+			printf("  hostid  : %"PRIx64"\n", le64_to_cpu(status->regctl_ds[i].hostid));
+			printf("  rkey    : %"PRIx64"\n", le64_to_cpu(status->regctl_ds[i].rkey));
 		}
 	} else {
 		struct nvme_reservation_status_ext *ext_status = (struct nvme_reservation_status_ext *)status;
@@ -1272,7 +1272,7 @@ void show_nvme_resv_report(struct nvme_reservation_status *status, int bytes, __
 			printf("regctlext[%d] :\n", i);
 			printf("  cntlid     : %x\n", le16_to_cpu(ext_status->regctl_eds[i].cntlid));
 			printf("  rcsts      : %x\n", ext_status->regctl_eds[i].rcsts);
-			printf("  rkey       : %"PRIx64"\n", (uint64_t)le64_to_cpu(ext_status->regctl_eds[i].rkey));
+			printf("  rkey       : %"PRIx64"\n", le64_to_cpu(ext_status->regctl_eds[i].rkey));
 			printf("  hostid     : ");
 			for (j = 0; j < 16; j++)
 				printf("%x", ext_status->regctl_eds[i].hostid[j]);
@@ -1518,7 +1518,7 @@ void show_ana_log(struct nvme_ana_rsp_hdr *ana_log, const char *devname)
 			devname);
 	printf("ANA LOG HEADER :-\n");
 	printf("chgcnt	:	%"PRIu64"\n",
-			(uint64_t)le64_to_cpu(hdr->chgcnt));
+			le64_to_cpu(hdr->chgcnt));
 	printf("ngrps	:	%u\n", le16_to_cpu(hdr->ngrps));
 	printf("ANA Log Desc :-\n");
 
@@ -1531,7 +1531,7 @@ void show_ana_log(struct nvme_ana_rsp_hdr *ana_log, const char *devname)
 		printf("grpid	:	%u\n", le32_to_cpu(desc->grpid));
 		printf("nnsids	:	%u\n", le32_to_cpu(desc->nnsids));
 		printf("chgcnt	:	%"PRIu64"\n",
-		       (uint64_t)le64_to_cpu(desc->chgcnt));
+		       le64_to_cpu(desc->chgcnt));
 		printf("state	:	%s\n",
 				nvme_ana_state_to_string(desc->state));
 		for (j = 0; j < le32_to_cpu(desc->nnsids); j++)
@@ -1598,14 +1598,14 @@ void show_self_test_log(struct nvme_self_test_log *self_test, const char *devnam
 		temp = self_test->result[i].valid_diagnostic_info;
 		printf("  Valid Diagnostic Information : %#x\n", temp);
 		printf("  Power on hours (POH)         : %#"PRIx64"\n",
-			(uint64_t)le64_to_cpu(self_test->result[i].power_on_hours));
+			le64_to_cpu(self_test->result[i].power_on_hours));
 
 		if (temp & NVME_SELF_TEST_VALID_NSID)
 			printf("  Namespace Identifier         : %#x\n",
 				le32_to_cpu(self_test->result[i].nsid));
 		if (temp & NVME_SELF_TEST_VALID_FLBA)
 			printf("  Failing LBA                  : %#"PRIx64"\n",
-				(uint64_t)le64_to_cpu(self_test->result[i].failing_lba));
+				le64_to_cpu(self_test->result[i].failing_lba));
 		if (temp & NVME_SELF_TEST_VALID_SCT)
 			printf("  Status Code Type             : %#x\n",
 				self_test->result[i].status_code_type);
@@ -2012,9 +2012,9 @@ static const char *nvme_plm_window(__u32 plm)
 static void show_plm_config(struct nvme_plm_config *plmcfg)
 {
 	printf("\tEnable Event          :%04x\n", le16_to_cpu(plmcfg->enable_event));
-	printf("\tDTWIN Reads Threshold :%"PRIu64"\n", (uint64_t)le64_to_cpu(plmcfg->dtwin_reads_thresh));
-	printf("\tDTWIN Writes Threshold:%"PRIu64"\n", (uint64_t)le64_to_cpu(plmcfg->dtwin_writes_thresh));
-	printf("\tDTWIN Time Threshold  :%"PRIu64"\n", (uint64_t)le64_to_cpu(plmcfg->dtwin_time_thresh));
+	printf("\tDTWIN Reads Threshold :%"PRIu64"\n", le64_to_cpu(plmcfg->dtwin_reads_thresh));
+	printf("\tDTWIN Writes Threshold:%"PRIu64"\n", le64_to_cpu(plmcfg->dtwin_writes_thresh));
+	printf("\tDTWIN Time Threshold  :%"PRIu64"\n", le64_to_cpu(plmcfg->dtwin_time_thresh));
 }
 
 void nvme_feature_show_fields(__u32 fid, unsigned int result, unsigned char *buf)
@@ -2509,8 +2509,8 @@ void json_nvme_resv_report(struct nvme_reservation_status *status, int bytes, __
 
 			json_object_add_value_int(rc, "cntlid", le16_to_cpu(status->regctl_ds[i].cntlid));
 			json_object_add_value_int(rc, "rcsts", status->regctl_ds[i].rcsts);
-			json_object_add_value_uint(rc, "hostid", (uint64_t)le64_to_cpu(status->regctl_ds[i].hostid));
-			json_object_add_value_uint(rc, "rkey", (uint64_t)le64_to_cpu(status->regctl_ds[i].rkey));
+			json_object_add_value_uint(rc, "hostid", le64_to_cpu(status->regctl_ds[i].hostid));
+			json_object_add_value_uint(rc, "rkey", le64_to_cpu(status->regctl_ds[i].rkey));
 
 			json_array_add_value_object(rcs, rc);
 		}
@@ -2529,7 +2529,7 @@ void json_nvme_resv_report(struct nvme_reservation_status *status, int bytes, __
 
 			json_object_add_value_int(rc, "cntlid", le16_to_cpu(ext_status->regctl_eds[i].cntlid));
 			json_object_add_value_int(rc, "rcsts", ext_status->regctl_eds[i].rcsts);
-			json_object_add_value_uint(rc, "rkey", (uint64_t)le64_to_cpu(ext_status->regctl_eds[i].rkey));
+			json_object_add_value_uint(rc, "rkey", le64_to_cpu(ext_status->regctl_eds[i].rkey));
 			for (j = 0; j < 16; j++)
 				sprintf(hostid + j * 2, "%02x", ext_status->regctl_eds[i].hostid[j]);
 
@@ -2717,7 +2717,7 @@ void json_ana_log(struct nvme_ana_rsp_hdr *ana_log, const char *devname)
 			"Asynchronous Namespace Access Log for NVMe device:",
 			devname);
 	json_object_add_value_uint(root, "chgcnt",
-			(uint64_t)le64_to_cpu(hdr->chgcnt));
+			le64_to_cpu(hdr->chgcnt));
 	json_object_add_value_uint(root, "ngrps", le16_to_cpu(hdr->ngrps));
 
 	desc_list = json_create_array();
@@ -2779,7 +2779,7 @@ void json_self_test_log(struct nvme_self_test_log *self_test, const char *devnam
 		if (self_test->result[i].valid_diagnostic_info & NVME_SELF_TEST_VALID_NSID)
 			json_object_add_value_int(valid_attrs, "Namespace Identifier (NSID)", le32_to_cpu(self_test->result[i].nsid));
 		if (self_test->result[i].valid_diagnostic_info & NVME_SELF_TEST_VALID_FLBA)
-			json_object_add_value_uint(valid_attrs, "Failing LBA",(uint64_t)le64_to_cpu(self_test->result[i].failing_lba));
+			json_object_add_value_uint(valid_attrs, "Failing LBA",le64_to_cpu(self_test->result[i].failing_lba));
 		if (self_test->result[i].valid_diagnostic_info & NVME_SELF_TEST_VALID_SCT)
 			json_object_add_value_int(valid_attrs, "Status Code Type",self_test->result[i].status_code_type);
 		if(self_test->result[i].valid_diagnostic_info & NVME_SELF_TEST_VALID_SC)
diff --git a/plugins/intel/intel-nvme.c b/plugins/intel/intel-nvme.c
index 9aaf36768731..37f2c705c90f 100644
--- a/plugins/intel/intel-nvme.c
+++ b/plugins/intel/intel-nvme.c
@@ -322,14 +322,14 @@ static void show_temp_stats(struct intel_temp_stats *stats)
 {
 	printf("  Intel Temperature Statistics\n");
 	printf("--------------------------------\n");
-	printf("Current temperature         : %"PRIu64"\n", (uint64_t)le64_to_cpu(stats->curr));
-	printf("Last critical overtemp flag : %"PRIu64"\n", (uint64_t)le64_to_cpu(stats->last_overtemp));
-	printf("Life critical overtemp flag : %"PRIu64"\n", (uint64_t)le64_to_cpu(stats->life_overtemp));
-	printf("Highest temperature         : %"PRIu64"\n", (uint64_t)le64_to_cpu(stats->highest_temp));
-	printf("Lowest temperature          : %"PRIu64"\n", (uint64_t)le64_to_cpu(stats->lowest_temp));
-	printf("Max operating temperature   : %"PRIu64"\n", (uint64_t)le64_to_cpu(stats->max_operating_temp));
-	printf("Min operating temperature   : %"PRIu64"\n", (uint64_t)le64_to_cpu(stats->min_operating_temp));
-	printf("Estimated offset            : %"PRIu64"\n", (uint64_t)le64_to_cpu(stats->est_offset));
+	printf("Current temperature         : %"PRIu64"\n", le64_to_cpu(stats->curr));
+	printf("Last critical overtemp flag : %"PRIu64"\n", le64_to_cpu(stats->last_overtemp));
+	printf("Life critical overtemp flag : %"PRIu64"\n", le64_to_cpu(stats->life_overtemp));
+	printf("Highest temperature         : %"PRIu64"\n", le64_to_cpu(stats->highest_temp));
+	printf("Lowest temperature          : %"PRIu64"\n", le64_to_cpu(stats->lowest_temp));
+	printf("Max operating temperature   : %"PRIu64"\n", le64_to_cpu(stats->max_operating_temp));
+	printf("Min operating temperature   : %"PRIu64"\n", le64_to_cpu(stats->min_operating_temp));
+	printf("Estimated offset            : %"PRIu64"\n", le64_to_cpu(stats->est_offset));
 }
 
 static int get_temp_stats_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
diff --git a/plugins/seagate/seagate-nvme.c b/plugins/seagate/seagate-nvme.c
index 4fa29d950d9c..4b5b0acb9244 100644
--- a/plugins/seagate/seagate-nvme.c
+++ b/plugins/seagate/seagate-nvme.c
@@ -615,35 +615,35 @@ void print_smart_log_CF(vendor_log_page_CF *pLogPageCF)
 	printf("%-40s", "Super-cap current temperature");
 	currentTemp = pLogPageCF->AttrCF.SuperCapCurrentTemperature;
 	/*currentTemp = currentTemp ? currentTemp - 273 : 0;*/
-	printf(" 0x%016"PRIx64"", (uint64_t)le64_to_cpu(currentTemp));
+	printf(" 0x%016"PRIx64"", le64_to_cpu(currentTemp));
 	printf("\n");
 
 	maxTemp = pLogPageCF->AttrCF.SuperCapMaximumTemperature;
 	/*maxTemp = maxTemp ? maxTemp - 273 : 0;*/
 	printf("%-40s", "Super-cap maximum temperature");
-	printf(" 0x%016"PRIx64"", (uint64_t)le64_to_cpu(maxTemp));
+	printf(" 0x%016"PRIx64"", le64_to_cpu(maxTemp));
 	printf("\n");
 
 	printf("%-40s", "Super-cap status");
-	printf(" 0x%016"PRIx64"", (uint64_t)le64_to_cpu(pLogPageCF->AttrCF.SuperCapStatus));
+	printf(" 0x%016"PRIx64"", le64_to_cpu(pLogPageCF->AttrCF.SuperCapStatus));
 	printf("\n");
 
 	printf("%-40s", "Data units read to DRAM namespace");
-	printf(" 0x%016"PRIx64"%016"PRIx64"", (uint64_t)le64_to_cpu(pLogPageCF->AttrCF.DataUnitsReadToDramNamespace.MS__u64),
-	       (uint64_t)le64_to_cpu(pLogPageCF->AttrCF.DataUnitsReadToDramNamespace.LS__u64));
+	printf(" 0x%016"PRIx64"%016"PRIx64"", le64_to_cpu(pLogPageCF->AttrCF.DataUnitsReadToDramNamespace.MS__u64),
+	       le64_to_cpu(pLogPageCF->AttrCF.DataUnitsReadToDramNamespace.LS__u64));
 	printf("\n");
 
 	printf("%-40s", "Data units written to DRAM namespace");
-	printf(" 0x%016"PRIx64"%016"PRIx64"", (uint64_t)le64_to_cpu(pLogPageCF->AttrCF.DataUnitsWrittenToDramNamespace.MS__u64),
-	       (uint64_t)le64_to_cpu(pLogPageCF->AttrCF.DataUnitsWrittenToDramNamespace.LS__u64));
+	printf(" 0x%016"PRIx64"%016"PRIx64"", le64_to_cpu(pLogPageCF->AttrCF.DataUnitsWrittenToDramNamespace.MS__u64),
+	       le64_to_cpu(pLogPageCF->AttrCF.DataUnitsWrittenToDramNamespace.LS__u64));
 	printf("\n");
 
 	printf("%-40s", "DRAM correctable error count");
-	printf(" 0x%016"PRIx64"", (uint64_t)le64_to_cpu(pLogPageCF->AttrCF.DramCorrectableErrorCount));
+	printf(" 0x%016"PRIx64"", le64_to_cpu(pLogPageCF->AttrCF.DramCorrectableErrorCount));
 	printf("\n");
 
 	printf("%-40s", "DRAM uncorrectable error count");
-	printf(" 0x%016"PRIx64"", (uint64_t)le64_to_cpu(pLogPageCF->AttrCF.DramUncorrectableErrorCount));
+	printf(" 0x%016"PRIx64"", le64_to_cpu(pLogPageCF->AttrCF.DramUncorrectableErrorCount));
 	printf("\n");
 
 }
@@ -682,16 +682,16 @@ void json_print_smart_log_CF(struct json_object *root, vendor_log_page_CF *pLogP
 	lbaf = json_create_object();
 	json_object_add_value_string(lbaf, "attribute_name", "Data units read to DRAM namespace");
 	memset(buf, 0, sizeof(buf));
-	sprintf(buf, "0x%016"PRIx64"%016"PRIx64"", (uint64_t)le64_to_cpu(pLogPageCF->AttrCF.DataUnitsReadToDramNamespace.MS__u64),
-		(uint64_t)le64_to_cpu(pLogPageCF->AttrCF.DataUnitsReadToDramNamespace.LS__u64));
+	sprintf(buf, "0x%016"PRIx64"%016"PRIx64"", le64_to_cpu(pLogPageCF->AttrCF.DataUnitsReadToDramNamespace.MS__u64),
+		le64_to_cpu(pLogPageCF->AttrCF.DataUnitsReadToDramNamespace.LS__u64));
 	json_object_add_value_string(lbaf, "attribute_value", buf);
 	json_array_add_value_object(logPages, lbaf);
 
 	lbaf = json_create_object();
 	json_object_add_value_string(lbaf, "attribute_name", "Data units written to DRAM namespace");
 	memset(buf, 0, sizeof(buf));
-	sprintf(buf, "0x%016"PRIx64"%016"PRIx64"", (uint64_t)le64_to_cpu(pLogPageCF->AttrCF.DataUnitsWrittenToDramNamespace.MS__u64),
-		(uint64_t)le64_to_cpu(pLogPageCF->AttrCF.DataUnitsWrittenToDramNamespace.LS__u64));
+	sprintf(buf, "0x%016"PRIx64"%016"PRIx64"", le64_to_cpu(pLogPageCF->AttrCF.DataUnitsWrittenToDramNamespace.MS__u64),
+		le64_to_cpu(pLogPageCF->AttrCF.DataUnitsWrittenToDramNamespace.LS__u64));
 	json_object_add_value_string(lbaf, "attribute_value", buf);
 	json_array_add_value_object(logPages, lbaf);
 
diff --git a/plugins/wdc/wdc-nvme.c b/plugins/wdc/wdc-nvme.c
index a1cb1ebf766f..a9c86b6eced2 100644
--- a/plugins/wdc/wdc-nvme.c
+++ b/plugins/wdc/wdc-nvme.c
@@ -2125,55 +2125,55 @@ static void wdc_print_log_normal(struct wdc_ssd_perf_stats *perf)
 {
 	printf("  C1 Log Page Performance Statistics :- \n");
 	printf("  Host Read Commands                             %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->hr_cmds));
+			le64_to_cpu(perf->hr_cmds));
 	printf("  Host Read Blocks                               %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->hr_blks));
+			le64_to_cpu(perf->hr_blks));
 	printf("  Average Read Size                              %20lf\n",
 			safe_div_fp((le64_to_cpu(perf->hr_blks)), (le64_to_cpu(perf->hr_cmds))));
 	printf("  Host Read Cache Hit Commands                   %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->hr_ch_cmds));
+			le64_to_cpu(perf->hr_ch_cmds));
 	printf("  Host Read Cache Hit_Percentage                 %20"PRIu64"%%\n",
 			(uint64_t) calc_percent(le64_to_cpu(perf->hr_ch_cmds), le64_to_cpu(perf->hr_cmds)));
 	printf("  Host Read Cache Hit Blocks                     %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->hr_ch_blks));
+			le64_to_cpu(perf->hr_ch_blks));
 	printf("  Average Read Cache Hit Size                    %20f\n",
 			safe_div_fp((le64_to_cpu(perf->hr_ch_blks)), (le64_to_cpu(perf->hr_ch_cmds))));
 	printf("  Host Read Commands Stalled                     %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->hr_st_cmds));
+			le64_to_cpu(perf->hr_st_cmds));
 	printf("  Host Read Commands Stalled Percentage          %20"PRIu64"%%\n",
 			(uint64_t)calc_percent((le64_to_cpu(perf->hr_st_cmds)), le64_to_cpu(perf->hr_cmds)));
 	printf("  Host Write Commands                            %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->hw_cmds));
+			le64_to_cpu(perf->hw_cmds));
 	printf("  Host Write Blocks                              %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->hw_blks));
+			le64_to_cpu(perf->hw_blks));
 	printf("  Average Write Size                             %20f\n",
 			safe_div_fp((le64_to_cpu(perf->hw_blks)), (le64_to_cpu(perf->hw_cmds))));
 	printf("  Host Write Odd Start Commands                  %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->hw_os_cmds));
+			le64_to_cpu(perf->hw_os_cmds));
 	printf("  Host Write Odd Start Commands Percentage       %20"PRIu64"%%\n",
 			(uint64_t)calc_percent((le64_to_cpu(perf->hw_os_cmds)), (le64_to_cpu(perf->hw_cmds))));
 	printf("  Host Write Odd End Commands                    %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->hw_oe_cmds));
+			le64_to_cpu(perf->hw_oe_cmds));
 	printf("  Host Write Odd End Commands Percentage         %20"PRIu64"%%\n",
 			(uint64_t)calc_percent((le64_to_cpu(perf->hw_oe_cmds)), (le64_to_cpu((perf->hw_cmds)))));
 	printf("  Host Write Commands Stalled                    %20"PRIu64"\n",
-		(uint64_t)le64_to_cpu(perf->hw_st_cmds));
+		le64_to_cpu(perf->hw_st_cmds));
 	printf("  Host Write Commands Stalled Percentage         %20"PRIu64"%%\n",
 		(uint64_t)calc_percent((le64_to_cpu(perf->hw_st_cmds)), (le64_to_cpu(perf->hw_cmds))));
 	printf("  NAND Read Commands                             %20"PRIu64"\n",
-		(uint64_t)le64_to_cpu(perf->nr_cmds));
+		le64_to_cpu(perf->nr_cmds));
 	printf("  NAND Read Blocks Commands                      %20"PRIu64"\n",
-		(uint64_t)le64_to_cpu(perf->nr_blks));
+		le64_to_cpu(perf->nr_blks));
 	printf("  Average NAND Read Size                         %20f\n",
 		safe_div_fp((le64_to_cpu(perf->nr_blks)), (le64_to_cpu((perf->nr_cmds)))));
 	printf("  Nand Write Commands                            %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->nw_cmds));
+			le64_to_cpu(perf->nw_cmds));
 	printf("  NAND Write Blocks                              %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->nw_blks));
+			le64_to_cpu(perf->nw_blks));
 	printf("  Average NAND Write Size                        %20f\n",
 			safe_div_fp((le64_to_cpu(perf->nw_blks)), (le64_to_cpu(perf->nw_cmds))));
 	printf("  NAND Read Before Write                         %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->nrbw));
+			le64_to_cpu(perf->nrbw));
 }
 
 static void wdc_print_log_json(struct wdc_ssd_perf_stats *perf)
@@ -2186,49 +2186,49 @@ static void wdc_print_log_json(struct wdc_ssd_perf_stats *perf)
 	json_object_add_value_int(root, "Average Read Size",
 			safe_div_fp((le64_to_cpu(perf->hr_blks)), (le64_to_cpu(perf->hr_cmds))));
 	json_object_add_value_int(root, "Host Read Cache Hit Commands",
-			(uint64_t)le64_to_cpu(perf->hr_ch_cmds));
+			le64_to_cpu(perf->hr_ch_cmds));
 	json_object_add_value_int(root, "Host Read Cache Hit Percentage",
 			(uint64_t) calc_percent(le64_to_cpu(perf->hr_ch_cmds), le64_to_cpu(perf->hr_cmds)));
 	json_object_add_value_int(root, "Host Read Cache Hit Blocks",
-			(uint64_t)le64_to_cpu(perf->hr_ch_blks));
+			le64_to_cpu(perf->hr_ch_blks));
 	json_object_add_value_int(root, "Average Read Cache Hit Size",
 			safe_div_fp((le64_to_cpu(perf->hr_ch_blks)), (le64_to_cpu(perf->hr_ch_cmds))));
 	json_object_add_value_int(root, "Host Read Commands Stalled",
-			(uint64_t)le64_to_cpu(perf->hr_st_cmds));
+			le64_to_cpu(perf->hr_st_cmds));
 	json_object_add_value_int(root, "Host Read Commands Stalled Percentage",
 			(uint64_t)calc_percent((le64_to_cpu(perf->hr_st_cmds)), le64_to_cpu(perf->hr_cmds)));
 	json_object_add_value_int(root, "Host Write Commands",
-			(uint64_t)le64_to_cpu(perf->hw_cmds));
+			le64_to_cpu(perf->hw_cmds));
 	json_object_add_value_int(root, "Host Write Blocks",
-			(uint64_t)le64_to_cpu(perf->hw_blks));
+			le64_to_cpu(perf->hw_blks));
 	json_object_add_value_int(root, "Average Write Size",
 			safe_div_fp((le64_to_cpu(perf->hw_blks)), (le64_to_cpu(perf->hw_cmds))));
 	json_object_add_value_int(root, "Host Write Odd Start Commands",
-			(uint64_t)le64_to_cpu(perf->hw_os_cmds));
+			le64_to_cpu(perf->hw_os_cmds));
 	json_object_add_value_int(root, "Host Write Odd Start Commands Percentage",
 			(uint64_t)calc_percent((le64_to_cpu(perf->hw_os_cmds)), (le64_to_cpu(perf->hw_cmds))));
 	json_object_add_value_int(root, "Host Write Odd End Commands",
-			(uint64_t)le64_to_cpu(perf->hw_oe_cmds));
+			le64_to_cpu(perf->hw_oe_cmds));
 	json_object_add_value_int(root, "Host Write Odd End Commands Percentage",
 			(uint64_t)calc_percent((le64_to_cpu(perf->hw_oe_cmds)), (le64_to_cpu((perf->hw_cmds)))));
 	json_object_add_value_int(root, "Host Write Commands Stalled",
-		(uint64_t)le64_to_cpu(perf->hw_st_cmds));
+		le64_to_cpu(perf->hw_st_cmds));
 	json_object_add_value_int(root, "Host Write Commands Stalled Percentage",
 		(uint64_t)calc_percent((le64_to_cpu(perf->hw_st_cmds)), (le64_to_cpu(perf->hw_cmds))));
 	json_object_add_value_int(root, "NAND Read Commands",
-		(uint64_t)le64_to_cpu(perf->nr_cmds));
+		le64_to_cpu(perf->nr_cmds));
 	json_object_add_value_int(root, "NAND Read Blocks Commands",
-		(uint64_t)le64_to_cpu(perf->nr_blks));
+		le64_to_cpu(perf->nr_blks));
 	json_object_add_value_int(root, "Average NAND Read Size",
 		safe_div_fp((le64_to_cpu(perf->nr_blks)), (le64_to_cpu((perf->nr_cmds)))));
 	json_object_add_value_int(root, "Nand Write Commands",
-			(uint64_t)le64_to_cpu(perf->nw_cmds));
+			le64_to_cpu(perf->nw_cmds));
 	json_object_add_value_int(root, "NAND Write Blocks",
-			(uint64_t)le64_to_cpu(perf->nw_blks));
+			le64_to_cpu(perf->nw_blks));
 	json_object_add_value_int(root, "Average NAND Write Size",
 			safe_div_fp((le64_to_cpu(perf->nw_blks)), (le64_to_cpu(perf->nw_cmds))));
 	json_object_add_value_int(root, "NAND Read Before Written",
-			(uint64_t)le64_to_cpu(perf->nrbw));
+			le64_to_cpu(perf->nrbw));
 	json_print_object(root, NULL);
 	printf("\n");
 	json_free_object(root);
@@ -2257,9 +2257,9 @@ static void wdc_print_ca_log_normal(struct wdc_ssd_ca_perf_stats *perf)
 
 	printf("  CA Log Page Performance Statistics :- \n");
 	printf("  NAND Bytes Written                             %20"PRIu64 "%20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->nand_bytes_wr_hi), (uint64_t)le64_to_cpu(perf->nand_bytes_wr_lo));
+			le64_to_cpu(perf->nand_bytes_wr_hi), le64_to_cpu(perf->nand_bytes_wr_lo));
 	printf("  NAND Bytes Read                                %20"PRIu64 "%20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->nand_bytes_rd_hi), (uint64_t)le64_to_cpu(perf->nand_bytes_rd_lo));
+			le64_to_cpu(perf->nand_bytes_rd_hi), le64_to_cpu(perf->nand_bytes_rd_lo));
 
 	converted = le64_to_cpu(perf->nand_bad_block);
 	printf("  NAND Bad Block Count (Normalized)              %20"PRIu64"\n",
@@ -2268,9 +2268,9 @@ static void wdc_print_ca_log_normal(struct wdc_ssd_ca_perf_stats *perf)
 			converted >> 16);
 
 	printf("  Uncorrectable Read Count                       %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->uncorr_read_count));
+			le64_to_cpu(perf->uncorr_read_count));
 	printf("  Soft ECC Error Count                           %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->ecc_error_count));
+			le64_to_cpu(perf->ecc_error_count));
 	printf("  SSD End to End Detected Correction Count       %20"PRIu32"\n",
 			(uint32_t)le32_to_cpu(perf->ssd_detect_count));
 	printf("  SSD End to End Corrected Correction Count      %20"PRIu32"\n",
@@ -2282,7 +2282,7 @@ static void wdc_print_ca_log_normal(struct wdc_ssd_ca_perf_stats *perf)
 	printf("  User Data Erase Counts Min                     %20"PRIu32"\n",
 			(uint32_t)le32_to_cpu(perf->data_erase_min));
 	printf("  Refresh Count                                  %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->refresh_count));
+			le64_to_cpu(perf->refresh_count));
 
 	converted = le64_to_cpu(perf->program_fail);
 	printf("  Program Fail Count (Normalized)                %20"PRIu64"\n",
@@ -2307,7 +2307,7 @@ static void wdc_print_ca_log_normal(struct wdc_ssd_ca_perf_stats *perf)
 	printf("  Thermal Throttling Count                       %20"PRIu8"\n",
 			perf->thermal_throttle_count);
 	printf("  PCIe Correctable Error Count                   %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->pcie_corr_error));
+			le64_to_cpu(perf->pcie_corr_error));
 	printf("  Incomplete Shutdown Count                      %20"PRIu32"\n",
 			(uint32_t)le32_to_cpu(perf->incomplete_shutdown_count));
 	printf("  Percent Free Blocks                            %20"PRIu32"%%\n",
@@ -2411,13 +2411,13 @@ static void wdc_print_d0_log_normal(struct wdc_ssd_d0_smart_log *perf)
 	printf("  Lifetime Read Disturb Reallocation Events	 %20"PRIu32"\n",
 			(uint32_t)le32_to_cpu(perf->lifetime_read_disturb_realloc_events));
 	printf("  Lifetime NAND Writes	                         %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->lifetime_nand_writes));
+			le64_to_cpu(perf->lifetime_nand_writes));
 	printf("  Capacitor Health			 	 %20"PRIu32"%%\n",
 			(uint32_t)le32_to_cpu(perf->capacitor_health));
 	printf("  Lifetime User Writes	                         %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->lifetime_user_writes));
+			le64_to_cpu(perf->lifetime_user_writes));
 	printf("  Lifetime User Reads	                         %20"PRIu64"\n",
-			(uint64_t)le64_to_cpu(perf->lifetime_user_reads));
+			le64_to_cpu(perf->lifetime_user_reads));
 	printf("  Lifetime Thermal Throttle Activations	         %20"PRIu32"\n",
 			(uint32_t)le32_to_cpu(perf->lifetime_thermal_throttle_act));
 	printf("  Percentage of P/E Cycles Remaining             %20"PRIu32"%%\n",
@@ -3726,7 +3726,7 @@ static void wdc_print_nand_stats_normal(struct wdc_nand_stats *data)
 	printf("  Bad Block Count			         %"PRIu32"\n",
 			(uint32_t)le32_to_cpu(data->bad_block_count));
 	printf("  NAND XOR/RAID Recovery Trigger Events		 %"PRIu64"\n",
-			(uint64_t)le64_to_cpu(data->nand_rec_trigger_event));
+			le64_to_cpu(data->nand_rec_trigger_event));
 }
 
 static void wdc_print_nand_stats_json(struct wdc_nand_stats *data)
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
