Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ABF1C65AB
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 03:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1cnJJJVUfg3S7IdOnvpC8eR1xpXXmZ4z0r9+FQVwnY=; b=g8nGImRFwHuHiw
	QbhNbSzuaH2kixgtAS/E2BJnaoP2Ff7ErVWSBw3lzrcC4u7Z0a6/dOoBTDioiFmXOHzIdewWb4CiA
	mFbmgUMNjI93ieQ3iGeCOWRJtCtTzrsnSTBuiQh7StZ0vaZbfoNPHtgdNh69sC9IrCxqYfi+ef3NC
	P3oUxJNcVu8kZ0V1ymp0RKqNeJECCsJP5M4LCwnKoSQ9Oss5HaGMOx+Yb7hodr9dRRWB74FQPT5HT
	uVpuc+Axo/jA0u1chkJ7Vu+7awzA0gSoz0prjchxAhmgHJ5UVJ+U9fUMkg/OCL1p/CM4FxAioulq/
	ofE2L6Yr+sqdjF4lGfDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW9AC-0002u0-Ml; Wed, 06 May 2020 01:47:56 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW99V-0002Kf-RP
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 01:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588729645; x=1620265645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O7ke4DHAdkufELhs+4Nx7fHQFdS2GoeAo+vlN3rcfy4=;
 b=QWfZVB4vpBys9V+tvbV2v4ZvHMx6EdqWgcrVD1m3CB/eyxZDu4csH4AT
 de851y59Tur/9nmWWH36oq0V9PbCPYvMVE0DYwEzqZEuEIRlLZKwWwHM6
 nkPeVZ83Rd5sJ7q/F+MmprmDRnhg0rutvStDrtg8FcwlbZxBrrXwNFcph
 ItuaszNvrecyYpo6Z8ANvkp86gEgiSuM2c4yK4ZDw3DBuR/xtRJX0yt6/
 TdACjVFKqm+vF++n9LevSJN192BiIvPBDnDzHnKUxz96tLZLOISyiLYs8
 ooRbw/rIXMoxNWOQaC6Vafrnh0l70wzXXrgGrUHrp6K8oMTGULETtAbed Q==;
IronPort-SDR: O/W6iRZ0QNPejfeijUNy9oM7V1oNDV3fm6H+LpvY+P8E3H7LI/MxRPKiGzF6BmxauWs5UQdE5R
 e6hAPENhPzx7iTc43ItZ11XGIZEN57+9YZFRuWt71mxT7Ag02VeYSqAspmOpaqQVO4dzJTSBQG
 W7quQc46eeGZQfSPauafZXOYGIpdPA8x7kctwoIOu/q/h/gHxC2DG2mzumQTJYR7bXFOC0XY5U
 J6tG/kv6v9/XzBMKhsZNaBvcDiegHoohYrDWp6l+HAFwjOsxarUPNEquGJsNsb2QMzkHNaS3hD
 Rs0=
X-IronPort-AV: E=Sophos;i="5.73,357,1583164800"; d="scan'208";a="239629781"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 06 May 2020 09:47:20 +0800
IronPort-SDR: COF84GitFWhp7G9ELe4DKy8u9cSudtRA/9kil5xWfBNpcbu0GpB31FQ1XFYE+txtnqlhIUDbsr
 AgAB2gWzPpqsCP3siwaGsm6BJl1OuwP+0=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 18:37:04 -0700
IronPort-SDR: N+V1wazVVdoO2GLX4wk67d/MbnkiSXHPbKTIPWtaA7DxZgz+f8msAIBDKISNXFs4pssvoAO5se
 UHC/m3P1kUAg==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 05 May 2020 18:47:09 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 2/3] nvmet: on ns size change generate AEN from configfs
Date: Tue,  5 May 2020 18:46:28 -0700
Message-Id: <20200506014629.39509-3-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200506014629.39509-1-chaitanya.kulkarni@wdc.com>
References: <20200506014629.39509-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_184713_993698_89AC0B7F 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [68.232.143.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Add a new attribute resize_check for the namespace which allows users
to revalidate and generate the AEN if needed. This attribute is needed
so that we can install userspace rules with systemd service based on
inotify/fsnotify/uevent. The registered callback for such a service will
end up writing to this attribute to generate AEN if needed.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/configfs.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 58cabd7b6fc5..9e6b2e4318e8 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -543,6 +543,27 @@ static ssize_t nvmet_ns_buffered_io_store(struct config_item *item,
 
 CONFIGFS_ATTR(nvmet_ns_, buffered_io);
 
+static ssize_t nvmet_ns_resize_check_store(struct config_item *item,
+		const char *page, size_t count)
+{
+	struct nvmet_ns *ns = to_nvmet_ns(item);
+	bool val;
+
+	if (strtobool(page, &val))
+		return -EINVAL;
+
+	if (!val)
+		return count;
+
+	mutex_lock(&ns->subsys->lock);
+	if (ns->enabled && nvmet_ns_revalidate(ns))
+		nvmet_ns_changed(ns->subsys, ns->nsid);
+	mutex_unlock(&ns->subsys->lock);
+	return count;
+}
+
+CONFIGFS_ATTR_WO(nvmet_ns_, resize_check);
+
 static struct configfs_attribute *nvmet_ns_attrs[] = {
 	&nvmet_ns_attr_device_path,
 	&nvmet_ns_attr_device_nguid,
@@ -550,6 +571,7 @@ static struct configfs_attribute *nvmet_ns_attrs[] = {
 	&nvmet_ns_attr_ana_grpid,
 	&nvmet_ns_attr_enable,
 	&nvmet_ns_attr_buffered_io,
+	&nvmet_ns_attr_resize_check,
 #ifdef CONFIG_PCI_P2PDMA
 	&nvmet_ns_attr_p2pmem,
 #endif
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
