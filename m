Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869B92E81F
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=omR0TLKeMwhCgKUP7YYu4GzHUYM4iuAA3pTC92ckQrQ=; b=oUE
	BPWICK4rC3SrQZFlcfQbjpfHvwCl1WkwhLltHdFiNKsTWh32TBRgywb0yXAp2dj4oKuAx7MyPawfO
	Taj/VWF0pbfxDXxUxaROVKUK//n2p1x/Zmtx2sgmEa7pcWmu1iJU0yuvwxL/SJ+QDfglRcpo/PuaV
	AyzJzjBRFfkFdvuCBgxHWCXX3QEbqnqPPcCbN+qMBL0R4pfzHbU18iyapR48oVKb+hjIjS2tZMo/v
	0THqNt/GJdbl0t4SnKeSePLXtDSHI1Redp/w45IYtv6EemQ9AwciyKonWlwrW4X4VA0X4wuBXIaF1
	j6ZnB35A+8TrFncmHoKxPMgCf2Xoujg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW70w-0000a3-Dg; Wed, 29 May 2019 22:25:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW70r-0000Zj-5q
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:25:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id q17so2546047pfq.8
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 15:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8UhnAW/QuPsduj+wcnhh1cDfDbYRfA2Occf80mVvUFw=;
 b=BaUbhx6fS3SMiyNE+kCwYESsBVkk67TWCLTGcIqb32W7YPDGgUGKdWoAc1F1uTZ5qs
 Rth9YvB/dmxaz8gDFJPNfj0T4DsKumQwNA1Ex6R9jPrgssIMD20vZdoJgjMPwgSY0R/s
 lhL1zWxJYA5Cq2L3QI9VhtF3pwfRuDNkVrivMuXgHK2g2nTNH4us9HcAxgYgT+qnZZ3X
 8taaSN8Y6xr+ot9r7Rxv4EjCS6qyKkJs0fP+8Ts81K97wdjWnHiA5uw6mB+7kaU2Uk/W
 d/5AKYRy7et45oGFOYFOmt4upkcIO3huTBBQcbn6jCWRcvdsrPNAz4E4UTcbMKvwsVhC
 WH8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8UhnAW/QuPsduj+wcnhh1cDfDbYRfA2Occf80mVvUFw=;
 b=eao+qfZUU0z4dQ0rJVlpXF7ecngyGQpJMDdWHYYYRgHVH664dApvh8jOCDDy/FmEah
 1TeH42HCOHgVBs9FOBCr4AqRa2vuyFd4ZBUCWQ6DciIpK0Zsnc9AfjxAD/dMYr21B9yS
 oNMPRf0MkaYfs17MLSNcNQGJ31Cs0yuTPs+XAqPXrnGGROL5+BxoL7pTXSKzKgVZ662y
 2x44dezhFd+iLfxBTTUKINx4xEroC15s5fdt7Kgo4wYeB+WEUOKG4qrie1lHFsGB2LAJ
 C8h9pQCA6NQLbZdq9EJWdH2w10cK+EV++wNVFVDTbqrAMX64vY3nWyX3xnoZ62cCsGrR
 M6eQ==
X-Gm-Message-State: APjAAAX0LG537e5r3XyEbg8BB+vMX82UmH+8BI0E6EFD4CaYPRKExnj7
 DdqkuEdjUkvUFFZxTrYA+MtpiNUK
X-Google-Smtp-Source: APXvYqyLXJNyqStVeYpShyEJW2n3AQb6/SRjnrOdFGytSM+mkwUb1pfsxkKBVmf0rwMYeWf9KNhfDw==
X-Received: by 2002:a63:f146:: with SMTP id o6mr349426pgk.179.1559168736080;
 Wed, 29 May 2019 15:25:36 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p13sm636488pff.2.2019.05.29.15.25.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 29 May 2019 15:25:35 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2] nvme-fc: Add message when creating new association
Date: Wed, 29 May 2019 15:25:26 -0700
Message-Id: <20190529222526.3672-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_152537_250238_F884CC52 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When looking at console messages to troubleshoot, there are one
maybe two messages before creation of the controller is complete.
However, a lot of io takes place to reach that point. It's unclear
when things have started.

Add a message when the controller is attempting to create a new
association. Thus we know what controller, between what host and
remote port, and what NQN is being put into place for any
subsequent success or failure messages.

Signed-off-by: James Smart <jsmart2021@gmail.com>

--
v2:
 Moved message to create association so displayed at initial
  creation as well as at each reconnect
 Changed message to additionally print host port wwpn and target port
  wwpn.
---
 drivers/nvme/host/fc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index c17c887f2148..bd1be8aa2d65 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2607,6 +2607,12 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 	if (nvme_fc_ctlr_active_on_rport(ctrl))
 		return -ENOTUNIQ;
 
+	dev_info(ctrl->ctrl.device,
+		"NVME-FC{%d}: create association : host wwpn 0x%016llx "
+		" rport wwpn 0x%016llx: NQN \"%s\"\n",
+		ctrl->cnum, ctrl->lport->localport.port_name,
+		ctrl->rport->remoteport.port_name, ctrl->ctrl.opts->subsysnqn);
+
 	/*
 	 * Create the admin queue
 	 */
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
