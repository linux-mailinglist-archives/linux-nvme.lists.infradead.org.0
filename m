Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DC71C3520
	for <lists+linux-nvme@lfdr.de>; Mon,  4 May 2020 10:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gh0E4jJmRbVwrAzxZpbjg2xtDqJBdxStGQVnlvh17fI=; b=t3V5KdS2ijycZ7
	b+TI5ncHClqlZKMTgUZ4hwsSo9FO9c7LWQlkufy8E506hT8+26f5BnzFfankPtJyaxUhATg5PTnGQ
	aiM/w1Eo3M1mjByA/YP6nUAxvm8rIEwuFp+obhh4D2kMwqM3l/rN2TQijJikW75l3Y8KRlVpOzDkg
	vWuaUBtcMUir4DNhnlVO1UB1qSS9n4Zg21ApK+7iOHsk9RCwTKBsSqIH6vRutEDBrDw9Nu8zi0NBl
	GUbb1o2QwJ+HYP2nzjumf64usnIkTx8mD09rJPE2wK4atF1vHVzhEYaaCutwruZkXGq0JHOyLy4Ke
	tiq0E96u10cZ+Fub3iWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWw9-0005gO-If; Mon, 04 May 2020 08:58:53 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWux-0004qi-4Z
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 08:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588582662; x=1620118662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wkym75H8Rnb/1E63CMVhyaCi/+TxNLAd83t7dH7ZovA=;
 b=LKDMd5bAUH/1S7e2uyQscrRpnMJO+eaHuxT6ZVuHDG8by19+ytAv+4dy
 OaWwvWwXA22vxFWTsqD3fFz9bnXLRbWLzXgldTWXVWqy6jDJEIad70JLn
 bFTyWk3X+f3B7lBNToO7WqyeN9Fq8HP66nNaGzhRErKT75CrpavL4s+k7
 nvXhzn9Z4sXTAhKsH7g7BVt4hmNX63WO86pkzX+oOe29TNJs8wpCYboX6
 jCL8Lvx3F2e/qbV9+ENVg+qhD/dvLxZAZgNRW6Bt3MR0EptfCCpfkdflV
 HX17cxwN2DvAzykXoicmuPxY+I0GiOmSXY+H/ZMJ8Q2SnUQAfyPZC51aA g==;
IronPort-SDR: n2qFHuL81wuzfToblCSnYya8QQdQcuo1uqZhTOqYRH949VrktmsefpFvWm02nOJP8ZHnAmBiRs
 c2Nm6PtcTNzJsa7z2Zzl6z+uwNmiPWGWOIMNkaHTbSu7HE4bonIEiUGSsDekcAU1pc2JUlv3Dq
 hWG5kEFabbs3B+bCcL+FjOWFKKQ1x2Er/Hr4atFbw6uaEXHT8YR8O4LUyp6w3Dzkj8UZOzuLB/
 Iuru3DY/Kc042M3pHhuIxSt1I6L+RAkDXaE2IQ9qA+2Tiek+PGRJywD6+vCCJ2iI8Zd7/mIwGV
 cHM=
X-IronPort-AV: E=Sophos;i="5.73,351,1583164800"; d="scan'208";a="239470255"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 04 May 2020 16:57:41 +0800
IronPort-SDR: hryZKPgpgKLcjfFd1soLBnUykvBPsV7wE1M5qFpPBndKLZDnoC6YQgZDWmJOAPMZ16TNjs05Us
 NUMxno/wyW0v01/vX0FlvAOSwoWDO6st8=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 01:47:34 -0700
IronPort-SDR: BptLO4gbk68L06lCa9jcHWKofJ8K0eIXh8PPmvc0Xr75st1ryVbcIZqcESK6G8oem8D1UIXs7b
 8M9a6JXHgL1g==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 04 May 2020 01:57:37 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 6/6] nvmet: align addrfam list to spec
Date: Mon,  4 May 2020 01:56:48 -0700
Message-Id: <20200504085648.15549-7-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200504085648.15549-1-chaitanya.kulkarni@wdc.com>
References: <20200504085648.15549-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_015739_265670_007CEB06 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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

With reference to the NVMeOF Specification (page 44, Figure 38)
discovery log page entry provides address family field. We do set the
transport type field but the adrfam field is not set when using loop
transport and also it doesn't have support in the nvme-cli. So when
reading discovery log page with a loop transport it leads to confusing
output.

As per the spec for adrfam value 254 is reserved for Intra Host
Transport i.e. loopback), we add a required macro in the protocol
header file, set default port disc addr entry's adrfam to
NVMF_ADDR_FAMILY_MAX, and update nvmet_addr_family configfs array for
show/store attribute.

Without this patch, setting adrfam to (ipv4/ipv6/ib/fc/loop/" ") we get
following output for nvme discover command from nvme-cli which is
confusing.
trtype:  loop
adrfam:  ipv4
trtype:  loop
adrfam:  ipv6
trtype:  loop
adrfam:  infiniband
trtype:  loop
adrfam:  fibre-channel
trtype:  loop		# ${CFGFS_HOME}/nvmet/ports/1/addr_adrfam = loop
adrfam:  pci            # <----- pci for loop
trtype:  loop		# ${CFGFS_HOME}/nvmet/ports/1/addr_adrfam = " "
adrfam:  pci            # <----- pci for unrecognized

This patch fixes above output :-
trtype:  loop
adrfam:  ipv4
trtype:  loop
adrfam:  ipv6
trtype:  loop
adrfam:  infiniband
trtype:  loop
adrfam:  fibre-channel
trtype:  loop           # ${CFGFS_HOME}/nvmet/ports/1/addr_adrfam = loop
adrfam:  loop           # <----- loop for loop
trtype:  loop		# ${CFGFS_HOME}/config/nvmet/ports/adrfam = " "
adrfam:  unrecognized   # <----- unrecognized when invalid value

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/configfs.c | 14 ++++++++------
 include/linux/nvme.h           |  2 ++
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 20779587eefe..ae8fb4489a10 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -33,11 +33,12 @@ static struct nvmet_type_name_map nvmet_transport[] = {
 };
 
 static const struct nvmet_type_name_map nvmet_addr_family[] = {
-	{ NVMF_ADDR_FAMILY_PCI,	"pcie" },
-	{ NVMF_ADDR_FAMILY_IP4,	"ipv4" },
-	{ NVMF_ADDR_FAMILY_IP6,	"ipv6" },
-	{ NVMF_ADDR_FAMILY_IB,	"ib" },
-	{ NVMF_ADDR_FAMILY_FC,	"fc" },
+	{ NVMF_ADDR_FAMILY_PCI,		"pcie" },
+	{ NVMF_ADDR_FAMILY_IP4,		"ipv4" },
+	{ NVMF_ADDR_FAMILY_IP6,		"ipv6" },
+	{ NVMF_ADDR_FAMILY_IB,		"ib" },
+	{ NVMF_ADDR_FAMILY_FC,		"fc" },
+	{ NVMF_ADDR_FAMILY_LOOP,	"loop" },
 };
 
 static bool nvmet_is_port_enabled(struct nvmet_port *p, const char *caller)
@@ -83,7 +84,7 @@ static ssize_t nvmet_addr_adrfam_store(struct config_item *item,
 	return -EINVAL;
 
 found:
-	port->disc_addr.adrfam = i;
+	port->disc_addr.adrfam = nvmet_addr_family[i].type;
 	return count;
 }
 
@@ -1338,6 +1339,7 @@ static struct config_group *nvmet_ports_make(struct config_group *group,
 	port->inline_data_size = -1;	/* < 0 == let the transport choose */
 
 	port->disc_addr.portid = cpu_to_le16(portid);
+	port->disc_addr.adrfam = NVMF_ADDR_FAMILY_MAX;
 	port->disc_addr.treq = NVMF_TREQ_DISABLE_SQFLOW;
 	config_group_init_type_name(&port->group, name, &nvmet_port_type);
 
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 3d5189f46cb1..2d978d0cbde6 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -38,6 +38,8 @@ enum {
 	NVMF_ADDR_FAMILY_IP6	= 2,	/* IP6 */
 	NVMF_ADDR_FAMILY_IB	= 3,	/* InfiniBand */
 	NVMF_ADDR_FAMILY_FC	= 4,	/* Fibre Channel */
+	NVMF_ADDR_FAMILY_LOOP	= 254,	/* Reserved for host usage */
+	NVMF_ADDR_FAMILY_MAX,
 };
 
 /* Transport Type codes for Discovery Log Page entry TRTYPE field */
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
