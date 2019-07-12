Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91215662EF
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vpGvkTlcwoODTPFrDYuAMbCzOVhxpsWlo3aCWvYCuoo=; b=FXndpTLo7deXplpvbhBVDQAPBV
	j6HIDnbifLXo0LwCGSk3FlhSHdCtqU5coZLxuEf+00ATxcqsV8GYoXWq1qVw69zb7ivV6NGwH14fS
	Cq8eW522HwfuzyhK/ejOGy8YYz7+E0QzZ7JAhis0xwQYQzkEKuSB26/IXGcqNErYST1g6YvE/CI6d
	pstBNAH0oDjNlZD0DFkJbwtpd03aHSIEf31YRCRjbYprSQPBxwW/EEmZ1cTwFq3lSNU2ime5qT2b3
	LyO3b6dbXG5r5xLkYm6BAQB92krdXZE7gJe3tNugQui919eIzA59DM5euiUfL/BJULi8wgmPcpCSu
	DIFijINA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljWl-0003eK-EW; Fri, 12 Jul 2019 00:35:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljTk-0001ZW-EY
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:32:01 +0000
Received: by mail-pf1-x443.google.com with SMTP id y15so3509477pfn.5
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=f/Ib/z+t+VthJGFePxcYyIHPlbU9TKBkYynYEK2vkXQ=;
 b=pWVtPGMBnG77ouUDg8lB1j7838R4PjANB+AjRkvdPG+oYYBQXLln/aDEVwuPuV3O8q
 FScOLt89tjgERX15ZS+USchC1SbDaMWAwb9kttDL2HWkSt2qAwf3Pty0j9vj7DJ89040
 gELHjtSgD3tXprL09J6NPEVqnM07dlItVaSGjPB4qFCHbG/7iZC1BQ52ueLOu3eubg5h
 zT1R9LO411qSVbTEl+bj/9sv1U5SDcgIaKTJBR5NiAse9AtdrljCVTbOlKjz44xCha9p
 PAaa+CXRTDcyzZ3gaqQ6VH2ChiD1SBqDPcl0OMZ45H6YjYS63GFQgCd0nFV1E1ec2qG2
 na+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=f/Ib/z+t+VthJGFePxcYyIHPlbU9TKBkYynYEK2vkXQ=;
 b=LO+fLyDvppt7+YaCOtlCahXue5Y1ufutxveJvPMChbc+a+bGfXEOT6hTXAKdCldNOK
 35qynf7af6Hg+BnkLP466nAVUEWZzpndy26a/AuLlw3pi+lDcic7JrE7oi8U1TSE0eD+
 ODtqI3/wlh4VjdsbKA/vFLHtb3FeKfaghjT5NLrSoqLyIg9iHAtk0J/Y/Xkl3boIHO/S
 Nog1I1uXm8oWcB4enKusqSQ3HUhbi/SLwj/oRh9PMQ8dqq1xiP9MGD2M4fZYQcv1lbXl
 Cj+UqdzMGR9NkVXBGnDc5ypCMnKAnP1xKgzL7dh5KGvCeuGO2BbWPYxu3yOX/t1t6PgQ
 4WHg==
X-Gm-Message-State: APjAAAURI8jC4Q3JWkd9FnNVSM37ZxAdeeD5Z6gabAqP6mlbQ7ogjbj/
 8Gki8zcPCXt4lIeTakmfcVSPOsT7
X-Google-Smtp-Source: APXvYqwfz/y+KJRbJ6VJTHTW862Lz7FqDfl2uGr3lw+cR2e+q9k5WzcFa0PbQufeVlve3sVY34z3Yw==
X-Received: by 2002:a63:7a06:: with SMTP id v6mr7431621pgc.115.1562891519355; 
 Thu, 11 Jul 2019 17:31:59 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u69sm11480522pgu.77.2019.07.11.17.31.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 17:31:58 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc v2 07/10] nvme-cli: Add routine to search for controller
 with specific attributes
Date: Thu, 11 Jul 2019 17:31:37 -0700
Message-Id: <20190712003140.16221-8-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190712003140.16221-1-jsmart2021@gmail.com>
References: <20190712003140.16221-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_173200_570936_F5CD7EB7 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
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
Cc: Hannes Reinecke <hare@suse.com>, James Smart <jsmart2021@gmail.com>,
 Sagi Grimberg <sagi@grimberg.me>
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
CC: Sagi Grimberg <sagi@grimberg.me>
CC: Hannes Reinecke <hare@suse.com>
---
 nvme.c | 37 +++++++++++++++++++++++++++++++++++++
 nvme.h |  1 +
 2 files changed, 38 insertions(+)

diff --git a/nvme.c b/nvme.c
index ef3c61c..314a04f 100644
--- a/nvme.c
+++ b/nvme.c
@@ -2050,6 +2050,43 @@ cleanup_exit:
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
+	n = scandir(nvme_ctrl_dir, &devices, scan_ctrls_filter, alphasort);
+	if (n < 0) {
+		fprintf(stderr, "no NVMe controller(s) detected.\n");
+		return NULL;
+	}
+
+	for (i = 0; i < n; i++) {
+		if (ctrl_matches_connectargs(devices[i]->d_name, args)) {
+			devname = strdup(devices[i]->d_name);
+			if (devname == NULL)
+				fprintf(stderr, "no memory for ctlr name %s\n",
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
index 537b8dd..04f8d46 100644
--- a/nvme.h
+++ b/nvme.h
@@ -188,6 +188,7 @@ struct connect_args {
 };
 
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
