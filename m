Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F16D1226C7
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Dec 2019 09:37:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VaeywJkXEnp8jJczOlzRW4IHcNjH/Bi95u0rdHo6pU4=; b=rtq
	bJFtVDGuYegXXpYy3/Gg4lkE7G6t0DXiWO7OuTaF1waQdD8Yu5JFJynRsq8mtAkp+u0QJqL4d9s4a
	dNefDwTGI5CPB53LB/OjSeF7av7ytIlvgRWe553dxfnYwXWSfjBC14E+x4oUpEj5bDXbGFlcLaaI8
	gtIn6Gu5hLwZMTTd2L+vBECkHqsuiNZSx/o9tcVZayR/WuftJm0vwlRe0xiu2hTEHdri9f0ICc9CD
	dU4EBejEFS/eGoQkbhJx8hFH6aUMAZI+Klri+0D3/H1OLoeJ1Z3tcG07Uao9PYJxZ+fWTvothIhTJ
	epRlbgUqwYZUSrm1IYSzcuKhQ4S/jFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8Lv-0007RV-D4; Tue, 17 Dec 2019 08:37:11 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8Lo-0007Oa-Sv
 for linux-nvme@lists.infradead.org; Tue, 17 Dec 2019 08:37:07 +0000
X-QQ-mid: bizesmtp24t1576571691t7r7xrsr
Received: from wuxy.com (unknown [183.62.170.245])
 by esmtp10.qq.com (ESMTP) with 
 id ; Tue, 17 Dec 2019 16:34:43 +0800 (CST)
X-QQ-SSF: 01400000002000Z0WK40000A0000000
X-QQ-FEAT: mJep2VbaKxbBTqLacDfKO4WISokeKXELn+ZwA41XZ5LPjvf2S0xAsDt6KLAP3
 cxBadapbGqQa/Jn946ifkrkP/7DXr78G2L0SQEaUIWpuYdVN0hctJzdvnYuzfKRypk6uKI6
 Bw3hRrvlbggiQsERASLUvZqcYKi0HdtjT8xuU0gux19Sf5hEdvHQP4epm1YNcbUMP3g160s
 x8MBybLGCffV3bOd+NWyjIFYPM5QuTTZ8hVshxi5rOy02JuP9PNhKndlbRfm/+1wWd97vnR
 aw4YmK2SyAHKLccRJqNtWWP93oC6xYxl8oZfcmST2bnTnlbx/riiZ7f2g9GyItpKfIsTRqh
 M3UmuKpqbs1/hjhAmo=
X-QQ-GoodBg: 2
From: wuxy@bitland.com.cn
To: kbusch@kernel.org, axboe@fb.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, rajatja@google.com
Subject: [PATCH] nvme: Add quirk for "SAMSUNG MZALQ128HBHQ-000L2"
Date: Tue, 17 Dec 2019 16:34:30 +0800
Message-Id: <20191217083430.3269-1-wuxy@bitland.com.cn>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:bitland.com.cn:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_003705_060368_6553674B 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.243.244.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.243.244.52 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wuxy <wuxy@bitland.corp-partner.google.com>, wuxy@bitland.com.cn
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: wuxy <wuxy@bitland.corp-partner.google.com>

Samsung SSD with model number:SAMSUNG MZALQ128HBHQ-000L2 has no response
when doing the "suspend/resume" test.This patch applied
NVME_QUIRK_SIMPLE_SUSPEND to fix this issue.Run the 2500 cycles
"suspend/resume" test after applying this patch and the issue can not
be reproduced again.Co-work with Samsung,they will fix this issue
in future firmware.

BUG= https://partnerissuetracker.corp.google.com/issues/144257635
TEST= run 2500 cycles "suspend/resume" test,the result is passed.

Signed-off-by: Xingyu Wu <wuxy@bitland.corp-partner.google.com>
---
 drivers/nvme/host/core.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 667f18f465be..d16d12abec50 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2414,6 +2414,16 @@ static const struct nvme_core_quirk_entry core_quirks[] = {
 		.vid = 0x14a4,
 		.fr = "22301111",
 		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
+	},
+	{
+		/*
+		 * This Samsung SSD encountered no repsonse issue when
+		 * running suspend to idle test.
+		 * Samsung will fix this issue in future firmware.
+		 */
+		.vid = 0x144d,
+		.mn = "SAMSUNG MZALQ128HBHQ-000L2",
+		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
 	}
 };
 
-- 
2.17.1




_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
