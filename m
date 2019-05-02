Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA291182B
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 13:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uqVtJujG065hltJssSZHOxmNsBSE0EtFsu97JLhsb0=; b=S8KzHPXkb2Pjjm
	zAxn2W39pjHw1Rh0TljHR+MJoQYzbW+CRv0xbnLRfQLonwuUsVFPedtMPYIAmb7eJn0Q25V0KDs/5
	7aMiyWNDXlBA71Jnb1NNBCDcIjXZvXj9Aj2YZG+lVB8R7LNyJn/zwlxIcRs1ZFL9/a5KpP895lWq9
	Tu/W3feq9pVEY+4j4POgw3ubfItH68+3LcA4I0UVh+4QTXynXN6ntPTTAlbvEld9Gig63QGJfYS2r
	vLCBWoxbFhH7pWxW022gg4wZwE40bXXpOJieW/nseAfEOX9HHDfunBa+/nIn98NrWgTNO93IYsI4/
	mhe6c9cSA6V5C8ZfK7DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9wL-0002vD-Sp; Thu, 02 May 2019 11:31:49 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9wA-0002rl-HS
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 11:31:39 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CDE1B30D78CD
 for <linux-nvme@lists.infradead.org>; Thu,  2 May 2019 11:31:37 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 37DD45DA35
 for <linux-nvme@lists.infradead.org>; Thu,  2 May 2019 11:31:37 +0000 (UTC)
From: Maxim Levitsky <mlevitsk@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvme/pci: init shadow doorbell after each reset
Date: Thu,  2 May 2019 14:31:33 +0300
Message-Id: <20190502113134.20835-2-mlevitsk@redhat.com>
In-Reply-To: <20190502113134.20835-1-mlevitsk@redhat.com>
References: <20190502113134.20835-1-mlevitsk@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 02 May 2019 11:31:37 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_043138_592864_2D837DDD 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The spec states
"The settings are not retained across a Controller Level Reset"
Therefore the driver must enable the shadow doorbell,
after each reset.

This was caught while testing the nvme driver over
upcoming nvme-mdev device

Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>
---
 drivers/nvme/host/pci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 1f468a16efad..1c844c66ecaa 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2303,8 +2303,6 @@ static int nvme_dev_add(struct nvme_dev *dev)
 			return ret;
 		}
 		dev->ctrl.tagset = &dev->tagset;
-
-		nvme_dbbuf_set(dev);
 	} else {
 		blk_mq_update_nr_hw_queues(&dev->tagset, dev->online_queues - 1);
 
@@ -2312,6 +2310,7 @@ static int nvme_dev_add(struct nvme_dev *dev)
 		nvme_free_queues(dev, dev->online_queues);
 	}
 
+	nvme_dbbuf_set(dev);
 	return 0;
 }
 
-- 
2.17.2


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
