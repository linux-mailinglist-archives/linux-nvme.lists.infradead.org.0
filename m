Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E551F749
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 17:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N43BNBQHsOpP2vnSCORGx55cyYXAe44WOYfoxBb8VBw=; b=NHZPvqs3VxsEKQJVwoMSGuv69P
	m049dJseNsEo9OMdtX+VhFWXnUyNmXd8QNZegcDqC6WqIzXTMOX/chuQqHhbQQcZMS0rwO1O0OTVp
	yaqSAJUZg5dOVNfuSRSf6g4r+JdM+oq2SVGmraUcdDye8I4mCP8Xznt/NLownX/hkdZJQoHiIeqfc
	/aoLluIxg8OuJ9OlNoYAis5jQaPtZnTmNHqntIAW8YGDdX0+gqMd+c5Ha6fbyDnt1/2hTXWMUVQve
	VhSA1fzQKVtjN9tdNQUkmScWfwSIstyJ4iqfDQQf+wsvinBBkYsOkDM47f9zO3dnJ9fx7KGT4cU0w
	5esqsXzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvfX-0001Rp-QX; Wed, 15 May 2019 15:18:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvfI-0001Gz-W2
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 15:17:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id a5so14512pls.12
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 08:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AAHUDYZkdhULLcucnnLUgbccYgIZiPFo4xY3J+mzctQ=;
 b=ahkSRxBe1vu+lWav37YJt5N0U5asYcF2uPAoS6zRHqHqAHwz4vGzjMSQSEI+uYrbdV
 EW9iDi/kB58YiXAqwj6pTzuhU2gQ1kzwCw6lgdycSId9HG/L/Qb+e4sZAXlpucidQbs0
 7Jz9CCVZSAmbD/4FeSfUJUyeMf1MY83H+krGY05c4tt1bZwUufdQuUUgjgyeIyPbx8uh
 g3yENoOX4awf1CmOaNDKtdZqd8OqneoX4i5U4ZTIBIiDagK2zGU8bAdWW/BnQpiSTGSy
 HruVOqLp8eIc7SIE1vutPcdA0Wzx5Pz5i62/sk0i5jYik84kYgHam9CKcUcY6y6aiWec
 Kc2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AAHUDYZkdhULLcucnnLUgbccYgIZiPFo4xY3J+mzctQ=;
 b=AKylDBhKQq9XrR3yXMyYb78RoPj+N1IIMt/MSD8ky8Wk+Fmo7fe9CT6V78s7rNe65I
 KnQOTdqoRjYMyblRLlVbza+iatlNntwGEaQXVhtV2KnzWBg7Fuw9E4A3K5jXrvYuFfRi
 b4nEjm03uB2d0nSkcvgO3dw2Pozg4fGeshWl38QMIhmX+YFAz/HBYaDltsPTnTDpj8Pz
 uknDYZE8EacBiG48GDmGDZF4XoKYXdiNiQcrywq4gduf6kP4CkbPS106PpBgg/vHTJ2q
 nuB6cgE4U80G5Gbqm3qf1ugyrdUkyCiCEe7j8FxCDi13Q+pFfFrzNqFgTWQt6a43BZkl
 bh8g==
X-Gm-Message-State: APjAAAVxM3fCRNRVRyyw8mnBFX/tFtpcVbowsdfkvv+OgrAyOFqhqgIB
 +XDLjgKw/ioWlEF/XScmdpRDmRsq
X-Google-Smtp-Source: APXvYqyjlLMYtvgXNvW6tYuCCT6M4A1oaWzzxQSqmAW/AUfYkBDmETvP9GU1MZGbp+qd+mvFtv3M6Q==
X-Received: by 2002:a17:902:424:: with SMTP id
 33mr44204514ple.102.1557933476093; 
 Wed, 15 May 2019 08:17:56 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:b16d:d4:d5a2:4dca])
 by smtp.gmail.com with ESMTPSA id 85sm5544888pgb.52.2019.05.15.08.17.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 May 2019 08:17:55 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 2/2] nvme-pci: support thermal zone
Date: Thu, 16 May 2019 00:17:17 +0900
Message-Id: <1557933437-4693-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_081757_336459_58695052 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Jens Axboe <axboe@fb.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Eduardo Valentin <edubezval@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This enables to use thermal zone interfaces for NVMe
temperature sensors.

Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Eduardo Valentin <edubezval@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/nvme/host/pci.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index fad5395..88a25dc 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2470,6 +2470,7 @@ static void nvme_pci_free_ctrl(struct nvme_ctrl *ctrl)
 	if (dev->ctrl.admin_q)
 		blk_put_queue(dev->ctrl.admin_q);
 	kfree(dev->queues);
+	nvme_thermal_zones_unregister(&dev->ctrl);
 	free_opal_dev(dev->ctrl.opal_dev);
 	mempool_destroy(dev->iod_mempool);
 	kfree(dev);
@@ -2553,6 +2554,10 @@ static void nvme_reset_work(struct work_struct *work)
 		dev->ctrl.opal_dev = NULL;
 	}
 
+	result = nvme_thermal_zones_register(&dev->ctrl);
+	if (result < 0)
+		goto out;
+
 	if (dev->ctrl.oacs & NVME_CTRL_OACS_DBBUF_SUPP) {
 		result = nvme_dbbuf_dma_alloc(dev);
 		if (result)
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
