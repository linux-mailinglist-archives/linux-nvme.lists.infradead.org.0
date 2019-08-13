Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686AC8B355
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 11:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ucbXdOXMb/TAWfCQe0hsffjbsHiyHy5EpdN97i5oOtM=; b=oFbqLQ0GbSHepD
	8O7XPjL+aQqCUZVQYvI1bbpYwLb7owBb/Ulv9N6mkk+tAx8eZtvW+lTl0w6/tYMDnVQ7/Calr714T
	9KvUtfVm4Q2QFeuGkKH5eG8ggiKUinqA39n8/FHk0ppm4XDH9hYZu7GPrxo84vJzjs0avVs86dCBj
	rqDYTyHjd8Yo6niMFnEjdyYJhhHPn4tGgwFgxVBLN1G1R1o2EgnsS5jyWDGC5wdZr5rpR9EtwxyB/
	yv3YJ4Ni12z6Edv3/qJElTv5Nz1SvPlGkPE/fdxLih9HLApspQqx4qH/88PeIAOuYe5p9eO1vkD9V
	DLkv11HQMYuURDCu1bcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxSjj-0008OD-2s; Tue, 13 Aug 2019 09:04:59 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxSht-0007P0-VW
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 09:03:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id n4so9188456pgv.2
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 02:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ldGFvKia9F8Sx+jOY5qd40RFqTP+nJV4f/BRCD1ngao=;
 b=jE1IRIlfpMIFKW4LpoTHvgf0JMNQ258aUeNx8Kh9t1Li7ZiEdV3IvPtdUKm81sF0YT
 eTiL2U+bGVws+YJYLbM6VjZgMrDMfdeAcrksxYKzvU2KnGr4dphZXc3TM51stI3LocmB
 /mqHnWL9YdgA3MnOJiXYyhMut7aB81spoUdU63CLxZI04NIK0jjmVc+Itvjsrzoy7sFu
 zZfADNMcFOjH3JYmE7H8DRrefx8cBmDjAYt30LeLbsHoAQItmKXxRtieIkZGN4zmg8li
 nWzMycYJPdSkR7RXUxhx1xnMAHrlG6FWWvcmhCHtj/v0nzy5ZLq0qUCepGwUWyC6NBs1
 CRkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ldGFvKia9F8Sx+jOY5qd40RFqTP+nJV4f/BRCD1ngao=;
 b=ay44Z9QsfuHjcpmEzeF4ZfwifoiYvY3W+18bAk0aB67Jczq8Ot9XBSKAaN/SfHfuMp
 e8wfVfPn0KdHcugM+38ZYSnG1F9SlW6rZ6rqO2C6XF+gMkqQcVJxko30idNDRIL/XpTU
 p/mcRlDWXPZbaQgOqfCfcXFdRWgNyIIgU/pzHO3dN3Fp40eWaNEJUljuBWJ2wJNFmOsm
 0JI8KknBuR5+u6z8nAxAiLYsOlHAnVFoG+OUDByyLtIu0oGP2Y2sloluRWkEka5OXcbv
 UeQbqIZZrnN2sXQIbVAmLmrbIlDWNmlDHGW/yRgXJiObr0sqHyN8qYGWMkD8RTdH3IyJ
 tHoQ==
X-Gm-Message-State: APjAAAU/hX76bVkYd2wSYuSx1t1siTEISiXvdAk+R5bW4HbaAqwfgny7
 VRpjeyg1XMkLwrlvoD+w5pI=
X-Google-Smtp-Source: APXvYqzGEmb4ytEjP+LRVMTr9F0Y6MTK4X3gXyiIQEIGzvMK8+oJNzblWVSr8d3KYulpWfq3E293gw==
X-Received: by 2002:a17:90a:ae15:: with SMTP id
 t21mr1258885pjq.50.1565686985490; 
 Tue, 13 Aug 2019 02:03:05 -0700 (PDT)
Received: from localhost.localdomain ([122.163.110.75])
 by smtp.gmail.com with ESMTPSA id m4sm126927406pgs.71.2019.08.13.02.03.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 02:03:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-tcp: Make nvme_tcp_mq_ops constant
Date: Tue, 13 Aug 2019 14:32:53 +0530
Message-Id: <20190813090253.8813-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_020306_347125_2E7EB848 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Static structure nvme_tcp_mq_ops, of type blk_mq_ops, is not used except
to be assigned to field ops of variable set. Variable set itself has
type blk_mq_tag_set, whose field ops is declared as const. Hence
nvme_tcp_mq_ops cannot be modified after being assigned to field ops of
variable set. Therefore declare nvme_tcp_mq_ops const as well.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/nvme/host/tcp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 606b13d35d16..a777cb157d70 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -117,7 +117,7 @@ struct nvme_tcp_ctrl {
 static LIST_HEAD(nvme_tcp_ctrl_list);
 static DEFINE_MUTEX(nvme_tcp_ctrl_mutex);
 static struct workqueue_struct *nvme_tcp_wq;
-static struct blk_mq_ops nvme_tcp_mq_ops;
+static const struct blk_mq_ops nvme_tcp_mq_ops;
 static struct blk_mq_ops nvme_tcp_admin_mq_ops;
 
 static inline struct nvme_tcp_ctrl *to_tcp_ctrl(struct nvme_ctrl *ctrl)
@@ -2159,7 +2159,7 @@ static int nvme_tcp_map_queues(struct blk_mq_tag_set *set)
 	return 0;
 }
 
-static struct blk_mq_ops nvme_tcp_mq_ops = {
+static const struct blk_mq_ops nvme_tcp_mq_ops = {
 	.queue_rq	= nvme_tcp_queue_rq,
 	.complete	= nvme_complete_rq,
 	.init_request	= nvme_tcp_init_request,
-- 
2.19.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
