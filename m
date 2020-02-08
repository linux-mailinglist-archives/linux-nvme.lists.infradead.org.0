Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D031315623A
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Feb 2020 02:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEx3rcIVJDJekvOnC4B6d6IiiCoXMo7IqPR6iEIRNmI=; b=GBxbCMFdQGdpOL
	It6NTJEvPjmJlyv6jQngHZ2yWv9ZZmY7J9cIbYL3zrPZD3yfdcYrhO4G4KafQ4KJXbW0V+CY/xIbc
	NRrZ8/SHG9M2rtxGW1rsvUhJmmXVE9hNX9R55MnCpe78JXX9+Ngu/eIOtBeY62lLiEmnlN9jD3GP5
	j6b98k/om64A507xGU9jKc18VGwet8LH7Vip+JQ9nE0Pf60EoTyHGb2zKq1s0Nj17KjUowXZ2xfcn
	3q6okXwGOd8Gdax9APCM1IBEfoj+cseBGXRURZRTf2JlGPgDdKKQ0lTdIHIOjakzzaYmmdLHSf7ni
	Lv3kz5DSMwsGDYrRHPcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0EhE-0004QH-S7; Sat, 08 Feb 2020 01:14:08 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Eh1-0004MC-1y; Sat, 08 Feb 2020 01:13:55 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH v2 2/2] nvme: expose hostid via sysfs for fabrics controllers
Date: Fri,  7 Feb 2020 17:13:54 -0800
Message-Id: <20200208011354.20889-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200208011354.20889-1-sagi@grimberg.me>
References: <20200208011354.20889-1-sagi@grimberg.me>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We allow userspace to connect with a custom hostid which
is useful for certain use-cases. however there is is no way
to tell what is the hostid used to connect to a given controller.

Expose this so userspace can correlate controllers based on hostid.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
Changes from v1:
- fix changelog
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
