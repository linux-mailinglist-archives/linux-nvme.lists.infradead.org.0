Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCF51BA3A6
	for <lists+linux-nvme@lfdr.de>; Mon, 27 Apr 2020 14:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PmKxYeO4q5iZME4GiekylbBnRsi0kncUzrF4URPAuB8=; b=THVr4QrVyPVWO4
	pT1zs+pa2tewcONa/KyhGBBWdM4U4PVFOeqMWE9o8FvP0CEKIe34dqK8cVFQcJfhcTc17OxjVE7uA
	yY7GBPOpWqklfVAxhLFBUEAsDPO7KhaqWvF1waffxp/GPAxibF6ND+fvkh+151CCfd67kYkgVaqgZ
	vLqri2fRhpkx8GDohkOT1eyuWkphIPEXx3eMa22nDhgZ7g3+eddyfZ6BqbrVp0XN56MydjMQ670kO
	A7y7Krjjk84IA/PAbnOV6LurTIFfjJhZLz66P+5fclGWPNCdBPFgqQipoUO90ky2XMqS679W2CvtS
	/IvgMr00K57yV/2zEK9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT2yR-0006lx-Cx; Mon, 27 Apr 2020 12:34:59 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT2yN-0006kW-4p
 for linux-nvme@lists.infradead.org; Mon, 27 Apr 2020 12:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587990894; x=1619526894;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VFhl5pd1bt6CpJr4PfxQxrl9uO26lhYUX26RETwc4cw=;
 b=Xzq65UimawuJ77zGzKMappairV8EVHBXhC7zkDikB7h1QMVfnUxP0ljb
 Uo1ijgNDBpcixQxAtW+JVThSBaj42Ic0+Zy6PfzpORrcXNYHTj0v2x7tF
 Eqfl34QcGPGIg69sHIHahY+aakjIsft4CH3UjYXabBWrMbp0qpls2qptB
 Hgu41Z2o8OZOaYJTnsGowVrigbepVj6z6l0tA8AoiD8aaI7gx2aDEY4k8
 GZ8P8Nr4IU3r1M9pLWtmZKOcVHcivwoA/bh7+niDOl6ukdaP59zSJKrEW
 RhWUCc3lAy84tbp422qh4DOLHMusoEbqZanmy5D9gTdJD49HwoKTpZmMt g==;
IronPort-SDR: HaoYwIFyc4OqVJjvqjhRzc8nUcGKUx3jOgtKS4OusPjXqAsPk5z+l0MDM7E4hrxu1p7UbUksos
 RFfnykPDwSlZlvAeGmnxmRZXeb6nwoU2ldmDo5PuUALkJJmPZjYhY6EvyXmR6+KomAPiGWj1mW
 B4pTmmF8e6gKbdianunRUwvTeLBvFekmMDby/CA1CSRJNnPyNrHvZy6lU872DLMLcSyIhHVkv6
 CXcx5ieWkpXLyzCSZKNuCt6rO0sLYDkrpoxfRVwi8QB4dtipt0gQ4MUu0iScgAuUrvDrcVi/EU
 KnU=
X-IronPort-AV: E=Sophos;i="5.73,324,1583164800"; d="scan'208";a="245018832"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 27 Apr 2020 20:34:51 +0800
IronPort-SDR: +m6ajJH9rmnPEkcoE4do01VQL+ZvouqsIl9fvfW0G1SRwy8ucEtyQmNlFzC/M8Hu4Q5LZjCm29
 +VKQoW6vL+b1AQLqJa3Sw9iLcNNndUPaQ=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 05:25:32 -0700
IronPort-SDR: joVpwLHLD6k+JizYgH/iGyPlWfrkPSlUPtw35O+L9V3zdtYTZtit5oZ5/epw7Pjc43LN0IvG4Z
 Dz+PMn7H5Bzw==
WDCIronportException: Internal
Received: from th5m0yyf2.ad.shared (HELO localhost.hgst.com) ([10.86.56.126])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Apr 2020 05:34:46 -0700
From: Niklas Cassel <niklas.cassel@wdc.com>
To: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 Igor Konopko <igor.j.konopko@intel.com>,
 =?UTF-8?q?Matias=20Bj=C3=B8rling?= <mb@lightnvm.io>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@cnexlabs.com>
Subject: [PATCH] nvme: prevent double free in nvme_alloc_ns() error handling
Date: Mon, 27 Apr 2020 14:34:41 +0200
Message-Id: <20200427123443.520469-1-niklas.cassel@wdc.com>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_053455_196779_8E58BE51 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <niklas.cassel@wdc.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When jumping to the out_put_disk label, we will call put_disk(), which will
trigger a call to disk_release(), which calls blk_put_queue().

Later in the cleanup code, we do blk_cleanup_queue(), which will also call
blk_put_queue().

Putting the queue twice is incorrect, and will generate a KASAN splat.

Set the disk->queue pointer to NULL, before calling put_disk(), so that the
first call to blk_put_queue() will not free the queue.

The second call to blk_put_queue() uses another pointer to the same queue,
so this call will still free the queue.

Fixes: 85136c010285 ("lightnvm: simplify geometry enumeration")
Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 drivers/nvme/host/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 91c1bd659947..f2adea96b04c 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3642,6 +3642,8 @@ static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	return;
  out_put_disk:
+	/* prevent double queue cleanup */
+	ns->disk->queue = NULL;
 	put_disk(ns->disk);
  out_unlink_ns:
 	mutex_lock(&ctrl->subsys->lock);
-- 
2.25.3


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
