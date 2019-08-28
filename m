Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D3CA0D09
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 23:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BAB3FEF7HqRrCxtOy7NUCx/SUhyGnULNjyYRpZLKDc=; b=N954bl7t21H6wj
	UkFhIvXCKrIe+TkBsEBYllhXj1y0QW3iwOh69hqH49PhbKbEYRjO2OEYnUPZ6mpB8Ylm12gjJshQA
	1o9vylL/4NksfqQXPW0gCfE+eXmgq3epXlqPLGsBk/USld+Am9aSUN1g24aZVaKOx06uGGMUBblx/
	EUQVM1sb9OEZ6fUfgD6jjazDhpyz0VPC1U9IRRXtN5Khy/uXDN2CCAGnetcRm8masxm1hPby3mzuX
	8E+k+hSWOU2gID8k0BC15wuISCjkEKhdSAW534VOy45jtJxH7zGiMGpAVSBl/awwMNx39Ld/0PzZU
	xf4rG+ujd4XxoaCPbxmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i35vm-00073E-3E; Wed, 28 Aug 2019 21:56:42 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i35tp-00033n-Qb
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 21:54:43 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1i35tj-00071f-NO; Wed, 28 Aug 2019 15:54:41 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1i35ti-0001Cs-F3; Wed, 28 Aug 2019 15:54:34 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Wed, 28 Aug 2019 15:54:20 -0600
Message-Id: <20190828215429.4572-5-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190828215429.4572-1-logang@deltatee.com>
References: <20190828215429.4572-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org, hch@lst.de,
 sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com, maxg@mellanox.com,
 sbates@raithlin.com, logang@deltatee.com, Chaitanya.Kulkarni@wdc.com,
 chaitanya.kulkarni@wdc.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH v8 04/13] nvmet: make nvmet_copy_ns_identifier() non-static
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_145442_398317_9BC1DD43 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

This function will be needed by the upcoming passthru code.

Passthru will need an emulated version of identify_desclist which
copies the eui64, uuid and nguid from the passed-thru controller into
the request SGL.

[chaitanya.kulkarni@wdc.com: this was factored out of a patch
 originally authored by Chaitanya]
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/admin-cmd.c | 4 ++--
 drivers/nvme/target/nvmet.h     | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 4dc12ea52f23..eeb24f606d00 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -506,8 +506,8 @@ static void nvmet_execute_identify_nslist(struct nvmet_req *req)
 	nvmet_req_complete(req, status);
 }
 
-static u16 nvmet_copy_ns_identifier(struct nvmet_req *req, u8 type, u8 len,
-				    void *id, off_t *off)
+u16 nvmet_copy_ns_identifier(struct nvmet_req *req, u8 type, u8 len,
+			     void *id, off_t *off)
 {
 	struct nvme_ns_id_desc desc = {
 		.nidt = type,
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 3d313a6452cc..5dfd4e0ae096 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -489,6 +489,8 @@ u16 nvmet_bdev_flush(struct nvmet_req *req);
 u16 nvmet_file_flush(struct nvmet_req *req);
 void nvmet_ns_changed(struct nvmet_subsys *subsys, u32 nsid);
 
+u16 nvmet_copy_ns_identifier(struct nvmet_req *req, u8 type, u8 len,
+			     void *id, off_t *off);
 static inline u32 nvmet_rw_len(struct nvmet_req *req)
 {
 	return ((u32)le16_to_cpu(req->cmd->rw.length) + 1) <<
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
