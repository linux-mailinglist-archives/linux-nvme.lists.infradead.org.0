Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E30809C5
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=37HZc2UVnvbj0virqd8sVkPnjaYl4Z8ptjIprFNCO6M=; b=RU6z7Twl2BcQ4SpDI6eZ5UZMIJ
	wKe+ULD2bRSU+ILNtwOMeGAmZjH/lL0B8O33K9GRBt065SNqB7YWdqMa4XgnzwP/rpsvxOxGNsrkl
	I3j5WP3yjYMuAPMFz1ke29iK64qI8d2UaQHxxFCb/CU2faDY1fC5XfcIb8eyqCZ+FRcC/iEXRQzjU
	H3fCriUd5FgwBK0YshRaA1PBc0y/OWUVktZfNfPSrJJQ9LZRCPhkSKZJJtTIVdgixju31tVXt6cnA
	q8+bHw5hPNbkk4XPUw6nVP/rofV0W6EzB4nLdWrDUyzw5uSvRyzPBfPyqhK/i7Hk2CoYfkfXnB+H7
	7LAhWSXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huAfl-000401-1U; Sun, 04 Aug 2019 07:11:17 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huAfJ-0003wZ-8F
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:10:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id w3so893809pgt.13
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RKE6zXtF9Ev9EgZkCIAaERnGHkE/zbSWYHKwTxUnh+k=;
 b=oxIHIoPQKSv84V5AvYXGw4dki8q1SRUruCGQAg0uzvX1aGY2VzJqnJiO9qeh+75BbY
 6+h2nJJ2+8ijAawbntamAcWrP/TOaoQtQI6aBQqjUJBEfVfw97P24dtI7qEnbGxDssXA
 b4AHzDYYAT7nUWvg5Jh6i6ObwNvCgwzbl/y0+roqaz5zH7CkmQyIkGpOqfGomKnPGTlH
 dtzKzXb4vsqugegvQxRqL1ZQN6eT1OoEd15OiAz8y/6TPdClq0AsLIfqcbFZox6RtBf9
 rtiuM4pPkZ9DlYtUVp/H/F1zQjfjXR0EAkGIb+I8SxJK9uga1r0YwNVcELcmkZ6q9x7U
 23zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RKE6zXtF9Ev9EgZkCIAaERnGHkE/zbSWYHKwTxUnh+k=;
 b=HPRezxnOmZmo2FmQO/QCef/mnFM/7ATnWF20XAKAstdvQMWQKQ3X+BpuXRUU95lQlS
 WmiD6j4Ljo+lcUyJ/hFYCte4LBIJwA9ZJU6qRmXe5NEbymiphUttJypSppd5ExEXO/nX
 o2enywsHvMJ4/HcuT8T26KOEkaYTTg24Cuul4pB0qfQxcwf9S6hkfN/hzz5g5XnJvjL6
 HDw6w06O8n2q+zZu3mXvDvtrt8yH1g2V7RKnXnOScVKg6zlg3PfxKDuIRI7ogJRuvLJK
 t1vUPtJiPdm01w/RqEW6r+KlyrWa/Az8/mMhdFNfk3MTJyLxZ+rDXV06fUT/RhocAUMn
 nrjA==
X-Gm-Message-State: APjAAAXB/A/uJzD9CP0gp//ag4BlVx60gS/K5m7O3nzj7SLXLPB8M9J+
 VDor+zlqOQBVgklaqrtCLMuP3PP22Jo=
X-Google-Smtp-Source: APXvYqxq5pyCCXpaWGoIz7wcrk20WloLVHoiEme1epAlNE6mMCzGokHJidOtOZMv4BIsIPC4GJOiiA==
X-Received: by 2002:a63:fe17:: with SMTP id p23mr33215683pgh.103.1564902647023; 
 Sun, 04 Aug 2019 00:10:47 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p7sm88033964pfp.131.2019.08.04.00.10.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 00:10:46 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/3] get-lba-status: add Get LBA Status command
Date: Sun,  4 Aug 2019 16:10:26 +0900
Message-Id: <20190804071026.16149-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190804071026.16149-1-minwoo.im.dev@gmail.com>
References: <20190804071026.16149-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_001049_291440_317B151F 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This command has been added in NVMe 1.4 spec.  This command can retrieve
some information about the unrecoverable LBAs from the device.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 linux/nvme.h   | 16 ++++++++++
 nvme-builtin.h |  1 +
 nvme-ioctl.c   | 15 +++++++++
 nvme-ioctl.h   |  2 ++
 nvme-print.c   | 28 +++++++++++++++++
 nvme-print.h   |  1 +
 nvme.c         | 82 ++++++++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 145 insertions(+)

diff --git a/linux/nvme.h b/linux/nvme.h
index 40bc8d7a76b6..e6945bd0e42a 100644
--- a/linux/nvme.h
+++ b/linux/nvme.h
@@ -526,6 +526,21 @@ struct nvme_fw_slot_info_log {
 	__u8			rsvd64[448];
 };
 
+struct nvme_lba_status_desc {
+	__u64 dslba;
+	__u32 nlb;
+	__u8 rsvd_12;
+	__u8 status;
+	__u8 rsvd_15_14[2];
+};
+
+struct nvme_lba_status {
+	__u32 nlsd;
+	__u8 cmpc;
+	__u8 rsvd_7_5[3];
+	struct nvme_lba_status_desc descs[0];
+};
+
 /* NVMe Namespace Write Protect State */
 enum {
 	NVME_NS_NO_WRITE_PROTECT = 0,
@@ -904,6 +919,7 @@ enum nvme_admin_opcode {
 	nvme_admin_security_send	= 0x81,
 	nvme_admin_security_recv	= 0x82,
 	nvme_admin_sanitize_nvm		= 0x84,
+	nvme_admin_get_lba_status	= 0x86,
 };
 
 enum {
diff --git a/nvme-builtin.h b/nvme-builtin.h
index 1eb8b9291c3f..e70b74ddaa0b 100644
--- a/nvme-builtin.h
+++ b/nvme-builtin.h
@@ -43,6 +43,7 @@ COMMAND_LIST(
 	ENTRY("io-passthru", "Submit an arbitrary IO command, return results", io_passthru)
 	ENTRY("security-send", "Submit a Security Send command, return results", sec_send)
 	ENTRY("security-recv", "Submit a Security Receive command, return results", sec_recv)
+	ENTRY("get-lba-status", "Submit a Get LBA Status command, return results", get_lba_status)
 	ENTRY("resv-acquire", "Submit a Reservation Acquire, return results", resv_acquire)
 	ENTRY("resv-register", "Submit a Reservation Register, return results", resv_register)
 	ENTRY("resv-release", "Submit a Reservation Release, return results", resv_release)
diff --git a/nvme-ioctl.c b/nvme-ioctl.c
index 0fbb91314d1f..e8a50cbcf5ba 100644
--- a/nvme-ioctl.c
+++ b/nvme-ioctl.c
@@ -820,6 +820,21 @@ int nvme_sec_recv(int fd, __u32 nsid, __u8 nssf, __u16 spsp,
 	return err;
 }
 
+int nvme_get_lba_status(int fd, __u64 slba, __u32 mndw, __u8 atype, __u16 rl,
+		void *data)
+{
+	struct nvme_admin_cmd cmd = {
+		.opcode =  nvme_admin_get_lba_status,
+		.addr = (__u64)(uintptr_t) data,
+		.cdw10 = slba & 0xffffffff,
+		.cdw11 = slba >> 32,
+		.cdw12 = mndw,
+		.cdw13 = (atype << 24) | rl,
+	};
+
+	return nvme_submit_admin_passthru(fd, &cmd);
+}
+
 int nvme_dir_send(int fd, __u32 nsid, __u16 dspec, __u8 dtype, __u8 doper,
                   __u32 data_len, __u32 dw12, void *data, __u32 *result)
 {
diff --git a/nvme-ioctl.h b/nvme-ioctl.h
index a0173c41833d..27325488d086 100644
--- a/nvme-ioctl.h
+++ b/nvme-ioctl.h
@@ -131,6 +131,8 @@ int nvme_subsystem_reset(int fd);
 int nvme_reset_controller(int fd);
 int nvme_ns_rescan(int fd);
 
+int nvme_get_lba_status(int fd, __u64 slba, __u32 mndw, __u8 atype, __u16 rl,
+		void *data);
 int nvme_dir_send(int fd, __u32 nsid, __u16 dspec, __u8 dtype, __u8 doper,
 		  __u32 data_len, __u32 dw12, void *data, __u32 *result);
 int nvme_dir_recv(int fd, __u32 nsid, __u16 dspec, __u8 dtype, __u8 doper,
diff --git a/nvme-print.c b/nvme-print.c
index 91eb326157f2..d80f81ede90c 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -2169,6 +2169,34 @@ void nvme_feature_show_fields(__u32 fid, unsigned int result, unsigned char *buf
 	}
 }
 
+void show_lba_status(struct nvme_lba_status *list)
+{
+	int idx;
+
+	printf("Number of LBA Status Descriptors(NLSD): %lu\n",
+			le64_to_cpu(list->nlsd));
+	printf("Completion Condition(CMPC): %u\n", list->cmpc);
+	switch (list->cmpc) {
+	case 1:
+		printf("\tCompleted due to transferring the amount of data"\
+			" specified in the MNDW field\n");
+		break;
+	case 2:
+		printf("\tCompleted due to having performed the action\n"\
+			"\tspecified in the Action Type field over the\n"\
+			"\tnumber of logical blocks specified in the\n"\
+			"\tRange Length field\n");
+		break;
+	}
+
+	for (idx = 0; idx < list->nlsd; idx++) {
+		struct nvme_lba_status_desc *e = &list->descs[idx];
+		printf("{ DSLBA: 0x%016"PRIu64", NLB: 0x%08x, Status: 0x%02x }\n",
+				le64_to_cpu(e->dslba), le32_to_cpu(e->nlb),
+				e->status);
+	}
+}
+
 static void show_list_item(struct list_item list_item)
 {
 	long long int lba = 1 << list_item.ns.lbaf[(list_item.ns.flbas & 0x0f)].ds;
diff --git a/nvme-print.h b/nvme-print.h
index bfdb00779526..0faa226c53be 100644
--- a/nvme-print.h
+++ b/nvme-print.h
@@ -36,6 +36,7 @@ void show_sanitize_log(struct nvme_sanitize_log_page *sanitize, unsigned int mod
 void show_ctrl_registers(void *bar, unsigned int mode, bool fabrics);
 void show_single_property(int offset, uint64_t prop, int human);
 void show_nvme_id_ns_descs(void *data);
+void show_lba_status(struct nvme_lba_status *list);
 void show_list_items(struct list_item *list_items, unsigned len);
 void show_nvme_subsystem_list(struct subsys_list_item *slist, int n);
 void show_nvme_id_nvmset(struct nvme_id_nvmset *nvmset);
diff --git a/nvme.c b/nvme.c
index 19385a088c04..56f52f40eb0c 100644
--- a/nvme.c
+++ b/nvme.c
@@ -4852,6 +4852,88 @@ ret:
 	return nvme_status_to_errno(err, false);
 }
 
+static int get_lba_status(int argc, char **argv, struct command *cmd,
+		struct plugin *plugin)
+{
+	const char *desc = "Information about potentially unrecoverable LBAs.";
+	const char *slba = "Starting LBA(SLBA) in 64-bit address of the first"\
+			    " logical block addressed by this command";
+	const char *mndw = "Maximum Number of Dwords(MNDW) specifies maximum"\
+			    " number of dwords to return";
+	const char *atype = "Action Type(ATYPE) specifies the mechanism the"\
+			     " the controller uses in determining the LBA"\
+			     " Status Descriptors to return.";
+	const char *rl = "Range Length(RL) specifies the length of the range"\
+			  " of contiguous LBAs beginning at SLBA";
+	int err, fd, fmt;
+	void *buf;
+	unsigned long buf_len;
+
+	struct config {
+		__u64 slba;
+		__u32 mndw;
+		__u8 atype;
+		__u16 rl;
+		char *output_format;
+	};
+
+	struct config cfg = {
+		.slba = 0,
+		.mndw = 0,
+		.atype = 0,
+		.rl = 0,
+		.output_format = "normal",
+	};
+
+	const struct argconfig_commandline_options command_line_options[] = {
+		{"start-lba", 's', "NUM", CFG_LONG_SUFFIX, &cfg.slba, required_argument, slba},
+		{"max-dw", 'm', "NUM", CFG_POSITIVE, &cfg.mndw, required_argument, mndw},
+		{"action", 'a', "NUM", CFG_BYTE, &cfg.atype, required_argument, atype},
+		{"range-len", 'l', "NUM", CFG_SHORT, &cfg.rl, required_argument, rl},
+		{"output-format", 'o', "FMT", CFG_STRING, &cfg.output_format, required_argument, output_format},
+		{NULL}
+	};
+
+	err = fd = parse_and_open(argc, argv, desc, command_line_options, &cfg,
+			sizeof(cfg));
+	if (fd < 0)
+		goto ret;
+
+	err = fmt = validate_output_format(cfg.output_format);
+	if (fmt < 0)
+		goto close_fd;
+
+	if (!cfg.atype) {
+		fprintf(stderr, "action type (--action) has to be given\n");
+		err = -EINVAL;
+		goto close_fd;
+	}
+
+	buf_len = (cfg.mndw + 1) * 4;
+	buf = calloc(1, buf_len);
+	if (!buf) {
+		err = -ENOMEM;
+		goto close_fd;
+	}
+
+	err = nvme_get_lba_status(fd, cfg.slba, cfg.mndw, cfg.atype, cfg.rl,
+			buf);
+	if (err)
+		goto free;
+
+	if (fmt == BINARY)
+		d_raw((unsigned char *)buf, buf_len);
+	else
+		show_lba_status(buf);
+
+free:
+	free(buf);
+close_fd:
+	close(fd);
+ret:
+	return nvme_status_to_errno(err, false);
+}
+
 static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin *plugin)
 {
 	const char *desc = "Read directive parameters of the "\
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
