Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C981917E30D
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Mar 2020 16:04:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DVwZ53lWzZdOMzl/3K4tnUXBo3Lar5JX0x4CtUYY0Yo=; b=KUf32xQmB1IlU9
	YTesBJXcnZMyDGZwGhwDv/WrfpCSQ+Fa1psIrW7ftDUy77eySOMTNie3cgKPI6nLgzAIv/pa+DFn5
	35feJkz0LSkH78T0JGt/nDqYwivUXVeqvlOKwD9TnNeEvBuhIyKF3m0pGJ7vH09RsZ7ux7P36Zris
	K4ubs+yrOJcdMbo1L6JJxpGtoJPr6L5bNF0gstbxZEJkG1eA4yizYnp/lqat4w4+2aE8lHo5UmZot
	DuNT9maQVxPu15Rv1AtdUqVKe1uWKYbkYMnqFv/MwKL+HCLkkz4lAbdt02ltmqGDbufIIvKXxp+FU
	VemlVgyGAppKnmjUvt5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJxG-0004Kb-Ll; Mon, 09 Mar 2020 15:04:30 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJxC-0004Jm-F9
 for linux-nvme@lists.infradead.org; Mon, 09 Mar 2020 15:04:28 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 9 Mar 2020 17:04:12 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 029F4CLK019163;
 Mon, 9 Mar 2020 17:04:12 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, sagi@grimberg.me, hch@lst.de,
 kbusch@kernel.org
Subject: [PATCH 1/1] nvme/pci: properly print controller address
Date: Mon,  9 Mar 2020 17:04:12 +0200
Message-Id: <20200309150412.63297-1-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_080426_903020_F5662163 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Align PCI address print with fabrics address that is printed with
newline character.

Before:
[root@server40 linux]# cat /sys/class/nvme/nvme2/address
0000:0b:00.0[root@server40 linux]#

After:
[root@server40 linux]# cat /sys/class/nvme/nvme2/address
0000:0b:00.0
[root@server40 linux]#

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index d3f23d6..ef06b24 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2689,7 +2689,7 @@ static int nvme_pci_get_address(struct nvme_ctrl *ctrl, char *buf, int size)
 {
 	struct pci_dev *pdev = to_pci_dev(to_nvme_dev(ctrl)->dev);
 
-	return snprintf(buf, size, "%s", dev_name(&pdev->dev));
+	return snprintf(buf, size, "%s\n", dev_name(&pdev->dev));
 }
 
 static const struct nvme_ctrl_ops nvme_pci_ctrl_ops = {
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
