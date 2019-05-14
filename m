Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AD11E441
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 23:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4OwAUrFW5xzA5Tmzis1xDutJAdmnJj+jiVAl+OYxVb4=; b=dgRTlRMDdvURL8DMh5T9RVrDdw
	hUmdnfX+OJLJBcx9TVyVu5MG16HlbGiwrlGrJ7QKUYnNi/Zg8nY4KBqdaAzT7du88eGxldPvWlaJ7
	NVmkuB/3O4e5V+3TL4UNQdX32RLSW2tY5Fk+pUDMbOyvP68n6yqpvY0Mj0mi7XXdUNF0HRsEpgm3n
	ELWxMeqy6rprnl9JM+8dB7/4slXS+8mI+0tMc4chzZ6MgR6GVYNuBGEPrl9G2y0w17ZhN25f3R3lb
	65N2t6hE/mJuGjwa7e0pofQv8Rj01BW8EOmUy/+D7y9CBj5qycchvdUklQEObmHNgtO8Y9ZRvdeQE
	cBPiG59g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfSE-0000ZD-0w; Tue, 14 May 2019 21:59:22 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfRH-0007xa-Mi
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 21:58:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id v80so204038pfa.3
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 14:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dDoHechCjP8tKP3ZVyPmA2+UV2Bso+a5oEffyYhZyvs=;
 b=gT+GC4C1HqXZBBO+gfxlthHfNP8mJR5QxhR8wRZNLmrtFyR0UjY6mxmGVjRrypVlpO
 w2LXJd7DKOipGXIu5O20TlCZ8/3eudQnpqPb8PgKoeDEpVoZ8K8o2TA58I+yqrT3dPp9
 pu2S7z+yCxU9NLrMBWwMfHU/oAMg5/xEFpSlVwV/ouI/jyxl4D9KCOv8nWbWYB8HCM72
 S9hGaxWEggel1/ln7mQXpchWsugIsDlvY3LREDLFRqVgF7+t2FEWVgUUqvezghXs3YYh
 /4KbdtfHJ3l+izadGck2LORfcnCiL9J0XQC4we/J3ObdtPEq2UzaHuKrWzJF6o5OYAfw
 CnYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dDoHechCjP8tKP3ZVyPmA2+UV2Bso+a5oEffyYhZyvs=;
 b=nZMz1Ki77WL2fvtW4nGT8JofaeXINR5Rcen+s5ddZd0XeXKYMCg6mE9hnE/pib6ICF
 6iheagHFdC/OQ5ywNGbtWvvV/IMnHxxepSlgTTTY6P5L3jKucTVu3tOP2hKf/psErPLr
 sXt8OW4FvDAhpBydVrLceLMtIWu0rW/8owPEZJjP75q+mUMzknperFcK5EYSMevJZV1R
 JrLHbNdG9DzwbUok9OGz+zCdLgzWpG6mg7LLAin2KjyPg7kI/gqZ6wBcA2PN6XVGcbPh
 EAgA9hwBaEKSOqhx7/UwoZOaknJLPRklHdY6ZKnrU6ZaaXisD5KZncs1BDofivOmuyDc
 FLqw==
X-Gm-Message-State: APjAAAX4LrSHNLUq740/m7rgUjtO86Bk7kN0LqellH6ixVaEBEAsDn1u
 2MlZ6NAZ8Vp8a8MlCeW8rlVGAp8Y
X-Google-Smtp-Source: APXvYqzaxnErsBtWsHbJkICdPNYin+xAqGm6RKqrRmHDMfI/8I9MNU6i1KL/W0A8g9edOmQhUDqBZw==
X-Received: by 2002:a63:1a03:: with SMTP id a3mr40594253pga.412.1557871103020; 
 Tue, 14 May 2019 14:58:23 -0700 (PDT)
Received: from os42.localdomain ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id o6sm120917pfa.88.2019.05.14.14.58.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 14 May 2019 14:58:22 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 7/7] lpfc: Add sysfs interface to post NVME RSCN
Date: Tue, 14 May 2019 14:58:08 -0700
Message-Id: <20190514215808.10572-8-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190514215808.10572-1-jsmart2021@gmail.com>
References: <20190514215808.10572-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_145824_219817_0585C758 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Hannes Reinecke <hare@suse.com>
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
