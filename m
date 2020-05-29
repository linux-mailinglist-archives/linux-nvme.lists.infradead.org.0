Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E17E1E8069
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 16:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qCVhuAGPCsLahvAsJBmyG2QcFtgWDfrXyzd3Glx+6oE=; b=OuPtnWiM9KA4HR
	3FJ7FqmfyD7dr6mt2YOiwGP3q4FyVDV255PKrbsjawki2RD7LSOgAusuawBshnDJec7FIaBguOXDL
	syjVrKHy2VP2dWQQ3+3FJvrS47Gy6yz2Cm78kkjsInNKX4qEZcJMbpTHD/J85+27cXvXlM+TfvYJT
	XmM9qGP8oFjo5Gjgrx042QAuWFGSZf1h6hlmnSI7FrQhDnrUXbya4CeOjwkZ0k6PZfB8mmaIuGTwP
	22hmXis5jSeJ/d+N88W6EvPs2qCwuEh79ZPHIp9k+VffU5SkcWjJZ9RxhGeEjEHYpUD+giBvhT7a5
	h1+NnrmiR5Yz6GoyGhlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeg8t-0003da-MB; Fri, 29 May 2020 14:37:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeg8p-0003cB-3s
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 14:37:48 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0B5420776;
 Fri, 29 May 2020 14:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590763066;
 bh=6c+sUZE1lDgrvZXEOBr3V7VAXwat7DZ3zJaGULnLPcE=;
 h=From:To:Cc:Subject:Date:From;
 b=1KsUxj2VkajVhiX6EZh32wl0WVR9k5QvZcUtpdrxxyy2y5jKuCjT+z9Gvx3tMzthd
 Do90xTY9q+kEGF4X/7aSmYDTUTj9sh5G0lVf7yiavDZ1Ad0s663x5aBuQxMvMSZRDn
 s1BBFS82DLJDTZvR0w7E+6qx9j8qlIDGWPh62eHE=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org, hch@lst.de, sagi@grimberg.me,
 linux-block@vger.kernel.org, axboe@kernel.dk
Subject: [PATCHv3 0/2] blk-mq: force completion
Date: Fri, 29 May 2020 07:37:42 -0700
Message-Id: <20200529143744.3545429-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_073747_176618_C60C30B1 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
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
Cc: Keith Busch <kbusch@kernel.org>, alan.adamson@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

I've renamed the newly exported function from
__blk_mq_complete_request() to blk_mq_force_complete_rq() and added
kerneldoc for its intended usage.

Reviews and Acks from previous versions are not included for PATCH 1/2
since the name changed.

Keith Busch (2):
  blk-mq: export blk_mq_force_complete_rq
  nvme: force complete cancelled requests

 block/blk-mq.c           | 15 +++++++++++++--
 drivers/nvme/host/core.c |  2 +-
 include/linux/blk-mq.h   |  1 +
 3 files changed, 15 insertions(+), 3 deletions(-)

-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
