Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5CB213FB
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 09:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c4hRxbGWzV/GZfWWMFdTTrJgYZlZ+5d4jCgo7suTPvM=; b=GGc
	H3I+L81QqCScKkX69bdHzgw/Xx/h0VQWl0gX4HOUk6JJMXJ2zxjXWJJvYo3RipbMfGiUIoX67/AGP
	miUnLsXlvInZAaI2XAUOOU3STiLGFbXTXNkVYl5dW5Gr2UaI+OuFGkFQ6vEA6M22bJViiRyU1EaGG
	sa5U3uoCsUP6PIWmjT9tOFrOz0NoiCdx0eBw4OWymyuWTRf2wRUkRr+f1LIPGW/W5vIDVkTTDfNes
	b+zKExQzfdMjG0PhM2Fxf0aBPwUsaTNUiD6Mkn2LLeZmu6lk67aAf4PRyANw3cp8Lsuz5wkyF6F3o
	+oBhvLrNyx5H9mBET1txFevqWTb0RYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRWxI-0007DG-Qv; Fri, 17 May 2019 07:07:00 +0000
Received: from smtpbg297.qq.com ([184.105.67.100] helo=smtpproxy21.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRWxE-0007CK-3j
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 07:06:57 +0000
X-QQ-mid: bizesmtp6t1558076698tb2se918y
Received: from localhost.localdomain (unknown [218.76.23.26])
 by esmtp6.qq.com (ESMTP) with 
 id ; Fri, 17 May 2019 15:04:48 +0800 (CST)
X-QQ-SSF: 01400000000000H0HG32B00A0000000
X-QQ-FEAT: cEiBA8c+CrMUAvBZUbu+tVgMV1D2i6pAvpNrRwu5R4jPcrEQw0qUY6lmMveSF
 IsHhRH6FnFK1Nl07GWmT31ZHiFHiJU2SpnMGQxJd4eb0qEobhwEtVxVwywCSz7wMUFr7pAm
 +lvQF4rQmRSIejTZvbrg/ojc0Qe+PyI582iZy3ikStEOtGKAwGpG447fFwCcbA1n5dY4sEn
 c6/0n45W5y8IDfe57AoQhRMz81+v31CNHshHM6nte/igmD7E1IxNTS38sWwVnOwcL/9/Vck
 x/MVgssj1sDQ7/+MNWuJLngKJ9yVvy/UG3NGg4qp8bHGyRcIKeutGZ+vA=
X-QQ-GoodBg: 2
From: xiaolinkui <xiaolinkui@kylinos.cn>
To: hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH] nvme: target: use struct_size() in kmalloc()
Date: Fri, 17 May 2019 15:03:35 +0800
Message-Id: <1558076615-8576-1-git-send-email-xiaolinkui@kylinos.cn>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:kylinos.cn:qybgforeign:qybgforeign1
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_000656_153143_59D91577 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [184.105.67.100 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: xiaolinkui@kylinos.cn, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Use struct_size() to keep code sample.
One of the more common cases of allocation size calculations is finding
the size of a structure that has a zero-sized array at the end, along
with memory for some number of elements for that array. For example:

struct foo {
    int stuff;
    struct boo entry[];
};

instance = kmalloc(sizeof(struct foo) + count * sizeof(struct boo), GFP_KERNEL);

Instead of leaving these open-coded and prone to type mistakes, we can
now use the new struct_size() helper:

instance = kmalloc(struct_size(instance, entry, count), GFP_KERNEL);

Signed-off-by: xiaolinkui <xiaolinkui@kylinos.cn>
---
 drivers/nvme/target/admin-cmd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 9f72d51..6f9f830 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -248,8 +248,8 @@ static void nvmet_execute_get_log_page_ana(struct nvmet_req *req)
 	u16 status;
 
 	status = NVME_SC_INTERNAL;
-	desc = kmalloc(sizeof(struct nvme_ana_group_desc) +
-			NVMET_MAX_NAMESPACES * sizeof(__le32), GFP_KERNEL);
+	desc = kmalloc(struct_size(desc, nsids, NVMET_MAX_NAMESPACES),
+			GFP_KERNEL);
 	if (!desc)
 		goto out;
 
-- 
2.7.4




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
