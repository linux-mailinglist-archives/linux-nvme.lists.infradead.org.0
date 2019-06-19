Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5849B4C026
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6y+MlFUnwXol7PNPt3UgapBgVVQDx6aWeSJOowVDvk=; b=DwuQFTr76dwomh
	pa01ckkfVBG59+XkjnKDS60Sg+TDaS4EAg8DDpK3/RLe6YmR/rqaFuKsOSGXyn5isMYNAyR9otww7
	K6rINQ4PtI6XT9HnxQgELjQkaJcpqg1iudreF8PCFrYWRjA1ufCiwLCdPS0/RTfGnX2PI1mSOUYhw
	A1hLt+4g/HIHVqVKZBbc4DDKBJQIi80pFJoR7sk9uLGVPHkrdnZ4rYTpZpp7/z0ff984t5iMxYuxv
	gES6PnYo7IzDVdCvZg3nqQJGHieMBlS63S6W4Mi2zNQoei3VYIpsxg8TkUACfDiCyIaZgT97y4S2T
	SFXCsgQS4uXnxZwupWlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeg3-0003SQ-MI; Wed, 19 Jun 2019 17:47:19 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWL-0006gb-Ig
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:19 +0000
Received: by mail-pl1-f195.google.com with SMTP id ay6so92784plb.9
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r7WX85uMbXoTqavRwDLZ1bVfyTzISod09hF0tqCHjCM=;
 b=mmemnuWsmVelOE38m0S1/S72dFWhKX7ZdZKDe0zRFcrMr5uVU1vewZXy3L4Uquy+yA
 CmMisdlduA6lMshIPPniE7M8GVTEzDGMqJKlbBavHvACXP2ADFYM02Y8ytF2W2X/oEtK
 zJ1TYquKJRGJEo1rqZ7GMV/MHFHEwXGzXNqwJMXBCXYm0MhjRBhYVDq1i7KqSBcrmOYc
 kFsrRs+T65bvpaZPLSV55gn6taCbH5RHXUlNzBVkxpUwTz/TRJfmUnwF/w/mqXyj94jS
 r5q9Zpg0ftNQEtTtDzTAswdXxQ38Vj3yJW+b26u8b/40fqSahn6AUuEEI9j4v/92D0eb
 njiA==
X-Gm-Message-State: APjAAAXPbQ0t9N4XvTC7XPjNNFAhEIpk6l8e0N7SPWCaZPzr9eYrbM75
 5nvkeI3Nkz0QvN/6Y6Lsaww=
X-Google-Smtp-Source: APXvYqw8jWGg0HluAD02ptq16fHCeKCzInbqO/yLP4hVjXfNin4XjhMjcS3GgHWYyDz7qS0T68rBAg==
X-Received: by 2002:a17:902:728b:: with SMTP id
 d11mr91609094pll.78.1560965836477; 
 Wed, 19 Jun 2019 10:37:16 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:15 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 06/13] lightnvm: Fix an endianness issue
Date: Wed, 19 Jun 2019 10:36:54 -0700
Message-Id: <20190619173701.8263-7-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103717_633867_77E6DA4B 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
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
Cc: Hannes Reinecke <hare@suse.com>, Matias Bjorling <m@bjorling.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch avoids that sparse reports the following:

nvme-lightnvm.c:497:35: warning: incorrect type in initializer (different base types)
nvme-lightnvm.c:497:35:    expected unsigned int [usertype] data_len
nvme-lightnvm.c:497:35:    got restricted __le32 [usertype]

Cc: Matias Bjorling <m@bjorling.me>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 nvme-lightnvm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
index ee21d6b28e08..0b99786fbab2 100644
--- a/nvme-lightnvm.c
+++ b/nvme-lightnvm.c
@@ -494,7 +494,7 @@ static int __lnvm_do_get_bbtbl(int fd, struct nvme_nvm_id12 *id,
 		.opcode		= nvme_nvm_admin_get_bb_tbl,
 		.nsid		= cpu_to_le32(1),
 		.addr		= (__u64)(uintptr_t)bbtbl,
-		.data_len	= cpu_to_le32(bufsz),
+		.data_len	= bufsz,
 		.ppa		= cpu_to_le64(ppa.ppa),
 	};
 	void *tmp = &cmd;
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
