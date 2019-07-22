Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FF770D30
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 01:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NU03pgQXpuowZr5IYMpP3Hyn3i97+uWlzh4nEdrRenE=; b=USDqkJ1rjRMgsc
	S9nnjMmzvUSLAgay/iAhhPV0+ECqetTkalZPZLY+Ikt5pdZ+vZ5IAgwnH+ao4cMVVQfhVWJLd4s+r
	p9yyVsHnOIlu3Xzx1qtplxt0N7faFJN/C6QImbqJ8sBBmPa/WKgXc3klBujYYu94NSmINGQijw4QK
	BQCji3IYskP+epqryTcdERF3dYr+MRZypA0WbDctuyUssbawYlaVIYs1LeEH3Oq5zx7pMQng7P/wd
	0YEVTFlH4mxDv6MC7rWBE9tmJZKG4WlsVHTleLZ7LThcwYjQ9B++QSNSly2IdYgnu3Yqh6HBhYAKD
	3oIDlFu+Gkhhp8Bog6dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hphVQ-0005G0-Ok; Mon, 22 Jul 2019 23:14:08 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hphQl-00019g-Nr
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 23:09:22 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hphQb-0002jv-Dk; Mon, 22 Jul 2019 17:09:18 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hphQU-0001Qe-Cs; Mon, 22 Jul 2019 17:09:02 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Mon, 22 Jul 2019 17:08:46 -0600
Message-Id: <20190722230859.5436-2-logang@deltatee.com>
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
Subject: [PATCH 01/14] PCI/P2PDMA: Add constants for not-supported result
 upstream_bridge_distance()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_160920_274153_18E43816 
X-CRM114-Status: GOOD (  22.24  )
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

Add constant flags to indicate two devices are not supported or whether
the data path goes through the host bridge instead of using the negative
values -1 and -2.

This helps annotate the code better, but the main reason is so we
can cache the result in an xarray which does not allow us to store
negative values.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/pci/p2pdma.c | 52 ++++++++++++++++++++++++++------------------
 1 file changed, 31 insertions(+), 21 deletions(-)

diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index 234476226529..e8ec86e1dd00 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -273,6 +273,20 @@ static bool root_complex_whitelist(struct pci_dev *dev)
 	return false;
 }
 
+enum {
+	/*
+	 * Thes arbitrary offset are or'd onto the upstream distance
+	 * calculation for the following conditions:
+	 */
+
+	/* The data path includes the host-bridge */
+	P2PDMA_THRU_HOST_BRIDGE		= 0x02000000,
+	/* The data path is forced through the host-bridge due to ACS */
+	P2PDMA_ACS_FORCES_UPSTREAM	= 0x04000000,
+	/* The data path is not supported by P2PDMA */
+	P2PDMA_NOT_SUPPORTED		= 0x08000000,
+};
+
 /*
  * Find the distance through the nearest common upstream bridge between
  * two PCI devices.
@@ -297,22 +311,17 @@ static bool root_complex_whitelist(struct pci_dev *dev)
  * port of the switch, to the common upstream port, back up to the second
  * downstream port and then to Device B.
  *
- * Any two devices that don't have a common upstream bridge will return -1.
- * In this way devices on separate PCIe root ports will be rejected, which
- * is what we want for peer-to-peer seeing each PCIe root port defines a
- * separate hierarchy domain and there's no way to determine whether the root
- * complex supports forwarding between them.
+ * Any two devices that cannot communicate using p2pdma will return the distance
+ * with the flag P2PDMA_NOT_SUPPORTED.
  *
- * In the case where two devices are connected to different PCIe switches,
- * this function will still return a positive distance as long as both
- * switches eventually have a common upstream bridge. Note this covers
- * the case of using multiple PCIe switches to achieve a desired level of
- * fan-out from a root port. The exact distance will be a function of the
- * number of switches between Device A and Device B.
+ * Any two devices that have a data path that goes through the host bridge
+ * will consult a whitelist. If the host bridges are on the whitelist,
+ * then the distance will be returned with the flag P2PDMA_THRU_HOST_BRIDGE set.
+ * If either bridge is not on the whitelist, the flag P2PDMA_NOT_SUPPORTED will
+ * be set.
  *
  * If a bridge which has any ACS redirection bits set is in the path
- * then this functions will return -2. This is so we reject any
- * cases where the TLPs are forwarded up into the root complex.
+ * then this functions will flag the result with P2PDMA_ACS_FORCES_UPSTREAM.
  * In this case, a list of all infringing bridge addresses will be
  * populated in acs_list (assuming it's non-null) for printk purposes.
  */
@@ -359,9 +368,9 @@ static int upstream_bridge_distance(struct pci_dev *provider,
 	 */
 	if (root_complex_whitelist(provider) &&
 	    root_complex_whitelist(client))
-		return 0x1000 + dist_a + dist_b;
+		return (dist_a + dist_b) | P2PDMA_THRU_HOST_BRIDGE;
 
-	return -1;
+	return (dist_a + dist_b) | P2PDMA_NOT_SUPPORTED;
 
 check_b_path_acs:
 	bb = b;
@@ -379,7 +388,7 @@ static int upstream_bridge_distance(struct pci_dev *provider,
 	}
 
 	if (acs_cnt)
-		return -2;
+		return P2PDMA_NOT_SUPPORTED | P2PDMA_ACS_FORCES_UPSTREAM;
 
 	return dist_a + dist_b;
 }
@@ -395,16 +404,17 @@ static int upstream_bridge_distance_warn(struct pci_dev *provider,
 		return -ENOMEM;
 
 	ret = upstream_bridge_distance(provider, client, &acs_list);
-	if (ret == -2) {
-		pci_warn(client, "cannot be used for peer-to-peer DMA as ACS redirect is set between the client and provider (%s)\n",
+	if (ret & P2PDMA_ACS_FORCES_UPSTREAM) {
+		pci_warn(client, "ACS redirect is set between the client and provider (%s)\n",
 			 pci_name(provider));
 		/* Drop final semicolon */
 		acs_list.buffer[acs_list.len-1] = 0;
 		pci_warn(client, "to disable ACS redirect for this path, add the kernel parameter: pci=disable_acs_redir=%s\n",
 			 acs_list.buffer);
+	}
 
-	} else if (ret < 0) {
-		pci_warn(client, "cannot be used for peer-to-peer DMA as the client and provider (%s) do not share an upstream bridge\n",
+	if (ret & P2PDMA_NOT_SUPPORTED) {
+		pci_warn(client, "cannot be used for peer-to-peer DMA as the client and provider (%s) do not share an upstream bridge or whitelisted host bridge\n",
 			 pci_name(provider));
 	}
 
@@ -468,7 +478,7 @@ int pci_p2pdma_distance_many(struct pci_dev *provider, struct device **clients,
 
 		pci_dev_put(pci_client);
 
-		if (ret < 0)
+		if (ret & P2PDMA_NOT_SUPPORTED)
 			not_supported = true;
 
 		if (not_supported && !verbose)
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
