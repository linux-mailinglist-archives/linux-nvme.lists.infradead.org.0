Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CABA2391
	for <lists+linux-nvme@lfdr.de>; Thu, 29 Aug 2019 20:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYyFihsEAsgfhJpnuCAepc1gt+Dli0eUugo3hFIUI2A=; b=XXlLjBguwmQVwP
	wSseujoItW8PT/DdyCa54NhNoEFwJqgYwoId7pFvvAVTp7enK4CqlPv/Jk4tRasTxW4URSZwxWwAI
	DmU8f19ggR3vITLMlRZjk4//1zc1+Gl+uohwkYBO/U7xl67uj+48wYdP5q2hAw9Rd/lOIHULjppln
	8rCb2vMBb7sAEEWCJQpESRxKGyMwoOwRzXwaL6DZh1L4aQeev1LUzdt6MkR0Q22ZUUwLdZfGujcPD
	C/rCjzuWS/Y0k+A+97xaNV0U2PSkwVkd5O0kZMK17lDVnFZgdd3AkQS0bHvQukOZD41/ewG6T/ZCR
	Wgi0QNT532CZebv9aMPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3OyV-0007NI-0O; Thu, 29 Aug 2019 18:16:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3OyM-0007Md-EV
 for linux-nvme@lists.infradead.org; Thu, 29 Aug 2019 18:16:39 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 448D823404;
 Thu, 29 Aug 2019 18:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567102598;
 bh=ui0X0IpgiHCNlLnHuOQmNBQikGn7U/h3HqEeFUTRqWk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=09VIwfI3Rd6D0wg/Mzc6QKRx/RQ6YFBGySHQlFmCUg5EkiZ+jl/hOz1z5xGXJloFH
 bIMEEDQ3dc90Wu01jzjInrz4Dob0aIPmXc9X2JbyETKhHD4dYb5QDjz4w1Ri2ov8R1
 5jmvv+ulxEKn++LP6hP710NTku20NC/H2uKC0oVo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 34/45] nvme-multipath: fix possible I/O hang when
 paths are updated
Date: Thu, 29 Aug 2019 14:15:34 -0400
Message-Id: <20190829181547.8280-34-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190829181547.8280-1-sashal@kernel.org>
References: <20190829181547.8280-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_111638_509710_79B2FAD8 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 Anton Eidelman <anton@lightbitslabs.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Anton Eidelman <anton@lightbitslabs.com>

[ Upstream commit 504db087aaccdb32af61539916409f7dca31ceb5 ]

nvme_state_set_live() making a path available triggers requeue_work
in order to resubmit requests that ended up on requeue_list when no
paths were available.

This requeue_work may race with concurrent nvme_ns_head_make_request()
that do not observe the live path yet.
Such concurrent requests may by made by either:
- New IO submission.
- Requeue_work triggered by nvme_failover_req() or another ana_work.

A race may cause requeue_work capture the state of requeue_list before
more requests get onto the list. These requests will stay on the list
forever unless requeue_work is triggered again.

In order to prevent such race, nvme_state_set_live() should
synchronize_srcu(&head->srcu) before triggering the requeue_work and
prevent nvme_ns_head_make_request referencing an old snapshot of the
path list.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Anton Eidelman <anton@lightbitslabs.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/multipath.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index a11e210d173e4..9e24ef3bd0f29 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -293,6 +293,7 @@ static void nvme_mpath_set_live(struct nvme_ns *ns)
 				 "failed to create id group.\n");
 	}
 
+	synchronize_srcu(&ns->head->srcu);
 	kblockd_schedule_work(&ns->head->requeue_work);
 }
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
