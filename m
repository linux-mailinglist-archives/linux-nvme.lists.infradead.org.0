Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9237F1A5A8
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 02:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NUkAXBNJbFhIhbKJ4+5vcDFNwy+lec3zHVtiWGIEyos=; b=tyo
	XHJwYwrhkytYby02GLlWKqsM5XeCjCifUTqSwrWEUH535NM6o9b+ChjG0mDexx8K346ZYj2lRma0V
	89hNSqS2nM/3pQ4udzkIBTGF6ck/vo4cdySSF4/bDfWylbTWhQ16Mqq7CVVXmrweFiuaSSSHGqMhR
	zJZUqBKy7fSt+QwwpToIo6efJDf5gRxEfpFh0witLHv4z5AdrkpRc59ZJS50rXCHEkKRrVMh2ciGP
	xandkUyb0y+F41nNIVs6NSkuamYXExyE5Vcln+secBSpXeu+g4nbQzxLaUwyupGmbrVBqmy2m/1Q7
	SABP6g7iDoa4k1IJtLADjyJTWkQ4b7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPFUf-00049D-NR; Sat, 11 May 2019 00:04:01 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPFUb-00048o-Cn
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 00:03:59 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 17:03:52 -0700
X-ExtLoop1: 1
Received: from kheitke-ubuntu.lm.intel.com ([10.232.116.89])
 by orsmga003.jf.intel.com with ESMTP; 10 May 2019 17:03:51 -0700
From: Kenneth Heitke <kenneth.heitke@intel.com>
To: keith.busch@intel.com
Subject: [PATCH] nvme: add support for Verify command opcode
Date: Fri, 10 May 2019 18:04:06 -0600
Message-Id: <20190511000406.5458-1-kenneth.heitke@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_170357_529171_E70C961F 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: axboe@fb.com, Kenneth Heitke <kenneth.heitke@intel.com>, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This allows the Verify command to be sent using the
NVME_IOCTL_SUBMIT_IO ioctl.

Signed-off-by: Kenneth Heitke <kenneth.heitke@intel.com>
---
 drivers/nvme/host/core.c  | 1 +
 drivers/nvme/host/trace.c | 1 +
 drivers/nvme/host/trace.h | 1 +
 include/linux/nvme.h      | 1 +
 4 files changed, 4 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index eebaeadaa800..8bbcae22fd22 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1193,6 +1193,7 @@ static int nvme_submit_io(struct nvme_ns *ns, struct nvme_user_io __user *uio)
 	switch (io.opcode) {
 	case nvme_cmd_write:
 	case nvme_cmd_read:
+	case nvme_cmd_verify:
 	case nvme_cmd_compare:
 		break;
 	default:
diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
index 5f24ea7a28eb..07a963f5be96 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/host/trace.c
@@ -127,6 +127,7 @@ const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p,
 	case nvme_cmd_read:
 	case nvme_cmd_write:
 	case nvme_cmd_write_zeroes:
+	case nvme_cmd_verify:
 		return nvme_trace_read_write(p, cdw10);
 	case nvme_cmd_dsm:
 		return nvme_trace_dsm(p, cdw10);
diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index 97d3c77365b8..38636062435c 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -52,6 +52,7 @@
 		nvme_opcode_name(nvme_cmd_compare),		\
 		nvme_opcode_name(nvme_cmd_write_zeroes),	\
 		nvme_opcode_name(nvme_cmd_dsm),			\
+		nvme_opcode_name(nvme_cmd_verify),		\
 		nvme_opcode_name(nvme_cmd_resv_register),	\
 		nvme_opcode_name(nvme_cmd_resv_report),		\
 		nvme_opcode_name(nvme_cmd_resv_acquire),	\
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index c40720cb59ac..73520060bf7c 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -556,6 +556,7 @@ enum nvme_opcode {
 	nvme_cmd_compare	= 0x05,
 	nvme_cmd_write_zeroes	= 0x08,
 	nvme_cmd_dsm		= 0x09,
+	nvme_cmd_verify		= 0x0c,
 	nvme_cmd_resv_register	= 0x0d,
 	nvme_cmd_resv_report	= 0x0e,
 	nvme_cmd_resv_acquire	= 0x11,
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
