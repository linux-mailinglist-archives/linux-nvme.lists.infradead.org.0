Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED69E960DA
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 15:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMfGT7Rvyfn3XM/c+y1BAfSyC+KtIbChoNcVzal0MZw=; b=lKtDMfiV83BIY/
	aPLTb6BXYUL1VxL6UHMtMf4RyfY2AdBpzIR3/ZAgIWiYOBxRxLPC2CS8DJqeQimII3V+ayNTGAPKo
	6gy3NtjOgyD1K7TjysiAMeIdCFPJjhW5942yOxzZeCm7h4ZpFnHarTfMwesXFWomM9/62kSgXE23o
	aae3RvXI/IXEIIfqHncAUVF9Vfz0PLt6jgaP2W7joEEjyoGUfo3z84bLWd7bwdcGDSIMxD1e1Th4c
	bol6JQCjZKe1dsdqMXFG937J8OjN4I/WhpzwfpXRJ9zpjBVMMsqtDCwFjS2CnOlKOfriVs/LQKG5K
	MeI2Xf+6+BC8QnWc0LVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04QI-00058I-HT; Tue, 20 Aug 2019 13:43:42 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04P3-0004Be-Nh
 for linux-nvme@bombadil.infradead.org; Tue, 20 Aug 2019 13:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PhzlmNXer66LOvB2fDfeclMaUwh8ZUn/swM0oLsISwA=; b=mWlaQfkLvk0clTZvGyhC2aBYg3
 IOUqWJkJtsopBKS2ZAYHKdbo4JDCbq3PO/27L60sxk2udWwDzaKpEXhTpQJj+cscNWUtOAXURvjnf
 GIzdSkG4TP1PcXlWr6s2fmlQ8u83h7dHTaZJzaq9u9dMFKeIMEaCQTbXvoGd4BfVfdQ79iQQfcYHI
 Zd79zgE4TcOvm5p59KxPckW+NNKNowQyUEkPCHiSZ9Iunb6AeyNdFCWX9PaXXQSRHP1dDiRKO7TG+
 +fsS0AGaY9+jlDHMmeGUC7E0OeerzvkSqAAOZcUuKdrykm8UdSeCjVYfsws0jXylNdNI13tq4qSJD
 iEpV328A==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04PK-0005f7-Pv
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 13:42:44 +0000
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8571C233FF;
 Tue, 20 Aug 2019 13:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566308541;
 bh=bX09ssadu/1oiVKOYAUmOwBp8D46nwwxLq1K/JTtefE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DmjiS6ymZ/eONc7JdxujGyllCBx7/8HZSB+6fmv0aVYPGnZHQQcQl1b85i66G2/fX
 +3zfu5cv4lSPJGihoFieCxAIfWyMWJuMLW+ASjscel586a4Ig/hX9PJ3TIfPzDv+b2
 3Y098y0JitYbXwLfIN0dige3i+GFL8doUlvlwj7w=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 08/27] nvmet-loop: Flush nvme_delete_wq when
 removing the port
Date: Tue, 20 Aug 2019 09:41:54 -0400
Message-Id: <20190820134213.11279-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190820134213.11279-1-sashal@kernel.org>
References: <20190820134213.11279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_144242_995156_A98AF9E9 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Logan Gunthorpe <logang@deltatee.com>

[ Upstream commit 86b9a63e595ff03f9d0a7b92b6acc231fecefc29 ]

After calling nvme_loop_delete_ctrl(), the controllers will not
yet be deleted because nvme_delete_ctrl() only schedules work
to do the delete.

This means a race can occur if a port is removed but there
are still active controllers trying to access that memory.

To fix this, flush the nvme_delete_wq before returning from
nvme_loop_remove_port() so that any controllers that might
be in the process of being deleted won't access a freed port.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by : Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/target/loop.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
index 9908082b32c4b..137a27fa369cb 100644
--- a/drivers/nvme/target/loop.c
+++ b/drivers/nvme/target/loop.c
@@ -678,6 +678,14 @@ static void nvme_loop_remove_port(struct nvmet_port *port)
 	mutex_lock(&nvme_loop_ports_mutex);
 	list_del_init(&port->entry);
 	mutex_unlock(&nvme_loop_ports_mutex);
+
+	/*
+	 * Ensure any ctrls that are in the process of being
+	 * deleted are in fact deleted before we return
+	 * and free the port. This is to prevent active
+	 * ctrls from using a port after it's freed.
+	 */
+	flush_workqueue(nvme_delete_wq);
 }
 
 static const struct nvmet_fabrics_ops nvme_loop_ops = {
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
