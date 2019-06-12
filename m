Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E38FC42636
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Jun 2019 14:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVOpYiwH+SOHC+GMcXWrVPUCkVjPp/pnbQIMqUrWQbo=; b=i5DdCKMZFmUdRq
	fP2YxqJQLOiTxTZw5DoavmWaXkVtByBAt8BNFWd1Drr0z9sTi1FNSGmM5E+2RUbd5f18a++bqkOju
	5OWt3APzClkBuIS5OzOB4RZPXkifCx3o1myRQ1qQysPCN8yil1eCG0tFVtgfZlJW1eNGIhv+1C1Ik
	j4TQwODyyYXA4/tF8C+voVQwIwexETpveyE8EaZsjPrqJSkYSXIrVAo9tbbMjQFjkLiI+0dvf2ws+
	EML1rngcFaQVcOXSnA+A6SGoH1mlrWD4giy24hNQlD7i2stoXAcH6qla1QS4wgmthgY2L7C1Cg8C3
	/Mg6Gllo9XsLPrUWZpRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2e0-0001nU-3y; Wed, 12 Jun 2019 12:46:24 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2dV-0001Yx-QY
 for linux-nvme@lists.infradead.org; Wed, 12 Jun 2019 12:45:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id v11so8875601pgl.5
 for <linux-nvme@lists.infradead.org>; Wed, 12 Jun 2019 05:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SUCKwr0SdIoEiPlnGhaXp+yBjtDEvKPXQIsBp/THBDU=;
 b=Nv++wDGm0P2hzWk+jR2nnCPgiKZ3zaT1Y3L9FZT3qV22phcUd2OVZ5EqWwMSSgp17I
 YaXlnkZ8q3mWS8IBx6gREcBEB9mYjY2Lmx+cYBfg1/olQD0qS17hXyNH0Y2y0tsGHeII
 os0NhgL54QIwblyN4vdcrpDg23oB4Hegtn5e3sgif1R9cogscoV0FxyUjqGnMUn662GK
 ac9T9elz5XwZXdW4w3nK/om3mGWzPQTELve7+6SIVNfGnvc3u9CE1ORrFj9B79SbwAAA
 Dw6XEg0PnF5iJAKMpgXnzeoh8qZZMngCyhDm2IsNDKHh/ucnzWYOj7UP1Z9xtcci854H
 gung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SUCKwr0SdIoEiPlnGhaXp+yBjtDEvKPXQIsBp/THBDU=;
 b=EE7v+AlGKEBgb7ohM81FiuvJa0/g38vB3FTksiDz3awA2nkPfLeZ67nIYTDiF45qSi
 tAZcZqooftL5JYQTkD7gOiQLruGpvyDf2Mv1scpVzSyCdh8Lx8WHhtAn8u64ksnz3E2u
 3OyzzNUH8DKTmrvA7SV5w5Gbf9SpOVi9Qrty2I8fUeptFGRp1E5bvXg04/5F6Xgku42p
 yXAL2muFVYlLosE99jXJrWZeWa3UacDr5CAWWQnlcU94pOILKr9MRqlpRh5aB92Dlzar
 yQ5MBiSs+2iDLVs2vjdPOAThX9MnbWZ9rJx95ymyhvOcCF35LbE4IGrBI8UTv4wijcnt
 TqgQ==
X-Gm-Message-State: APjAAAUiGF29WUq/QToXAHDkVPamBSXsSWXQs5NeK7eDc0OgZKlvvX9t
 vtpno60Z+hg6NcuU3cNjNGeFMcNVTzk=
X-Google-Smtp-Source: APXvYqxkNmq0mxdWNRC0mL91pRUS9BFUw8jn5aZfqbNvQjc7Ehn+N4szWWQMMSpEUhNEzJhW2jcmVw==
X-Received: by 2002:a63:3710:: with SMTP id e16mr24670499pga.391.1560343552481; 
 Wed, 12 Jun 2019 05:45:52 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 144sm26795479pfy.54.2019.06.12.05.45.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 05:45:51 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V8 1/5] nvme: trace: do not EXPORT_SYMBOL for a trace function
Date: Wed, 12 Jun 2019 21:45:29 +0900
Message-Id: <20190612124533.10299-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
References: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054553_871978_83A89E17 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_trace_disk_name() is now already being invoked with the function
prototype in trace.h.  We don't need to export this symbol at all.

The following patches are going to provide target-side trace feature
with the exactly same function with this so that this patch removes the
EXPORT_SYMBOL() for this function.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/trace.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
index 5f24ea7a28eb..14b0d2993cbe 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/host/trace.c
@@ -145,6 +145,5 @@ const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
 
 	return ret;
 }
-EXPORT_SYMBOL_GPL(nvme_trace_disk_name);
 
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_sq);
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
