Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5469B70D2F
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 01:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXwLS5ZfO1RPbCfwrUfXHkQUSnjEGwEiDkhZKu7MNVQ=; b=l/MWni2GOI7Jfy
	iTsmFfrR4ZCbtOmwtKwyukR0sqdFAhre+3u0N01dAEC5MCdiDlI3M91cKbm1Lowr3XMD3Xu6U4TbG
	VMoZqgkOXucVHOwUbSWrabFm7AYC1WRAMgUzFcvK4jjgpRvk6sWhjshW7xyPRu81eOq0QGtpFVr/u
	r1Re9a9o3nlprOylvAjqU1Ds2cgSWXN2uf087e/aMbvcNpvHjQ0AUgId4afmNaVf6ScKEo3ft299M
	kEzgECwlckRwurTIoTwGdgbkgotj43RjXBRkoRwgomGA4s0mXO0yqUx3FmhDJSv56Hv2IfpE6ht3V
	2/kf6NYZQ2fWiwV2oVbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hphV7-00052X-M8; Mon, 22 Jul 2019 23:13:50 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hphQj-00018d-Ky
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 23:09:21 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hphQb-0002jw-Dk; Mon, 22 Jul 2019 17:09:17 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hphQU-0001Qg-Mi; Mon, 22 Jul 2019 17:09:02 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Mon, 22 Jul 2019 17:08:47 -0600
Message-Id: <20190722230859.5436-3-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190722230859.5436-1-logang@deltatee.com>
References: <20190722230859.5436-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-rdma@vger.kernel.org, bhelgaas@google.com,
 hch@lst.de, Christian.Koenig@amd.com, jgg@mellanox.com, sagi@grimberg.me,
 kbusch@kernel.org, axboe@fb.com, dan.j.williams@intel.com, epilmore@gigaio.com,
 sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH 02/14] PCI/P2PDMA: Factor out __upstream_bridge_distance()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_160917_753799_8AB119CB 
X-CRM114-Status: GOOD (  17.61  )
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
 Christian Koenig <Christian.Koenig@amd.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Jason Gunthorpe <jgg@mellanox.com>,
 Stephen Bates <sbates@raithlin.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Eric Pilmore <epilmore@gigaio.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is a prep patch to create a second level helper. There are no
functional changes.

The root complex whitelist code will be moved into this function in
a subsequent patch.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/pci/p2pdma.c | 89 ++++++++++++++++++++++++--------------------
 1 file changed, 48 insertions(+), 41 deletions(-)

diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index e8ec86e1dd00..289d03a31e7d 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -287,47 +287,9 @@ enum {
 	P2PDMA_NOT_SUPPORTED		= 0x08000000,
 };
 
-/*
- * Find the distance through the nearest common upstream bridge between
- * two PCI devices.
- *
- * If the two devices are the same device then 0 will be returned.
- *
- * If there are two virtual functions of the same device behind the same
- * bridge port then 2 will be returned (one step down to the PCIe switch,
- * then one step back to the same device).
- *
- * In the case where two devices are connected to the same PCIe switch, the
- * value 4 will be returned. This corresponds to the following PCI tree:
- *
- *     -+  Root Port
- *      \+ Switch Upstream Port
- *       +-+ Switch Downstream Port
- *       + \- Device A
- *       \-+ Switch Downstream Port
- *         \- Device B
- *
- * The distance is 4 because we traverse from Device A through the downstream
- * port of the switch, to the common upstream port, back up to the second
- * downstream port and then to Device B.
- *
- * Any two devices that cannot communicate using p2pdma will return the distance
- * with the flag P2PDMA_NOT_SUPPORTED.
- *
- * Any two devices that have a data path that goes through the host bridge
- * will consult a whitelist. If the host bridges are on the whitelist,
- * then the distance will be returned with the flag P2PDMA_THRU_HOST_BRIDGE set.
- * If either bridge is not on the whitelist, the flag P2PDMA_NOT_SUPPORTED will
- * be set.
- *
- * If a bridge which has any ACS redirection bits set is in the path
- * then this functions will flag the result with P2PDMA_ACS_FORCES_UPSTREAM.
- * In this case, a list of all infringing bridge addresses will be
- * populated in acs_list (assuming it's non-null) for printk purposes.
- */
-static int upstream_bridge_distance(struct pci_dev *provider,
-				    struct pci_dev *client,
-				    struct seq_buf *acs_list)
+static int __upstream_bridge_distance(struct pci_dev *provider,
+				      struct pci_dev *client,
+				      struct seq_buf *acs_list)
 {
 	struct pci_dev *a = provider, *b = client, *bb;
 	int dist_a = 0;
@@ -393,6 +355,51 @@ static int upstream_bridge_distance(struct pci_dev *provider,
 	return dist_a + dist_b;
 }
 
+/*
+ * Find the distance through the nearest common upstream bridge between
+ * two PCI devices.
+ *
+ * If the two devices are the same device then 0 will be returned.
+ *
+ * If there are two virtual functions of the same device behind the same
+ * bridge port then 2 will be returned (one step down to the PCIe switch,
+ * then one step back to the same device).
+ *
+ * In the case where two devices are connected to the same PCIe switch, the
+ * value 4 will be returned. This corresponds to the following PCI tree:
+ *
+ *     -+  Root Port
+ *      \+ Switch Upstream Port
+ *       +-+ Switch Downstream Port
+ *       + \- Device A
+ *       \-+ Switch Downstream Port
+ *         \- Device B
+ *
+ * The distance is 4 because we traverse from Device A through the downstream
+ * port of the switch, to the common upstream port, back up to the second
+ * downstream port and then to Device B.
+ *
+ * Any two devices that cannot communicate using p2pdma will return the distance
+ * with the flag P2PDMA_NOT_SUPPORTED.
+ *
+ * Any two devices that have a data path that goes through the host bridge
+ * will consult a whitelist. If the host bridges are on the whitelist,
+ * then the distance will be returned with the flag P2PDMA_THRU_HOST_BRIDGE set.
+ * If either bridge is not on the whitelist, the flag P2PDMA_NOT_SUPPORTED will
+ * be set.
+ *
+ * If a bridge which has any ACS redirection bits set is in the path
+ * then this functions will flag the result with P2PDMA_ACS_FORCES_UPSTREAM.
+ * In this case, a list of all infringing bridge addresses will be
+ * populated in acs_list (assuming it's non-null) for printk purposes.
+ */
+static int upstream_bridge_distance(struct pci_dev *provider,
+				    struct pci_dev *client,
+				    struct seq_buf *acs_list)
+{
+	return __upstream_bridge_distance(provider, client, acs_list);
+}
+
 static int upstream_bridge_distance_warn(struct pci_dev *provider,
 					 struct pci_dev *client)
 {
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
