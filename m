Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA8D1C351A
	for <lists+linux-nvme@lfdr.de>; Mon,  4 May 2020 10:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iP7A9nimx5MwQCbZroCWCW6ptFGG8zBwb/YWWgsfeY=; b=gqEle86Ip63Kkg
	6kK6WtNBSaMVp/quS+mCrXDLwZHRGkOD3J//ajTr7ldqqWdXh+hYagbtDrl04+oAIZmBnA08ecpsy
	NsK+XzcrVpKykDXMEVFbGksKmEoD20TGlK3kVgI2ciOBjWntdJ+z7sgmgHqa5t+LwDBybxIkCP9Ar
	fQw0Drf87INr6RQOBmfdUZ3XhMZVd0gLcBtD8WNlLEIv0ea2oqhwJpb8CI7aZxV/huCAeS0DFuIot
	ABT26wsLCevS9CBVPa1xsc9MrsmCuDhU9F5BE86etvWpg2T+oIVPEz050RLnfQelU4AWNFlp83N4h
	oBbtOLRbDu+2Du2nesLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWvR-00055S-S7; Mon, 04 May 2020 08:58:09 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWug-0004fF-Lx
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 08:57:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588582643; x=1620118643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3iBjhp7NeZO97q77vIVZ/yCfHTCjZSkdU/UJI2y7eRo=;
 b=lDFa+8BeYk06d6Nra5Z53FfOB2WfLHSF6C+yKPHplRp213nE3nMQgA7J
 sGnzFi8k/9U5KOQItq7qat7bfpDywHOevbWOWJeoWU4eJ2Mh//TjK7yj4
 a6g4q85D2s3mgBct8JfjxuEGTrosDzHCjiRFWM5sI3YnxFllnuxFAvFNE
 isHGqp1YrhmmowIH0Z6JgWQ1sEyPTYuAxrVtzgjQNiWFYITCx924skDJd
 xFP6l2G4kXm1X2gzpmeW6GeN+MfrIb3h43bguNwQsNT4jtrdwxPFdP4vQ
 HU0WdV7P37J2DbcGZC+Y9x5xHvSgBPdyluFdansCKEz/3F61xAC+raJp3 w==;
IronPort-SDR: QxLBHyvOqSeeZzY/gq4Oeg4Hf3LBbk3eLEQhNC7Jm5dduP2zWkY4tNt2a8Z1jHA4VWoA6ox00A
 /1Eu/ZR4NGH7p92HhvDB+HtrR7rsfGQ8u/Wy42+s8J/JPHoZ0FRvgyaLj6JB73Fsg9PAcSL6cH
 VEJLCgGK9z62h2ayEQdo8pk+yFV69TuoyRicWNuafJNwkHNBHOE97a8vgyMBtB5z9RN4d1pinR
 BQJDU8d6FGTp10zH2qnm925rkrXM1clhf2V+Dzs1HXwm1VZ+9zFj0qeXmqDA/FnS+L7JChjcF8
 4OA=
X-IronPort-AV: E=Sophos;i="5.73,351,1583164800"; d="scan'208";a="137189828"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 04 May 2020 16:57:22 +0800
IronPort-SDR: DyYTOPmB1PfX8hLITzfZ3Ug532EhFSwIziZQmiReMnSvOsGftbT/eC4MQMF1Gn1lw4PDrRFbEP
 DWnb2ICKX2f8NObdUP8sRd7fHjS/5BRoM=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 01:47:18 -0700
IronPort-SDR: CrWKuW/tLlyFOThROnTaRLPKv9Wvcw3eYWQOhstgZ5f62+d+p2Zul6d35vW8MR/Ul5X9+B3SDk
 WDPxeHqdSqXA==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 04 May 2020 01:57:21 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 4/6] nvmet: use type-name map for address treq
Date: Mon,  4 May 2020 01:56:46 -0700
Message-Id: <20200504085648.15549-5-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200504085648.15549-1-chaitanya.kulkarni@wdc.com>
References: <20200504085648.15549-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_015722_847767_0985816F 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Currently nvmet_addr_treq_[store|show]() uses switch and if else
ladder for address transport requirements to string and reverse
mapping. With addtion of the generic nvmet_type_name_map structure
we can get rid of the switch and if else ladder with string
duplication.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/configfs.c | 48 ++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 22 deletions(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 78eb822a20d5..9c808f4185a0 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -147,20 +147,24 @@ static ssize_t nvmet_addr_traddr_store(struct config_item *item,
 
 CONFIGFS_ATTR(nvmet_, addr_traddr);
 
-static ssize_t nvmet_addr_treq_show(struct config_item *item,
-		char *page)
+static const struct nvmet_type_name_map nvmet_addr_treq[] = {
+	{ NVMF_TREQ_NOT_SPECIFIED,	"not specified" },
+	{ NVMF_TREQ_REQUIRED,		"required" },
+	{ NVMF_TREQ_NOT_REQUIRED,	"not required" },
+};
+
+static ssize_t nvmet_addr_treq_show(struct config_item *item, char *page)
 {
-	switch (to_nvmet_port(item)->disc_addr.treq &
-		NVME_TREQ_SECURE_CHANNEL_MASK) {
-	case NVMF_TREQ_NOT_SPECIFIED:
-		return sprintf(page, "not specified\n");
-	case NVMF_TREQ_REQUIRED:
-		return sprintf(page, "required\n");
-	case NVMF_TREQ_NOT_REQUIRED:
-		return sprintf(page, "not required\n");
-	default:
-		return sprintf(page, "\n");
+	u8 treq = to_nvmet_port(item)->disc_addr.treq &
+		NVME_TREQ_SECURE_CHANNEL_MASK;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(nvmet_addr_treq); i++) {
+		if (treq == nvmet_addr_treq[i].type)
+			return sprintf(page, "%s\n", nvmet_addr_treq[i].name);
 	}
+
+	return sprintf(page, "\n");
 }
 
 static ssize_t nvmet_addr_treq_store(struct config_item *item,
@@ -168,6 +172,7 @@ static ssize_t nvmet_addr_treq_store(struct config_item *item,
 {
 	struct nvmet_port *port = to_nvmet_port(item);
 	u8 treq = port->disc_addr.treq & ~NVME_TREQ_SECURE_CHANNEL_MASK;
+	int i;
 
 	if (port->enabled) {
 		pr_err("Cannot modify address while enabled\n");
@@ -175,18 +180,17 @@ static ssize_t nvmet_addr_treq_store(struct config_item *item,
 		return -EACCES;
 	}
 
-	if (sysfs_streq(page, "not specified")) {
-		treq |= NVMF_TREQ_NOT_SPECIFIED;
-	} else if (sysfs_streq(page, "required")) {
-		treq |= NVMF_TREQ_REQUIRED;
-	} else if (sysfs_streq(page, "not required")) {
-		treq |= NVMF_TREQ_NOT_REQUIRED;
-	} else {
-		pr_err("Invalid value '%s' for treq\n", page);
-		return -EINVAL;
+	for (i = 0; i < ARRAY_SIZE(nvmet_addr_treq); i++) {
+		if (sysfs_streq(page, nvmet_addr_treq[i].name))
+			goto found;
 	}
-	port->disc_addr.treq = treq;
 
+	pr_err("Invalid value '%s' for treq\n", page);
+	return -EINVAL;
+
+found:
+	treq |= nvmet_addr_treq[i].type;
+	port->disc_addr.treq = treq;
 	return count;
 }
 
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
