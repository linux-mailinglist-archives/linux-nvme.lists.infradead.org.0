Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A8C8D5E6
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 16:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UPc6roLT6VFp2YCGd2uI0cOlz9SFGbt3D/6JIr7hS0k=; b=TU9MZHzgAuOYrd
	kgWpE12hB2W+UObJOYX4aVR8irZcUxrYX0eJ16Ef8Vb7/XxRD6+bt75KFndFcqaOTO9TvrVCs4c9T
	hBm4rPQGU5H7opYTAY1tTY5sPaqeAzv4t9xGV7SbbXV10XAUGamwDBO/X6YrWbFCv+pOSavEYHe0O
	wUeDFXQ9N9LFaN1LkxPiXLiriJggrH77EFiuaeXCpJrDuRyLNn7GjsH6tbfjVJtFITkMBLrfRK6uY
	H2tgeaZmd3pHtDdidvt2ccUYAWUTQy5IXvfqXBVojMr6o7T1kWVlB1U7+l6uV8WMqVYW314Qiz3eC
	nEdEAVD2k3+Vsr6eNOlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuEg-0001Is-MC; Wed, 14 Aug 2019 14:26:46 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuEY-0001IF-Sj
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 14:26:40 +0000
Received: from mail-pl1-f199.google.com ([209.85.214.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <gpiccoli@canonical.com>)
 id 1hxuET-0000lR-Mq
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 14:26:33 +0000
Received: by mail-pl1-f199.google.com with SMTP id j96so18897865plb.5
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 07:26:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/sOlrlK8gBvtNw2aQtPk5OiaZzwZpHssKF1CduSfhVc=;
 b=XQlmGswKrt10F4HB/SatANiiEzGX8b28gg79XL6BwZGAX4b/Ue4jTSa0yuYXKyPJl4
 Fe8joumjvD8ci9cJXuU+2kTI69D8aO8LsQA/XyspXbYdeE9yfY3bXe530CB21lNbw5u5
 9zW05vqlJuWxMc42XZu7rnHzsKqTbkNYFmJA6/H+iHr5QBudR5/mTzvGqx7B5JlU0mg4
 I6OCSJwVGI3hd9BAcAM5TuvRbreBEL+MPXmN+9yAVe1UAMaPAQ6lgyrywqIBbEhLy4Ci
 6kVeVZp8weJBDMNblDPs+gq1FszihF3lC2P7Gbvy3xM1O0y1hEatGRuD4g8xDYyyEPv3
 emFg==
X-Gm-Message-State: APjAAAXKKs2x8tizif6iUWF5ZB+VwqOKNeH2IwhYRRQOf0x4BtlpWHiE
 nyrV1Fj7Dn4NKDUYo+Dx+w3KW/LC/0xvoEH/V/qP4tMcbX18mCHFa1m1YWxdFkOVK4202HdBrI5
 QA6vHEafUeUIPWq8C4CIyhLEay7tB/x9RfMYO6k7vUmgC
X-Received: by 2002:aa7:95b8:: with SMTP id a24mr169770pfk.103.1565792792083; 
 Wed, 14 Aug 2019 07:26:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyQX5n8LybIauUTO+zmFV3TGVyX5lxGaNufJfKVnDL7p+P2qYZ7ZlPJKYr4BF2c01ZynVKGaw==
X-Received: by 2002:aa7:95b8:: with SMTP id a24mr169743pfk.103.1565792791866; 
 Wed, 14 Aug 2019 07:26:31 -0700 (PDT)
Received: from localhost ([191.13.19.2])
 by smtp.gmail.com with ESMTPSA id v8sm80245pjb.6.2019.08.14.07.26.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 07:26:30 -0700 (PDT)
From: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: Fix cntlid validation when not using NVMEoF
Date: Wed, 14 Aug 2019 11:26:10 -0300
Message-Id: <20190814142610.2164-1-gpiccoli@canonical.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072639_063267_72B6A1DF 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: axboe@fb.com, sagi@grimberg.me, gpiccoli@canonical.com,
 linux-block@vger.kernel.org, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Commit 1b1031ca63b2 ("nvme: validate cntlid during controller initialisation")
introduced a validation for controllers with duplicate cntlid that runs
on nvme_init_subsystem(). The problem is that the validation relies on
ctrl->cntlid, and this value is assigned (from id_ctrl value) after the
call for nvme_init_subsystem() in nvme_init_identify() for non-fabrics
scenario. That leads to ctrl->cntlid always being 0 in case we have a
physical set of controllers in the same subsystem.

This patch fixes that by loading the discovered cntlid id_ctrl value into
ctrl->cntlid before the subsystem initialization, only for the non-fabrics
case. The patch was tested with emulated nvme devices (qemu) having two
controllers in a single subsystem. Without the patch, we couldn't make
it work failing in the duplicate check; when running with the patch, we
could see the subsystem holding both controllers.

For the fabrics case we see ctrl->cntlid has a more intricate relation
with the admin connect, so we didn't change that.

Fixes: 1b1031ca63b2 ("nvme: validate cntlid during controller initialisation")
Signed-off-by: Guilherme G. Piccoli <gpiccoli@canonical.com>
---
 drivers/nvme/host/core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 8f3fbe5ca937..cca270836892 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2591,6 +2591,9 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 			goto out_free;
 	}
 
+	if (!(ctrl->ops->flags & NVME_F_FABRICS))
+		ctrl->cntlid = le16_to_cpu(id->cntlid);
+
 	if (!ctrl->identified) {
 		int i;
 
@@ -2691,7 +2694,6 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 			goto out_free;
 		}
 	} else {
-		ctrl->cntlid = le16_to_cpu(id->cntlid);
 		ctrl->hmpre = le32_to_cpu(id->hmpre);
 		ctrl->hmmin = le32_to_cpu(id->hmmin);
 		ctrl->hmminds = le32_to_cpu(id->hmminds);
-- 
2.22.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
