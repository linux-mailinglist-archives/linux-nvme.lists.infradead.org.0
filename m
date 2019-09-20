Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9225FB971B
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 20:18:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MfHezGOKvQ6Sj/FGOwzC5Gapvj15MM5TtAEzpg+2kpA=; b=WQ4
	oFqKLZGJX68dafUb4buVgl58pmaH7fpXuG6Z0pHRoXMRQhshMY29IJxqRx/xS3ClB8DZrV45hjyf5
	i1dNeclGq6I5hTh39jGkJXBX17h30AhpJN/99BUM+lUOtXgZgpuL0DbGQJ2q/1RrYnxHpO0GbDkd2
	TafqOfo4up6NfZLQRY1rFBs9q4aUT/pvgbvOVgdjaB99BxxFFSNRCj2AeN8cl4AL4WkL95ZOcrT2s
	K/JsZPYJsj4VjqfYKX0jRmY9NjIXKx2PoWX1bR0gExRDFaozWEgVHl/mCvzgL4b4Ku+W2dDZbB9M+
	qIBJkIrcBIX2JWc4MbbJeKfiy4Q5YYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBNU8-0006ya-Md; Fri, 20 Sep 2019 18:18:24 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBNU4-0006yL-IT; Fri, 20 Sep 2019 18:18:20 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] scatterlist: make sgl_free null pointer safe
Date: Fri, 20 Sep 2019 11:18:17 -0700
Message-Id: <20190920181818.14424-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Match other alloc/free routines by checking the sgl pointer first.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 lib/scatterlist.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/lib/scatterlist.c b/lib/scatterlist.c
index c2cf2c311b7d..fea25b035e67 100644
--- a/lib/scatterlist.c
+++ b/lib/scatterlist.c
@@ -563,6 +563,9 @@ void sgl_free_n_order(struct scatterlist *sgl, int nents, int order)
 	struct page *page;
 	int i;
 
+	if (!sgl)
+		return;
+
 	for_each_sg(sgl, sg, nents, i) {
 		if (!sg)
 			break;
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
