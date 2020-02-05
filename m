Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1879153857
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Feb 2020 19:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s61GolVgZ8PPt3BplFLC8mkF309nLGPFBRP4AbYYnh0=; b=SaIgCRpJkuZyqDGauGoCyxo/4g
	nIeayCJN/YyWNDkcinL87Ru79+Xj79ieTI6XKT/EhmX1O00ODVuFVVjOaTiGgrEebymRDIpsZNcIs
	0d7Plf6BMuq5jxinmhdvs+k1PWR1BVniA4LrNYkAt456mXzXID3kpj+OQ79rS5/9kyNG6oyFWstGL
	6u/28I+JwhXG9nGeLJELw0ARrwNzhIxD6sPI/AaCIl7x/gNiYEfWw8ySmyr6Ux2NREuRW8Amct+zG
	w9JqoTXX0I2gb07HkE26VNhHNJBHZD3cCTtOdjTHiBDjX0JfXEZSDTcLBFWbbSQ6+qKCS/MXJP2tE
	cy9unuUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izPcC-0007EM-OQ; Wed, 05 Feb 2020 18:41:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izPZ6-0003ed-Gw
 for linux-nvme@lists.infradead.org; Wed, 05 Feb 2020 18:38:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id w12so4038875wrt.2
 for <linux-nvme@lists.infradead.org>; Wed, 05 Feb 2020 10:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8XR7EW+gA4XNI9PUiQY3I0dNLHsKfuX0v1uw74NgxZc=;
 b=aLQ9EEsf7EEVE8sYbmewucUlBoQ8V5vWGYBQoNvaLk8bulOtR+LPWDcA76fRdKwPBg
 ZSY0nmIVJBRGvx8837MDTBeE+LZEEytJlX1o6NKNJtPCj1tL+GvyiztaxxskHY2mFyNv
 gian++iLXim0IOm4v9Ybd+it4tyaH3CtZ1VlpJ0+JkyoTusImcAH3ap1cZyTYe7geJDB
 2G/wTSvc//9iEjtOIxuSE47+g0sBuavhm0UJtY3mOe5D7+jVIdqWVboyA6sexCdkZX50
 iB7VAVQq8lDVhVbzS+ktVlpGRdtnCMTlbc6T3zW8M0EYXF1BHyUDWuRQq4Z7UJrTqny3
 HsZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8XR7EW+gA4XNI9PUiQY3I0dNLHsKfuX0v1uw74NgxZc=;
 b=UIHexZylPUya3/0qUvFDEIH8nlMZkikQ1DixHMzMj6u4kRifYNvn3tXPLQBv9XVVDe
 JkRO0sl4Q4F9pHVUlqk80WSLdYrzKDS12SdoLROzyY42BewC7QsX0qg5GF3019Gvw2Xm
 BD/W1r3wKHksLIUfdaBT+vIsuavG4y/BCpscIfP/QYz30IpBqW/exg0atagtDWj+Ufgp
 NlBFjp/2dAZtFwG7iGKcmHAp6bKBIG6eWLn+SgwoeSwfvfHe4ZDn4+wwh//jmG4lPDVB
 FrudwxVGNSI6PSRbSN91Cgl5TsYKKUh7W1px5FAXbh27wO6MsHmCjKPT5YFtwJPLaTNT
 TZ8Q==
X-Gm-Message-State: APjAAAUZcygYGIAqn0yeXrK8PLBsX9KQyL++O4ySIGqvXwS1lsbRO3/+
 tRCZ/8gThtlshvLXMEO6QxHnOJb+
X-Google-Smtp-Source: APXvYqyxf09wXpNUj0y0NcvC9Pc6Reto7MDPj1awfQAx7I35Hh1gVXAo3G9HD8YwAICZW4Scz+Ye7w==
X-Received: by 2002:adf:fd87:: with SMTP id d7mr31765624wrr.226.1580927899117; 
 Wed, 05 Feb 2020 10:38:19 -0800 (PST)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a22sm490319wmd.20.2020.02.05.10.38.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Feb 2020 10:38:18 -0800 (PST)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 11/29] nvme-fc: convert assoc_active flag to atomic
Date: Wed,  5 Feb 2020 10:37:35 -0800
Message-Id: <20200205183753.25959-12-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200205183753.25959-1-jsmart2021@gmail.com>
References: <20200205183753.25959-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_103820_601019_DBC4955F 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Smart <jsmart2021@gmail.com>, martin.petersen@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Convert the assoc_active flag to an atomic to remove any small
race conditions on transitioning to active and back.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/host/fc.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 8fed69504c38..40e1141c76db 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -131,6 +131,11 @@ enum nvme_fcctrl_flags {
 	FCCTRL_TERMIO		= (1 << 0),
 };
 
+enum {
+	ASSOC_INACTIVE		= 0,
+	ASSOC_ACTIVE		= 1,
+};
+
 struct nvme_fc_ctrl {
 	spinlock_t		lock;
 	struct nvme_fc_queue	*queues;
@@ -140,7 +145,7 @@ struct nvme_fc_ctrl {
 	u32			cnum;
 
 	bool			ioq_live;
-	bool			assoc_active;
+	atomic_t		assoc_active;
 	atomic_t		err_work_active;
 	u64			association_id;
 
@@ -2584,12 +2589,14 @@ static int
 nvme_fc_ctlr_active_on_rport(struct nvme_fc_ctrl *ctrl)
 {
 	struct nvme_fc_rport *rport = ctrl->rport;
+	int priorstate;
 	u32 cnt;
 
-	if (ctrl->assoc_active)
+	priorstate = atomic_cmpxchg(&ctrl->assoc_active,
+					ASSOC_INACTIVE, ASSOC_ACTIVE);
+	if (priorstate != ASSOC_INACTIVE)
 		return 1;
 
-	ctrl->assoc_active = true;
 	cnt = atomic_inc_return(&rport->act_ctrl_cnt);
 	if (cnt == 1)
 		nvme_fc_rport_active_on_lport(rport);
@@ -2746,7 +2753,7 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 	__nvme_fc_delete_hw_queue(ctrl, &ctrl->queues[0], 0);
 out_free_queue:
 	nvme_fc_free_queue(&ctrl->queues[0]);
-	ctrl->assoc_active = false;
+	atomic_set(&ctrl->assoc_active, ASSOC_INACTIVE);
 	nvme_fc_ctlr_inactive_on_rport(ctrl);
 
 	return ret;
@@ -2762,10 +2769,12 @@ static void
 nvme_fc_delete_association(struct nvme_fc_ctrl *ctrl)
 {
 	unsigned long flags;
+	int priorstate;
 
-	if (!ctrl->assoc_active)
+	priorstate = atomic_cmpxchg(&ctrl->assoc_active,
+					ASSOC_ACTIVE, ASSOC_INACTIVE);
+	if (priorstate != ASSOC_ACTIVE)
 		return;
-	ctrl->assoc_active = false;
 
 	spin_lock_irqsave(&ctrl->lock, flags);
 	ctrl->flags |= FCCTRL_TERMIO;
@@ -3096,7 +3105,7 @@ nvme_fc_init_ctrl(struct device *dev, struct nvmf_ctrl_options *opts,
 	ctrl->dev = lport->dev;
 	ctrl->cnum = idx;
 	ctrl->ioq_live = false;
-	ctrl->assoc_active = false;
+	atomic_set(&ctrl->assoc_active, ASSOC_INACTIVE);
 	atomic_set(&ctrl->err_work_active, 0);
 	init_waitqueue_head(&ctrl->ioabort_wait);
 
-- 
2.13.7


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
