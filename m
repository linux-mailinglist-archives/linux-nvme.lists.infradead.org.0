Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8279C12F57
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 15:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ezx3CMykPvVJnC14SY3hUGbNWOzLTf3iP3Rj90Q5S74=; b=acCaliEqRd7Qph8JEmPVFrr7EE
	uTGFTyWwiPN86ECoHDZAAUUhl+RVKyQG24mLqfKzOMOHBqYVjeNaFCt0xIkkTRglqDYCRF2X1CTYk
	5ZYO3+yJUjnLAZ/WgFePkdjxwUr83iEu3ScPJ0mNDCoX4VY9OQFGn+gyFe4f35vIw75CICtjQ6iG6
	zU4ZJ8W53LKwbBMDvqgzGx/ekll6aEr9m8l1u8K26ZIliyiVmkHWZLStREue9GcRPX4+/wrNO6VZe
	TEJEbaLrNehAY7ou2E7vOdZKyCsCiTrXd9HG9a3iFpuph+ZBoZIu2xFMHJMAG+akXCnPlPmbg/4zi
	LFA1FdiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYNv-0005Tt-GX; Fri, 03 May 2019 13:37:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYNj-0005QY-VQ
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 13:37:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C08AFABE1;
 Fri,  3 May 2019 13:37:41 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCHv3 1/2] nvme-multipath: avoid crash on invalid subsystem cntlid
 enumeration
Date: Fri,  3 May 2019 15:37:35 +0200
Message-Id: <20190503133736.111201-2-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190503133736.111201-1-hare@suse.de>
References: <20190503133736.111201-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_063744_436976_88962A3D 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A process holding an open reference to a removed disk prevents it
from completing deletion, so its name continues to exist. A subsequent
gendisk creation may have the same cntlid which risks collision when
using that for the name. Use the unique ctrl->instance instead.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/multipath.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 5c9429d41120..499acf07d61a 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -31,7 +31,7 @@ void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
 		sprintf(disk_name, "nvme%dn%d", ctrl->instance, ns->head->instance);
 	} else if (ns->head->disk) {
 		sprintf(disk_name, "nvme%dc%dn%d", ctrl->subsys->instance,
-				ctrl->cntlid, ns->head->instance);
+				ctrl->instance, ns->head->instance);
 		*flags = GENHD_FL_HIDDEN;
 	} else {
 		sprintf(disk_name, "nvme%dn%d", ctrl->subsys->instance,
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
