Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7634C70D24
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 01:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdsBVUiDAuQCUKjfEHHaetU2WfyZcRATtk4umkLJ+pA=; b=dD+zGGt4OiNfAd
	LxoY8ZnPmAp8hI7tluTomVTR+Ss4mM7ZxlUKfEaNl5IlkOSrb5KekFRnQKm2A1RjaAKq9CENxEs7k
	7xZo/5xbeKcVbHZh4QCm1mwomvSUdkZv16NvfGeFTtxRccSYhisW1rNE9YVa8eJYAuNykLHalgA8/
	5HsXQ83tDKqx+FajNtxmGNkIhEZDqSRXG4+ieGuWSh3xKLj1Hm5N57NSBvdGnOipUQc5tfIXWO3XK
	nX+K8JJawBO2m6NEvhjoogxQIMpUPIaPx27VNxtxmse/y3SV7ujT1utI1RTFD6eXQujQ8vm42qQAY
	Ckqz1/A34a2wdqFrb6Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hphSg-0003Cl-37; Mon, 22 Jul 2019 23:11:18 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hphQh-00015I-5d
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 23:09:18 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hphQb-0002k0-Dk; Mon, 22 Jul 2019 17:09:11 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hphQV-0001Qt-MG; Mon, 22 Jul 2019 17:09:03 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Mon, 22 Jul 2019 17:08:51 -0600
Message-Id: <20190722230859.5436-7-logang@deltatee.com>
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
Subject: [PATCH 06/14] PCI/P2PDMA: Add whitelist support for Intel Host Bridges
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_160915_579295_673CD83F 
X-CRM114-Status: GOOD (  12.64  )
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

Intel devices do not have good support for P2P requests that span
different host bridges as the transactions will cross the QPI/UPI bus
and this does not perform well.

Therefore, enable support for these devices only if the host bridges
match.

Adds the Intel device's that have been tested to work. There are
likely many others out there that will need to be tested and added.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/pci/p2pdma.c | 36 ++++++++++++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index dfb802afc8ca..143e11d2a5c3 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -250,9 +250,28 @@ static void seq_buf_print_bus_devfn(struct seq_buf *buf, struct pci_dev *pdev)
 	seq_buf_printf(buf, "%s;", pci_name(pdev));
 }
 
-static bool __host_bridge_whitelist(struct pci_host_bridge *host)
+static const struct pci_p2pdma_whitelist_entry {
+	unsigned short vendor;
+	unsigned short device;
+	bool req_same_host_bridge;
+} pci_p2pdma_whitelist[] = {
+	/* AMD ZEN */
+	{PCI_VENDOR_ID_AMD,	0x1450,	false},
+
+	/* Intel Xeon E5/Core i7 */
+	{PCI_VENDOR_ID_INTEL,	0x3c00, true},
+	{PCI_VENDOR_ID_INTEL,	0x3c01, true},
+	/* Intel Xeon E7 v3/Xeon E5 v3/Core i7 */
+	{PCI_VENDOR_ID_INTEL,	0x2f00, true},
+	{PCI_VENDOR_ID_INTEL,	0x2f01, true},
+	{}
+};
+
+static bool __host_bridge_whitelist(struct pci_host_bridge *host,
+				    bool same_host_bridge)
 {
 	struct pci_dev *root = pci_get_slot(host->bus, PCI_DEVFN(0, 0));
+	const struct pci_p2pdma_whitelist_entry *entry;
 	unsigned short vendor, device;
 
 	if (!root)
@@ -262,9 +281,14 @@ static bool __host_bridge_whitelist(struct pci_host_bridge *host)
 	device = root->device;
 	pci_dev_put(root);
 
-	/* AMD ZEN host bridges can do peer to peer */
-	if (vendor == PCI_VENDOR_ID_AMD && device == 0x1450)
+	for (entry = pci_p2pdma_whitelist; entry->vendor; entry++) {
+		if (vendor != entry->vendor || device != entry->device)
+			continue;
+		if (entry->req_same_host_bridge && !same_host_bridge)
+			return false;
+
 		return true;
+	}
 
 	return false;
 }
@@ -281,7 +305,11 @@ static bool host_bridge_whitelist(struct pci_dev *a, struct pci_dev *b)
 	if (iommu_present(a->dev.bus) || iommu_present(b->dev.bus))
 		return false;
 
-	if (__host_bridge_whitelist(host_a) && __host_bridge_whitelist(host_b))
+	if (host_a == host_b)
+		return __host_bridge_whitelist(host_a, true);
+
+	if (__host_bridge_whitelist(host_a, false) &&
+	    __host_bridge_whitelist(host_b, false))
 		return true;
 
 	return false;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
