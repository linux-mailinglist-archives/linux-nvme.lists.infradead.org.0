Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D7C16354B
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Feb 2020 22:44:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0T1gcFoWKoPimMsuwVGsdz9HDuBdQqDtqCppeCZMTpU=; b=Q0WSWmtDSx+zZX
	BZMJxradqmZpKt3vqdZci9XRh5eW4GmBaWyFF3CGKqcA2wMYSvhCAp1hcy9Xo4VKUJcm0aYwDvuhT
	/FsBwmpNrFum0HPF1yCxZij/nbe8Qz1Ho5tIZnW4Pa5bCNVWpOCpHhxlTUi7Q0VE0eWnAsC08cV3d
	5eAhR4iegv8htdBDxuTt70gtwLdfuXvUvg6oPNjeuJxosXe/uruQqhUQS0Z3hbbG4Qzn/LTCbZ4sU
	qqUrjDx5PigxKxLPo2drpgSnEKkKd1FhO+uccT0JHUCEB8OHC4Yxpn2yQw3Nyw9a23yh0qChbdllp
	Dj4+zXOJqjOTGPWEwrpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AfW-0005bE-8x; Tue, 18 Feb 2020 21:44:38 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Aez-0005If-GI
 for linux-nvme@lists.infradead.org; Tue, 18 Feb 2020 21:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582062245; x=1613598245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b/hvjxQxVaW7bfKfsY4a1aNN63eHpVhV3rtMy1bQ4r8=;
 b=ffiO7TsiEVt5a14/G7rBT40ZcEOvufnOSbWvX14Rb76uXWHka1EYpK2f
 MDtRUp1NivRmkTCydh/SjkHwwLA+/n1NRpyKo3Nk5ysfkp9Wg2C7ku1z1
 pp5gaE3yPWV/u/4JD1fYg+P5UCyULeRnewfcz4rzGkxcT01MsR4GDwHt6
 rsx0ytJgsS9v5iahD8CSeTAXY73zHM3dk3tSw5L6bOSg5h6GgdQ0fKHDI
 xeS8ynO5OBmASINe+7+qPh4znCGZyaPse59y5Wtby0cyRmQNteDJcnTuF
 FT8sfX4LkBxr2EzZHmEmx/C7Nj60pw2tcrFbM92af1lSy+jTVo+u0Z9wu A==;
IronPort-SDR: TB48j7ZigLeWd490k6SVpuZf81e1040r1tyUFNU1POwOH4fPm55SHi1RPVgXbNb+kuQm4YUpDf
 +8YO5p6gkYSuaq2d3mZnTdGudjUjbCPRU5lv9zlxf+R2rLzQnc2tq4c/Neqi5Hg9jxdC0Taih+
 0EofmEYXTMuKMvxDcS1HP4DABYb7EicpNcRQckgD5BKfc/FSH9mLB1Ko3JGOjXzS0EMS6ZLcGo
 9eX7W6DFyr9jgYL9/3ro6nCeeH1aRCf5bpqhaqKuclynZX3RwbNEgNKpEMpU894faO1wpmmRmV
 akM=
X-IronPort-AV: E=Sophos;i="5.70,458,1574092800"; d="scan'208";a="238221712"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Feb 2020 05:44:01 +0800
IronPort-SDR: Bsr0oS97FjIBT0myshG0ZT1/O778M10bgxoe24tny5nbiaakRaQ9klK4eGBj13ed4748K4nH/l
 IPHJlnrLEy+bsEcs6uGXWADOsr9vmsmgzycGB50lRKmu5jCGRVPQDrBaIl0JuM8T62cP2HaRwo
 0nZERtPf9LsyxEB3ec/9GpmFfH3cODkl9KjPavKtxYbygB8i7BxAZg33ri0ICQqqCWcGCHZ8I3
 shd1+FyzXYLnbv5LWSrr7ldqVHEpEHgFlyxP/dvGB6B75xIZjzl+wsfumvRYEKRN0Db6i6Nbjo
 zXaaLcu+E0T1IvpNz37ZfYFz
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 13:36:40 -0800
IronPort-SDR: ILRd/o7XPjGSCrcbBMYLLe+Q/SEzTQ5LaCyVxyo1lXjRw089iomzOmGSCxtiaybsB7uU53VGLe
 7Ffti6Mc8Tees4C8SFQBGJRJmqlc73V4jrHxLlQrTaTDhUcFZmvzbsTfIN1X33agAHrnDFiQ0o
 Xerkjs/X9sH17wDul51IZ0xRYXvz39vRonKrmruBzbd3LCpcf9VfLm7omEHlDOf5iJyQ4CRdj9
 YoNN3IPRIo1pDj2puxXP8KOIdwADp0g0E/EecRH1g9sW3byO6MPAOj6W5IzmsydSHqLLA4TB7w
 aoU=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 18 Feb 2020 13:44:01 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/4] nvmet: update ctrl oncs values for timestamp
Date: Tue, 18 Feb 2020 13:43:38 -0800
Message-Id: <20200218214338.25088-5-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200218214338.25088-1-chaitanya.kulkarni@wdc.com>
References: <20200218214338.25088-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_134405_605988_36B51ADD 
X-CRM114-Status: GOOD (  10.74  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kbusch@kernel.org, hch@lst.de,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Now that we support the timestamp feature, update controller ONCS
field so that host driver can set timestamp from
nvme_init_identify() -> nvme_configure_timestamp().

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/admin-cmd.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 17411d70d4d4..39ecfe8c99a0 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -410,7 +410,8 @@ static void nvmet_execute_identify_ctrl(struct nvmet_req *req)
 	id->nn = cpu_to_le32(ctrl->subsys->max_nsid);
 	id->mnan = cpu_to_le32(NVMET_MAX_NAMESPACES);
 	id->oncs = cpu_to_le16(NVME_CTRL_ONCS_DSM |
-			NVME_CTRL_ONCS_WRITE_ZEROES);
+			       NVME_CTRL_ONCS_WRITE_ZEROES |
+			       NVME_CTRL_ONCS_TIMESTAMP);
 
 	/* XXX: don't report vwc if the underlying device is write through */
 	id->vwc = NVME_CTRL_VWC_PRESENT;
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
