Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CB23A1E2
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 22:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DlE6aDd6TqbApgUGlUmci3sKQZhmAmpG14A0+rap/30=; b=OUF
	gHKTL3kbY1lddS39WaDZHbFNy1ovlVpa2sEw+4ZhdBkVyDlVprC9zTHX3xCp+FLwHRLxBwwjuUztT
	qTU0xOMKK5DyScXIhoN5/obuR6JLsR0EkAhcENZ7AUtDU8hrFU2oaqoDRwzZCCX0xI6Nm5qoIlWos
	9Da9rRbJ0lmPSeeJNBcoDxQfqqhccWOmSJN9sUERd1CWVoVqODeNc+cPUAoo306B0OCT1SLi9Huhe
	Soy9BxV0jP9myLYWTxEHjnMM9HS3Ho7z42DWGQJSuQ0+xlap+EzCXIYzbW2ZxEDZfMZww8D0RNXbv
	5eHSh3B3dHEnI51Hz6Ptpvcq3tGCuxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhld-0002hG-E7; Sat, 08 Jun 2019 20:16:45 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhlY-0002gl-UE
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 20:16:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560025002; x=1591561002;
 h=from:to:cc:subject:date:message-id;
 bh=YXFhHyocZm0MhozOt0VyC0h0mbwjQPKXQtuMEsBZXNc=;
 b=k13nrAsKsvDZCq+2WI9cBpFSRIIw+RndPp+95wgNleX++4i+dimfLpjS
 OX4JVKLxnEYTkLnK9W5GMi6l7Vd3sTyOoErido/q80eyJ6Z5o9A/EU53B
 TCo5S24QsoWdxTviYKICSQ/gzq7plKdKXe/t3nHvCqWd8rk5Onq3cmdWQ
 4Yg2+20sc9Ua4CcxUTAW92SMgEk6HHc7ozZQ0gy7/SRu4BNniFSWWJRin
 4kNzXpdOkGOHaWy/8AdfeWMQlD66iHqP8FGk72CJDyvtKldh9F4bwVt5F
 fgoDg7Q6thcjTycpBA2Zhd2V6zouwTyi3By0mLbIXIBzEwObOmTW34HIp Q==;
X-IronPort-AV: E=Sophos;i="5.63,568,1557158400"; d="scan'208";a="115047865"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 09 Jun 2019 04:16:41 +0800
IronPort-SDR: MTCgA0bizBKvoNt+fcuy3EW0WnoUpJnQJIEfm2xs3LFqkg0rNZma1tSC6qEm1gtbMYTxKHRJHn
 nnhXBiACgShpWtP3bzMYNfqvSvcP+48KuKgBV734cYWS9zl1GGYIVN0gMBJvouD5iMc1caHndO
 yuy/5z2OkUa/VQxiTUhdyw5nNs4UTngXYCLUzbWqQoOmnxN9/aWbX6WAcKKhxW9oRmmTyd6E+s
 E9iTytJQun/L9gTANV4WzznU+gWJ7VyNk5CEvxYHwoAuYW1IEPpVnAZBqskwRN7BaK6/Kb/YW4
 /PSDEOCfoNC080KRC5PgMxVn
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 08 Jun 2019 12:51:30 -0700
IronPort-SDR: NRNgZDymaL7zBsl8ODQDYTVanQYHSNkFM3Xj2PLtuRuLOq4Z11S6Vbmd/DWHLYBPhe9AS2gJYb
 Wapbdo/gUgoW1J4so3DL/ly9XzHDLowXA8ZX+kxfbesjNWKRH2MxVAqlNjHtFDTulEJg5Ik4PT
 GIbUoX+F3IO3zKoqwkRdOk7qZHq/mVHXcfDL+aJcXonIBQVo20waq/N7cpg+3udMzrvGNSUAHX
 HbjMhgOsRkHdKcfYx/fIWgreymWvN/l/UNBnFCjTIYNBmg58rsxf0O1qiknDbN3J2cEI7PIv3r
 3gU=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip02.wdc.com with ESMTP; 08 Jun 2019 13:16:40 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-pci: code cleanup
Date: Sat,  8 Jun 2019 13:16:32 -0700
Message-Id: <20190608201632.8244-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_131641_098482_A3644539 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is purely code cleanup patch and doesn't change any functionality.

This patch removes the extra parameter which is added to the
nvme_remove_dead_ctrl() for only printing purpose. Also the dev_warn()
line has more than 80 char.

We move the print message to the same function where actually error is
occurring and use this opportunity to fix the 80 char.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/pci.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index aca5867d2e6a..cdb41a3aa048 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2466,10 +2466,8 @@ static void nvme_pci_free_ctrl(struct nvme_ctrl *ctrl)
 	kfree(dev);
 }
 
-static void nvme_remove_dead_ctrl(struct nvme_dev *dev, int status)
+static void nvme_remove_dead_ctrl(struct nvme_dev *dev)
 {
-	dev_warn(dev->ctrl.device, "Removing after probe failure status: %d\n", status);
-
 	nvme_get_ctrl(&dev->ctrl);
 	nvme_dev_disable(dev, false);
 	nvme_kill_queues(&dev->ctrl);
@@ -2596,7 +2594,11 @@ static void nvme_reset_work(struct work_struct *work)
  out_unlock:
 	mutex_unlock(&dev->shutdown_lock);
  out:
-	nvme_remove_dead_ctrl(dev, result);
+	if (result)
+		dev_warn(dev->ctrl.device,
+				"Removing after probe failure status: %d\n",
+				result);
+	nvme_remove_dead_ctrl(dev);
 }
 
 static void nvme_remove_dead_ctrl_work(struct work_struct *work)
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
