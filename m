Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D43F21187E
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 13:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BVNVCKONMEJl5BdDSAwHsZs4XJaqBq8ArQxZgiWfd+4=; b=sois4kekjbGvTmzkcMxdBPgHiP
	Jzqpg/B5wYh2CvfFFxxHUeR0oiU+UHIV9mOcNVOz94aNJjXGhzUeO7TuNiMd2qM06f9qT0M7MrQFs
	UsTPe54t6nRFZaiMMqrl8ihMzpYc+kGXkx8kBwqP/tyyaZjCiI15YDLazpw20loTTzpxRmmN2wTBq
	hKlMPY9C7DR1gXVgdm8WmFuPP7zdlmY7Xgfwr6G402RtJM51PvTZ93vmtqRc21MmRyLbvNJu5SFga
	mExXPYfAo0VvA52dJirFiRKc905SLm0H5/PMsGSmItYWUYFRD5R4+PhwLBMhzuwg2iLB8CldYPTqA
	M3YZTARw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAED-0002RQ-Q3; Thu, 02 May 2019 11:50:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMADa-0001EB-JX
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 11:49:56 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 252C0C05E767;
 Thu,  2 May 2019 11:49:38 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6E8E617DDF;
 Thu,  2 May 2019 11:49:31 +0000 (UTC)
From: Maxim Levitsky <mlevitsk@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 09/10] nvme/mdev - Add inline performance measurments
Date: Thu,  2 May 2019 14:48:00 +0300
Message-Id: <20190502114801.23116-10-mlevitsk@redhat.com>
In-Reply-To: <20190502114801.23116-1-mlevitsk@redhat.com>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 02 May 2019 11:49:38 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_044938_923726_F5AD59BB 
X-CRM114-Status: GOOD (  19.89  )
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

This code might not be needed to be merged in the final version

Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>
---
 drivers/nvme/mdev/instance.c | 62 ++++++++++++++++++++++++++++++++++++
 drivers/nvme/mdev/io.c       | 21 ++++++++++++
 drivers/nvme/mdev/irq.c      |  6 ++++
 drivers/nvme/mdev/priv.h     | 13 ++++++++
 drivers/nvme/mdev/vctrl.c    |  3 ++
 5 files changed, 105 insertions(+)

diff --git a/drivers/nvme/mdev/instance.c b/drivers/nvme/mdev/instance.c
index 0e5ba5a9269f..d692b2bf2ef2 100644
--- a/drivers/nvme/mdev/instance.c
+++ b/drivers/nvme/mdev/instance.c
@@ -771,6 +771,62 @@ static struct attribute *nvme_mdev_dev_settings_atttributes[] = {
 	NULL
 };
 
+/* show perf stats */
+static ssize_t stats_show(struct device *dev,
+			  struct device_attribute *attr, char *buf)
+{
+	struct nvme_mdev_vctrl *vctrl = dev_to_vctrl(dev);
+	struct nvme_mdev_perf *perf;
+
+	if (!vctrl)
+		return -ENODEV;
+
+	perf = &vctrl->perf;
+
+	return sprintf(buf,
+		"%u %llu %llu %llu %llu %llu %llu\n",
+
+		tsc_khz,
+
+		perf->cmds_started,
+		perf->cycles_send_to_hw,
+
+		perf->cmds_complete,
+		perf->cycles_receive_from_hw,
+
+		perf->interrupts_sent,
+		perf->cycles_irq_delivery);
+}
+
+/* clear the perf stats */
+static ssize_t stats_store(struct device *dev,
+			   struct device_attribute *attr,
+			   const char *buf, size_t count)
+{
+	bool val;
+	int ret;
+	struct nvme_mdev_vctrl *vctrl = dev_to_vctrl(dev);
+
+	if (!vctrl)
+		return -ENODEV;
+	ret = kstrtobool(buf, &val);
+	if (ret)
+		return ret;
+
+	if (!val)
+		return -EINVAL;
+
+	memset(&vctrl->perf, 0, sizeof(vctrl->perf));
+	return count;
+}
+
+static DEVICE_ATTR_RW(stats);
+
+static struct attribute *nvme_mdev_dev_debug_attributes[] = {
+	&dev_attr_stats.attr,
+	NULL
+};
+
 static const struct attribute_group nvme_mdev_ns_attr_group = {
 	.name = "namespaces",
 	.attrs = nvme_mdev_dev_ns_atttributes,
@@ -781,9 +837,15 @@ static const struct attribute_group nvme_mdev_setting_attr_group = {
 	.attrs = nvme_mdev_dev_settings_atttributes,
 };
 
+static const struct attribute_group nvme_mdev_debug_attr_group = {
+	.name = "debug",
+	.attrs = nvme_mdev_dev_debug_attributes,
+};
+
 static const struct attribute_group *nvme_mdev_dev_attributte_groups[] = {
 	&nvme_mdev_ns_attr_group,
 	&nvme_mdev_setting_attr_group,
+	&nvme_mdev_debug_attr_group,
 	NULL,
 };
 
diff --git a/drivers/nvme/mdev/io.c b/drivers/nvme/mdev/io.c
index 59837540fec2..39550d0e3649 100644
--- a/drivers/nvme/mdev/io.c
+++ b/drivers/nvme/mdev/io.c
@@ -9,6 +9,7 @@
 #include <linux/nvme.h>
 #include <linux/timekeeping.h>
 #include <linux/ktime.h>
+#include <asm/msr.h>
 #include "priv.h"
 
 
@@ -251,6 +252,9 @@ static bool nvme_mdev_io_process_sq(struct io_ctx *ctx, u16 sqid)
 	struct nvme_vsq *vsq = &ctx->vctrl->vsqs[sqid];
 	u16 ucid;
 	int ret;
+	unsigned long long c1, c2;
+
+	c1 = rdtsc();
 
 	/* If host queue is full, we can't process a command
 	 * as a command will likely result in passthrough
@@ -289,6 +293,12 @@ static bool nvme_mdev_io_process_sq(struct io_ctx *ctx, u16 sqid)
 
 		nvme_mdev_vsq_cmd_done_io(ctx->vctrl, sqid, ucid, ret);
 	}
+
+	c2 = rdtsc();
+
+	ctx->vctrl->perf.cmds_started++;
+	ctx->vctrl->perf.cycles_send_to_hw += (c2 - c1);
+
 	return true;
 }
 
@@ -304,6 +314,10 @@ static int nvme_mdev_io_process_hwq(struct io_ctx *ctx, u16 hwq)
 	int n, i;
 	struct nvme_ext_cmd_result res[16];
 
+	unsigned long long c1, c2;
+
+	c1 = rdtsc();
+
 	/* process the completions from the hardware */
 	n = nvme_mdev_hctrl_hq_poll(ctx->hctrl, hwq, res, 16);
 	if (n == -1)
@@ -321,6 +335,13 @@ static int nvme_mdev_io_process_hwq(struct io_ctx *ctx, u16 hwq)
 
 		nvme_mdev_vsq_cmd_done_io(ctx->vctrl, qid, cid, status);
 	}
+
+	if (n > 0) {
+		c2 = rdtsc();
+		ctx->vctrl->perf.cmds_complete += n;
+		ctx->vctrl->perf.cycles_receive_from_hw += (c2 - c1);
+	}
+
 	return n;
 }
 
diff --git a/drivers/nvme/mdev/irq.c b/drivers/nvme/mdev/irq.c
index 5809cdb4d84c..b6010a69b584 100644
--- a/drivers/nvme/mdev/irq.c
+++ b/drivers/nvme/mdev/irq.c
@@ -9,6 +9,7 @@
 #include <linux/kernel.h>
 #include <linux/slab.h>
 #include "priv.h"
+#include <asm/msr.h>
 
 /* Setup the interrupt subsystem */
 void nvme_mdev_irqs_setup(struct nvme_mdev_vctrl *vctrl)
@@ -253,12 +254,17 @@ void nvme_mdev_irq_cond_trigger(struct nvme_mdev_vctrl *vctrl,
 				unsigned int index)
 {
 	struct nvme_mdev_user_irq *irq = &vctrl->irqs.vecs[index];
+	unsigned long long c1, c2;
 
 	if (irq->irq_pending_cnt == 0)
 		return;
 
 	if (!nvme_mdev_irq_coalesce(vctrl, irq)) {
+		vctrl->perf.interrupts_sent++;
+		c1 = rdtsc();
 		nvme_mdev_irq_trigger(vctrl, index);
+		c2 = rdtsc();
 		nvme_mdev_irq_clear(vctrl, index);
+		vctrl->perf.cycles_irq_delivery += (c2 - c1);
 	}
 }
diff --git a/drivers/nvme/mdev/priv.h b/drivers/nvme/mdev/priv.h
index 9f65e46c1ab2..a11a1842957d 100644
--- a/drivers/nvme/mdev/priv.h
+++ b/drivers/nvme/mdev/priv.h
@@ -245,6 +245,17 @@ struct nvme_mdev_io_region {
 	unsigned int mmap_area_size;
 };
 
+struct nvme_mdev_perf {
+	/* number of IO commands received */
+	unsigned long long cmds_started;
+	unsigned long long cmds_complete;
+	unsigned long long interrupts_sent;
+
+	unsigned long long cycles_send_to_hw;
+	unsigned long long cycles_receive_from_hw;
+	unsigned long long cycles_irq_delivery;
+};
+
 /*Virtual NVME controller state */
 struct nvme_mdev_vctrl {
 	struct kref ref;
@@ -301,6 +312,8 @@ struct nvme_mdev_vctrl {
 	char serial[9];
 
 	bool vctrl_paused; /* true when the host device paused our IO */
+
+	struct nvme_mdev_perf perf;
 };
 
 /* mdev instance type*/
diff --git a/drivers/nvme/mdev/vctrl.c b/drivers/nvme/mdev/vctrl.c
index 87bc7c435c0c..d23b543dfd52 100644
--- a/drivers/nvme/mdev/vctrl.c
+++ b/drivers/nvme/mdev/vctrl.c
@@ -242,6 +242,9 @@ int nvme_mdev_vctrl_open(struct nvme_mdev_vctrl *vctrl)
 
 	nvme_mdev_mmio_open(vctrl);
 	vctrl->inuse = true;
+
+	memset(&vctrl->perf, 0, sizeof(vctrl->perf));
+
 out:
 	mutex_unlock(&vctrl->lock);
 	return ret;
-- 
2.17.2


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
