Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F1D4D38B
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mR9NxnpvLsazEubeCRuXTHqxM93dyRcLfbEa39rT/QA=; b=CqcqU+pzEYv+qR
	h9GwHkt9AFr0W01ajUGNSIK69NM79ZoQ/3abgKN9sNzDEQm1U5qRJwql8oD5BxK462eXbYUrJ7KP7
	Ya18Ftu0UXSVgvZ0o4RJbS+vDfYDLAaqH4Hmi8WGPCebgldJP3FUxIy7Ksl3SJOchmt88l/O6XmwD
	PKr63BCbMtFBUggWMdhu6hFibgeS3HX54J8n/iYwPKPkEArvcm1OwZz/HBUqQvR9x7p97zVGFUUxW
	luPdKTXUWrwLQxECa0rPPrrim2h0YE22Z8RWuSOODVOes8i+nmdra3HTwImvOPa04oeWDXhZy5Z3i
	9nzMQ6yAAgby6Nd8xhKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdznb-0004Ld-Mv; Thu, 20 Jun 2019 16:20:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgR-0004tl-Fj
 for linux-nvme@bombadil.infradead.org; Thu, 20 Jun 2019 16:13:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Subject:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Cc:To:From:Sender:
 Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A6RT3JMRVKeX/FwP0fgrObkwot/qB3sI5FYYxIMX3No=; b=DagEgRqmLZjz5+0F1lmcNL0BEG
 99j3WUawe49ZpLbvLnRY+W0hvlxJLrbc1xI+oDvVw5Y2EIDNUOElptJQK+3zlGEZcyCm4HYm2pe+u
 oQ4hAXgm24E5EP563jR0RRHYGOOEjGDJ9dWgok5voNVzlHxGPqlup048Y4bSwvh1KVG/uKDyv6LRK
 AxXJkqG8XtMpu4bNzNUI5EDWGKDEaYSCa5pw+lr2ID+zzfEqZkBgJOADYgw+qJSNDMiIp/7r7+Mg+
 Ohzq68WyR6lVrCAP5iKt5GGFyTlweVMyy5AycqBlv7gnLFIVh6Uou18ifM9pKV0WVsLzWHTQLimPJ
 vjO0LYyw==;
Received: from ale.deltatee.com ([207.54.116.67])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgP-000389-3U
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:07 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-00046M-6H; Thu, 20 Jun 2019 10:12:52 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg4-0005w8-9k; Thu, 20 Jun 2019 10:12:44 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:17 -0600
Message-Id: <20190620161240.22738-6-logang@deltatee.com>
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
Subject: [RFC PATCH 05/28] block: Skip dma-direct bios in bio_integrity_prep()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_171305_408021_C16B7405 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
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

The block layer will not be able to handle integrity for dma-direct
bios seeing it does not have access to the underlying data.

If users of dma-direct require integrity, they will have to handle it
in the layer creating the bios. This is left as future work should
somebody care about handling such a case.

Thus, bio_integrity_prep() should ignore dma-direct bios.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/bio-integrity.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/block/bio-integrity.c b/block/bio-integrity.c
index 4db620849515..10fdf456fcd8 100644
--- a/block/bio-integrity.c
+++ b/block/bio-integrity.c
@@ -221,6 +221,10 @@ bool bio_integrity_prep(struct bio *bio)
 	if (bio_integrity(bio))
 		return true;
 
+	/* The block layer cannot handle integrity for dma-direct bios */
+	if (bio_is_dma_direct(bio))
+		return true;
+
 	if (bio_data_dir(bio) == READ) {
 		if (!bi->profile->verify_fn ||
 		    !(bi->flags & BLK_INTEGRITY_VERIFY))
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
