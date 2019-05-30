Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A76B2F9B8
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 11:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rf9ZRmTkfRs9ByuGICgZ/zjpQlNka3Z1Y57pFcrkt4w=; b=UB3p8ggb32jLl0Y454kkax7P2r
	o8AqoAFTFnSTWCR51TyslbX+vq2kPz+BVwzR1rXhhcVDeVWd2FiFY1mLS0xJs59lQqx4XXzhVWoB+
	7rAvuANOy9y2VmYS1kwsnsqpuxgtpfxvUIE2zjVzoelQ5dd1b7t58ebNVpTjYYNoRLo4EHSNVMMTN
	xBf9EEApZH/0TpXK2mTe+D/V1qcaZGU691DysnyI+2AVW4JnaLWMjWdoMMzNnDA5nc9umVa1VNjcJ
	eTMPuIZHgZpxlhOMlxNdqp5+YW27/Bkbm+uPo2Xccjgjo9jiiv8OyDFFpJCbydGCsU/Gn99o45aXg
	7PhxmViw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWHbI-0008WO-Fd; Thu, 30 May 2019 09:43:56 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHau-0008AY-6N
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 09:43:35 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 30 May 2019 12:43:26 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4U9hQxG027930;
 Thu, 30 May 2019 12:43:26 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: kbusch@kernel.org, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Subject: [PATCH 3/5] fabrics: Fix memory leak of subsys list
Date: Thu, 30 May 2019 12:43:24 +0300
Message-Id: <1559209406-713-3-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
In-Reply-To: <1559209406-713-1-git-send-email-maxg@mellanox.com>
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_024332_706265_00558784 
X-CRM114-Status: UNSURE (   5.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Max Gurtovoy <maxg@mellanox.com>, shlomin@mellanox.com,
 minwoo.im@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 fabrics.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fabrics.c b/fabrics.c
index 573a6ef..9ed4a56 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -1205,5 +1205,6 @@ int disconnect_all(const char *desc, int argc, char **argv)
 		}
 	}
 out:
+	free_subsys_list(slist, subcnt);
 	return ret;
 }
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
