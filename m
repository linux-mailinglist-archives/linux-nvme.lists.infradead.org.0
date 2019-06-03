Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A77D337E2
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 20:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=J8UEv2p1HmGbOpfpMUTtZS9N9LjDBEvHpEojUroZjhg=; b=i6N
	ngIOZQgKQ6CXYUCnoqvRNZJ5erb0sUbbhNRSrKn8aCmIaIoVTOFnUnPqtaOLb6FObwZ7YXSu5a5jK
	M6GRjVKp2Od1P3ikC6BpCLw20iVC71mhHH12QtI8+hsO5KjrFPkxm9RNrhZDc3ztpDzqf52QmPmzV
	fLj+VbEVjbK1D5m9XpkMFWUNX0FRKBCZDYLR/9q4Ja1m6QYkAGgw+A5esC0YBFglgG7YAlnzZRsMC
	z1sNoSB7zSYJIE4F4o/vTTULwE8Bk+gZugpRyXpJIG3hlE3pSgdxft4Xh+uFVjGGKOP29BabM/vUa
	jWYyGWp/MVurXzbI00azc1UNGqXaogA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXrkk-0001Q1-Rh; Mon, 03 Jun 2019 18:32:14 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXrkf-0001PV-Pb
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 18:32:11 +0000
Received: by mail-pg1-x543.google.com with SMTP id w34so8744425pga.12
 for <linux-nvme@lists.infradead.org>; Mon, 03 Jun 2019 11:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9ELX+27qWaiIS1VCYruUUkn/li7PxyGSbQoS3oUnGjk=;
 b=DQRBQhKiYw43Am3mduxEBIGDtOqVOV+n7cEt8eG/kHm8zouykTVZjt9V8ZQ27MTTX9
 XVgCveKXsDsV4prEQSOSt05pum2H0lIFwYAzJ7OpZFv7rEWrptLXQDVExODYtDx+Tq1j
 IsSp8n/B+OfXJEWmAljWiFWieh+adWHek4BxNIxGmUvdBwYCwVQlsYnjz5/DUqQvQaB0
 fuHwl+IbhXC1h6qnMdHN0m0M40mEZe6ZFoE5Dhg6vHO4nt45ZtRxooV5rP9adoMLZxMi
 AnMK9tQt1fLsO9dzGRCXZMvzB6y2sYlrjl+mOvMv9Kt9ZQDaC7FAm2q3MEz8Bjox78+F
 JBtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9ELX+27qWaiIS1VCYruUUkn/li7PxyGSbQoS3oUnGjk=;
 b=nzcomU4spAo+Q6vgIED3GcW/sqqQoOivDehdt1PxpV/jzbLnthv9Q4EieuL7IXVAIA
 wyS8oCtiFj7tzsYM/ULuf91RCyIAq4S2YTQ6wYaFEZHcQiTLAgw6dTrukXDD314CfdLe
 jE6aIF047Dt55TM8O4rvg9WL/SKCwRpRjry31HN3SYMRmAI1azoN9OVJPtSt74Xi+vh5
 Ll0jl0vqMiVFks/5Uer3HO+BXg9SktvygznzsONT4FNi/rL7rIOnljlhF7OPrNZ2dgu8
 gHnwGkuAkdVNCmmF8U+lvSzIANk5dKT8He7ykoXAiJr250G1UfTpV9OntgCxRIfIoPXW
 xr2Q==
X-Gm-Message-State: APjAAAWBmVj77aiJxd2kVZ2+e3xTpwYkKWFODjmOOvDm/Emw7ceFam+d
 LUKIVeRAJfq6CHXWOiNeIChP6B41
X-Google-Smtp-Source: APXvYqxOLVlk6MJlRIMw0GmDH31p0mo1BJHuNCAZSqUsb+MBMLbdnzBva5vd0Bxwcp4KhjB8xC2JSw==
X-Received: by 2002:a63:158:: with SMTP id 85mr30880153pgb.101.1559586728331; 
 Mon, 03 Jun 2019 11:32:08 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o20sm11904470pgj.70.2019.06.03.11.32.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 11:32:07 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3] nvme-fcloop: Add support for nvmet discovery_event op
Date: Mon,  3 Jun 2019 11:31:48 -0700
Message-Id: <20190603183148.25051-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_113209_855773_AEFDD4F4 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
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
Cc: James Smart <jsmart2021@gmail.com>, aeasi@marvell.com, sagi@grimberg.me
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Update fcloop to support the discovery_event operation and
invoke a nvme rescan. In a real fc adapter, this would generate an
RSCN, which the host would receive and convert into a nvme rescan
on the remote port specified in the rscn payload.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>

---
This is a report of a v2 patch that triggered a sparse warning
v3: convert fcloop_tgt_discovery_evt() to static
---
 drivers/nvme/target/fcloop.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index 381b5a90c48b..b8c1cc54a0db 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -231,6 +231,11 @@ struct fcloop_lsreq {
 	int				status;
 };
 
+struct fcloop_rscn {
+	struct fcloop_tport		*tport;
+	struct work_struct		work;
+};
+
 enum {
 	INI_IO_START		= 0,
 	INI_IO_ACTIVE		= 1,
@@ -348,6 +353,37 @@ fcloop_xmt_ls_rsp(struct nvmet_fc_target_port *tport,
 	return 0;
 }
 
+/*
+ * Simulate reception of RSCN and converting it to a initiator transport
+ * call to rescan a remote port.
+ */
+static void
+fcloop_tgt_rscn_work(struct work_struct *work)
+{
+	struct fcloop_rscn *tgt_rscn =
+		container_of(work, struct fcloop_rscn, work);
+	struct fcloop_tport *tport = tgt_rscn->tport;
+
+	if (tport->remoteport)
+		nvme_fc_rescan_remoteport(tport->remoteport);
+	kfree(tgt_rscn);
+}
+
+static void
+fcloop_tgt_discovery_evt(struct nvmet_fc_target_port *tgtport)
+{
+	struct fcloop_rscn *tgt_rscn;
+
+	tgt_rscn = kzalloc(sizeof(*tgt_rscn), GFP_KERNEL);
+	if (!tgt_rscn)
+		return;
+
+	tgt_rscn->tport = tgtport->private;
+	INIT_WORK(&tgt_rscn->work, fcloop_tgt_rscn_work);
+
+	schedule_work(&tgt_rscn->work);
+}
+
 static void
 fcloop_tfcp_req_free(struct kref *ref)
 {
@@ -839,6 +875,7 @@ static struct nvmet_fc_target_template tgttemplate = {
 	.fcp_op			= fcloop_fcp_op,
 	.fcp_abort		= fcloop_tgt_fcp_abort,
 	.fcp_req_release	= fcloop_fcp_req_release,
+	.discovery_event	= fcloop_tgt_discovery_evt,
 	.max_hw_queues		= FCLOOP_HW_QUEUES,
 	.max_sgl_segments	= FCLOOP_SGL_SEGS,
 	.max_dif_sgl_segments	= FCLOOP_SGL_SEGS,
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
