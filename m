Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538DE1C6B8D
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 10:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ejzbltoQfOEJcnso290wztLF8OPreqyvl0u4aayBJF8=; b=KY1XWnMfQUpdJL
	1ur47MJKqaMFU0I8D4u69DNLRkM6xRvk5+4iRNRYffqljKFC5ezxdJVCX9h0MGICEBcWTufEF3Lnr
	wRyJ21ICv15l9yfvz+RCWF89YBS7byfcQxhkatmD26SXOE1oryndNOwwthGyEDbAL1aXXWAI50rtn
	MFP2VXUvEJuM705X4+rnVBNw7AoC42p9f7e+wUTvqVE297t9/zldbw7AgnjaWbuqBOgt4BMS/9ga9
	ihf0IUH4RE28uiGK+iSMk8bZAAcPlkiY64JO2XO4kw1Mp6Q4W1dR2HMPNHhvxJABxzWro0jYWvcM/
	vK6TtSzKpAbsaAfTRJzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFL1-0005U9-05; Wed, 06 May 2020 08:23:31 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFKv-0005T1-St
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 08:23:27 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 071CC32915EF8542B1BD;
 Wed,  6 May 2020 16:23:15 +0800 (CST)
Received: from huawei.com (10.175.105.27) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Wed, 6 May 2020
 16:23:05 +0800
From: Wu Bo <wubo40@huawei.com>
To: <kbusch@kernel.org>, <axboe@fb.com>, <hch@lst.de>, <sagi@grimberg.me>
Subject: [PATCH] nvme/core:disable streams when get stream params failed
Date: Wed, 6 May 2020 16:37:01 +0800
Message-ID: <1588754221-661597-1-git-send-email-wubo40@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.105.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_012326_098925_C50571CF 
X-CRM114-Status: UNSURE (   8.75  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 drivers/nvme/host/core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f2adea9..afe1f5a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -552,8 +552,10 @@ static int nvme_configure_directives(struct nvme_ctrl *ctrl)
 		return ret;
 
 	ret = nvme_get_stream_params(ctrl, &s, NVME_NSID_ALL);
-	if (ret)
+	if (ret) {
+		nvme_disable_streams(ctrl);
 		return ret;
+	}
 
 	ctrl->nssa = le16_to_cpu(s.nssa);
 	if (ctrl->nssa < BLK_MAX_WRITE_HINTS - 1) {
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
