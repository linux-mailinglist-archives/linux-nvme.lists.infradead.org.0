Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 403521BF97
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 00:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2CIO7rx0qnVqI8YeRIL/+AhfsGd29cw0JpcfnXf8kvw=; b=snEI9dz2CY+5SvquvF2Yp8pFGW
	uqutcVEzN5ZLCKp7SV0IPT3cj27622lokoOfpRkSWXZ1XnxbLdazYmlSWW8ntoE+TGRazB4Av7pna
	ZCdktPbVwxqw4QVuYag+9e2AXMeY7MoWQXs1S1cbgFr/gGZ50Hxt4EWdm5JHCEQvVVRDvJbAjME2x
	rtKgTPGQEY0uqm/K6VXz34Tv/lZQJGlcR+VpF9En+f9samBbz5HR/ErIcmmIxuzBG7drAHGsTmPSs
	6Z4tMosCn+DU92oDU6yTn87yNuQFnCkRmtR9EhaS/D5UdWT1PG8+ejizYO5BxsutPVR5fpikrXPCZ
	BtZKimUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJgQ-0008P0-PF; Mon, 13 May 2019 22:44:34 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJfh-0007b3-GK
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 22:44:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so7981128pfa.3
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 15:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3OCsll5Rd+lL5MhHfgTGSJ2tKq6TIrztYDE0jVfHgyI=;
 b=PRVmB6GjF4keVBTW99udm4KtwYN+64Tprp5lOZ7yAfH1U8Wxxonxgrr31CJRiCYlmW
 5x9IqwwURJZxomTdhFp7/dmBNF9jvESOxoD5bXs4phC+Z4f0wdW0uhJNiyUH/+oLCPxH
 vkplfIGbf9UnKgYx+QrR2VRqxYbjuSZWYTriPTYw9sshC9ZnABP+vNFVYpGE0TWJEP3F
 NC98laa7wT3PFC6JMtaFobf8FsJ/r4oGuojB66uF7MKaV0AAktaqkgDH5SCRnXTb1jHn
 0Y1j9jhr+baRadHLNu1faO/N+AqDDe1/V2IhUtU+P5sZz6dnP1ZT0/qgochi9L/NLkZh
 Lb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3OCsll5Rd+lL5MhHfgTGSJ2tKq6TIrztYDE0jVfHgyI=;
 b=ZxZi8li0BEfEF+dgMlY/gPm8+Pi4IWvynTZ61M/0HV8q9wAw7D4tTleNq6a9lgZ3bL
 GMms+IpvFcdY4rEIYBPd8EX0gcpZ02imeq6TFKaWpWR8Sk6+y7TfS6DCSc+n3cN6VFcc
 YLskwVrV8T0YFHAR5cgaNwy9uFKPrRxtN9Uf/7db7YGS85K1mDnTrFXl4HK3h60K9mh3
 +0iPpFEN/Xm4ckuSsmoEtkKhQjaNb/tAzoD7GRWVNI/cc2qTxqOageYN9SImpP1ohpAE
 ftozjrBmAeC0tUOW0osO+A84vnG4h7VaZhhaWjHzExFvVGvEo8dysfgaMkX8+A3I/zpH
 6xrA==
X-Gm-Message-State: APjAAAU6BDURwcuOWyMJouj8X8/975iFVLUnVUxK5jJfH1fUBvqaDTLQ
 wN2OncdZgJx9sQOiWonv39nlEjvY
X-Google-Smtp-Source: APXvYqxWLtJDVK06zIaQiR1EMaCzx8KYujBRQtDW9vt8hl33fEG4ls67RE8mszP0T5muX3nC5eAoyA==
X-Received: by 2002:a65:51cb:: with SMTP id i11mr32302982pgq.390.1557787428840; 
 Mon, 13 May 2019 15:43:48 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id g188sm20299309pfc.151.2019.05.13.15.43.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 15:43:48 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 7/7] lpfc: Add sysfs interface to post NVME RSCN
Date: Mon, 13 May 2019 15:43:14 -0700
Message-Id: <20190513224314.24169-8-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190513224314.24169-1-jsmart2021@gmail.com>
References: <20190513224314.24169-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_154349_927202_7BA5997E 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Smart <jsmart2021@gmail.com>,
 Dick Kennedy <dick.kennedy@broadcom.com>, martin.petersen@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

To support scenarios which aren't bound to nvmetcli add port scenarios,
which is currently where the nvmet_fc transport invokes the discovery
event callbacks, a syfs attribute is added to lpfc which can be written
to cause an RSCN to be generated for the nport.

Signed-off-by: Dick Kennedy <dick.kennedy@broadcom.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/scsi/lpfc/lpfc.h      |  1 +
 drivers/scsi/lpfc/lpfc_attr.c | 60 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/drivers/scsi/lpfc/lpfc.h b/drivers/scsi/lpfc/lpfc.h
index 9246e0212a86..5ef0efb830d2 100644
--- a/drivers/scsi/lpfc/lpfc.h
+++ b/drivers/scsi/lpfc/lpfc.h
@@ -820,6 +820,7 @@ struct lpfc_hba {
 	uint32_t cfg_use_msi;
 	uint32_t cfg_auto_imax;
 	uint32_t cfg_fcp_imax;
+	uint32_t cfg_force_rscn;
 	uint32_t cfg_cq_poll_threshold;
 	uint32_t cfg_cq_max_proc_limit;
 	uint32_t cfg_fcp_cpu_map;
diff --git a/drivers/scsi/lpfc/lpfc_attr.c b/drivers/scsi/lpfc/lpfc_attr.c
index ce3e541434dc..8b09e82ddfcf 100644
--- a/drivers/scsi/lpfc/lpfc_attr.c
+++ b/drivers/scsi/lpfc/lpfc_attr.c
@@ -4912,6 +4912,64 @@ static DEVICE_ATTR(lpfc_req_fw_upgrade, S_IRUGO | S_IWUSR,
 		   lpfc_request_firmware_upgrade_store);
 
 /**
+ * lpfc_force_rscn_store
+ *
+ * @dev: class device that is converted into a Scsi_host.
+ * @attr: device attribute, not used.
+ * @buf: unused string
+ * @count: unused variable.
+ *
+ * Description:
+ * Force the switch to send a RSCN to all other NPorts in our zone
+ * If we are direct connect pt2pt, build the RSCN command ourself
+ * and send to the other NPort. Not supported for private loop.
+ *
+ * Returns:
+ * 0      - on success
+ * -EIO   - if command is not sent
+ **/
+static ssize_t
+lpfc_force_rscn_store(struct device *dev, struct device_attribute *attr,
+		      const char *buf, size_t count)
+{
+	struct Scsi_Host *shost = class_to_shost(dev);
+	struct lpfc_vport *vport = (struct lpfc_vport *)shost->hostdata;
+	int i;
+
+	i = lpfc_issue_els_rscn(vport, 0);
+	if (i)
+		return -EIO;
+	return strlen(buf);
+}
+
+/*
+ * lpfc_force_rscn: Force an RSCN to be sent to all remote NPorts
+ * connected to  the HBA.
+ *
+ * Value range is any ascii value
+ */
+static int lpfc_force_rscn;
+module_param(lpfc_force_rscn, int, 0644);
+MODULE_PARM_DESC(lpfc_force_rscn,
+		 "Force an RSCN to be sent to all remote NPorts");
+lpfc_param_show(force_rscn)
+
+/**
+ * lpfc_force_rscn_init - Force an RSCN to be sent to all remote NPorts
+ * @phba: lpfc_hba pointer.
+ * @val: unused value.
+ *
+ * Returns:
+ * zero if val saved.
+ **/
+static int
+lpfc_force_rscn_init(struct lpfc_hba *phba, int val)
+{
+	return 0;
+}
+static DEVICE_ATTR_RW(lpfc_force_rscn);
+
+/**
  * lpfc_fcp_imax_store
  *
  * @dev: class device that is converted into a Scsi_host.
@@ -5911,6 +5969,7 @@ struct device_attribute *lpfc_hba_attrs[] = {
 	&dev_attr_lpfc_nvme_oas,
 	&dev_attr_lpfc_nvme_embed_cmd,
 	&dev_attr_lpfc_fcp_imax,
+	&dev_attr_lpfc_force_rscn,
 	&dev_attr_lpfc_cq_poll_threshold,
 	&dev_attr_lpfc_cq_max_proc_limit,
 	&dev_attr_lpfc_fcp_cpu_map,
@@ -6958,6 +7017,7 @@ lpfc_get_cfgparam(struct lpfc_hba *phba)
 	lpfc_nvme_oas_init(phba, lpfc_nvme_oas);
 	lpfc_nvme_embed_cmd_init(phba, lpfc_nvme_embed_cmd);
 	lpfc_fcp_imax_init(phba, lpfc_fcp_imax);
+	lpfc_force_rscn_init(phba, lpfc_force_rscn);
 	lpfc_cq_poll_threshold_init(phba, lpfc_cq_poll_threshold);
 	lpfc_cq_max_proc_limit_init(phba, lpfc_cq_max_proc_limit);
 	lpfc_fcp_cpu_map_init(phba, lpfc_fcp_cpu_map);
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
