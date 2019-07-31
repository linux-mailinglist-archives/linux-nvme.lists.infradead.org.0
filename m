Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517C57D1FB
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 01:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=buBP0NWr5dj9xNXTcoe3zF6O32QA0CYlwLiVe7/i5Rs=; b=IynJOrN+qn57GJ
	S5hZetOzrh6eoas8sR1ww6FtY+8Cic9egD9x8Fo73jGB8jDBCCOJmBliPTDeXQKqPI97DSUxeg4VT
	LPrFaKEcK70NEsWVKPdv3BFbbVUdiN0ajHjeCLLf/DWV/mZ37/wK1bQc6DRKesbofbFh/hlVsnX1w
	Dq0s23lQQiDcsB26x/jR/IAmOKP09sr2cLxks3IP2U3oM6657tl+6AzBK85hHPTXV67XNAQG4qT5t
	EHJSvRIcGV5miRQ3z7T7AaAEYTtFvKR+DkVzcK7ew6YeBYimUfil3ywpRmoStpjAuCzYuIAgZ0oKe
	2Rdv5M+8FFCHz2FbVd0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsy8c-0007lC-NQ; Wed, 31 Jul 2019 23:36:06 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsy8F-0007U6-Mz
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 23:35:44 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hsy8B-0003W3-Ki; Wed, 31 Jul 2019 17:35:43 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hsy89-0001Gr-IZ; Wed, 31 Jul 2019 17:35:37 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Wed, 31 Jul 2019 17:35:30 -0600
Message-Id: <20190731233534.4841-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, kbusch@kernel.org, axboe@fb.com, sagi@grimberg.me,
 chaitanya.kulkarni@wdc.com, maxg@mellanox.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/4] Varios NVMe Fixes
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_163543_792677_E443DEA5 
X-CRM114-Status: UNSURE (   9.68  )
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
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey,

These patches are just a resend of a bunch I've sent that
haven't been picked up yet. I don't want them to get forgotten.

Thanks,

Logan

--

Logan Gunthorpe (4):
  nvmet: Fix use-after-free bug when a port is removed
  nvmet-loop: Flush nvme_delete_wq when removing the port
  nvmet-file: fix nvmet_file_flush() always returning an error
  nvme-core: Fix extra device_put() call on error path

 drivers/nvme/host/core.c       |  2 +-
 drivers/nvme/target/configfs.c |  1 +
 drivers/nvme/target/core.c     | 15 +++++++++++++++
 drivers/nvme/target/loop.c     |  8 ++++++++
 drivers/nvme/target/nvmet.h    |  3 +++
 5 files changed, 28 insertions(+), 1 deletion(-)

--
2.20.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
