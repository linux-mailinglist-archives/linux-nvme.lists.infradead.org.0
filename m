Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CA54C03D
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHNuzEE3CA/sed3lDi7QVioFWgnPGOpmYEsoB8WRlfI=; b=eLGp6aotcxHBN1
	f0xr7YUZVxe4P2ukb6r1GqFlVVEplAYB4xySa0sU0kwAYt/yTCL1crS2lMVCGHLyQITeGh+xirh6d
	yJgzeFGmv5oTZckQ9hOGDi33pBU9dj3bOW03Wh1GlupVRZAw5xZZyf/B2xuXbh2h9IgsoSlM/OQJf
	9wLCJCIMAa6zmedtlYR3V8750sjoHCeTvZ8b940Ao4V15uzsCL6PAW78WLstXagECZxC0S3RoC6v8
	MDhHW3u1mNMphKvzvCN0XwwluVYowwGSG/ndJhTi7kM0oRiO6YpRYFTLwK/wze5Q1Gn+jUY3wM3cd
	pD11rmjHjXt8i+yOR1TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdehr-0004pK-1A; Wed, 19 Jun 2019 17:49:11 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWa-0006wU-4P
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:33 +0000
Received: by mail-pg1-f195.google.com with SMTP id y72so51663pgd.8
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rUpiWfp2HD35LUhIl0UzDyI0KmvtlUm8y0tj+jP0t48=;
 b=a/E3ZvVniuBSNfM3S8h2mNG26BAGDhEj0KtoKIWFvmq02+nC7Qygh6ZZiUbcczN/Z1
 ynmbDHkfeINkPIqyUokykYN8+1s+WbEblQJkXTs5F5Sqdl0g8MUqhI3UsmPhrjfalq/s
 yVu31vZnksQLfye5P7612UpJ1LptPRtSogAfPtA0+jz34rfdQLmq8sA+NSNqfxEvm1p5
 dA9dNxXcRm3QVks7dyo2HkI6HnF64SmVb6nC+eeD8tayTwGs8+70fpyJyJo+PtTEZUpn
 psdQP9b0rvhNgFpa3TzOmPihTgmYCyYQm/ujsHtzbLf/L35l4LlZ2mKjwFmYAO8720lR
 ihCg==
X-Gm-Message-State: APjAAAW228514PKQSYHgtYY4ixPpgQFCYfiUXJ4taU4KIL30pgXBVNWR
 CIshaEaDdtoz5N6xoeg/g+w=
X-Google-Smtp-Source: APXvYqz3ak56TfMgrr9+7V712/tMUEQq55Qnrz8XhYYxIXcTwJMNmOZjkQUd4HOh/IbCxvNUN32A5A==
X-Received: by 2002:a62:e71a:: with SMTP id s26mr80483469pfh.89.1560965835187; 
 Wed, 19 Jun 2019 10:37:15 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:14 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 05/13] virtium: Declare local symbols static
Date: Wed, 19 Jun 2019 10:36:53 -0700
Message-Id: <20190619173701.8263-6-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103732_230454_32012FFD 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org, Quyen Truong <quyen.truong@virtium.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch avoids that sparse complains about missing declarations.

Cc: Quyen Truong <quyen.truong@virtium.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 plugins/virtium/virtium-nvme.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/plugins/virtium/virtium-nvme.c b/plugins/virtium/virtium-nvme.c
index ca5f5774af8c..7d91ef8d29dd 100644
--- a/plugins/virtium/virtium-nvme.c
+++ b/plugins/virtium/virtium-nvme.c
@@ -377,7 +377,9 @@ static int vt_update_vtview_log_header(const int fd, const char *path, const str
     return (ret);
 }
 
-void vt_build_identify_lv2(unsigned int data, unsigned int start, unsigned int count, const char **table, bool isEnd)
+static void vt_build_identify_lv2(unsigned int data, unsigned int start,
+				  unsigned int count, const char **table,
+				  bool isEnd)
 {
     unsigned int i, end, pos, sh = 1;
     unsigned int temp;
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
