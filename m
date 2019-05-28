Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051302CEB9
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 20:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Jg8niIRoAQ6VYxSKNDZ8+xMMWTmt3vSQiQ2hUI+pdY0=; b=WXM
	WtGOHQnVnxrbDBU7VclDlGPnEd8mvSZE4kHgW5Zeix2l6g73vkM8KPHe1ICwZv2mR8gHh+APItU0I
	Blqyuold5ji3LNsRYz1dg0gDeqftJWM6z2xZtqqTu6mkc7czrBGm7Fu1GQuncbM3Jvy/cYvTh3n3F
	+VKCIyYG17v3N3KAPt+5740OBh31yQO89hMTU/ohGwGyqZsWkOaH3xHpCmX8So3a8yfkA1+8yEDu+
	MwOQ5C/+ZgGV+vKI6wZRKwHi6EayzkX8P9MlraQS4dxaCC7fZ0CmcypnR+pulP6V+Hgu4xAgKFT38
	lqsrSG89/4bvpqehheh0B6QxQJRlAOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVgqj-0000Gp-0w; Tue, 28 May 2019 18:29:25 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVgpQ-000082-OM
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 18:28:13 +0000
Received: by mail-pg1-f194.google.com with SMTP id v11so11483412pgl.5
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 11:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8BolDEztyAZK4wgxPAMtV95chf5E0EJMdIzmtmWK9b0=;
 b=Vb0FPI+P6kIk8a5/LEILLjrhqTpjSHpit4pWo5ma6ILFZUswDywROLW1hOqEJ0CPTV
 REAxKNC3Y8s49yaLcY/NELQS4mf7r0sVDFVFzI7T1YGmETmrCVk56UZnhg5U0qZf/4dc
 9Oo62L5c6VPikVxr53wX2c/56o3XF3XqAuKACofnP/vhNNhU+xXoh8dLrba0jdMQmx77
 Mo2M6VDdQO/QccydeyYw8TMBNMR9APkY7hu6h5HqQiaaS8HwMhD+ELNvE8JlziXA6i5w
 6tl0h3SxD6cp9H77Bwu1N6Q5PAJe12lp6M4yTrgGGOXpUyH2mxiQAAZ8/VKJ3z0OKwdG
 pxbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8BolDEztyAZK4wgxPAMtV95chf5E0EJMdIzmtmWK9b0=;
 b=AH1sjCnkrjyaqdu2ubXRFw2t3HghQ6LKgindj/khdL9N/vC2l9ls2xkvuCf+WL99Hb
 rZtXInzKP80XMEg7RHrv0Tu+d8OnEC2HZ6udh/3Oc3qfxvjhd+nG4N0TmwuBcbznv7lq
 PTfAfNdoRrV/OEFUHsgSYLfHp9BGhsHIbeBW8jYCF0jFT3oo5Uy8/QZarx4tWSA2CrBb
 DB/kU44vug8sXMAxH0l+2tIbNcnKfrxKPVcUaAZmt84+LFqNtw4zBpsfHKgRI9a9W4xI
 fqNGhXI0dauj7x2t01cegZBk9JQ9xV9G6rGPNnRllvQnD3boobAgVkfS4ajs/WBWKjA7
 iZkw==
X-Gm-Message-State: APjAAAXcNmOXYZ/yEWH3Xed3esvNTxgf4hCmGamxkq1EYLKRvzkgSED9
 gNZR5TXszjhI1Xo9/PgrtVSOx/Al
X-Google-Smtp-Source: APXvYqzsIwgxBsYa9C0jveNht4yTyx5MLLt4j3mEnsCPDPdKrBtNc3RSwomHNaP0vLQYdbK4GusGSQ==
X-Received: by 2002:aa7:860a:: with SMTP id
 p10mr128869636pfn.214.1559067855258; 
 Tue, 28 May 2019 11:24:15 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e5sm12128017pgh.35.2019.05.28.11.24.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 11:24:14 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-fc: Add message when creating new controller
Date: Tue, 28 May 2019 11:24:04 -0700
Message-Id: <20190528182404.3463-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_112804_796310_F4840FF9 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Add a message when the controller is first attempting to be
connecting to. Thus we know what controller and its NQN is being
put into place for any subsequent success or failure messages.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/host/fc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index c17c887f2148..5c9b69ee2c1f 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -3129,6 +3129,10 @@ nvme_fc_init_ctrl(struct device *dev, struct nvmf_ctrl_options *opts,
 
 	nvme_get_ctrl(&ctrl->ctrl);
 
+	dev_info(ctrl->ctrl.device,
+		"NVME-FC{%d}: creating new ctrl: NQN \"%s\"\n",
+		ctrl->cnum, ctrl->ctrl.opts->subsysnqn);
+
 	if (!queue_delayed_work(nvme_wq, &ctrl->connect_work, 0)) {
 		nvme_put_ctrl(&ctrl->ctrl);
 		dev_err(ctrl->ctrl.device,
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
