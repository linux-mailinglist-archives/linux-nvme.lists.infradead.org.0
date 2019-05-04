Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D65213673
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 02:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2Hp8O6PT4ru2AAFTqLwHFsfC3YEmySepvGdx02pjcmE=; b=VRsmNQHHtaBUMLhVG7WNk5waj4
	C3RFn+3b3TdmmZko6nKXUv+F/TLBRfbTQCCsAP/cxbrUpXfaT2Kd5UPJM4H3iCj0ONtBvwwQhLWqy
	Ebs1Yc3BJXUTyLulkonLAzd+sixtMmzy9MMGd0imNWgJHMP6iLaA44UEX56klj/nMfjOndWsKuXzC
	sNgPYRSop5VDyqql7Z2YoQed3GIVR1pbYYpUwHuMjs+4LRT5V5eDYeG6lJoUqREPk4t6zLYEd4/Rq
	VNAfy27JICINRmmfPfhKBzI6xKMRvF8b7PdpqhpggTIY+t8y6maz+/ZLIjlnzKRe9LIehu0aI16ru
	PME23hLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMiBW-0005HG-1j; Sat, 04 May 2019 00:05:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMiAv-0004dT-I1
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 00:05:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id j26so3474213pgl.5
 for <linux-nvme@lists.infradead.org>; Fri, 03 May 2019 17:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XF3dMrJaPWDSg2p0lWFHUjXBVboBRBKyS+5mnMMK0UA=;
 b=iPAZoU0iBiRvUcrqtvIfdhazJd/As0tW+Xl3nJRut/j6+a3N5PrcZ7B7WxyvGc7vm9
 dQfBqGJf6unzakohiN510+MDDlrNFeYAhSqV44ZJ9JmXlLCn/LjId7b+JJ9qECwFWJfq
 Cn1AilKamw5AYoiXvZsgOvgSJBRAH8vVd7MzyPeW7LK2KHXF9QnZ28ezfpZpUknHYV+H
 JKFDjTrTof0yf9Yl2qRZy8coMKPhOEzTkMjiGNLxH7ncHMKd/qn4wHSJ/UhwJhEhg66J
 19r9LJixy2t37b+O9w10NqWe83OaEzXd9RgC3tmJgsmIYzqi274Fv529XH6FmPyuUrZH
 1jtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XF3dMrJaPWDSg2p0lWFHUjXBVboBRBKyS+5mnMMK0UA=;
 b=mnmqr4c6Fvpjnrg2daNqyVAXlLVMgHJGE4E04gpY5NgzNY/IaiJRGBkWkFkAdboyRa
 lXHBLXWbwEzBoXPyb2gCmWLvOqLEvfSldaN/1EgoztwnjdjA4G/ZfKEcGu5ZbiFyrRza
 /sIZpUnfPlpuTEeLSWhi8RlK+fFKHxYP0tAOaxgfgKrqIsw7gTyRF3vAoWQd/MWs/tMI
 3ypLZp6M19LQhVW03lPQdiaS+xY4CYYs/SHxKRqSqjmILYlH5lA5mC9sqVvruxg7vfBq
 OD2GrnST5LD9X/JERQLM5BiSPxsnIE+tJH7yvnqFVIIwEZ9v2mUOkII/5goDBORA4UPU
 99cg==
X-Gm-Message-State: APjAAAWek393ZLoJRO5nU+ee7jSTtD5N5BkujAJ2quCyKXDRgWLvelv8
 jhswow2fB7U30QFVG5d838c9Oh4s
X-Google-Smtp-Source: APXvYqwEtKNR+oa9eyiGatiYwCsG8cDe1a4AJ1sv8k0So6ildl/Aut6g9TONIabjeQ+60GCrcJkZBw==
X-Received: by 2002:aa7:881a:: with SMTP id c26mr11432848pfo.254.1556928308915; 
 Fri, 03 May 2019 17:05:08 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id t65sm6461446pfa.175.2019.05.03.17.05.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 May 2019 17:05:08 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH nvme-cli rfc 4/5] fabrics: add --quiet option
Date: Fri,  3 May 2019 17:04:55 -0700
Message-Id: <20190504000456.3888-5-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190504000456.3888-1-jsmart2021@gmail.com>
References: <20190504000456.3888-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_170509_593209_E905F09A 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This option will be used by the discovery log change corresponding
udev rule.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 fabrics.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index a80c11c..dc6b824 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -66,6 +66,7 @@ static struct config {
 	int  hdr_digest;
 	int  data_digest;
 	bool persistent;
+	bool quiet;
 } cfg = { NULL };
 
 #define BUF_SIZE		4096
@@ -216,9 +217,11 @@ static int add_ctrl(const char *argstr)
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
@@ -840,6 +843,10 @@ static int connect_ctrls(struct nvmf_disc_rsp_page_hdr *log, int numrec)
 		/* already connected print message	*/
 		if (instance == -EALREADY) {
 			const char *traddr = log->entries[i].traddr;
+
+			if (cfg.quiet)
+				continue;
+
 			fprintf(stderr,
 				"traddr=%.*s is already connected\n",
 				space_strip_len(NVMF_TRADDR_SIZE, traddr),
@@ -1002,6 +1009,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
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
