Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CEF4D38A
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZ12txSFzPbtxHNGCNczqxfH2ci97wMjGeDKbNvb2j8=; b=krtAKa5UQqd1bn
	V2Eu6q0QK1gp8dIblQd2h89zNjep+vskAUUZ9Ex178y1ZwWOQ5wdsPxyJlVut4wXTYPdoJoGxxcnV
	ktd4nQ0VGxAbDku4SvnWsK7LWlhnjwRB/2bJDNoXGEB5E20dgaV2DRRFoH4UsBRr4WmF/WGd7d2Bf
	00Kn/m+1TrRolZxTsW2WXUZM74ttvJ1byGzpiWyHkAeG+nNMOco4ypy7No5FEvzssa1v9+MwLOR2g
	xuiLWSiH2I/ujZZlmImD6s4rwACt/LHQDhBr06LsJrr9LHnizWBDd5mFNp+Rqr9pkAJ10cPyEu5dN
	xDHgYVtenm4hXI9rvJHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdznN-0002yK-TM; Thu, 20 Jun 2019 16:20:17 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgO-0004rf-Tl
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:07 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzgC-00046I-85; Thu, 20 Jun 2019 10:13:04 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg5-0005wu-S3; Thu, 20 Jun 2019 10:12:45 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:33 -0600
Message-Id: <20190620161240.22738-22-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620161240.22738-1-logang@deltatee.com>
References: <20190620161240.22738-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org, axboe@kernel.dk, hch@lst.de, bhelgaas@google.com,
 dan.j.williams@intel.com, sagi@grimberg.me, kbusch@kernel.org, jgg@ziepe.ca,
 sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [RFC PATCH 21/28] nvmet: Split nvmet_bdev_execute_rw() into a helper
 function
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091305_410959_DBFEC194 
X-CRM114-Status: GOOD (  11.10  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Jason Gunthorpe <jgg@ziepe.ca>, Stephen Bates <sbates@raithlin.com>,
 Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Move the mapping of the SG and submission of the bio
into a static helper function to reduce the complexity.

This will be useful in the next patch which submits dma-direct bios
for P2P requests.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/io-cmd-bdev.c | 52 ++++++++++++++++++-------------
 1 file changed, 31 insertions(+), 21 deletions(-)

diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 7a1cf6437a6a..061d40b020c7 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -103,13 +103,41 @@ static void nvmet_bio_done(struct bio *bio)
 		bio_put(bio);
 }
 
+static void nvmet_submit_sg(struct nvmet_req *req, struct bio *bio,
+			    sector_t sector)
+{
+	int sg_cnt = req->sg_cnt;
+	struct scatterlist *sg;
+	int i;
+
+	for_each_sg(req->sg, sg, req->sg_cnt, i) {
+		while (bio_add_page(bio, sg_page(sg), sg->length, sg->offset)
+				!= sg->length) {
+			struct bio *prev = bio;
+
+			bio = bio_alloc(GFP_KERNEL,
+					min(sg_cnt, BIO_MAX_PAGES));
+			bio_set_dev(bio, req->ns->bdev);
+			bio->bi_iter.bi_sector = sector;
+			bio->bi_opf = prev->bi_opf;
+
+			bio_chain(bio, prev);
+			submit_bio(prev);
+		}
+
+		sector += sg->length >> 9;
+		sg_cnt--;
+	}
+
+	submit_bio(bio);
+}
+
 static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 {
 	int sg_cnt = req->sg_cnt;
 	struct bio *bio;
-	struct scatterlist *sg;
 	sector_t sector;
-	int op, op_flags = 0, i;
+	int op, op_flags = 0;
 
 	if (!req->sg_cnt) {
 		nvmet_req_complete(req, 0);
@@ -143,25 +171,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	bio->bi_end_io = nvmet_bio_done;
 	bio_set_op_attrs(bio, op, op_flags);
 
-	for_each_sg(req->sg, sg, req->sg_cnt, i) {
-		while (bio_add_page(bio, sg_page(sg), sg->length, sg->offset)
-				!= sg->length) {
-			struct bio *prev = bio;
-
-			bio = bio_alloc(GFP_KERNEL, min(sg_cnt, BIO_MAX_PAGES));
-			bio_set_dev(bio, req->ns->bdev);
-			bio->bi_iter.bi_sector = sector;
-			bio_set_op_attrs(bio, op, op_flags);
-
-			bio_chain(bio, prev);
-			submit_bio(prev);
-		}
-
-		sector += sg->length >> 9;
-		sg_cnt--;
-	}
-
-	submit_bio(bio);
+	nvmet_submit_sg(req, bio, sector);
 }
 
 static void nvmet_bdev_execute_flush(struct nvmet_req *req)
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
