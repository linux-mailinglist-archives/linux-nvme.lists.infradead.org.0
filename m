Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9987121B75
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 18:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qNcjxqTm89u2xU2xuZnb25UZBZVb+AdivoXEZVtOTMg=; b=fXM
	R4YPgpMZ+ESCSYIRKi1yVYVVo6bkJtwh+2sOJ1nbL8s1rHmhzVXG+6GLQ7Xt7cb2zrCResGA79j+o
	r/LOPWu1ehJOlf9nOc0xHxXA8StBWmBEwGdBaDeWOq/9/YAusutCLVXYtNpm2Z4+LlinJSeT4E3Q2
	Ef+Zm6qryTBmgyvDQ86jU8f3225PhXX7d+t5StiNy9CYQIjNG/7np99hQxIuR12DOQE4ue1NPz1Z8
	qXQ9l60zxeC25F76R215++wLy4dpGDRY5nW/O3PjsGKlFWgsW5VOz53My74/1A55ELemzf2m86KZL
	sK++ONEnOfSckSwOvMzbvc0S3LV1bOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfZz-0005k5-54; Fri, 17 May 2019 16:19:31 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfZt-0005j0-4z
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 16:19:27 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:19:23 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 17 May 2019 09:19:23 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: Fix known effects
Date: Fri, 17 May 2019 10:13:46 -0600
Message-Id: <20190517161346.25102-1-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_091925_669860_FD668E6C 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Maxim Levitsky <mlevitsk@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We're trying to append known effects to the ones reported in the
controller's log. The original patch accomplished this, but something
went wrong when patch was merged causing the effects log to override
the known effects.

Link: http://lists.infradead.org/pipermail/linux-nvme/2019-May/023710.html
Cc: Maxim Levitsky <mlevitsk@redhat.com>
Signed-off-by: Keith Busch <keith.busch@intel.com>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f2411d50e764..5175451916d1 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1273,9 +1273,9 @@ static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 		return 0;
 	}
 
-	effects |= nvme_known_admin_effects(opcode);
 	if (ctrl->effects)
 		effects = le32_to_cpu(ctrl->effects->acs[opcode]);
+	effects |= nvme_known_admin_effects(opcode);
 
 	/*
 	 * For simplicity, IO to all namespaces is quiesced even if the command
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
