Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00685809CD
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ip564ju0IqaYfRm+FCpaSDkpMM1p1EDRJNo6cnALVFc=; b=Fry
	2EoEZVrLtdoaLgCf+AEZvgIW6Tf8JeNT46PfNl/62tDeTPuwVDR65BRADqSaDhGO/6fyrC+OcpxWo
	sOWx2aT+Nh440K7OBPH4EGhZ7WO91uXidzPQ5zNCzHGebHRTPTILhn9d0whXjmhDrUjzIjr/Ja/jw
	KU9FRW2qOwgyqLW98kJgXh+0Kq9qQt39BGLoqVjimmfj5kxNUmt1i1QB5NQWS0f4Y9QWgNbJcHBlG
	LT/+52/vwONI6QEQfPc9q7jcA5G5kMKqUQbSMGvmOqO5QYc8YL0eKL5NfWiD0/Nubleg0w0eQGfAD
	koaUmQjqw50TZl3Vx3m6g8POpcdqGfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huAnm-0006IC-K9; Sun, 04 Aug 2019 07:19:34 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huAnd-0006Hm-IB
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:19:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id b7so35283540pls.6
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MttYdtr3fppq+AMO9l02WJEWXfTlKpG9ZwpRNkLsOQ8=;
 b=mhjb2XBUIroMzzTPI8Q4g5WCbsnDxmL5s8aINHRItkBTe0PVr7eGp7BARcL9yAYBZY
 Hew35G5X5agB7rGJTDRvn9JhjYAMlF9sAcyD0Yc9j+d6+3Wvu6b/nx2tSnCKIon1yJYP
 tZV+UZeAbD9vnUcaOK3VmKz/D2Dry4xmQXkfPXMeZiZfYEfEZ/KDA/Q6Kdu3UlbXdQ/J
 XLK1o2vJV6uC8RL/gBJ2sxIjiLIhm8VB4broInIty2deKCDjDf+Msusq6hStvCbvYgQI
 N1bFse75tAdsRbae3otqqxMBF3mBAV/8WJEOzf8p2niwNJHKbZ0w89Z+VRSvrJlpAjrk
 KjXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MttYdtr3fppq+AMO9l02WJEWXfTlKpG9ZwpRNkLsOQ8=;
 b=mHEcym7oaTEPf1d8x67E2qVSJIqgMhWuKceG7DVQZpSLLJvE2s5jfk5yc5tkN0iwBf
 G73L5az0vktxaDJlFHLj05ZUc0RTh6Z0MANwqxTVlshVS19qQtm93xkofghQek8catgj
 J3Wbe6gCbZNFxIi1S8YdWO0xYt2Et2Wv06tXWhhI6fuqP2g47VYnhWuv9yZA7v9/uCUz
 k4CNuZMqCnK0+/TIR+WSGezA4/OW80ne/nno1Sj0GecsXrIMxy0JiLXMuWUPdYWMIOVd
 xBF0YPHRs73S7Fn1s/LLl7IMO5lXq7YDQv3bw4vF9jmUijk+THOPncfdeZKihuJI6o9i
 8Ivw==
X-Gm-Message-State: APjAAAXhZ52JJDLExsfdntOWTXEL8SAwbs4uZR7p9GSMRWFbaZumCqKY
 +ILFSGOW2byP6i5ACKR7m4cJLsA/6Nw=
X-Google-Smtp-Source: APXvYqzwGBfwowR5r2e6/YLil/9u2144kkZjF1OPGmCGtca6SvPq2IhyRuxWsXcf56pEkOyytjzJOw==
X-Received: by 2002:a17:902:f087:: with SMTP id
 go7mr138642009plb.330.1564903164669; 
 Sun, 04 Aug 2019 00:19:24 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v18sm79404089pgl.87.2019.08.04.00.19.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 00:19:23 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: simplify nvme_req_qid()
Date: Sun,  4 Aug 2019 16:19:02 +0900
Message-Id: <20190804071902.31872-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_001925_628970_26260A07 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
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
