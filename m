Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E1B662F1
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+qp05Nc7mRHIvHSDBFL5GK8CAhB7x7AGRorrPUGw90Q=; b=ed7h2NUczjlTVswUX22sn66Bww
	gKiPrWyebf6H5PBZ23071OBEngTLNfkgo+V/eCrPDV1ufc56Nfj7vOcohthYBge0nFBW97ocJ1Ha+
	5HJL/zYXnDYzv5cEo7iKQDRjBTa12ZTZYF5lZ7lc83HP2mNWEZDJZFTUJDaNC79BQQ7U88UZU68g+
	Ff+keca7POOkektsLCNW7xFptPVBl+bpq2pAmemPAqqG8aToZDJzMXyzl2PVLwC3pfM4d6owyUc2u
	xyMlPBHAntwA8+jj3W/2NoyfIPRQsVpytVccip86LlFH13CBAFmg4s1tn4pWcmd4ts/S8yJ9gIR95
	EC2RW0Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljXQ-0005GL-2q; Fri, 12 Jul 2019 00:35:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljTn-0001ap-87
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:32:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id c73so3491683pfb.13
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6IUC7kI2+9CWqesAjEzkBLJ4xhZ/dzNvw7VVROILNVk=;
 b=t8EaVU80G3vwyE33N1u7C2RkMI6UKJbBhrnDeqCbdS8AXNegmJBZq1bo87/VqRHx2l
 MfvluNsb0fHqOIO+nAaEs7CWkYAnFj0Cv7ors0gg8awMmXXWUdy0VgmxK4JRY0Vv4jZy
 XhMPBf6aF5hBmIknoOq6w0gBaD0WYvST3ewgmUr7x+fi3wyRB6KuGFMrYDKQxS2TQn7B
 m6/rfDF832U27Iw5A5JnOXlzGfeoCV41bzl94WEIE4ERULoakMKLUjxxLFOfdgTfS+rD
 r/KDpbov2cq37NOx/d6XRibXi+iwNv6YT/CUPnDSWvWq0ezcA7mjs6eHKBAdtVT8DYh8
 hepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6IUC7kI2+9CWqesAjEzkBLJ4xhZ/dzNvw7VVROILNVk=;
 b=CMSEgMKmDIu02oJO+v889NyhH8QbNQ6w7IdYk7vAy8M7pN2VLQ/6ebVdOigIr3WuDh
 amlmeUGQ80rr+S49dFB+j8990IZVuKzBDDqPLAviYU0Bm8+6VuPzErMhrM9Zbt0GJ/kn
 GIR1CmII7tjBYwvpLgR6ndVkGQ/h6laoIuLkfkWw2xJhEuHjXHDM3AJ8vJxjL8YxBLCs
 SHtse5052pRzzOZsVPvA+uSxY5AAdqoze87+/6oTiUi8VsyHs2/dEnNxI/YNoWgdPnn3
 t+/ntuktyiO5Aszn+SDXnGxKSdeWH7PYW0FIU4RyrjZ7ZQA5BH8gqzzD1Az80O3zNPwj
 FWxA==
X-Gm-Message-State: APjAAAWH+yMcMFLFva4RvUJ2pCTS2tJtNlbA43H0lfq91a1YDCZLAuhG
 0bT0bGxPZD8P7gzlQjlOTFX7/wI9
X-Google-Smtp-Source: APXvYqzhCmAR1y8c5hAFBrgwgY/co7iCR1NYBQyJP0/Z9ygAK5LKKOJDKLC2jAahcm9TBUX6NYhh9A==
X-Received: by 2002:a63:8f55:: with SMTP id r21mr7291155pgn.318.1562891521595; 
 Thu, 11 Jul 2019 17:32:01 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u69sm11480522pgu.77.2019.07.11.17.32.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 17:32:01 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc v2 09/10] nvme-cli: add --quiet option
Date: Thu, 11 Jul 2019 17:31:39 -0700
Message-Id: <20190712003140.16221-10-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190712003140.16221-1-jsmart2021@gmail.com>
References: <20190712003140.16221-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_173204_950859_B5254522 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

Now we are going to have discovery log change events, so
instead of trying to figure out which NVM subsystem ports
are already connected, we let the driver do that and
only suppress the failure messages.

Example:
  nvme connect-all ... --quiet

This option will be used by the discovery log change corresponding
udev rule.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index e101ead..13e2cf8 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -67,6 +67,7 @@ static struct config {
 	int  hdr_digest;
 	int  data_digest;
 	bool persistent;
+	bool quiet;
 } cfg = { NULL };
 
 #define BUF_SIZE		4096
@@ -219,9 +220,11 @@ static int add_ctrl(const char *argstr)
 		goto out;
 	}
 
-	if (write(fd, argstr, len) != len) {
-		fprintf(stderr, "Failed to write to %s: %s\n",
-			 PATH_NVME_FABRICS, strerror(errno));
+	ret = write(fd, argstr, len);
+	if (ret != len) {
+		if (errno != EALREADY || !cfg.quiet)
+			fprintf(stderr, "Failed to write to %s: %s\n",
+				 PATH_NVME_FABRICS, strerror(errno));
 		ret = -errno;
 		goto out_close;
 	}
@@ -855,10 +858,13 @@ static int connect_ctrls(struct nvmf_disc_rsp_page_hdr *log, int numrec)
 		/* already connected print message	*/
 		if (instance == -EALREADY) {
 			const char *traddr = log->entries[i].traddr;
-			fprintf(stderr,
-				"traddr=%.*s is already connected\n",
-				space_strip_len(NVMF_TRADDR_SIZE, traddr),
-				traddr);
+
+			if (!cfg.quiet)
+				fprintf(stderr,
+					"traddr=%.*s is already connected\n",
+					space_strip_len(NVMF_TRADDR_SIZE,
+							traddr),
+					traddr);
 			continue;
 		}
 
@@ -1063,6 +1069,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		{"nr-poll-queues",  'P', "LIST", CFG_INT, &cfg.nr_poll_queues,    required_argument, "number of poll queues to use (default 0)" },
 		{"queue-size",      'Q', "LIST", CFG_INT, &cfg.queue_size,      required_argument, "number of io queue elements to use (default 128)" },
 		{"persistent",  'p', "LIST", CFG_NONE, &cfg.persistent,  no_argument, "persistent discovery connection" },
+		{"quiet",       'Q', "LIST", CFG_NONE, &cfg.quiet,  no_argument, "suppress already connected errors" },
 		{NULL},
 	};
 
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
