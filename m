Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D399A1561E5
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Feb 2020 01:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7yTF6j/S343LE4Rykqzxz55DP6SCW62IRpDK6JCAjk=; b=LXUwTPgAIsXU5o
	NimiP1Sa8NqV8KfdTQ1dzdy8i+odgEtdunhnqwjaF295I3uXWUcYWZDak69pd0M1v7pvFua6nPWFU
	3abTZ03i9BAiKGpSmpvLKisXBE4ZGO6uoK5C4wgyNdCEL6xpQSUc+JR3r+b9TzQpwWr4BlV1NCsAP
	HAJrwm/pRDuHXmYZ+7lqsUxv7H5EJ8JzvuggXsu0Hs2sF5T3fee2/3e6Epeg5e+PcA3kA/cNgJCAC
	5nAIB4svo/mrhlfTx+aYg2COuNba7x4tDtK8MkEctNepTECFfRKe2ntkPMLJhal1ZwVkoSerzyomr
	8sFvwbaYyy7V7yZE/OAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0DsA-0002PL-N3; Sat, 08 Feb 2020 00:21:22 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Ds2-0002Ml-G1; Sat, 08 Feb 2020 00:21:14 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <kbusch@kernel.org>
Subject: [PATCH 2/2] nvme: expose hostid via sysfs for fabrics controllers
Date: Fri,  7 Feb 2020 16:21:11 -0800
Message-Id: <20200208002111.10220-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200208002111.10220-1-sagi@grimberg.me>
References: <20200208002111.10220-1-sagi@grimberg.me>
MIME-Version: 1.0
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 29a4f14360fa..c2aba7d700ff 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3252,6 +3252,16 @@ static ssize_t nvme_sysfs_show_hostnqn(struct device *dev,
 }
 static DEVICE_ATTR(hostnqn, S_IRUGO, nvme_sysfs_show_hostnqn, NULL);
 
+static ssize_t nvme_sysfs_show_hostid(struct device *dev,
+					struct device_attribute *attr,
+					char *buf)
+{
+	struct nvme_ctrl *ctrl = dev_get_drvdata(dev);
+
+	return snprintf(buf, PAGE_SIZE, "%pU\n", &ctrl->opts->host->id);
+}
+static DEVICE_ATTR(hostid, S_IRUGO, nvme_sysfs_show_hostid, NULL);
+
 static ssize_t nvme_sysfs_show_address(struct device *dev,
 					 struct device_attribute *attr,
 					 char *buf)
@@ -3278,6 +3288,7 @@ static struct attribute *nvme_dev_attrs[] = {
 	&dev_attr_queue_count.attr,
 	&dev_attr_sqsize.attr,
 	&dev_attr_hostnqn.attr,
+	&dev_attr_hostid.attr,
 	NULL
 };
 
@@ -3293,6 +3304,8 @@ static umode_t nvme_dev_attrs_are_visible(struct kobject *kobj,
 		return 0;
 	if (a == &dev_attr_hostnqn.attr && (!ctrl->opts))
 		return 0;
+	if (a == &dev_attr_hostid.attr && (!ctrl->opts))
+		return 0;
 
 	return a->mode;
 }
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
