Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FF535348
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 01:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DChrIwlk9pLZK5UNpdKYPHlthc3v0ehvJ2U/Tv6fo50=; b=mkc27y0Obug9BZ
	QAxmemmDdbFCIl9oQHdDxX4CnstnRohP3wWLlD90JgFtaTHnCTLF8DwvI+6BFXbSOPucgDmX3NK3z
	/c5eCE7PC8tpO4H0FqFZT//E3RyudK4X7iIpZSOJiTcR19Ar6uGGb2JSJUldlTNkqdxLWyIVJlo7M
	MoQlja0EwNtMkZojmOpYQjkwEFA3rnNSx0OZmtCxCq0Xt5GyG6tDlx+a+asq1RDZaJP6C3HpPSdzM
	LO4cFQKrG78sgpqAoNcysAutsGG5ItaEh3rVujmIhYWG1S2k3P8wkkwnqw1paiXGuii9lXZPSYhwe
	U1eDIPSzYR2z4NI23mmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYImo-00029H-IK; Tue, 04 Jun 2019 23:24:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYImi-00027t-69
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 23:24:05 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2464C20859;
 Tue,  4 Jun 2019 23:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559690643;
 bh=hqVgwEnF/9RsMcxRBozyd21dMgt3XTHl5Cq/n5kGfDM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0ev0dgmvv909VGq/R6HetjAySnU0toKsmyB2luIcgrvTVpTuIM7uBHsazMxijLD01
 e3yapQfRehslNpz0pTPH+atfrhgV9ZiiqHwGKFkZgBVCiGHjWGc+/GIOJ24rSP3NQw
 XxMtBDgX0k+/8wzncY1fKFuEUo025x5TmtuFvulQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 17/36] nvme: fix srcu locking on error return in
 nvme_get_ns_from_disk
Date: Tue,  4 Jun 2019 19:23:12 -0400
Message-Id: <20190604232333.7185-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604232333.7185-1-sashal@kernel.org>
References: <20190604232333.7185-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_162404_241375_D090D08B 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <keith.busch@intel.com>, Sasha Levin <sashal@kernel.org>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

[ Upstream commit 100c815cbd56480b3e31518475b04719c363614a ]

If we can't get a namespace don't leak the SRCU lock.  nvme_ioctl was
working around this, but nvme_pr_command wasn't handling this properly.
Just do what callers would usually expect.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Keith Busch <keith.busch@intel.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index abfb46378cc1..44d8077fbe95 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1277,9 +1277,14 @@ static struct nvme_ns *nvme_get_ns_from_disk(struct gendisk *disk,
 {
 #ifdef CONFIG_NVME_MULTIPATH
 	if (disk->fops == &nvme_ns_head_ops) {
+		struct nvme_ns *ns;
+
 		*head = disk->private_data;
 		*srcu_idx = srcu_read_lock(&(*head)->srcu);
-		return nvme_find_path(*head);
+		ns = nvme_find_path(*head);
+		if (!ns)
+			srcu_read_unlock(&(*head)->srcu, *srcu_idx);
+		return ns;
 	}
 #endif
 	*head = NULL;
@@ -1326,9 +1331,9 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 
 	ns = nvme_get_ns_from_disk(bdev->bd_disk, &head, &srcu_idx);
 	if (unlikely(!ns))
-		ret = -EWOULDBLOCK;
-	else
-		ret = nvme_ns_ioctl(ns, cmd, arg);
+		return -EWOULDBLOCK;
+
+	ret = nvme_ns_ioctl(ns, cmd, arg);
 	nvme_put_ns_from_disk(head, srcu_idx);
 	return ret;
 }
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
