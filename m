Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 829318B42A
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 11:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2IbEjeADEm+NoZQcTKMUs9XdBYGSQjX0t8tWkzo+0UM=; b=lZV1V2Ehc5fh8j
	f93yxkq1olxhpkLaiCoNNoL7yqIEEBAwdAGP8WgZ4jEL5TtLtUfhKvfifcfuwXIryZQvw626RusVO
	0ExoTUIFhLIVSd4oV5/9x9ORXWpcUgKGu2IzumPpg4AjcjTG6xDczL4mqqdP9VZVfKpWJwISKyon9
	hVnr2Pa66Ul25bZsrjYm9IrALq0nqW1EgK9kcseHa957B/OLClyAYsJn4iUVVacR6aLFDufTiU6Dp
	msCV0DLCfTK63oSCJ0wHvkqQX2ReEbCzNOzMxtsYsfzGyxGCK4cjmAz6DRgufvnNe72QchKO3uRnv
	p5WV9ycrUEkygy/h2lIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTAW-0003Hd-SG; Tue, 13 Aug 2019 09:32:41 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTAM-0003Gw-Fb
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 09:32:32 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id BC38242A95
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 09:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-type:content-type:mime-version:x-mailer:message-id:date
 :date:subject:subject:from:from:received:received:received; s=
 mta-01; t=1565688744; x=1567503145; bh=8pnAJjCfJ0/C5T9cLAHbLVTP9
 GSq4iAGa63+KNSb5Cg=; b=U1EIM67/6ouSkjfq85RGbxYwxadbT8sBw/nygSGtt
 4O4T72nhX94yGlcQGKVFwrFhK1qgpD05P/Ism4Cnbn3b5pdQ/9kbR1KKbz+NGHEK
 kBS7jg/1ImBJbAfHYbEn+AZ16DJ2KbLiSBB5iABv0tgOxXldI9ehidmoFnvvSPjV
 lw=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cc_Iodikavc9 for <linux-nvme@lists.infradead.org>;
 Tue, 13 Aug 2019 12:32:24 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 94A7B42A8F
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 12:32:24 +0300 (MSK)
Received: from linux-m2ni.spb.yadro.com (172.17.128.132) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Tue, 13 Aug 2019 12:32:23 +0300
From: Mikhail Malygin <m.malygin@yadro.com>
To: <linux-nvme@lists.infradead.org>
Subject: [PATCH] nvmet: read device size in identify-ns command handler
Date: Tue, 13 Aug 2019 12:31:57 +0300
Message-ID: <20190813093157.21755-1-m.malygin@yadro.com>
X-Mailer: git-send-email 2.16.4
MIME-Version: 1.0
X-Originating-IP: [172.17.128.132]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_023230_897799_BD7E0767 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mikhail Malygin <m.malygin@yadro.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Currently device size is cached in ns->size field on namespace enable, so
any device size change after that can't bee seen by initiator.
This patch updates ns->size field in identify-ns command handler,
so initiator can see new device size after ns-rescan.

Signed-off-by: Mikhail Malygin <m.malygin@yadro.com>
---
 drivers/nvme/target/admin-cmd.c   |  6 ++++++
 drivers/nvme/target/io-cmd-bdev.c | 10 ++++++++--
 drivers/nvme/target/io-cmd-file.c | 32 ++++++++++++++++++++-----------
 drivers/nvme/target/nvmet.h       |  2 ++
 4 files changed, 37 insertions(+), 13 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 4dc12ea52f23..578e78628cf3 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -428,6 +428,12 @@ static void nvmet_execute_identify_ns(struct nvmet_req *req)
 	if (!ns)
 		goto done;
 
+	if(ns->bdev)
+		nvmet_bdev_read_size(ns);
+
+	if(ns->file)
+		nvmet_file_read_size(ns);
+
 	/*
 	 * nuse = ncap = nsze isn't always true, but we have no way to find
 	 * that out from the underlying device.
diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index de0bff70ebb6..1c2e3a4bb4fb 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -47,6 +47,13 @@ void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id)
 	id->nows = to0based(ql->io_opt / ql->logical_block_size);
 }
 
+int nvmet_bdev_read_size(struct nvmet_ns *ns)
+{
+	ns->size = i_size_read(ns->bdev->bd_inode);
+	ns->blksize_shift = blksize_bits(bdev_logical_block_size(ns->bdev));
+	return 0;
+}
+
 int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
 {
 	int ret;
@@ -62,8 +69,7 @@ int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
 		ns->bdev = NULL;
 		return ret;
 	}
-	ns->size = i_size_read(ns->bdev->bd_inode);
-	ns->blksize_shift = blksize_bits(bdev_logical_block_size(ns->bdev));
+	nvmet_bdev_read_size(ns);
 	return 0;
 }
 
diff --git a/drivers/nvme/target/io-cmd-file.c b/drivers/nvme/target/io-cmd-file.c
index 05453f5d1448..7fd1da37b5a8 100644
--- a/drivers/nvme/target/io-cmd-file.c
+++ b/drivers/nvme/target/io-cmd-file.c
@@ -27,10 +27,28 @@ void nvmet_file_ns_disable(struct nvmet_ns *ns)
 	}
 }
 
+int nvmet_file_read_size(struct nvmet_ns *ns)
+{
+	struct kstat stat;
+	int ret = vfs_getattr(&ns->file->f_path,
+                        &stat, STATX_SIZE, AT_STATX_FORCE_SYNC);
+
+	if(!ret){
+		ns->size = stat.size;
+		/*
+		 * i_blkbits can be greater than the universally accepted upper bound,
+		 * so make sure we export a sane namespace lba_shift.
+		 */
+		ns->blksize_shift = min_t(u8,
+		file_inode(ns->file)->i_blkbits, 12);
+	}
+
+	return ret;
+}
+
 int nvmet_file_ns_enable(struct nvmet_ns *ns)
 {
 	int flags = O_RDWR | O_LARGEFILE;
-	struct kstat stat;
 	int ret;
 
 	if (!ns->buffered_io)
@@ -43,19 +61,11 @@ int nvmet_file_ns_enable(struct nvmet_ns *ns)
 		return PTR_ERR(ns->file);
 	}
 
-	ret = vfs_getattr(&ns->file->f_path,
-			&stat, STATX_SIZE, AT_STATX_FORCE_SYNC);
+	ret = nvmet_file_read_size(ns);
+
 	if (ret)
 		goto err;
 
-	ns->size = stat.size;
-	/*
-	 * i_blkbits can be greater than the universally accepted upper bound,
-	 * so make sure we export a sane namespace lba_shift.
-	 */
-	ns->blksize_shift = min_t(u8,
-			file_inode(ns->file)->i_blkbits, 12);
-
 	ns->bvec_cache = kmem_cache_create("nvmet-bvec",
 			NVMET_MAX_MPOOL_BVEC * sizeof(struct bio_vec),
 			0, SLAB_HWCACHE_ALIGN, NULL);
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 6ee66c610739..19b6ac97e0c6 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -484,6 +484,8 @@ void nvmet_bdev_ns_disable(struct nvmet_ns *ns);
 void nvmet_file_ns_disable(struct nvmet_ns *ns);
 u16 nvmet_bdev_flush(struct nvmet_req *req);
 u16 nvmet_file_flush(struct nvmet_req *req);
+int nvmet_bdev_read_size(struct nvmet_ns *ns);
+int nvmet_file_read_size(struct nvmet_ns *ns);
 void nvmet_ns_changed(struct nvmet_subsys *subsys, u32 nsid);
 
 static inline u32 nvmet_rw_len(struct nvmet_req *req)
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
