Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB37181397
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Mar 2020 09:50:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6D8QlEj0YDOmrQLWg1wnBQXao6aP0xwCGNS0lRRcnPo=; b=nul
	VE3Gm5r6+9fYF0jMqj/UBr8z5WakBu0muqgzb+XRlnITDXDalYPHFzqwlEFYO4hjEWqXC9g+zawSz
	xkAjli7h6LkIGOZlwU2hiLszjFRD7K1BvpH1zHIoS7rQw5CmzI9bQ31Ey8B71kgxkuM3lboF6W27e
	MkK/thO7q6FmrVpqqhwTdSrRB5TdvDOYx3k45O1zrl4E7JJRfw1nLON4vnrBUAcVv3ezWxjBaDQn+
	5r+S75TYDYGC3BQJX596z8KAtKMY8/yeTt5W0+vE59v4zX8sGZaYPz3HxTfPj0FsnO7jZcxL2ODCc
	cb+3Q6HAszLVetfB85vHmHFGqzPhx8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBx4d-0005Wm-VI; Wed, 11 Mar 2020 08:50:43 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBx4Z-0005WP-TF
 for linux-nvme@lists.infradead.org; Wed, 11 Mar 2020 08:50:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7D8D3AEC1;
 Wed, 11 Mar 2020 08:50:38 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH] nvme-fabrics: Use scnprintf() for avoiding potential buffer
 overflow
Date: Wed, 11 Mar 2020 09:50:37 +0100
Message-Id: <20200311085037.18888-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_015040_089439_F1B499E5 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/nvme/host/fabrics.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 74b8818ac9a1..2a6c8190eeb7 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -105,14 +105,14 @@ int nvmf_get_address(struct nvme_ctrl *ctrl, char *buf, int size)
 	int len = 0;
 
 	if (ctrl->opts->mask & NVMF_OPT_TRADDR)
-		len += snprintf(buf, size, "traddr=%s", ctrl->opts->traddr);
+		len += scnprintf(buf, size, "traddr=%s", ctrl->opts->traddr);
 	if (ctrl->opts->mask & NVMF_OPT_TRSVCID)
-		len += snprintf(buf + len, size - len, "%strsvcid=%s",
+		len += scnprintf(buf + len, size - len, "%strsvcid=%s",
 				(len) ? "," : "", ctrl->opts->trsvcid);
 	if (ctrl->opts->mask & NVMF_OPT_HOST_TRADDR)
-		len += snprintf(buf + len, size - len, "%shost_traddr=%s",
+		len += scnprintf(buf + len, size - len, "%shost_traddr=%s",
 				(len) ? "," : "", ctrl->opts->host_traddr);
-	len += snprintf(buf + len, size - len, "\n");
+	len += scnprintf(buf + len, size - len, "\n");
 
 	return len;
 }
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
