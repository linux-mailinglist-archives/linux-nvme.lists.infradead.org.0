Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C9C1F1D4C
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jun 2020 18:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S1koEetm2rsw9FGU2NYSp3lv20JxOIrYrku7UMAOaxU=; b=SE2pNZYeNDIXiBZjGQZz1RJbAX
	7zNabV6yi+KEHrk1TlHM+2vAejU9NW5oKBmn0qXXuFy1ZwXJcCaiTXc026t/SF6sojih9cKw2N0my
	2LYtjh0LziDDlxPD1O4T+RawKE3naWhRLDqECflEqBLY7+gce8/aefoFJ+mLceK8wqFPbIvPuwowO
	PI8MzkHlC7YBWwkpj+eA4lTrde4+kivfrPf20mwhFM29n5m4iRcfuTWU1OCSsDrQV/dUpfMG0pGZ0
	XnlRz1PLXNpKpOCztlbveE+hal3L3xf4j1UwbF1wrGjFqWDkQRSknAjsRGuWa2se4XJGhjxh0XwIl
	gHCO8KZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiKeD-0001iM-IE; Mon, 08 Jun 2020 16:29:17 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiKe7-0001hf-AE
 for linux-nvme@lists.infradead.org; Mon, 08 Jun 2020 16:29:12 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 058G8YAa145658;
 Mon, 8 Jun 2020 16:29:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=04Il17JgmO/yFBoVWabXMI9zWbJmJBkARiQl8/paJGA=;
 b=xR5FMYiQJIN6zTJejYqSu2UZBMXU7pU1+JKan9x178k/67WykfcQIm9DqbetVnFlSmnn
 0bcd8/dbPizTQ6pZ1ew2Rg8XBhiOalcAnAMBodckSk+1CeVRBikrdQeHhhr7BCmgB6Zn
 sZu7satUxRvKDd++ksn4pZ4o6wGURvkMbhteCTDunYl7AInZGGy0jKaya3fe/c98n/CE
 ZYaS2k4u8N0VVsOxr2EoSExocsMNH5tcYWRnr+/5LYPZZx6PAuv3fUVmM5EsqqcPc1UP
 eOjpt460/X2Of1vwTK8hZHwxB/J55yGSCKjfjdp+8CWEk2/HGc3lbiR8YbQXbchFSBBu kg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 31g3smqqnt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 08 Jun 2020 16:29:02 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 058GEYMh114574;
 Mon, 8 Jun 2020 16:29:02 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 31gmwq5yjs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 08 Jun 2020 16:29:02 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 058GSxih024264;
 Mon, 8 Jun 2020 16:29:00 GMT
Received: from localhost.localdomain (/10.211.9.80)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 08 Jun 2020 09:28:59 -0700
From: Dongli Zhang <dongli.zhang@oracle.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvmet-loop: remove unused 'target_ctrl' in nvme_loop_ctrl
Date: Mon,  8 Jun 2020 09:20:01 -0700
Message-Id: <20200608162002.17017-2-dongli.zhang@oracle.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200608162002.17017-1-dongli.zhang@oracle.com>
References: <20200608162002.17017-1-dongli.zhang@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9646
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 spamscore=0 adultscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006080116
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9646
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 cotscore=-2147483648 suspectscore=1
 spamscore=0 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0
 mlxlogscore=999 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006080116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_092911_484442_D2F6D23B 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sagi@grimberg.me, chaitanya.kulkarni@wdc.com, linux-kernel@vger.kernel.org,
 axboe@fb.com, kbusch@kernel.org, hch@lst.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This field is never used since the introduction of nvme loopback by
commit 3a85a5de29ea ("nvme-loop: add a NVMe loopback host driver").

Signed-off-by: Dongli Zhang <dongli.zhang@oracle.com>
---
 drivers/nvme/target/loop.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
index 0d54e730cbf2..e8fa70c15143 100644
--- a/drivers/nvme/target/loop.c
+++ b/drivers/nvme/target/loop.c
@@ -36,7 +36,6 @@ struct nvme_loop_ctrl {
 	struct nvme_loop_iod	async_event_iod;
 	struct nvme_ctrl	ctrl;
 
-	struct nvmet_ctrl	*target_ctrl;
 	struct nvmet_port	*port;
 };
 
-- 
2.17.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
