Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2311E80F9
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 16:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwZgF6Xj3kCZQmCkEA4/lBDDflWKBK04pjZgbQLOZOs=; b=lVAgOkHA4MhZ5R
	9ZZ3uW+dWcnvxNr6GbNZi10uozHG2KD8rZcVJDBvZcF1kbcLUmMQJuC6XLVLBTUZDm9rEdzAUkKvB
	IJbbOhdzy0ZuRsJEGd26De6peGgVHLo1q4jRgNYT34yNU4DfXG7rM5mMdLdUfHxUA2U2S78vyDJzv
	8lXwQzPc7Hr0J5nIH/Yoe1bLeTy0bEtymueTondJBGCoci5FNurRxsMT6nRptilOS5P1C7/0+B4w2
	H0ISxDYPuYt50WZd3UQu6YkDKwsPZJkLFf9FaORhpS13rr/zM/aXYYPjSri+9as2v89kZjfqNP8h7
	3HsqCBIa5LRkwpD0HkXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegN1-0005e3-Mc; Fri, 29 May 2020 14:52:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegMg-0005Ur-9F
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 14:52:07 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63BBE207BC;
 Fri, 29 May 2020 14:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590763926;
 bh=H5Holb5ECxic2kwSWoJ+5oUahBN+4rFGAhnvcBXaHvI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zmyn1wvIDs1iWVrPq9KH1AvCfNqFHBllEjfDIn7MQjPqzYr90/1/Q23d4PnfImaJP
 CeDEI9R6eVlQxIsG3ICZRPaaV8cHEeyCsleTHgIyA6CphWJwbP4SnK/CY978pCOwYl
 x0coWYjj+FiuJs/S5Tv9IaFdnaR4cHR5xAIC0zqg=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org, hch@lst.de, sagi@grimberg.me,
 linux-block@vger.kernel.org, axboe@kernel.dk
Subject: [PATCHv4 2/2] nvme: force complete cancelled requests
Date: Fri, 29 May 2020 07:52:00 -0700
Message-Id: <20200529145200.3545747-2-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200529145200.3545747-1-kbusch@kernel.org>
References: <20200529145200.3545747-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_075206_335226_F77AC9A8 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, alan.adamson@oracle.com,
 Ming Lei <ming.lei@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Use blk_mq_foce_complete_rq() to bypass fake timeout error injection so
that request reclaim may proceed.

Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Ming Lei <ming.lei@redhat.com>
Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ba860efd250d..891e9461bfae 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -310,7 +310,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
 		return true;
 
 	nvme_req(req)->status = NVME_SC_HOST_ABORTED_CMD;
-	blk_mq_complete_request(req);
+	blk_mq_force_complete_rq(req);
 	return true;
 }
 EXPORT_SYMBOL_GPL(nvme_cancel_request);
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
