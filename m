Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5E8D18E3
	for <lists+linux-nvme@lfdr.de>; Wed,  9 Oct 2019 21:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxe6r0AzxI/hGmxjeE/7dlMwrQPMOZFnIEWRLQPGs3w=; b=oRwlFLpPt0zNCC
	Dl3MQJ4Q3k+S6FzZCUfq19tRz4Q38iJji3vZtX7QpcDwtW+Eq2MpJH+OUvkI2KV/JMX1yODyh6jQU
	BfmkiGJQLe1y8K99jBuwNFQpmyHP9OW0g/xitJgISUo/ldZVEL7ICrpqF5uWrBNRzmOiUs8fEAD6N
	jcY4dSpw/OiTLKy/Gay4a91cTnnLO906jjk8F4SzMVYBvItfxio4yburThB8uhJBjykSEDmgVLgyB
	iE15eTmzohqXxvbnTbg5dptyFMWHwBX8sQY/KRpkfVt/nUbg8arc9PuAeiEun6oW3KF6uo5L8McmE
	xq/cEjJG57zYvDQ+rPyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIHbp-0000Xj-5x; Wed, 09 Oct 2019 19:26:53 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIHag-00085n-JJ
 for linux-nvme@lists.infradead.org; Wed, 09 Oct 2019 19:25:45 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1iIHaa-0002g3-6l; Wed, 09 Oct 2019 13:25:40 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1iIHaY-0003Q1-AO; Wed, 09 Oct 2019 13:25:34 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Wed,  9 Oct 2019 13:25:20 -0600
Message-Id: <20191009192530.13079-4-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009192530.13079-1-logang@deltatee.com>
References: <20191009192530.13079-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org, hch@lst.de,
 sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com, maxg@mellanox.com,
 sbates@raithlin.com, Chaitanya.Kulkarni@wdc.com, chaitanya.kulkarni@wdc.com,
 logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH v9 03/12] nvmet: add return value to  nvmet_add_async_event()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_122543_013182_2C0D1CE9 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

Change the return value for nvmet_add_async_event().

This change is needed for the target passthru code which will
submit async events on namespaces changes and can fail the command
should adding the event fail (on -ENOMEM).

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
[logang@deltatee.com:
 * fleshed out commit message
 * change to using int as a return type instead of bool
]
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/core.c  | 6 ++++--
 drivers/nvme/target/nvmet.h | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 3a67e244e568..d6dcb86d8be7 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -173,14 +173,14 @@ static void nvmet_async_event_work(struct work_struct *work)
 	}
 }
 
-void nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
+int nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
 		u8 event_info, u8 log_page)
 {
 	struct nvmet_async_event *aen;
 
 	aen = kmalloc(sizeof(*aen), GFP_KERNEL);
 	if (!aen)
-		return;
+		return -ENOMEM;
 
 	aen->event_type = event_type;
 	aen->event_info = event_info;
@@ -191,6 +191,8 @@ void nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
 	mutex_unlock(&ctrl->lock);
 
 	schedule_work(&ctrl->async_event_work);
+
+	return 0;
 }
 
 static void nvmet_add_to_changed_ns_log(struct nvmet_ctrl *ctrl, __le32 nsid)
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index c51f8dd01dc4..3d313a6452cc 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -441,7 +441,7 @@ void nvmet_port_disc_changed(struct nvmet_port *port,
 		struct nvmet_subsys *subsys);
 void nvmet_subsys_disc_changed(struct nvmet_subsys *subsys,
 		struct nvmet_host *host);
-void nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
+int nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
 		u8 event_info, u8 log_page);
 
 #define NVMET_QUEUE_SIZE	1024
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
