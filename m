Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463C972EC4
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 14:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RqKuZF8yBebe27kFiU9tGlxf9Pr6tdF4vr3mo6ncHM0=; b=Ingu8VQbTs/2ur
	z90kwRjn9bs3JSgA+DsB8qOzoId6cVGnA5QLae9pqsScGLffevakMg9undn8gTmS0Hxcotp5yRtOC
	+KJF6vNVa1saSqOW75wW4r6rdbHICVykXGGT0bpA3dx7OezSki9zRkRLWtL43ET7Zec0m2BLpgP7Q
	G0ph4n1R3MgrchwZKYtHyXV5yLb01JGwVkmh1DAn1/XAZRx9S7bt3YYglR8NupdyqJH6xTmxqZrbf
	bE+kMrjzzgBj+pmSrqiooSnczYCkb6iyeQ52sB3W9btQttGG2tYfV2Sn4WnSYQDwE3rLmScgC2N83
	B7uqDgo7Sd/dXI8NwuKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGIE-00047w-0Y; Wed, 24 Jul 2019 12:22:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGI8-00046q-Nv
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 12:22:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id f5so12335478pgu.5
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 05:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DnYeQcZ+3/cVOK0YzE3A8jbfV436G2iFovE9bOEsOP0=;
 b=n80Q06E2UaCRMU/QOCTD6GPRnCPN9AfdEkmDzRzxRwDdy4JKzrw5Gi9EBM0Ka72w9Y
 SOPTvBTXfKMoXfoPvtyOtNHjOXVN1HQZ/uoOuK/e18AGB83AeHy6VKC4ej/M5dka1fPd
 UFjPLb5j/2JMvJJKI7X6+8zSex0IyrOvGzaUC8p4PDaufr7+G5BGloroRg8+RVFMGpac
 Cr6cMAiwOWEP2bx2gdVgTyD9JIbvg6Ey7e75J2hYgdBUnfBSbQlbHUEp5BX77t5aqi1H
 YqVhwDKlA9c7Sw5/0/49h6FILmGdH9sXLe9w2iUOu5jsbyTly5LVd4wWjsD2vIFzK6yP
 GDZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DnYeQcZ+3/cVOK0YzE3A8jbfV436G2iFovE9bOEsOP0=;
 b=Doqp/35WVzQGhef+MZRR3F4ectyNBGIjQ/6ohmzFAJunfYyMRgiFM2FvAbi0u+GcwI
 DjciGWoHK7RHV/l+RXNV1YpxDMB1XOnNsVGbJQtqDQ8Nd9vpSEy2sB3uRZzlB3LB9veC
 2vDOtJ/aGGm7o4Bp6erKiQTFog4RrAt3VJ3w5+FW92Lz4orGl87MTtsqbFkiFdOWLuAN
 NdwS4Nz2TQS/oEvOEYyFZvQR0UQZN7x40KLxh5XLGwxaNo6iBuCDdL7dZchk3CBJdrNu
 pGHJV9kl9ITWb89kXX9xfOZYUziX5zDJrfPL/eqvsg/9FN8R2qqKl8IrARKY2s4KFqEx
 pnZg==
X-Gm-Message-State: APjAAAVNbzc30g8MIARlEYSaa8K+FEXDT57BOfqXJyhn7lcf81hxK7di
 /DOkmfpLMtmPWMfRFIooXmM=
X-Google-Smtp-Source: APXvYqzncmJ0bUgd6dB1KkSDBrJ2k1U8j8owNx0skXvoZOM5bAK43HhX7oDWYqv7Ggl0AwX+SEBDww==
X-Received: by 2002:a65:6152:: with SMTP id o18mr78419888pgv.279.1563970960118; 
 Wed, 24 Jul 2019 05:22:40 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id h26sm49952796pfq.64.2019.07.24.05.22.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 05:22:39 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] nvme-pci: Use dev_get_drvdata where possible
Date: Wed, 24 Jul 2019 20:22:35 +0800
Message-Id: <20190724122235.21639-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_052244_781829_81CF9C42 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Instead of using to_pci_dev + pci_get_drvdata,
use dev_get_drvdata to make code simpler.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/nvme/host/pci.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index bb970ca82517..3c6411f4d590 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2845,7 +2845,7 @@ static int nvme_set_power_state(struct nvme_ctrl *ctrl, u32 ps)
 
 static int nvme_resume(struct device *dev)
 {
-	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
+	struct nvme_dev *ndev = dev_get_drvdata(dev);
 	struct nvme_ctrl *ctrl = &ndev->ctrl;
 
 	if (pm_resume_via_firmware() || !ctrl->npss ||
@@ -2914,7 +2914,7 @@ static int nvme_suspend(struct device *dev)
 
 static int nvme_simple_suspend(struct device *dev)
 {
-	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
+	struct nvme_dev *ndev = dev_get_drvdata(dev);
 
 	nvme_dev_disable(ndev, true);
 	return 0;
@@ -2922,8 +2922,7 @@ static int nvme_simple_suspend(struct device *dev)
 
 static int nvme_simple_resume(struct device *dev)
 {
-	struct pci_dev *pdev = to_pci_dev(dev);
-	struct nvme_dev *ndev = pci_get_drvdata(pdev);
+	struct nvme_dev *ndev = dev_get_drvdata(dev);
 
 	nvme_reset_ctrl(&ndev->ctrl);
 	return 0;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
