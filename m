Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8525C16117C
	for <lists+linux-nvme@lfdr.de>; Mon, 17 Feb 2020 12:56:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/cO68cWnxZLpu58vnGyIdn7hZr3KjrEAk2RW4H+UQ9g=; b=BqC
	sSjaH2wZtUyjjiTMefI2CeUMSBdMBNZb3x0y/ZTD0A1NSzownchm5fAqYx1fvlxbbfNqjOa1qOnPy
	W0JCEWv3E64L6+i7rQTaQiPdnpY7Kt/IWVg3fh6gmBAAp94uNWJWlE5MIJS6Ldvosfa/tgtiNGtJ7
	45R/bLFmz9/64c+UKswv5Y3sz9L17JVut2z/QKNZMJLD5cTJgGuh1894pHciwEQvIhzoyBcsbzN5O
	F7XxHg+XS7FHrvKCUr154jrzjXz3ODtqvdWnktDvMPDaBzKRPzPUM+b7ZfDYCrK1BTej84WEZacyK
	p02dTCHSVWZH8r19rUXIuTY1lKj8Mbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3f0V-0000pI-Ql; Mon, 17 Feb 2020 11:56:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3f0P-0000nq-9S
 for linux-nvme@lists.infradead.org; Mon, 17 Feb 2020 11:56:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id g3so19344701wrs.12
 for <linux-nvme@lists.infradead.org>; Mon, 17 Feb 2020 03:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yF0P9wDxyFWDFuyJ5CtBgV3diKtXFyslbtY9psnK0LM=;
 b=V8SQMpo2eclZjR9LBzjkmAr9QgyvUq9cnj3YHXiz599PoZezOcm2hw5883FJZ9rhQf
 zpfYT+1kTharVfTa6qL0kWbtiN7huH/QXYPcAySH1ZeHaq+qcRxEHmC0YN1cqvrQqb8b
 XWG1QGvclRgimZ95gZlxPlBix6V44Rk3rcDxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yF0P9wDxyFWDFuyJ5CtBgV3diKtXFyslbtY9psnK0LM=;
 b=pC8D0LvVJn5AxxEdHq/MV8LSLK/vxqP6aQIZNJ5Tp5f+OoqoO+ANPpOkAIViXeUtn/
 XIXcm8o2G96q3WZio/fL1LNaTJTP7XxjTWyOiKICRRJWzAYLDY0ZQf1fTHgLjUp5T11/
 xEQb2Ve1ZOUQegiZaVLAW4MnnrNON1/Xyb7bV6wPnz7qlizihJiTlqVfPleO/C7OCKGm
 B0qSER2aGgEbHOfVaB84/CaL8PtYlVu7rrnf5Ur3IPyiBZ2vwh91Pk1cn80+/fhEj2Ta
 RH6PKxhtxI7nGgAs0ezHmWI/3QUnnWPftsNCCF31Lp5a7BCB6YjQmKupuqAdPrEt7QMm
 cxgg==
X-Gm-Message-State: APjAAAWXrcfxnlbHZXKQVTk2XO6/OC+aY1DhHgUo0o+4xziS3KfqPvcu
 nYD3MSCgKcJCqOeDcmSHd2ylKw==
X-Google-Smtp-Source: APXvYqwvB/G/591E88LlaJ8rJ1vacGNNqk7G2bihkjdczRBIXXtaS1eoQCoc0h4o5nfYq0e5OkOgMg==
X-Received: by 2002:adf:fe83:: with SMTP id l3mr22762418wrr.41.1581940559503; 
 Mon, 17 Feb 2020 03:55:59 -0800 (PST)
Received: from dhcp-10-123-20-32.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id i4sm311571wmd.23.2020.02.17.03.55.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Feb 2020 03:55:58 -0800 (PST)
From: Kashyap Desai <kashyap.desai@broadcom.com>
To: linux-scsi@vger.kernel.org
Subject: [RFC PATCH] megaraid_sas : threaded irq hybrid polling
Date: Mon, 17 Feb 2020 17:25:33 +0530
Message-Id: <1581940533-13795-1-git-send-email-kashyap.desai@broadcom.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_035605_338679_CB449F37 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: axboe@kernel.dk, martin.petersen@oracle.com, sumanesh.samanta@broadcom.com,
 linux-nvme@lists.infradead.org, ming.lei@redhat.com, kbusch@kernel.org,
 Kashyap Desai <kashyap.desai@broadcom.com>
Content-Type: multipart/mixed; boundary="===============1335575872235492676=="
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--===============1335575872235492676==
Content-Type: text/plain; charset=yes
Content-Transfer-Encoding: 8bit

High performance HBAs under scsi layer can reach more than 3.0M IOPs.
MegaRaid Aero controller can achieve to 3.3M IOPs.In future there may be requirement to reach 6.0+ M IOPs.
One of the key bottlenecks is serving interrupts for each IO completion.
Block layer has interface blk_poll which can be used as zero interrupt poll queue.
Extending blk_poll to scsi mid layer helps and I was able to get max IOPs same as nvme <poll_queues> interface.

blk_poll is currently merged with io_uring interface and it requires application change to adopt blk_poll.

This RFC covers the logic of handling irq polling in driver using threaded ISR interface.
Changes in this RFC is described as below -

- Use Threaded ISR interface.
- Primary ISR handler runs from h/w interrupt context.
- Secondary ISR handler runs from thread context.
- Driver will drain reply queue from Primary ISR handler for every interrupt it receives.
- Primary handler will decide to call Secondary handler or not.
  This interface can be optimized later, if driver or block layer keep submission and completion stats per each h/w queue.
  Current megaraid_sas driver is single h/w queue based, so I have picked below decision maker.
  If per scsi device has outstanding command more than 8, mark that msix index as “attempt_irq_poll”.
- Every time secondary ISR handler runs, primary handler will disable IRQ.
  Once secondary handler completes the task, it will re-enable IRQ.
  If there is no completion, let's wait for some time and retry polling as enable/disable irq is expensive operation.
  Without this wait in threaded IRQ polling, we will not allow submitter to use CPU and pump more IO.

NVME driver is also trying something similar to reduce ISR overhead.
Discussion started in Dec-2019.
https://lore.kernel.org/linux-nvme/20191209175622.1964-1-kbusch@kernel.org/


Signed-off-by: Kashyap Desai <kashyap.desai@broadcom.com>
---

 drivers/scsi/megaraid/megaraid_sas.h        |  3 ++
 drivers/scsi/megaraid/megaraid_sas_base.c   | 11 +++--
 drivers/scsi/megaraid/megaraid_sas_fusion.c | 73 +++++++++++++++++++++++++++++
 3 files changed, 83 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/megaraid/megaraid_sas.h b/drivers/scsi/megaraid/megaraid_sas.h
index 83d8c4c..f4f898a 100644
--- a/drivers/scsi/megaraid/megaraid_sas.h
+++ b/drivers/scsi/megaraid/megaraid_sas.h
@@ -2212,6 +2212,7 @@ struct megasas_irq_context {
 	struct irq_poll irqpoll;
 	bool irq_poll_scheduled;
 	bool irq_line_enable;
+	bool attempt_irq_poll;
 };
 
 struct MR_DRV_SYSTEM_INFO {
@@ -2709,4 +2710,6 @@ int megasas_adp_reset_wait_for_ready(struct megasas_instance *instance,
 				     int ocr_context);
 int megasas_irqpoll(struct irq_poll *irqpoll, int budget);
 void megasas_dump_fusion_io(struct scsi_cmnd *scmd);
+irqreturn_t megasas_irq_check_fusion(int irq, void *devp);
+irqreturn_t megasas_irq_fusion_thread(int irq, void *devp);
 #endif				/*LSI_MEGARAID_SAS_H */
diff --git a/drivers/scsi/megaraid/megaraid_sas_base.c b/drivers/scsi/megaraid/megaraid_sas_base.c
index fd4b5ac..6120bd0 100644
--- a/drivers/scsi/megaraid/megaraid_sas_base.c
+++ b/drivers/scsi/megaraid/megaraid_sas_base.c
@@ -5585,7 +5585,7 @@ megasas_setup_irqs_ioapic(struct megasas_instance *instance)
 static int
 megasas_setup_irqs_msix(struct megasas_instance *instance, u8 is_probe)
 {
-	int i, j;
+	int i, j, ret;
 	struct pci_dev *pdev;
 
 	pdev = instance->pdev;
@@ -5596,9 +5596,12 @@ megasas_setup_irqs_msix(struct megasas_instance *instance, u8 is_probe)
 		instance->irq_context[i].MSIxIndex = i;
 		snprintf(instance->irq_context[i].name, MEGASAS_MSIX_NAME_LEN, "%s%u-msix%u",
 			"megasas", instance->host->host_no, i);
-		if (request_irq(pci_irq_vector(pdev, i),
-			instance->instancet->service_isr, 0, instance->irq_context[i].name,
-			&instance->irq_context[i])) {
+		ret = request_threaded_irq(pci_irq_vector(pdev, i), 
+				megasas_irq_check_fusion,
+				megasas_irq_fusion_thread, IRQF_ONESHOT ,
+				instance->irq_context[i].name, 
+				&instance->irq_context[i]);
+		if (ret) {
 			dev_err(&instance->pdev->dev,
 				"Failed to register IRQ for vector %d.\n", i);
 			for (j = 0; j < i; j++)
diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c b/drivers/scsi/megaraid/megaraid_sas_fusion.c
index f3b36fd..5000c36 100644
--- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
+++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
@@ -371,6 +371,7 @@ megasas_get_msix_index(struct megasas_instance *instance,
 		       struct megasas_cmd_fusion *cmd,
 		       u8 data_arms)
 {
+	struct megasas_irq_context *irq_ctx;
 	int sdev_busy;
 
 	/* nr_hw_queue = 1 for MegaRAID */
@@ -391,6 +392,12 @@ megasas_get_msix_index(struct megasas_instance *instance,
 	else
 		cmd->request_desc->SCSIIO.MSIxIndex =
 			instance->reply_map[raw_smp_processor_id()];
+	
+	irq_ctx = &instance->irq_context[cmd->request_desc->SCSIIO.MSIxIndex];
+
+	/* More outstanding IOs, so let's attempt polling on this reply queue.*/	
+	if (sdev_busy > data_arms * MR_DEVICE_HIGH_IOPS_DEPTH)
+		irq_ctx->attempt_irq_poll = true;
 }
 
 /**
@@ -2754,6 +2761,7 @@ megasas_build_ldio_fusion(struct megasas_instance *instance,
 	u16 ld;
 	u32 start_lba_lo, start_lba_hi, device_id, datalength = 0;
 	u32 scsi_buff_len;
+	struct megasas_irq_context *irq_ctx;
 	struct MPI2_RAID_SCSI_IO_REQUEST *io_request;
 	struct IO_REQUEST_INFO io_info;
 	struct fusion_context *fusion;
@@ -3101,6 +3109,7 @@ megasas_build_syspd_fusion(struct megasas_instance *instance,
 	u16 pd_index = 0;
 	u16 os_timeout_value;
 	u16 timeout_limit;
+	struct megasas_irq_context *irq_ctx;
 	struct MR_DRV_RAID_MAP_ALL *local_map_ptr;
 	struct RAID_CONTEXT	*pRAID_Context;
 	struct MR_PD_CFG_SEQ_NUM_SYNC *pd_sync;
@@ -3817,6 +3826,70 @@ static irqreturn_t megasas_isr_fusion(int irq, void *devp)
 			? IRQ_HANDLED : IRQ_NONE;
 }
 
+/*
+ * megasas_irq_fusion_thread: 
+ */
+irqreturn_t megasas_irq_fusion_thread(int irq, void *devp)
+{
+	int total_count = 0, num_completed = 0;
+	struct megasas_irq_context *irq_context = devp;
+	struct megasas_instance *instance = irq_context->instance;
+
+	do {	
+		num_completed = complete_cmd_fusion(instance, irq_context->MSIxIndex, irq_context);
+
+		/* If there is no completion, let's sleep and poll once again
+		 * since enable/disable irq is expensive operation.
+		 * It will not help polling without any sleep since submission and 
+		 * completion happens on the same cpu.
+		 * Polling in tight loop blocks activity on submission.  
+		 */
+		if (!num_completed) {
+			usleep_range(2, 20);
+			num_completed = complete_cmd_fusion(instance, irq_context->MSIxIndex, irq_context);
+		}
+
+		total_count += num_completed;
+	} while (num_completed && total_count < instance->cur_can_queue);
+	
+	irq_context->attempt_irq_poll = false;
+	enable_irq(irq_context->os_irq);
+
+	return IRQ_HANDLED;
+}
+
+/*
+ * megasas_irq_check_fusion: 
+ *
+ * For threaded interrupts, this handler will be called and its job is to 
+ * complete command in first attempt before it calls threaded isr handler.
+ *
+ * Threaded ISR handler will be called if there is a prediction of more
+ * completion pending. 
+ */
+irqreturn_t megasas_irq_check_fusion(int irq, void *devp)
+{
+	irqreturn_t ret;
+	struct megasas_irq_context *irq_context = devp;
+	struct megasas_instance *instance = irq_context->instance;
+
+	if (instance->mask_interrupts)
+		return IRQ_NONE;
+
+	/* First attempt from primary handler */
+	ret = megasas_isr_fusion(irq, devp);
+
+	/* Primary handler predict more IO in completion queue,
+ 	 * so let's use threaded irq poll.
+ 	 */	
+	if (!irq_context->attempt_irq_poll)
+		return IRQ_HANDLED;
+
+	disable_irq_nosync(irq_context->os_irq);
+	return IRQ_WAKE_THREAD;
+}
+
+
 /**
  * build_mpt_mfi_pass_thru - builds a cmd fo MFI Pass thru
  * @instance:			Adapter soft state
-- 
2.9.5



--===============1335575872235492676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--===============1335575872235492676==--
