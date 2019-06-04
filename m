Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8802535324
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 01:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgIdQdqfAAb9Zwe/muazyPwQKrzDWhwWnJBImQL9o2I=; b=XbylVZ3jQuFvx5
	mftbTM48844JmsE7E/WsZ6qEj7x4YCFKpLMo7DFrqxBgH+rl5v04hCL+FCtCKSgYX9kenHtSBiVyB
	sR8ji4tp6D/U8ue4DUiRFOynUmsKcyWaMCJUVWnM9TQ/E+6DS6IgRepaDsJRvGbeYyV5fh1edo+CH
	AKBqpOR80CqUZiXADL9VlwvNECsv+avJLlgq2rVFl/gf8nZe8awRnU5V4xuTF2vg8tB/iUYoMLY6a
	vUAQam4m3Em2lSQUGfwoY7SaCFJkOVBw0b1smLZB3rYitOvqNWQKNwYeAnntZn4VTF8tjfDEHvSeB
	6GnGvshXRFjp3mLxwUrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYIls-0001As-BF; Tue, 04 Jun 2019 23:23:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYIlf-00015r-Ha
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 23:23:01 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81FD520859;
 Tue,  4 Jun 2019 23:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559690579;
 bh=cM51D5QoSBQ33n3wnZ0FR9jG2E5nPuSQ6IWklbZuo9k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m/2UJ57KtpjCgrCskdRAobh1a9hGtQZyu8CRPriq3VppFW1qOUJvS6k+FCAghHNpK
 reU2tyoPVuNI9Szy2HLYF8CKjVs4vRlJXBpHLdZp8dOy0YN4vvS1+pD6K7qMbaRVtl
 XBLE2qlEt3qkafOaHca9Sp552pCmD78CfB5SxW1Y=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 29/60] nvme: fix srcu locking on error return in
 nvme_get_ns_from_disk
Date: Tue,  4 Jun 2019 19:21:39 -0400
Message-Id: <20190604232212.6753-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604232212.6753-1-sashal@kernel.org>
References: <20190604232212.6753-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_162259_857441_4BA8AA22 
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
index 8782d86a8ca3..e29c395f44d2 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1362,9 +1362,14 @@ static struct nvme_ns *nvme_get_ns_from_disk(struct gendisk *disk,
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
@@ -1411,9 +1416,9 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 
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
