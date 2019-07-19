Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220286EC9F
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 00:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sg+6S9gKJG22ZX90LQb7YlING3JKvOpVcmuKaVdOT5c=; b=FDLoutj2HgPcKZXChCk1TqUqju
	UIwfdW8iWp/DJnPl8FSvSz839fXr5o2IM1OQMP+uyanHvw7CdLU6c59FQGf5XrlJrEgloPBrf1NhU
	fyzKQ5gKnz/ItlrYg/+WIa8YQasw19Jc4i9gRiRhCYGjDNqISZvAwZfZjI4bKzKKX6OwqP6YYhCLY
	k0+2+sKe+MKMaac8T60+nMnKPo0awF+tqrco+4TMjALah8je7uNSgel3floCgA3iWVxB8WRW/idmA
	xRgeNEoNGqXcfC2nilSArAH9coR5l1hBt3Jdknq1pQQD6Ktugj1/0c1hflnPhhVJH+/kNPAXCnlsP
	Z56sLPVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hobmp-0002X4-IX; Fri, 19 Jul 2019 22:55:35 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobke-0008TO-Uu
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 22:53:22 +0000
Received: by mail-pg1-x536.google.com with SMTP id s1so8753999pgr.2
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 15:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NksHtdQyJdJkIjvlGy0q4JFawSdHCsCHbNy0dSy1IJM=;
 b=MxmMnm/kKJSc/v9e3I5DuU2yGWSYl0nLmL3nM8GIU00ZgWr92oWbGfMCsi4jOIJsOF
 3Cn0Ywj7CTWCdGmPx1YFb6x2p02jM9qAe9GqymSN0+KF6VoCobjeu3wYZGU0AIj5HY+I
 CL2TazwZvFlGSXFVhEuUQTQvx2Abf1lXW9e0Zc4PQxTIqY3I+dkCFwl4h0ly0dhuysWb
 mfVjBK5tpGWFgXyux0gtt9NlXa4ydpy9d4f2WoKBTN1S+YD/ZKXjJygs2uMA5eXVv8ee
 m6K0LjpORTI1K/kS9eQScYFw8OKmyEKJEhJBTnfNmmrkrqbSlc8D3M1z20n5Thux5Jfs
 MqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NksHtdQyJdJkIjvlGy0q4JFawSdHCsCHbNy0dSy1IJM=;
 b=sozPBf2DAPOAocEQPZpmitV/x2LBKkMRXTk1PnLGVPIc+W7VNbgtTCke/k4VkqPMUq
 I6XbLpm+klqj2AuahkY0H6ceTIw1WbL3FLhqhUJ3f+vTaonlF8dFMiFSGbeSwEBrgFpT
 bCfOED6mEkrbx3vjvF7x7iR7jEq9PF6gXo2Rlqbjo4vhzJ/YvPfBUDwQBCfsWNWm/Ero
 uhLlnRgCL470QUyEqJ3lG0Xb7NWyY90RZTqqKH48xfZxf8Df/3FtE9aDDeGj6R8/aQuF
 N8LoWh/zwmQYy50krHFsrmOyJ++wX3Y+cAk/2fYuhuY4fZtrEjxVtawEmorvcFQikt27
 hq6Q==
X-Gm-Message-State: APjAAAUbhW5uNfmWtaHa8u77zTVbbmObfhqAbL2QaY4uTlf43QtmStLH
 I/OIlpLmJQCQPanHb5BrdwgXe5tq
X-Google-Smtp-Source: APXvYqzG3FiaTVztzizDtpJ/7Wx33ibQBLdrV5U2btCiklG+wMbs5KgQF7WX6yWKLV4gZWsPlXwORQ==
X-Received: by 2002:a63:c009:: with SMTP id h9mr29350989pgg.166.1563576799929; 
 Fri, 19 Jul 2019 15:53:19 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w3sm27823645pgl.31.2019.07.19.15.53.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 15:53:19 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 07/10] nvme-cli: Add routine to search for controller with
 specific attributes
Date: Fri, 19 Jul 2019 15:53:02 -0700
Message-Id: <20190719225305.11397-8-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190719225305.11397-1-jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_155321_020031_9D339914 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In preparation for searching controllers to match with connect args:

Create a new routine find_ctrl_with_connectargs() that will search the
controllers that exist in the system to find one that has attributes
that match the connect arguments specified.  If found, the routine
returns the controller name ("nvme?"). If not found, a NULL is returned.

Routine is defined as a global as a subsequent patch will use it
from the fabrics routines.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Hannes Reinecke <hare@suse.com>

---
v2:
  change "ctlr" to "ctrl" in fprintf
---
 nvme.c | 37 +++++++++++++++++++++++++++++++++++++
 nvme.h |  1 +
 2 files changed, 38 insertions(+)

diff --git a/nvme.c b/nvme.c
index 7f706c8..e4fdb4e 100644
--- a/nvme.c
+++ b/nvme.c
@@ -2048,6 +2048,43 @@ cleanup_exit:
 	return found;
 }
 
+/*
+ * Look through the system to find an existing controller whose
+ * attributes match the connect arguments specified
+ * If found, a string containing the controller name (ex: "nvme?")
+ * is returned.
+ * If not found, a NULL is returned.
+ */
+char *find_ctrl_with_connectargs(struct connect_args *args)
+{
+	struct dirent **devices;
+	char *devname = NULL;
+	int i, n;
+
+	n = scandir(SYS_NVME, &devices, scan_ctrls_filter, alphasort);
+	if (n < 0) {
+		fprintf(stderr, "no NVMe controller(s) detected.\n");
+		return NULL;
+	}
+
+	for (i = 0; i < n; i++) {
+		if (ctrl_matches_connectargs(devices[i]->d_name, args)) {
+			devname = strdup(devices[i]->d_name);
+			if (devname == NULL)
+				fprintf(stderr, "no memory for ctrl name %s\n",
+						devices[i]->d_name);
+			goto cleanup_devices;
+		}
+	}
+
+cleanup_devices:
+	for (i = 0; i < n; i++)
+		free(devices[i]);
+	free(devices);
+
+	return devname;
+}
+
 int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root))
 {
 	const char *desc = "Send an Identify Controller command to "\
diff --git a/nvme.h b/nvme.h
index 2fecb68..b91a22c 100644
--- a/nvme.h
+++ b/nvme.h
@@ -190,6 +190,7 @@ struct connect_args {
 #define SYS_NVME		"/sys/class/nvme"
 
 bool ctrl_matches_connectargs(char *name, struct connect_args *args);
+char *find_ctrl_with_connectargs(struct connect_args *args);
 char *__parse_connect_arg(char *conargs, const char delim, const char *fieldnm);
 
 extern const char *conarg_traddr;
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
