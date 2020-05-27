Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6BD1E4DE0
	for <lists+linux-nvme@lfdr.de>; Wed, 27 May 2020 21:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hd+qjeuZfqwzhv9ANiJEkYe7pVAJRkhDNEKJDReCGlY=; b=sJ9ZYQsnNa+9nL
	epGn0ZyiANoBEgEN2C2YYU3BLQmMu/Ui7zfyF2NvMi6Rrw3jNqYsxqCL29c1YNgwjf9uuBF1eKSCD
	JyrHZ9ebKfTzwT88RgH8UUmPo+Y+9AoSe4R8KzXN+qkOPABxq2WpWGcJM3rZTO/Jfwv0gt9hDqx3Z
	hLkC+3ySOP8dpPOiCKNb0XU+EqwaYnCOpdRFmic9dafZksSjRr/afKAHNT9pvYv0aS/ZorhslZAKN
	7J6ZyPsc+pnpV/8GAyqhsnMKQsl6WCiPrBjwq/H6vx5jXekVoTNrXEbQy2eRPs+FdD9X7gx8RRvLq
	k5ThbUpOhD7d/gae50sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1QW-0007Em-D0; Wed, 27 May 2020 19:09:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1QS-00076f-9t
 for linux-nvme@lists.infradead.org; Wed, 27 May 2020 19:09:17 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5215F2078C;
 Wed, 27 May 2020 19:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590606555;
 bh=EACsCrBSylwY9gAlEvfWJOGQ6tvqmys4G6zDMFCVrnU=;
 h=From:To:Cc:Subject:Date:From;
 b=0cJFvYo9ZNsSIlutifUL+JfvWojiU/KBEkWWtFNiwDcdhTYVQyCCxffXgDKyhi32b
 cwVOaMgOE/NSsqQD9C8yZV9zTmaVsQHTTDJEGLScFydabh7p+Aq5YrLM/7RHdOJasD
 SB6a7mkOdFTCqw2dfaBUorzdYvDeXuzwCjlzDM6s=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH] nvme: cancel requests for real
Date: Wed, 27 May 2020 12:09:13 -0700
Message-Id: <20200527190913.3461503-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_120916_366616_CEC16DAB 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: axboe@kernel.dk, Keith Busch <kbusch@kernel.org>, alan.adamson@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Once the driver decides to cancel requests, the concept of those
requests timing out should no longer exist. Since we can't stop fake
timeouts from preventing a forced reclaim, continue completing the same
request until the block layer isn't told to pretend that didn't happen.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ba860efd250d..72e5973dda3a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -310,7 +310,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
 		return true;
 
 	nvme_req(req)->status = NVME_SC_HOST_ABORTED_CMD;
-	blk_mq_complete_request(req);
+	while (!blk_mq_complete_request(req));
 	return true;
 }
 EXPORT_SYMBOL_GPL(nvme_cancel_request);
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
