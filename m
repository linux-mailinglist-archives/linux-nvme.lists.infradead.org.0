Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8392771F64
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 20:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BrorLCSLm9Dkzj3wyXlo0uypympvtk9QZPr3+Lad34Y=; b=oJNyjXiXJcxtKgh5W847FkU/mF
	BDDhdnf8EMGNG5az+MlFa0NS3Qj80iNNsozN5Cj92e/GGP98KXbZsgCH4sZlWGBDMQtufonFNFh9x
	99AgZ3WQnIffjmQpXIVdQ+/sgFuxf5T1KtLi/K7tH7eAyd9iHYnPU+PuuokoXNWQyadSdG0NdLKfH
	tijocSPuPhOpbumkz/4oySDbAmgMQksquuZnOLXHXCB3nCKY/t8a4J5YetBlF8zrCMA+z96wQYl8v
	Ivf9gt9ucImZAXRsqI/Yt+Z9O/Cxv9LJlCmPaQ4bosNMy6a0qpaBHBEPqOsdeqkvepgN6GTraOZEs
	InqzqZPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzfN-0003P2-CA; Tue, 23 Jul 2019 18:37:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpzeA-0002c7-99
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 18:36:28 +0000
Received: by mail-pl1-x642.google.com with SMTP id w24so20943547plp.2
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 11:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xz0Y0tpfA32KKw28TojBuEZ7Xim8FJLoQW+humnIhHA=;
 b=P6NkeEfDvJrqbEcECEDoAyP6FSMMV6ECXVKKxW5FHhnud2PUusAPtT8d5pJOLQoXbC
 hibTFGGbzg/zz9p/PwVV+QOprenSeMoVD7DyccTgs04POcDu+2u4kJxQHN1fezJPi5J1
 Dpw7o5hQgj6SfV+F7c/GkPrX0TI8MxOn78tM/q4uComHfVdCA8KhVEsbkWegxhTLyYap
 ZUwkZnCJ4CF4utGMj9BC8xYteA6rHYW6I4upQEKoGyz36cRGRS2DSvMT/sATV3EglIjk
 SHZqG+V21y9mAdiMzJ9OTzlTMSp1lEOw70mNj+dvLnZk5XSvVCAtbofB09t8//u+QuPh
 4M3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xz0Y0tpfA32KKw28TojBuEZ7Xim8FJLoQW+humnIhHA=;
 b=gIkM8OnwkCZzTSRlAQyt0BKRoBuq+r4kaGlA4Smg0B0GjRY8qjTN0vdW3h85UnDRsU
 nsvM9Fl52AswhR2x77sfH8U1rDUPxA2rWwWOsoeOk2C3lM8cMopqLvwfcMuZvPIpgUzf
 JGeC9JsMpnL9C6z39f6w8BWBJyy8Tym2MdcSAmvBqrdReDKlNxWpUkY6BN8Wk+VtCCXp
 +3mOAnwRaRlVoEIeYUYCH2j44DNIr2eCzUVCFd5Mr5dwgOOq/d5wXimD1IJvTvsLIz+J
 h8CD37Iiy9sX05SNNZEA+SVDBpoD7r6kIJdA6FVQ5YTwVNq7VrD1fntatQPioG5P1l8n
 4cWA==
X-Gm-Message-State: APjAAAX9FCr/tPCSVGveWN4ZVw8h5XXD91Ir1mHSzHAByCmyewoHsAjF
 Hd0vXJ66h0crlGAiIGHbrg8L7NEFDrQ=
X-Google-Smtp-Source: APXvYqytD0jXDxNGB+RJ2j/oyTGbwt3es0aMY9I8iZxSIJouavnFcYPCGTMymPN7FiVyiCy7qUDG9A==
X-Received: by 2002:a17:902:8bc1:: with SMTP id
 r1mr33014950plo.42.1563906980951; 
 Tue, 23 Jul 2019 11:36:20 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g6sm38548400pgh.64.2019.07.23.11.36.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 11:36:20 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/5] lnvm: introduce chunk-log command for chunk info
Date: Wed, 24 Jul 2019 03:36:00 +0900
Message-Id: <20190723183601.29370-5-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_113622_354401_91397486 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

To retrieve the chunk information from the nvme namespae for the given
OCSSD, we can just do like:
	nvme lnvm chunk-log /dev/nvme0n1 --output-format=normal

This will calculate the data length from the geometry data structure
which might be retrieved by a Geometry command(Identity for 1.2 spec.).
Then it will request get log page API for 1.3 NVMe spec to get the
entries which indicate chunk information.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme-lightnvm.c          | 37 ++++++++++++++++++
 nvme-lightnvm.h          |  1 +
 plugins/lnvm/lnvm-nvme.c | 84 ++++++++++++++++++++++++++++++++++++++++
 plugins/lnvm/lnvm-nvme.h |  1 +
 4 files changed, 123 insertions(+)

diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
index 2e665bf..8fa8f3f 100644
--- a/nvme-lightnvm.c
+++ b/nvme-lightnvm.c
@@ -465,6 +465,43 @@ int lnvm_do_id_ns(int fd, int nsid, unsigned int flags)
 	return err;
 }
 
+static void show_lnvm_chunk_log(struct nvme_nvm_chunk_desc *chunk_log,
+				__u32 data_len)
+{
+	int nr_entry = data_len / sizeof(struct nvme_nvm_chunk_desc);
+	int idx;
+
+	for (idx = 0; idx < nr_entry; idx++) {
+		struct nvme_nvm_chunk_desc *desc = &chunk_log[idx];
+
+		printf(" [%5d] { ", idx);
+		printf("cs: %#x", desc->cs);
+		printf(", ct: %#x", desc->ct);
+		printf(", wli: %d", desc->wli);
+		printf(", slba: 0x%016"PRIx64, le64_to_cpu(desc->slba));
+		printf(", cnlb: 0x%016"PRIx64, le64_to_cpu(desc->cnlb));
+		printf(", wp: 0x%016"PRIx64" }\n", le64_to_cpu(desc->wp));
+	}
+}
+
+int lnvm_do_chunk_log(int fd, __u32 nsid, __u32 data_len, void *data,
+			unsigned int flags)
+{
+	int err;
+
+	err = nvme_get_log13(fd, nsid, NVM_LID_CHUNK_INFO, 0, 0, 0,
+			false, data_len, data);
+	if (!err) {
+		if (flags & RAW)
+			d_raw(data, data_len);
+		else
+			show_lnvm_chunk_log(data, data_len);
+	} else if (err > 0)
+		fprintf(stderr, "NVMe Status:%s(%x) NSID:%d\n",
+			nvme_status_to_string(err), err, nsid);
+	return err;
+}
+
 static void show_lnvm_bbtbl(struct nvme_nvm_bb_tbl *tbl)
 {
 	printf("verid    : %#x\n", (uint16_t)le16_to_cpu(tbl->verid));
diff --git a/nvme-lightnvm.h b/nvme-lightnvm.h
index 7a8ef7d..19660b7 100644
--- a/nvme-lightnvm.h
+++ b/nvme-lightnvm.h
@@ -322,6 +322,7 @@ int lnvm_do_create_tgt(char *, char *, char *, int, int, int, int);
 int lnvm_do_remove_tgt(char *);
 int lnvm_do_factory_init(char *, int, int, int);
 int lnvm_do_id_ns(int, int, unsigned int);
+int lnvm_do_chunk_log(int, __u32, __u32, void *, unsigned int);
 int lnvm_do_get_bbtbl(int, int, int, int, unsigned int);
 int lnvm_do_set_bbtbl(int, int, int, int, int, int, __u8);
 
diff --git a/plugins/lnvm/lnvm-nvme.c b/plugins/lnvm/lnvm-nvme.c
index 754931a..6f2724a 100644
--- a/plugins/lnvm/lnvm-nvme.c
+++ b/plugins/lnvm/lnvm-nvme.c
@@ -1,5 +1,7 @@
 #include <stdio.h>
 #include <errno.h>
+#include <stdlib.h>
+#include <unistd.h>
 
 #include "nvme.h"
 #include "nvme-print.h"
@@ -127,6 +129,88 @@ static int lnvm_id_ns(int argc, char **argv, struct command *cmd, struct plugin
 	return lnvm_do_id_ns(fd, cfg.namespace_id, flags);
 }
 
+static int lnvm_chunk_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
+{
+	const char *desc = "Retrieve the chunk information log for the "\
+		"specified given LightNVM device, returns in either "\
+		"human-readable or binary format.\n"\
+		"This will request Geometry first to get the "\
+		"num_grp,num_pu,num_chk first to figure out the total size "\
+		"of the log pages."\
+		;
+	const char *output_format = "Output format: normal|binary";
+	const char *human_readable = "Print normal in readable format";
+	int err, fmt, fd;
+	struct nvme_nvm_id20 geo;
+	struct nvme_nvm_chunk_desc *chunk_log;
+	__u32 nsid;
+	__u32 data_len;
+	unsigned int flags = 0;
+
+	struct config {
+		char *output_format;
+		int human_readable;
+	};
+
+	struct config cfg = {
+		.output_format = "normal",
+	};
+
+	const struct argconfig_commandline_options command_line_options[] = {
+		{"output-format", 'o', "FMT", CFG_STRING, &cfg.output_format, required_argument, output_format},
+		{"human-readable",'H', "",    CFG_NONE,   &cfg.human_readable,no_argument,       human_readable},
+		{NULL}
+	};
+
+	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg,
+				sizeof(cfg));
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
+
+	fmt = validate_output_format(cfg.output_format);
+	if (fmt < 0) {
+		err = fmt;
+		goto close;
+	}
+
+	if (fmt == BINARY)
+		flags |= RAW;
+	else if (cfg.human_readable)
+		flags |= HUMAN;
+
+	nsid = nvme_get_nsid(fd);
+
+	/*
+	 * It needs to figure out how many bytes will be requested by this
+	 * subcommand by the (num_grp * num_pu * num_chk) from the Geometry.
+	 */
+	err = lnvm_get_identity(fd, nsid, (struct nvme_nvm_id *) &geo);
+	if (err)
+		goto close;
+
+	data_len = (geo.num_grp * geo.num_pu * geo.num_chk) *
+			sizeof(struct nvme_nvm_chunk_desc);
+	chunk_log = malloc(data_len);
+	if (!chunk_log) {
+		fprintf(stderr, "cound not alloc for chunk log %dbytes\n",
+				data_len);
+		err = -ENOMEM;
+		goto close;
+	}
+
+	err = lnvm_do_chunk_log(fd, nsid, data_len, chunk_log, flags);
+	if (err)
+		fprintf(stderr, "get log page for chunk information failed\n");
+
+	free(chunk_log);
+close:
+	close(fd);
+ret:
+	return err;
+}
+
 static int lnvm_create_tgt(int argc, char **argv, struct command *cmd, struct plugin *plugin)
 {
 	const char *desc = "Instantiate a target on top of a LightNVM enabled device.";
diff --git a/plugins/lnvm/lnvm-nvme.h b/plugins/lnvm/lnvm-nvme.h
index 3d5cbc5..f091f7b 100644
--- a/plugins/lnvm/lnvm-nvme.h
+++ b/plugins/lnvm/lnvm-nvme.h
@@ -12,6 +12,7 @@ PLUGIN(NAME("lnvm", "LightNVM specific extensions"),
 		ENTRY("list", "List available LightNVM devices", lnvm_list)
 		ENTRY("info", "List general information and available target engines", lnvm_info)
 		ENTRY("id-ns", "List geometry for LightNVM device", lnvm_id_ns)
+		ENTRY("chunk-log", "Chunk information by Get Log Page", lnvm_chunk_log)
 		ENTRY("init", "Initialize media manager on LightNVM device", lnvm_init)
 		ENTRY("create", "Create target on top of a LightNVM device", lnvm_create_tgt)
 		ENTRY("remove", "Remove target from device", lnvm_remove_tgt)
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
