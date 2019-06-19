Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CBC4C039
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPcA/7ZJkoR3OGJ5pU7O1wCGs6mKZ4GmR+/tU8L19XU=; b=ZEcfByedk/eyDu
	KB8nGgIeJ9VfeviCfBGbBgVXvYY7w4/BQZDHYCC8sT54ucThY/k9+t1fp72z700O4bJq83ukrI4xg
	ddgETRm47tPEA4zFC+VsQntemBhgU0AIETUzrYSIA1h09R/EpLe8S+ATKowJLvf7gGfXdiWpcWm8l
	TvvBEUy39YjNr7RQN7A3bEbZd3ixnQJQNbx6ot/KaY2HIIrZxNiCn7q/GmVN6bCkKj687TJ8IlBjx
	cNQkYwZb5++rX3NwkwvEcLsrIujLx7sGOZmt2oY23Bn1lO6S2X+6gKB3PHp4ns0VUMQonhDB/6QX8
	oda16y67RpDOO6jURD+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeh4-0004CZ-0t; Wed, 19 Jun 2019 17:48:22 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWS-0006mY-4A
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:26 +0000
Received: by mail-pf1-f193.google.com with SMTP id r7so22746pfl.3
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9LayyMCXXoz9sW69YQUrWIvPHwSyaPjo+EGWLLUAwvQ=;
 b=hXQ9o+polLXFkKxUfR5ZCJTIz4IAkesUKBr/rWxIkS/dq7jPdY9Jef7kokRmVT9Nhx
 rcdmUYkalH+BiohGFAoKhPmXCiPU1wdZ8psiulTGikHMY52JjpznZ8KaAHejzp4yTPEr
 w1IygQoXFC4UxIiBELq2kh/tM3CokuQVoYw6jB4CIRI1dyIaHfz+n+TQ1rcwFM0Chl/0
 ILkJMlIHFFzn3Ld3l65pKf0HGUvZm+hgOgqwJEqPnkuVfL5irxY0kx18lPYowwBG4D3I
 ziER+4ZBIgTlVvbSChRZa1M5mlxCvcFpnfKaDvFwaGRVZ8z4K2g+130Z9m7iL0Q6JK0p
 bHFQ==
X-Gm-Message-State: APjAAAWFc6Sl2efovy8FfqGScLVIc6jDdUnaGNkFAqAdJihPmZRX2vV5
 Rpw8vVjIA2DciMdNpVQfzPk=
X-Google-Smtp-Source: APXvYqynmW5XPoB66Q4hGpZM6ZVSp3SNZWIZ01o8v5tIx8FYJttEd6J9jM8r7hAdy5awY8mUgJ0ZaQ==
X-Received: by 2002:a17:90a:c504:: with SMTP id
 k4mr12343797pjt.104.1560965843314; 
 Wed, 19 Jun 2019 10:37:23 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:22 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 11/13] nvme-cli: Skip properties that are not
 supported
Date: Wed, 19 Jun 2019 10:36:59 -0700
Message-Id: <20190619173701.8263-12-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103724_204755_6145EDE1 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Hannes Reinecke <hare@suse.com>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Instead of causing the show-regs command to fail if a property is
encountered that is not supported by the target side, do not display
the property. With this patch applied the following output is displayed
for the Linux NVMf target:

$ nvme show-regs /dev/nvme0
cap     : f0003ff
version : 10300
cc      : 460001
csts    : 1

Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 nvme-ioctl.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/nvme-ioctl.c b/nvme-ioctl.c
index 0c8de0748c18..57fae22e1e37 100644
--- a/nvme-ioctl.c
+++ b/nvme-ioctl.c
@@ -614,7 +614,10 @@ int nvme_get_properties(int fd, void **pbar)
 	memset(*pbar, 0xff, size);
 	for (offset = NVME_REG_CAP; offset <= NVME_REG_CMBSZ;) {
 		err = nvme_get_property(fd, offset, &value);
-		if (err) {
+		if (err > 0 && (err & 0xff) == NVME_SC_INVALID_FIELD) {
+			err = 0;
+			value = -1;
+		} else if (err) {
 			free(*pbar);
 			break;
 		}
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
