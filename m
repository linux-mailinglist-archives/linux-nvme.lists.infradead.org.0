Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918C11185D
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 13:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+zfyMrZtLDs3nkw7+X9SzQsry0oDEdVi3ayZw756gG0=; b=jFTc3nbslDc1fjVT+pCTqOg1oi
	bnuMe2kpRycE0t/LXAoBclg2eBdJKot7icGLiu4pYBY5aS0p0yIhrWBt04KZtvFCUXJtCEqIXuYKz
	q03ubbn5empAyCMVPthgi49Pg0U9ZrXz3vuHTD9NOnjp09t6l1IWLlHy8cO8NNEeT2smyt9yU5zxM
	EDGeozyU472uBIW57xfY2YBcemiB3EHDbrnnuKeE6W8j8VPqCQ0/xHpBn/VUc3WhNNfn66/xHPDV6
	XMkyjOhalyXlrqaAq2Hk+Kd34uwXLNk7wnrHa16vKJrj8zvt8JQxy0173ZSjvSCrSkyYIJJ+3SeK4
	GXZlDDyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMACg-0008Ut-AY; Thu, 02 May 2019 11:48:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMACY-0008PV-KJ
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 11:48:37 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 204A7F74B9;
 Thu,  2 May 2019 11:48:34 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 48B2117DDF;
 Thu,  2 May 2019 11:48:29 +0000 (UTC)
From: Maxim Levitsky <mlevitsk@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 01/10] vfio/mdev: add notifier for map events
Date: Thu,  2 May 2019 14:47:52 +0300
Message-Id: <20190502114801.23116-2-mlevitsk@redhat.com>
In-Reply-To: <20190502114801.23116-1-mlevitsk@redhat.com>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Thu, 02 May 2019 11:48:34 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_044835_090797_F91918FF 
X-CRM114-Status: GOOD (  21.67  )
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
Cc: Fam Zheng <fam@euphon.net>, Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, kvm@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liang Cunming <cunming.liang@intel.com>, Wolfram Sang <wsa@the-dreams.de>,
 linux-kernel@vger.kernel.org, Kirti Wankhede <kwankhede@nvidia.com>,
 Maxim Levitsky <mlevitsk@redhat.com>, Jens Axboe <axboe@fb.com>,
 Alex Williamson <alex.williamson@redhat.com>, John Ferlan <jferlan@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 "Paul E . McKenney " <paulmck@linux.ibm.com>, Amnon Ilan <ailan@redhat.com>,
 Christoph Hellwig <hch@lst.de>, Nicolas Ferre <nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Allow an VFIO mdev device to listen to map events
This will allow a mdev driver to dma map memory
as soon as it gets added to the domain

--
Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>
---
 drivers/vfio/vfio_iommu_type1.c | 97 +++++++++++++++++++++++++++++----
 include/linux/vfio.h            |  4 ++
 2 files changed, 89 insertions(+), 12 deletions(-)

diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index d0f731c9920a..393b56d78166 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -63,17 +63,22 @@ module_param_named(dma_entry_limit, dma_entry_limit, uint, 0644);
 MODULE_PARM_DESC(dma_entry_limit,
 		 "Maximum number of user DMA mappings per container (65535).");
 
+/* a container, usually one per VM*/
 struct vfio_iommu {
 	struct list_head	domain_list;
 	struct vfio_domain	*external_domain; /* domain for external user */
 	struct mutex		lock;
 	struct rb_root		dma_list;
-	struct blocking_notifier_head notifier;
+	struct blocking_notifier_head map_notifiers;
+	struct blocking_notifier_head unmap_notifiers;
 	unsigned int		dma_avail;
 	bool			v2;
 	bool			nesting;
 };
 
+/* An IOMMU domain - also usually one per VM, unless devices assigned to VM
+ * are connected via different IOMMUs
+ */
 struct vfio_domain {
 	struct iommu_domain	*domain;
 	struct list_head	next;
@@ -563,8 +568,7 @@ static int vfio_iommu_type1_pin_pages(void *iommu_data,
 
 	mutex_lock(&iommu->lock);
 
-	/* Fail if notifier list is empty */
-	if ((!iommu->external_domain) || (!iommu->notifier.head)) {
+	if (!iommu->external_domain) {
 		ret = -EINVAL;
 		goto pin_done;
 	}
@@ -967,7 +971,7 @@ static int vfio_dma_do_unmap(struct vfio_iommu *iommu,
 			 * invalidation.
 			 */
 			mutex_unlock(&iommu->lock);
-			blocking_notifier_call_chain(&iommu->notifier,
+			blocking_notifier_call_chain(&iommu->unmap_notifiers,
 						    VFIO_IOMMU_NOTIFY_DMA_UNMAP,
 						    &nb_unmap);
 			goto again;
@@ -1144,6 +1148,22 @@ static int vfio_dma_do_map(struct vfio_iommu *iommu,
 	else
 		ret = vfio_pin_map_dma(iommu, dma, size);
 
+	mutex_unlock(&iommu->lock);
+
+	/*
+	 * Notify anyone (mdev vendor drivers) that new mapping has being
+	 * created - vendor drivers can in response pin/dma map the memory
+	 */
+	ret = blocking_notifier_call_chain(&iommu->map_notifiers,
+				    VFIO_IOMMU_NOTIFY_DMA_MAP,
+				    map);
+
+	ret = notifier_to_errno(ret);
+	if (ret)
+		vfio_remove_dma(iommu, dma);
+
+	return ret;
+
 out_unlock:
 	mutex_unlock(&iommu->lock);
 	return ret;
@@ -1508,7 +1528,8 @@ static void vfio_sanity_check_pfn_list(struct vfio_iommu *iommu)
 			break;
 	}
 	/* mdev vendor driver must unregister notifier */
-	WARN_ON(iommu->notifier.head);
+	WARN_ON(iommu->map_notifiers.head);
+	WARN_ON(iommu->unmap_notifiers.head);
 }
 
 static void vfio_iommu_type1_detach_group(void *iommu_data,
@@ -1598,7 +1619,8 @@ static void *vfio_iommu_type1_open(unsigned long arg)
 	iommu->dma_list = RB_ROOT;
 	iommu->dma_avail = dma_entry_limit;
 	mutex_init(&iommu->lock);
-	BLOCKING_INIT_NOTIFIER_HEAD(&iommu->notifier);
+	BLOCKING_INIT_NOTIFIER_HEAD(&iommu->unmap_notifiers);
+	BLOCKING_INIT_NOTIFIER_HEAD(&iommu->map_notifiers);
 
 	return iommu;
 }
@@ -1738,23 +1760,74 @@ static int vfio_iommu_type1_register_notifier(void *iommu_data,
 					      struct notifier_block *nb)
 {
 	struct vfio_iommu *iommu = iommu_data;
+	struct rb_node *node;
+	int ret = 0;
+
+	if (*events == VFIO_IOMMU_NOTIFY_DMA_MAP) {
+
+		/* now register the notifier */
+		ret = blocking_notifier_chain_register(&iommu->map_notifiers,
+				nb);
 
-	/* clear known events */
-	*events &= ~VFIO_IOMMU_NOTIFY_DMA_UNMAP;
+		/* replay the mapping */
+		 node = rb_first(&iommu->dma_list);
+		while (node) {
+			struct vfio_dma *dma = rb_entry(node, struct vfio_dma,
+					node);
 
-	/* refuse to register if still events remaining */
-	if (*events)
+			struct vfio_iommu_type1_dma_map map;
+
+			map.argsz = sizeof(struct vfio_iommu_type1_dma_map);
+			map.flags = 0;
+
+			if (dma->prot & IOMMU_READ)
+				map.flags |= VFIO_DMA_MAP_FLAG_READ;
+			if (dma->prot & IOMMU_WRITE)
+				map.flags |= VFIO_DMA_MAP_FLAG_WRITE;
+
+			map.iova = dma->iova;
+			map.vaddr = dma->vaddr;
+			map.size = dma->size;
+
+			node = rb_next(node);
+
+			/* Call only the first notifier, the one that
+			 * we just registered
+			 */
+			ret = __blocking_notifier_call_chain(
+					&iommu->map_notifiers,
+					VFIO_IOMMU_NOTIFY_DMA_MAP,
+					&map, 1, NULL);
+
+			ret = notifier_to_errno(ret);
+			if (ret) {
+				blocking_notifier_chain_unregister(
+						&iommu->map_notifiers, nb);
+				return ret;
+			}
+		}
+
+	} else if (*events == VFIO_IOMMU_NOTIFY_DMA_UNMAP) {
+		ret =  blocking_notifier_chain_register(
+				&iommu->unmap_notifiers, nb);
+	} else {
 		return -EINVAL;
+	}
+	return ret;
 
-	return blocking_notifier_chain_register(&iommu->notifier, nb);
 }
 
 static int vfio_iommu_type1_unregister_notifier(void *iommu_data,
 						struct notifier_block *nb)
 {
 	struct vfio_iommu *iommu = iommu_data;
+	int ret;
 
-	return blocking_notifier_chain_unregister(&iommu->notifier, nb);
+	ret = blocking_notifier_chain_unregister(&iommu->map_notifiers, nb);
+	if (ret)
+		ret = blocking_notifier_chain_unregister(
+				&iommu->unmap_notifiers, nb);
+	return ret;
 }
 
 static const struct vfio_iommu_driver_ops vfio_iommu_driver_ops_type1 = {
diff --git a/include/linux/vfio.h b/include/linux/vfio.h
index 66741ab087c1..957f09263bfe 100644
--- a/include/linux/vfio.h
+++ b/include/linux/vfio.h
@@ -118,10 +118,14 @@ enum vfio_notify_type {
 
 /* events for VFIO_IOMMU_NOTIFY */
 #define VFIO_IOMMU_NOTIFY_DMA_UNMAP	BIT(0)
+#define VFIO_IOMMU_NOTIFY_DMA_MAP	BIT(1)
 
 /* events for VFIO_GROUP_NOTIFY */
 #define VFIO_GROUP_NOTIFY_SET_KVM	BIT(0)
 
+/* Note: currently you can only register a notifier for a single event
+ * at the time
+ */
 extern int vfio_register_notifier(struct device *dev,
 				  enum vfio_notify_type type,
 				  unsigned long *required_events,
-- 
2.17.2


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
