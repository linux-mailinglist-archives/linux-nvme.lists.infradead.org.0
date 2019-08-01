Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BD57E650
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Gr79rj14eBqi2eHPuAT8i0DvZi9vEDgUTkJpUW4BZQU=; b=eWCmM5smIC7khBbFLtSSqf+fqe
	H008KM/nwcLO0JTUZ3E3utu9sdxmYrMKCTzaY0gtdCnvqRVQaFheTiSZrgHOGENcLthQjGWvae7rP
	x0FqVjbr2Pga0fgXfQHi43UCVaMXUlj5K2ZWcva26fz0yn7hgI1O/zUi6J6UxRVgi141zbWRG6Xzg
	et/qbLix2UxnvwWCMd72b/NzioG7ml0pET6rWvC8wlVJucW5XG/3TQZWbt92FvxnapJ+O8VEIv4lQ
	NI0xuHv2MkKGdB78Khzm7GkD00zvXKFXC0h3lbqh5tqwkR8JhkDKw5u7knP0ak9FcDklqfGCKULkr
	/XTENJjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKI3-0007En-9s; Thu, 01 Aug 2019 23:15:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGp-00059X-5h
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id g2so34929124pfq.0
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=phUPlJ4bFwnT5ColvzHABgXVifRV46pmGqZruPA86ws=;
 b=s4PA8e0efaqdopLz+D6jnrcerLL/+qPTuNUYiGA86UMy8mr+9kwuezb8/xN/MXYCiL
 KeiDLf0aYxhdu/vJXQxlaiBd71dZlcnkiotQQvm8yNvP80oNU3X7E6tH7yOH7tFEOUbN
 ZbFjBVswljM51DtOuFe4EY3O//yBcOZ34e8cnJ94qlZPqxjg1THvPHasqBPtFlMxaQeK
 BvIugd1d/yiZ/p0Nzh36dCRhrBlVEhaBYU+I5h2XihgvtwzF4fGL5+FDShQklrquAFu4
 h0hNxZ67qlNywY32A138RusTgaRpDXtqTjOMnXcZELFZkX4eDOTnU+NHk7b2/IHCePp3
 DAZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=phUPlJ4bFwnT5ColvzHABgXVifRV46pmGqZruPA86ws=;
 b=c+n4yHHLHqmOyAuQA50IyjsP7tJ6fPWW1RQxxiYCmzyUM28f3/8MGDkZNauJF94SnU
 dDAkfDbCWPJStz9IrG6zO8UimTCzOfPbpzVL2gQWXYcCIQ3nfcu0bCCroPFxPlpPgSlS
 8h6+5pz0BeLsN5FHX6iesLHrCFa3bAEebZz4Bt3nzso3AykmG3QFDS2I4XnZs7NqdfD3
 9IGhmkuKYedQF6iKssG5WVvzYka93bxbSUbQ/M1b8lhBpSK841XcyePRmcBpwND3Y5ER
 jGh4/iOsj2FjinCL2tggE1NxUeawDrA8hhzwSrnVbwZZUalPFXiNoIixUtyLcProxZeg
 UFXw==
X-Gm-Message-State: APjAAAVA2LQ9SkS2sW6d8eE4JdMdou91H3b2taEBhCqIKEXstpM4Lja/
 80KTIv05+anVYMVh8nBFK0lWgeq/
X-Google-Smtp-Source: APXvYqxsBlsjfPffUWMPGpWoqmFf0zK5O/FySsi9ilzNGOSo7QeDkRSI2ZlJmj9Pk7hecDMQYWX5bQ==
X-Received: by 2002:a63:184b:: with SMTP id 11mr61325083pgy.112.1564701242095; 
 Thu, 01 Aug 2019 16:14:02 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.14.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:14:01 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 07/10] nvme-cli: Add routine to search for controller with
 specific attributes
Date: Thu,  1 Aug 2019 16:13:45 -0700
Message-Id: <20190801231348.21397-8-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161403_220959_B328A411 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 nvme.c | 37 +++++++++++++++++++++++++++++++++++++
 nvme.h |  1 +
 2 files changed, 38 insertions(+)

diff --git a/nvme.c b/nvme.c
index 875b2c8..bbf1a2c 100644
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
