Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25641D6FDB
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 06:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/PaP1m6t7yvonEV4rPqDMa35vL1Uza1H3pnQNxBGLg=; b=JTM44GGCRTj8a/
	m1k6HuMRAiuCPphIP1A978t3RCTNkg02I60xXUxWXsJSRulE+93za3daX4k1QMuiGBtkT4Mw6CJis
	Xptf+5H3MqqdMWQ7RWbGIzlFsW4Q7HHcXneqn/AccK9VE8tMxToB9HX2ekXItnTorAaAZ99jiuC+4
	r+rrCCx/SwsBwOYdksfgYsXT1Voxu09bmlfFalHV1tZFxd2zKo+1kdBWqjfMyTwaZn+SJpK2A98xa
	X68XG4NFfk6xrAPVW51gkDs7IccxjGyvQCQ/KBUf3hvz/+7jH/QhGEdyLZ8rd7C80nPG1sBkPkV74
	O9dFFfBki2o/gRRqtCKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaXR0-0001uQ-0b; Mon, 18 May 2020 04:31:26 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaXQS-0001YH-62
 for linux-nvme@lists.infradead.org; Mon, 18 May 2020 04:30:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589776251; x=1621312251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OaMnzLKs+DNNZKTUCUzaGNQu1/7vpAmAY8FXDL2uwkc=;
 b=LDQyQcdo8TnyUEVFjTgxu5Lf3jNAlCkkF44XrrmmjH3ETEGchnUP9g/e
 iJ0CjaguYGEO5m1pOmxcghVapSE/1dCxVl8XgHzimUeMx9MNl6PDs06A4
 QMzMyWqVS6KDBY2UZm27Q/QOLiL/jjzNmN3FdRvz1QvlY4WJ6mY8Bf3RS
 iXaPRGjIVY44MNfeN1XeUnEMBd1GUhHMmIpgUQTculKRhGUuETtruRWnU
 FQX7v+MpUE5oS8uc+C7/ezLBQbIIvr6cfTklwwC69z3pN4P8Hv7Dc0gdz
 lvRtXQRTKZ+Q8uroqIGioW9dpOobUlWjDdslVBYAsy1iCOZENePb+WV1w A==;
IronPort-SDR: Vh935G1R2aZwvQDXltVOgJDnTfdzgdJvDCRLXNrRqUsmxm0rX8y7TK4ljE79UGO3RfP3X3MWmB
 2Jo0SiV/TWwjquPibRi7G4JHZsGZz3aHDX5FpXLXN3u/jALb1USlY/UfvMRLmL/fRyDs2FppAL
 X/huSB2V0hf+4saWwjQYQwmJZvvZX17a+YXJKoT28SjE8JWavwqBi9f0vMjkOELA96DaJ+zerZ
 MXU+amQIhlElBlVhaiqmCQcuh1OOQbTlCFpauAtxVtfxj5R8CISI33+7+3X29Px/fn0JJH0LkS
 onQ=
X-IronPort-AV: E=Sophos;i="5.73,406,1583164800"; d="scan'208";a="246898181"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 18 May 2020 12:30:51 +0800
IronPort-SDR: 1nq0jtUeCxDIJjjntFOrysWg2R39njXZ+Old4uOolTJc+j4DRRGf/sQDu0mzhe73LD2qJnLYHl
 hJ5VhMTexWQTinMBgiBkhrB/7FXTyOJCM=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2020 21:20:25 -0700
IronPort-SDR: EJoqjKH7B7YFEhtHGFese4HUQJPloFvxyFHTRDUtTYHy9ayBdELDqhyjidDZYI3GXvKBoBjKXX
 wENclarLoSrQ==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip02.wdc.com with ESMTP; 17 May 2020 21:30:51 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH V3 2/3] nvmet: revalidate-ns & generate AEN from configfs
Date: Sun, 17 May 2020 21:30:33 -0700
Message-Id: <20200518043034.48277-3-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200518043034.48277-1-chaitanya.kulkarni@wdc.com>
References: <20200518043034.48277-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_213052_231281_B65F4783 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/nvme/target/configfs.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 24eb4cf53b4f..a49ef932bd78 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -540,6 +540,31 @@ static ssize_t nvmet_ns_buffered_io_store(struct config_item *item,
 
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
+	if (!ns->enabled) {
+		pr_err("enable ns before revalidate.\n");
+		mutex_unlock(&ns->subsys->lock);
+		return -EINVAL;
+	}
+	nvmet_ns_revalidate(ns);
+	mutex_unlock(&ns->subsys->lock);
+	return count;
+}
+
+CONFIGFS_ATTR_WO(nvmet_ns_, resize_check);
+
 static struct configfs_attribute *nvmet_ns_attrs[] = {
 	&nvmet_ns_attr_device_path,
 	&nvmet_ns_attr_device_nguid,
@@ -547,6 +572,7 @@ static struct configfs_attribute *nvmet_ns_attrs[] = {
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
