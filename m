Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710AB4C03A
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxIczdtBKQGEDkz052wYUj8/txnA17wqOueJpu8r9NQ=; b=GUBCiejtUJSfT/
	DHzkhlOvvJLqkcL+uTmDtwX7do+F90JsdDIcdKapkwFjMhNaLR5VFzNO8SV96AeFn546BpwuExNlY
	XnRqbA4LAUH6W9ngOR5ClbTalKAQ/PSuGtM6gJyOz4sLPrCeIY6Mp1DUTK2cYDV9gZyqDzpVV7a4n
	VaHRzuPi4N+X8lpEPjoyOuG8H0NM0sXiMTcNJLLVeWgi5xNL1hT/ZcHw1Je+JUkTAE4U1HeHohnKP
	4yKgnQ3oSsHgLr2cfpfTzXHn7HjoQGcWUMafC92NRIjReQuVY3M6biFuXMqVDeeLqKVqQKq95lEYb
	wYQ6o7C7tQbgpWyRFlJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdehI-0004Mn-7M; Wed, 19 Jun 2019 17:48:36 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWQ-0006l0-S9
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:25 +0000
Received: by mail-pf1-f194.google.com with SMTP id d126so25594pfd.2
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bErMyOLAsvH+OwqH3CQCvC6gZH2aipWURHkANH1tJlE=;
 b=LxkMsg6zoK/LGcz//hL3tQDD7rH3+UG1kOdhSGmzUoBPwVayr/2Q+6eMs9JGEugILh
 hztXZZABgxEL/HUrbrwhzVKtYfUUGEG4omb/cm/w6QymABEeEZEm0cESD+9kNJaOP3Eu
 W4Dl6k26+FJA/UPj4096EWxsV6Rtn9qOW83fa+fMDKGxFAw+wXOjdTUDrWpffN8MlATv
 i7VIBOhJzgi2vGLEmf9gbO9LZHLRG6+Kkz/9O4wcYsIdOJnChMxL7X0K3mhKVR9b/DP3
 cRpqc6TK6ji3+pRLCEZIu9kicKvm6NlvLuhU6sUtKfKpl9H8RJrAHt0QGb1kDm9dFmPH
 v88g==
X-Gm-Message-State: APjAAAXYKj9OBrnwZgkpJHLAbl8wZupOfbTShr8wHa5T/zX2j2vhdLEu
 y4ZoPh6lXo3hgtQtR1Ott6w=
X-Google-Smtp-Source: APXvYqxMA3hjyKgzZiDcO4EGXS0g9kgfsiAYcXjWRBgV8g3MldHGNShny3stsmqUCf5s5oqiAJuY2g==
X-Received: by 2002:a63:6981:: with SMTP id e123mr8660630pgc.136.1560965841729; 
 Wed, 19 Jun 2019 10:37:21 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:20 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 10/13] nvme-cli: Rework the code for getting and
 setting NVMf properties
Date: Wed, 19 Jun 2019 10:36:58 -0700
Message-Id: <20190619173701.8263-11-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103722_935753_64A96819 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
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
Cc: Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org, Eyal Ben David <eyalbe@il.ibm.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The current nvme_property() implementation is much harder to read
because it uses an nvme_admin_cmd structure to represent the
nvmf_property_get_command and nvmf_property_set_command data structures.
Verifying the implementation of nvme_property() requires to compare the
offsets of members of nvme_admin_cmd with the offsets of members of
nvmf_property_[gs]et_command. Make the code easier to read by using the
nvmf_property_get_command and nvmf_property_set data structures directly.

This patch fixes the sparse complaints about endianness mismatches in the
nvme_property(), nvme_get_property() and nvme_set_property() functions.

Cc: Eyal Ben David <eyalbe@il.ibm.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 nvme-ioctl.c | 121 ++++++++++++++++++++++++++-------------------------
 nvme-ioctl.h |   2 +-
 2 files changed, 63 insertions(+), 60 deletions(-)

diff --git a/nvme-ioctl.c b/nvme-ioctl.c
index f3a56dc51086..0c8de0748c18 100644
--- a/nvme-ioctl.c
+++ b/nvme-ioctl.c
@@ -1,3 +1,4 @@
+#include <assert.h>
 #include <sys/ioctl.h>
 #include <sys/stat.h>
 #include <string.h>
@@ -547,60 +548,60 @@ int nvme_set_feature(int fd, __u32 nsid, __u8 fid, __u32 value, __u32 cdw12,
 			    cdw12, data_len, data, result);
 }
 
-static int nvme_property(int fd, __u8 fctype, __le32 off, __le64 *value, __u8 attrib)
-{
-	int err;
-	struct nvme_admin_cmd cmd = {
-		.opcode		= nvme_fabrics_command,
-		.cdw10		= attrib,
-		.cdw11		= off,
-	};
-
-	if (!value) {
-		errno = EINVAL;
-		return -errno;
-	}
 
-	if (fctype == nvme_fabrics_type_property_get){
-		cmd.nsid = nvme_fabrics_type_property_get;
-	} else if (fctype == nvme_fabrics_type_property_set) {
-		cmd.nsid = nvme_fabrics_type_property_set;
-		cmd.cdw12 = *value;
-	} else {
-		errno = EINVAL;
-		return -errno;
-	}
-
-	err = nvme_submit_admin_passthru(fd, &cmd);
-	if (!err && fctype == nvme_fabrics_type_property_get)
-		*value = cpu_to_le64(cmd.result);
-	return err;
+/*
+ * Perform the opposite operation of the byte-swapping code at the start of the
+ * kernel function nvme_user_cmd().
+ */
+static void nvme_to_passthru_cmd(struct nvme_passthru_cmd *pcmd,
+				 const struct nvme_command *ncmd)
+{
+	assert(sizeof(*ncmd) < sizeof(*pcmd));
+	memset(pcmd, 0, sizeof(*pcmd));
+	pcmd->opcode = ncmd->common.opcode;
+	pcmd->flags = ncmd->common.flags;
+	pcmd->rsvd1 = ncmd->common.command_id;
+	pcmd->nsid = le32_to_cpu(ncmd->common.nsid);
+	pcmd->cdw2 = le32_to_cpu(ncmd->common.cdw2[0]);
+	pcmd->cdw3 = le32_to_cpu(ncmd->common.cdw2[1]);
+	/* Skip metadata and addr */
+	pcmd->cdw10 = le32_to_cpu(ncmd->common.cdw10[0]);
+	pcmd->cdw11 = le32_to_cpu(ncmd->common.cdw10[1]);
+	pcmd->cdw12 = le32_to_cpu(ncmd->common.cdw10[2]);
+	pcmd->cdw13 = le32_to_cpu(ncmd->common.cdw10[3]);
+	pcmd->cdw14 = le32_to_cpu(ncmd->common.cdw10[4]);
+	pcmd->cdw15 = le32_to_cpu(ncmd->common.cdw10[5]);
 }
 
 int nvme_get_property(int fd, int offset, uint64_t *value)
 {
-	__le64 value64;
-	int err = -EINVAL;
-
-	if (!value)
-		return err;
-
-	err = nvme_property(fd, nvme_fabrics_type_property_get,
-			cpu_to_le32(offset), &value64, is_64bit_reg(offset));
+	struct nvme_passthru_cmd pcmd;
+	struct nvme_command gcmd = {
+		.prop_get = {
+			.opcode	= nvme_fabrics_command,
+			.fctype	= nvme_fabrics_type_property_get,
+			.offset	= cpu_to_le32(offset),
+			.attrib = is_64bit_reg(offset),
+		}
+	};
+	int err;
 
+	nvme_to_passthru_cmd(&pcmd, &gcmd);
+	err = nvme_submit_admin_passthru(fd, &pcmd);
 	if (!err) {
-		if (is_64bit_reg(offset))
-			*((uint64_t *)value) = le64_to_cpu(value64);
-		else
-			*((uint32_t *)value) = le32_to_cpu(value64);
+		/*
+		 * nvme_submit_admin_passthru() stores the lower 32 bits
+		 * of the property value in pcmd.result using CPU endianness.
+		 */
+		*value = pcmd.result;
 	}
-
 	return err;
 }
 
 int nvme_get_properties(int fd, void **pbar)
 {
 	int offset;
+	uint64_t value;
 	int err;
 	int size = getpagesize();
 
@@ -612,36 +613,38 @@ int nvme_get_properties(int fd, void **pbar)
 
 	memset(*pbar, 0xff, size);
 	for (offset = NVME_REG_CAP; offset <= NVME_REG_CMBSZ;) {
-		err = nvme_get_property(fd, offset, *pbar + offset);
+		err = nvme_get_property(fd, offset, &value);
 		if (err) {
 			free(*pbar);
 			break;
 		}
-
-		offset += is_64bit_reg(offset) ? 8 : 4;
+		if (is_64bit_reg(offset)) {
+			*(uint64_t *)(*pbar + offset) = value;
+			offset += 8;
+		} else {
+			*(uint32_t *)(*pbar + offset) = value;
+			offset += 4;
+		}
 	}
 
 	return err;
 }
 
-int nvme_set_property(int fd, int offset, int value)
+int nvme_set_property(int fd, int offset, uint64_t value)
 {
-	__le64 val = cpu_to_le64(value);
-	__le32 off = cpu_to_le32(offset);
-	bool is64bit;
-
-	switch (off) {
-	case NVME_REG_CAP:
-	case NVME_REG_ASQ:
-	case NVME_REG_ACQ:
-		is64bit = true;
-		break;
-	default:
-		is64bit = false;
-	}
+	struct nvme_command scmd = {
+		.prop_set = {
+			.opcode	= nvme_fabrics_command,
+			.fctype	= nvme_fabrics_type_property_set,
+			.offset	= cpu_to_le32(offset),
+			.value = cpu_to_le64(value),
+			.attrib = is_64bit_reg(offset),
+		}
+	};
+	struct nvme_passthru_cmd pcmd;
 
-	return nvme_property(fd, nvme_fabrics_type_property_set,
-			off, &val, is64bit ? 1: 0);
+	nvme_to_passthru_cmd(&pcmd, &scmd);
+	return nvme_submit_admin_passthru(fd, &pcmd);
 }
 
 int nvme_get_feature(int fd, __u32 nsid, __u8 fid, __u8 sel, __u32 cdw11,
diff --git a/nvme-ioctl.h b/nvme-ioctl.h
index f4553e0bd264..68f0892570b4 100644
--- a/nvme-ioctl.h
+++ b/nvme-ioctl.h
@@ -133,7 +133,7 @@ int nvme_dir_send(int fd, __u32 nsid, __u16 dspec, __u8 dtype, __u8 doper,
 int nvme_dir_recv(int fd, __u32 nsid, __u16 dspec, __u8 dtype, __u8 doper,
 		  __u32 data_len, __u32 dw12, void *data, __u32 *result);
 int nvme_get_properties(int fd, void **pbar);
-int nvme_set_property(int fd, int offset, int value);
+int nvme_set_property(int fd, int offset, uint64_t value);
 int nvme_get_property(int fd, int offset, uint64_t *value);
 int nvme_sanitize(int fd, __u8 sanact, __u8 ause, __u8 owpass, __u8 oipbp,
 		  __u8 no_dealloc, __u32 ovrpat);
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
