Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 339CF1D0A76
	for <lists+linux-nvme@lfdr.de>; Wed, 13 May 2020 10:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aJz+UjZX7HRG+LbkVF42JJ0pqR4/ZcmN/P07kBT7+Xo=; b=i1/yq3mltX7o7V
	YHLbB6kP/kSRsgasnqlqQ8LyyBC1lG5I+eMfafMAEz9SD+1DGMS1L0Ujkyjhrx+NoI5wHV28lGcJ6
	tIOjZpCJoICDxd1jajp9X3m4eIoJnrprpfd1+sk61eSPiMl7EDUpOpjSJmFWUeWTWX9JHuaff5wqK
	O0ocNZddzcR4lsSBAb0MV/v9LzdPKvxlJxkOP9EJjp2zaJ33FYLO/YWCXjp1veOI2ulK1xT6T6Xdk
	I70lfC8U3vxoAHqX9jUJuhqbNAobRSSc24dRIkSfscB2fA32oik4Ji22tx/a0/jbSiu5HvVUlXkzN
	ymQzsL9u7QLd5hSv21zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmNm-0005eL-6H; Wed, 13 May 2020 08:04:50 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmNb-0005Vv-Fj
 for linux-nvme@lists.infradead.org; Wed, 13 May 2020 08:04:42 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 74CA9CF991E077D90F12;
 Wed, 13 May 2020 16:04:37 +0800 (CST)
Received: from huawei.com (10.175.124.27) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Wed, 13 May 2020
 16:04:30 +0800
From: Wu Bo <wubo40@huawei.com>
To: <kbusch@kernel.org>, <axboe@fb.com>, <hch@lst.de>, <sagi@grimberg.me>
Subject: [RESENT PATCH V2] nvme/core:disable streams when get stream params
 failed
Date: Wed, 13 May 2020 16:18:13 +0800
Message-ID: <1589357893-551688-1-git-send-email-wubo40@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_010439_700196_6AD2495F 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linfeilong@huawei.com, wubo40@huawei.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, liuzhiqiang26@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

After enable nvme streams, then if get stream params failed, 
We should disable streams before return error in 
nvme_configure_directives() function.

Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/nvme/host/core.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f3c037f..29bef53 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -553,19 +553,22 @@ static int nvme_configure_directives(struct nvme_ctrl *ctrl)
 
 	ret = nvme_get_stream_params(ctrl, &s, NVME_NSID_ALL);
 	if (ret)
-		return ret;
+		goto out_disable_stream;
 
 	ctrl->nssa = le16_to_cpu(s.nssa);
 	if (ctrl->nssa < BLK_MAX_WRITE_HINTS - 1) {
 		dev_info(ctrl->device, "too few streams (%u) available\n",
 					ctrl->nssa);
-		nvme_disable_streams(ctrl);
-		return 0;
+		goto out_disable_stream;
 	}
 
 	ctrl->nr_streams = min_t(unsigned, ctrl->nssa, BLK_MAX_WRITE_HINTS - 1);
 	dev_info(ctrl->device, "Using %u streams\n", ctrl->nr_streams);
 	return 0;
+
+out_disable_stream:
+	nvme_disable_streams(ctrl);
+	return ret;
 }
 
 /*
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
