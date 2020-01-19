Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADF114201E
	for <lists+linux-nvme@lfdr.de>; Sun, 19 Jan 2020 22:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4VPCGWOAreA66q9Yh0n3OGlzehXXC+5Msi3GX+kh6U=; b=bgFaZu0F4x7Qwk
	3D1s1peAxHWqLQ6jRcAmx2DYfY4Wvnd60hIFZbWfwb8/Sr9stwzSWXuPghPAr9Asqa/gk0LZk6bjB
	5nqnym3R62Rryw0r8vARW4/Jl9Fytd6Bg0zrd04i5pGnNqvkx+wX9b6DceQWydrchcWReuocaLHLG
	3bOVbYY9JHeJ0DkEpCSxutLmQIYUQhlC5jxDozsoHBQ1q66MMIjY6V5Gz7arv1IYGvRwMn9nIyf+O
	McAv7jadtvUmsDQ3mitkp8mAcnfZuUXh3KaibQNs9hmBlbOk5pwtw1SVkh6l686hJxqctjr/mTZCN
	ZjXFhgFTMCUvTE+Muy2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itI2i-0004jB-1u; Sun, 19 Jan 2020 21:23:36 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itI2c-0004ho-SU
 for linux-nvme@lists.infradead.org; Sun, 19 Jan 2020 21:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1579469010; x=1611005010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lziYktOPctwQIqibgTpzdTHDFAx0T7Ky/bHvMzscczM=;
 b=mkIYIISykMhDNDTO2pUDyZeOdu8psfR6nRkGKEvUiM45a+r9C8kMMpgU
 v4Egd1BRpHlyp9ZCjqqUnANnyE9yrUsAh/8hvzTYQww16fL8QQMgitafc
 KQVwg69HDfd5fkKqvXJOIoZksEs6RoIR/apFqul/BClXov2J6mC6fJCqN
 NRW2sUyQeFSYMSHNbd5KOihhNHVUY4EpL3sF3MqeveFep1h70HQjk8OJ+
 hpHxV4EuX/5A9l7VPLGTMPENxWR5ma3l/DkF8MI2te5Y4dtozXiWxiBqJ
 lshPoZQvO3sBg7yauCMce7lN4/l95AnNnaOJ2CQSdQCjUF82HTINt/a6n A==;
IronPort-SDR: hPIghpnpV0eS7OkWd+FVbgojkbcTKZhg9Mk4KgjCDnP9eseC8sCa4glZoknH/Rgwz7awGTZcIS
 d+t/62a908NePQu80H1ta8EOBK87KxXtxCJhHNhsP534RgFyw2CdobuAqHI7WiXjQ+2r3q2V5s
 /bUuPgYYllvY1PiJ/jYyyRxaz2AANpF8JEu0QHep7sXgvWDz5lUCvdRebUzpqFwmvZuMEgdRD8
 +hluIhIXbUCRc2MCV8gFcxarDIlVfxMO+gL9XcfoMxnccJzLVQxysY3BJhPqiw5rB9GkAwJZLz
 KME=
X-IronPort-AV: E=Sophos;i="5.70,339,1574092800"; d="scan'208";a="235845823"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 20 Jan 2020 05:23:28 +0800
IronPort-SDR: vUmtc7A4tHBIHtaeZ9gMNwwfnbvla6ZrHzTElt52D2H2Q6sgpQmZoulQCd8OQP6oHZKg8zhNzJ
 o4tISREesz1R6EPseBxXMP84nUdWRMchM1Swov5BQEITbPpBukvgVbqBuG5SpWbnREvv6z4Fxu
 J9z5Dy6tvuRlUjZqOwNMT7rKxODbk86sfncZGIyy0zl5YaoxpmuF3xsA08/Zke6Fkn9kdOUgLK
 eB7gqaJRxT7efB3DyMZ+nMR0d+apqE5xV34ObM53SObDrfb8FbDYAvFG1re/67k+tec5uTXYS6
 D+K2MI9hUj33aSzjYuAhFtd+
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2020 13:16:57 -0800
IronPort-SDR: 21ixdWg6kvWXjPIvFCwtl+lzbJOUtFjFgRtdsWXfZZ7DKBDQwsNwwLBuG/D325aXJry21Nq/4g
 s7eEGi+6iVk3xwhB7SFWv6f3vOE4yMiZUi31xv28qCeMEVMQZ19C7jpNXw6NC4hiiEEmnFDRzW
 VUHeM6nGOZxXN1VKfFhSDUt/lN1dzekpHMoSmiFgvSw2P2NHBNfXXEFFPsHV0yrCguFK3/DPfB
 FEd8BIpNSdwehKI9vACTBcezSJOAHoYqxNXoUbJTeGUgiFKiUBNpQxkEiHkKQYpReFMG4DuRI2
 s0o=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 19 Jan 2020 13:23:29 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V4 1/4] nvmet: make ctrl-id configurable
Date: Sun, 19 Jan 2020 13:23:23 -0800
Message-Id: <20200119212326.19701-2-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200119212326.19701-1-chaitanya.kulkarni@wdc.com>
References: <20200119212326.19701-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_132330_955804_17D2CD44 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sagi@grimberg.me, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds a new target subsys attribute which allows user to
optionally specify target controller IDs which then used in the
nvmet_execute_identify_ctrl() to fill up the nvme_id_ctrl structure.

For example, when using a cluster setup with two nodes, with a dual
ported NVMe drive and exporting the drive from both the nodes,
The connection to the host fails due to the same controller ID and
results in the following error message:-

"nvme nvmeX: Duplicate cntlid XXX with nvmeX, rejecting"

With this patch now user can partition the controller IDs for each
subsystem by setting up the cntlid_min and cntlid_max. These values
will be used at the time of the controller ID creation. By partitioning
the ctrl-ids for each subsystem results in the unique ctrl-id space
which avoids the collision.

When new attribute is not specified target will fall back to original
cntlid calculation method.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
Changes from V3:-

1. Remove error message in nvmet_subsys_attr_attr_cntlid_[min|max]().
2. Remove the return variable and simplify tail of the functions.

Changes from V2:-

1. Reduce the size of the lock for sscanf for cntlid_min and cntlid_max.
2. Remove the common show and store function for cntlid.
3. Move cntlid_min and cntlid_max check into the store function. 
4. Update the patch description.
5. Move check for valid cntlid_[min|max] parameter into configfs
   respective store function.

Changes from V1:-

1. Add cntlid max and min configfs attributes.
2. Use simple if .. else statements instead of ternary operators.
---
 drivers/nvme/target/configfs.c | 62 ++++++++++++++++++++++++++++++++++
 drivers/nvme/target/core.c     |  8 +++--
 drivers/nvme/target/nvmet.h    |  2 ++
 3 files changed, 70 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 98613a45bd3b..c62f8b8b3d53 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -862,10 +862,72 @@ static ssize_t nvmet_subsys_attr_serial_store(struct config_item *item,
 }
 CONFIGFS_ATTR(nvmet_subsys_, attr_serial);
 
+static ssize_t nvmet_subsys_attr_cntlid_min_show(struct config_item *item,
+						 char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%u\n", to_subsys(item)->cntlid_min);
+}
+
+static ssize_t nvmet_subsys_attr_cntlid_min_store(struct config_item *item,
+						  const char *page, size_t cnt)
+{
+	u16 cntlid_min;
+
+	if (sscanf(page, "%hu\n", &cntlid_min) != 1)
+		return -EINVAL;
+
+	if (cntlid_min == 0)
+		return -EINVAL;
+
+	down_write(&nvmet_config_sem);
+	if (cntlid_min >= to_subsys(item)->cntlid_max)
+		goto out_unlock;
+	to_subsys(item)->cntlid_min = cntlid_min;
+	up_write(&nvmet_config_sem);
+	return cnt;
+
+out_unlock:
+	up_write(&nvmet_config_sem);
+	return -EINVAL;
+}
+CONFIGFS_ATTR(nvmet_subsys_, attr_cntlid_min);
+
+static ssize_t nvmet_subsys_attr_cntlid_max_show(struct config_item *item,
+						 char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%u\n", to_subsys(item)->cntlid_max);
+}
+
+static ssize_t nvmet_subsys_attr_cntlid_max_store(struct config_item *item,
+						  const char *page, size_t cnt)
+{
+	u16 cntlid_max;
+
+	if (sscanf(page, "%hu\n", &cntlid_max) != 1)
+		return -EINVAL;
+
+	if (cntlid_max == 0)
+		return -EINVAL;
+
+	down_write(&nvmet_config_sem);
+	if (cntlid_max <= to_subsys(item)->cntlid_min)
+		goto out_unlock;
+	to_subsys(item)->cntlid_max = cntlid_max;
+	up_write(&nvmet_config_sem);
+	return cnt;
+
+out_unlock:
+	up_write(&nvmet_config_sem);
+	return -EINVAL;
+}
+CONFIGFS_ATTR(nvmet_subsys_, attr_cntlid_max);
+
 static struct configfs_attribute *nvmet_subsys_attrs[] = {
 	&nvmet_subsys_attr_attr_allow_any_host,
 	&nvmet_subsys_attr_attr_version,
 	&nvmet_subsys_attr_attr_serial,
+	&nvmet_subsys_attr_attr_cntlid_min,
+	&nvmet_subsys_attr_attr_cntlid_max,
 	NULL,
 };
 
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 28438b833c1b..990ad4c7bdfd 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -1267,8 +1267,11 @@ u16 nvmet_alloc_ctrl(const char *subsysnqn, const char *hostnqn,
 	if (!ctrl->sqs)
 		goto out_free_cqs;
 
+	if (subsys->cntlid_min > subsys->cntlid_max)
+		goto out_free_cqs;
+
 	ret = ida_simple_get(&cntlid_ida,
-			     NVME_CNTLID_MIN, NVME_CNTLID_MAX,
+			     subsys->cntlid_min, subsys->cntlid_max,
 			     GFP_KERNEL);
 	if (ret < 0) {
 		status = NVME_SC_CONNECT_CTRL_BUSY | NVME_SC_DNR;
@@ -1416,7 +1419,8 @@ struct nvmet_subsys *nvmet_subsys_alloc(const char *subsysnqn,
 		kfree(subsys);
 		return ERR_PTR(-ENOMEM);
 	}
-
+	subsys->cntlid_min = NVME_CNTLID_MIN;
+	subsys->cntlid_max = NVME_CNTLID_MAX;
 	kref_init(&subsys->ref);
 
 	mutex_init(&subsys->lock);
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 46df45e837c9..6492d12e626a 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -211,6 +211,8 @@ struct nvmet_subsys {
 	struct list_head	namespaces;
 	unsigned int		nr_namespaces;
 	unsigned int		max_nsid;
+	u16			cntlid_min;
+	u16			cntlid_max;
 
 	struct list_head	ctrls;
 
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
