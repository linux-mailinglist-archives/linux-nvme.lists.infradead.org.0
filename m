Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4774D17A28E
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 10:56:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XFF0E7JKYK/EuWRGM94Piuf4xyD6N2DtMqUiJfLPmZo=; b=AtyHM5ezUxDaeo
	Q+sn21d/7KkvBIeGGRwroB8LXuwtAOY/hb8OdCI+oUK27HA/DspTtbntSBy3LRuZMo++VXvjOsf95
	49uuFiO61nB9rNoxR8h6I8dkgfRclaXo3Oa2JoM1MsJ+S1H6X+C4/rMTI9AAfq7g1F8Nq064PW+6h
	15XNkBlbcj+JLYNJpga35xaCihHT1++YQkz4Q9Hw8yCSxe1WV5mTcBH8iGKZXzVjXlFTu9+28C/fF
	Z5E3mH8Z66NMnJQCNsCKBEOzdeWaBeyBhkjNdKWQb7ql7P5AIiJIEJECCV9ZsDsorWK5NzrzWhBHc
	3MTRaqMR7hOFf283I0EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nEg-0001PI-Cy; Thu, 05 Mar 2020 09:56:10 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nEB-00012R-IT
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 09:55:42 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 5 Mar 2020 11:55:30 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 0259tUhO020720;
 Thu, 5 Mar 2020 11:55:30 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: jgg@mellanox.com, linux-nvme@lists.infradead.org, sagi@grimberg.me,
 hch@lst.de, kbusch@kernel.org, Chaitanya.Kulkarni@wdc.com
Subject: [PATCH V2 1/3] nvmet: Add get_mdts op for controllers
Date: Thu,  5 Mar 2020 11:55:28 +0200
Message-Id: <20200305095530.132858-1-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_015540_006715_907C8EC6 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: krishna2@chelsio.com, Max Gurtovoy <maxg@mellanox.com>, bharat@chelsio.com,
 nirranjan@chelsio.com, bvanassche@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Some transports, such as RDMA, would like to set the Maximum Data
Transfer Size (MDTS) according to device/port/ctrl characteristics.
This will enable the transport to set the optimal MDTS according to
controller needs and device capabilities. Add a new nvmet transport
op that is called during ctrl identification. This will not effect
transports that don't implement this option. The return value of the new
op is according to the NVMe spec definition for MDTS.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Israel Rukshin <israelr@mellanox.com>
---

changes from V1:
 - renamed set_mdts to get_mdts (Bart)
 - added const for ctrl argument (Bart)
 - updated commit message to explain return value of the new op (Bart)

---
 drivers/nvme/target/admin-cmd.c | 8 ++++++--
 drivers/nvme/target/nvmet.h     | 1 +
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index c0aa9c3..b9ec489 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -369,8 +369,12 @@ static void nvmet_execute_identify_ctrl(struct nvmet_req *req)
 	/* we support multiple ports, multiples hosts and ANA: */
 	id->cmic = (1 << 0) | (1 << 1) | (1 << 3);
 
-	/* no limit on data transfer sizes for now */
-	id->mdts = 0;
+	/* Limit MDTS according to transport capability */
+	if (ctrl->ops->get_mdts)
+		id->mdts = ctrl->ops->get_mdts(ctrl);
+	else
+		id->mdts = 0;
+
 	id->cntlid = cpu_to_le16(ctrl->cntlid);
 	id->ver = cpu_to_le32(ctrl->subsys->ver);
 
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 42ba2dd..421dff3 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -289,6 +289,7 @@ struct nvmet_fabrics_ops {
 			struct nvmet_port *port, char *traddr);
 	u16 (*install_queue)(struct nvmet_sq *nvme_sq);
 	void (*discovery_chg)(struct nvmet_port *port);
+	u8 (*get_mdts)(const struct nvmet_ctrl *ctrl);
 };
 
 #define NVMET_MAX_INLINE_BIOVEC	8
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
