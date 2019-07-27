Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACF777B25
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 20:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ip564ju0IqaYfRm+FCpaSDkpMM1p1EDRJNo6cnALVFc=; b=b2EXMedxOF6z+fBT190gWexyZb
	f6AdB98WVj6l0/DAgp6MDSQoBDaig9e0A2tkDlq5u4jUY8s69/fbQixyqdx5jiA9xTItRyVgEROon
	e1dLY03MOUUdrHGuEI3cMQa2ZUUeY3fboXzXT6T0TiwHZWULdNzEy4KXGt+cJelXwQ5CTJ2Cog4by
	CeleckEQvRbMYsnAlAc8TkWSWg0ktx283fCtt0FBDrJeNZL132Xg1FObMygodEJQC0vJCaJX8y+2i
	hVRKvRdglZB2QGPxxvyruzGNqqdXTcyt9Pv9adJ1ZwHSJuLKoSbcD4nKM05DaB7B08eSKx4930CZP
	ZKHJfknw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrReN-0003Qk-Dw; Sat, 27 Jul 2019 18:42:35 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrRe3-0003Gt-6R
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 18:42:16 +0000
Received: by mail-pl1-x643.google.com with SMTP id a93so25902446pla.7
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 11:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MttYdtr3fppq+AMO9l02WJEWXfTlKpG9ZwpRNkLsOQ8=;
 b=JWlMYAa7hzmG+4vvmCPVKACEDw/hp+7cTVM5B/wfIExKPvumsDN2LFoIubYndyw2WE
 S4CQ2wmMBLtIbBNE/H8Zoe9XX2EcgFBlQt3D7wrfJMtP3NYmM7brM9s/t2LlOxapvA/H
 aflfG4c4pwuM/BP/Y3aEPzMuwBAkeujLccg1aWFu8kyQnFe0T6Vyw4SldSIjP+0tWB0Q
 DpcYvxr7AXoBRgs24H8SBVjHR2CDy552KKj6glJ/zzkF5gcuCS6hVEQqdgNh94GIclkh
 1cmg2e/+27vmdX6dDacairUmF90hZS0Q7nPEUKC/QNVMtptNdCl7uYzvhLQ2JNy/DNyV
 czoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MttYdtr3fppq+AMO9l02WJEWXfTlKpG9ZwpRNkLsOQ8=;
 b=DYviVPb7lEp9+3bWrDcGJSyeeit456ifkwbufqmJT9At37RNVuDtlFGVjj/ZZ3Cvs1
 5O26kAXj61acmMl6blbXcHmySwMSY+0yLYMz7ybtOYox2glvlPqbhVZ2Gt5KDOX8/gzW
 BRmbVsWi3lOtdCIKfKiB5MeHQ1VWysug/jXo8gp+dwwYXmq/r1iS30TFxJtc0HK/mMrc
 aQ1ha3aNpxdoITS0z5oMTDK1L/wGGbKojItup5h7YFianitE3Lm1pN7FBdR0Dixk94gd
 k8Entc/iytTMUPHrPEI/pZpTBEVoX0GDYt4LeVFYFSp9ZYuEDZ9uz53jEC7HKltBdjmk
 DbvQ==
X-Gm-Message-State: APjAAAV/Y9JB/J4l0JAaiIaQDSzApMd/qggcIUwetvpMTyUTUqlrwW/K
 6ovUIGwxdR86zddXF+wnVNuc50VJIEQ=
X-Google-Smtp-Source: APXvYqyacv3N/migHj4+XQLV4IRdhRaiP4LjVCTH/u3YIhdpPdmtX/NUFDreS9FS51UikxtigXm6Uw==
X-Received: by 2002:a17:902:4124:: with SMTP id
 e33mr95755857pld.6.1564252933961; 
 Sat, 27 Jul 2019 11:42:13 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id m6sm57733367pfb.151.2019.07.27.11.42.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 11:42:13 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/4] nvme: simplify nvme_req_qid()
Date: Sun, 28 Jul 2019 03:41:52 +0900
Message-Id: <20190727184155.18014-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
References: <20190727184155.18014-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_114215_235938_843FB4F9 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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
Cc: =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>, Sagi Grimberg <sagi@grimberg.me>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>,
 =?UTF-8?q?Matias=20Bj=C3=B8rling?= <mb@lightnvm.io>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

blk_mq_unique_tag() just makes a unique tag which holds not only the
tag, but also the queue_num of the hctx.  With this unique tag,
blk_mq_unique_tag_to_hwq is nothing but removing the tag from it.

Therefore the qid or the I/O queues can simply be:
	(struct blk_mq_hw_ctx *)->queue_num + 1

Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/nvme.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 26b563f9985b..2e76198f5833 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -126,7 +126,7 @@ static inline u16 nvme_req_qid(struct request *req)
 {
 	if (!req->rq_disk)
 		return 0;
-	return blk_mq_unique_tag_to_hwq(blk_mq_unique_tag(req)) + 1;
+	return req->mq_hctx->queue_num + 1;
 }
 
 /* The below value is the specific amount of delay needed before checking
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
