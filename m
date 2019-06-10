Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1531F3BE05
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 23:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+QWX+yS+CesHTkSUb+AJq6yeCzqDlHkpAxVhXMuIRUg=; b=fN1axWaENJADgd
	7BG2npvtvw2ODFK9ywg7QaarFuEFJwVHog5KFla6D6AIxjnkFXxk1aVzUDN4aGwq/ORu1PoV0HC+I
	zMOrCa0n7LckeMy1sSq3lGwCoTkm3hZYL9Tq4fF3CmKA4bMP3WUx3ZAABEErzg7CiH5Dn/OWUt++9
	ChwAk4b3q3VH9UVnoSgGHMKFra98aK3e33ccaYGfFax9LR1iieT11TKCxJfB0uW10v2ThQ4xc8Quu
	SjpHB/sMIHiniZ5S1xzAD536a9rYHmFTW2OsBeJ/k8MXFpLPFN1ekxKYTRr/vWxXX/Q6PMyWRWtL7
	ZkxFP+aBE4DJ2IhmANjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRUw-0002pp-Qn; Mon, 10 Jun 2019 21:06:35 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haRUk-0002p6-Jq
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 21:06:23 +0000
Received: by mail-pf1-f195.google.com with SMTP id s11so5973328pfm.12
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 14:06:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TCy0P22D2DyrD8Q3AzXU7cwffVhRk/7/n1MERuYYeqw=;
 b=EtbzOE0zG6FH8mF1vacyVATcpjISJ/y1eZpcOtLvtQErCvd7qy/HmfhzIkmA+sTNQk
 RgomXXnC1hSNwP7aCfX7cG/mNeA23sSsTYHg9ZjPQBmOR8UotriK9JJjJa9lPtFI55hL
 8fvTkHzk7iSBr0Ma6gJ4+wAq/r4+Y8Wr4t7PuN+XcDapsoI1rzp+wqd1qoiQpEP2c1OY
 FtLjMy2h35pSRNECMe9gRZXbxI+sNULv80hTsSj/e5nDY8plkLJSKfh4CVjTFStjK4ez
 45Cm38yd9g3Cbc7nXJ5pg1uuT/l9NLPSvmieatkhaYnvOUR2vLAooi9wgjGVyF7ngVcz
 FqgA==
X-Gm-Message-State: APjAAAXkIRAdyErV4IgvClzZh5fd40tlVrxhjh2IP3OWPBBZINQYx3Sb
 +XJqpE9z4Mg34na3R8WN07c=
X-Google-Smtp-Source: APXvYqylRaHOR8xHWGc1O8xsQKdI6bmIdn03fd1UJzMhhSDWDSvrnk+WaPxJC0GIFTcyqmCcN4gFLw==
X-Received: by 2002:a17:90a:778c:: with SMTP id
 v12mr22061548pjk.141.1560200781134; 
 Mon, 10 Jun 2019 14:06:21 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id d19sm332208pjs.22.2019.06.10.14.06.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 14:06:20 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v2 0/3] NVMe 1.4 Identify Namespace Support
Date: Mon, 10 Jun 2019 14:06:09 -0700
Message-Id: <20190610210612.103952-1-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_140622_652069_C02CBF43 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Christoph,

This patch series adds support for several of the new parameters introduced
in the NVMe 1.4 Identify Namespace command. Please consider these patches
for kernel version 5.3.

Thanks,

Bart.

Changes compared to v1:
- Added a patch for the NVMe target code that exports these parameters.
- Limited the physical block size to the value of AWUPF/NAWUPF as appropriate.

Bart Van Assche (3):
  nvme: Introduce NVMe 1.4 Identify Namespace fields in struct
    nvme_id_ns
  nvmet: Export NVMe namespace attributes
  nvme: Set physical block size and optimal I/O size according to NVMe
    1.4

 drivers/nvme/host/core.c          | 24 +++++++++++++++--
 drivers/nvme/host/nvme.h          |  1 +
 drivers/nvme/target/admin-cmd.c   |  5 ++++
 drivers/nvme/target/io-cmd-bdev.c | 43 +++++++++++++++++++++++++++++++
 drivers/nvme/target/io-cmd-file.c | 34 ++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h       |  2 ++
 include/linux/nvme.h              | 12 ++++++---
 7 files changed, 116 insertions(+), 5 deletions(-)

-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
