Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2817A4C015
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OOjC4SCJMqN0dUQqNEu1gLlyrGYGNH8HvuXfyJ2cGkY=; b=QWQ+iw9HTHpw5t
	8tjGhXxXNd1hBkR3d5l8bGVYEoSo1KJsQ0JQX6mFTGX/Xm6hQYnj/XjmEsp2nTicaDhUf+i+8fVUM
	dvPk6Aocl7HuYCkoziASRsorQwuRA4Xv8OLmZ8BqVE5mIxJ1OQ7/AS0nWLsKB0gJTJJhI7wVkfjm9
	oajCnIWoxUNTq6ExLlwz5r2iovcpJta8loO56N9+krOAap0TgUIHatsC/NiFFJVtJhjzrsoTxMZ3O
	UH3eQPD7Ebd383WdOac9nQY8qx+NRZGDDSLrT33Olz1wu8KIum2THIeKNh0gfgdvUSJnm6eKW/0wo
	pF7I+gCRjis0VxeV7i2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeeo-0002He-Dl; Wed, 19 Jun 2019 17:46:02 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWD-0006ZO-Tn
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:11 +0000
Received: by mail-pf1-f195.google.com with SMTP id d126so25232pfd.2
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f/OwHtGbClA88pfbLIxaS4e/vyC34vG+J4ubCt/G2VY=;
 b=UXEbnVtwVwE5uLq8AP0kWpqXgQlfoLNp9erl9vMKT6ZnAmdyEJ+PS/u/KEUbIbptrb
 qgc4RzwkLMiO4z4XL+KYtW0IfGSQWwT7Qrpr00LmjDPRaQ6WTaSZ71bPokDmGXXZFHNw
 PXMXwE2gd7mHvM9snlUwyfd+tqRbXrzpnKe89NoBpkCIxzCsi+roSf1edh64vESyQOrW
 njBP65TV89yQBHF7fXw8b3vss5Qcu1xQprHfkNJ+YvEsUl34PE0ReD0ybtRldbgm8XFA
 mKSp9fqSy43sWYK2IZtANB3yknPYqn7vZnnfgmkD1WuhNal4Bh368dhkg6lwG/mDifxl
 ySOQ==
X-Gm-Message-State: APjAAAXDA7xEZmGsPm7Myq8zKzpJU/xOuTEA7cuPqpOwH75brmEd/ZoK
 i/WPW3QddIQIrE76ihMEQ/Y=
X-Google-Smtp-Source: APXvYqy2sbw9VArDY4m/A/WhtCrPpp7UoNhdW9WaSGCsUoVdIJknA57b9Ps5yiMkDU+MroNxFtQCZQ==
X-Received: by 2002:a17:90a:db08:: with SMTP id
 g8mr11911842pjv.39.1560965828618; 
 Wed, 19 Jun 2019 10:37:08 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:07 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 00/13] Static checker fixes and NVMe 1.4 support
Date: Wed, 19 Jun 2019 10:36:48 -0700
Message-Id: <20190619173701.8263-1-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103709_974731_9F473188 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
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

Hi Keith,

This patch series is what I came up with after having analyzed the output
of 'sparse' for the nvme-cli source code. This patch series also includes
two patches that add support for the new NVMe 1.4 Identify Namespace fields.

Thanks,

Bart.

Bart Van Assche (13):
  Remove superfluous casts
  Use NULL instead of 0 where a pointer is expected
  huawei: Declare local functions static
  seagate: Declare local functions static
  virtium: Declare local symbols static
  lightnvm: Fix an endianness issue
  virtium: Fix an endianness issue
  wdc: Fix endianness bugs
  Avoid using arrays with a variable length
  nvme-cli: Rework the code for getting and setting NVMf properties
  nvme-cli: Skip properties that are not supported
  Introduce NVMe 1.4 Identify Namespace fields in struct nvme_id_ns
  nvme-cli: Report the NVMe 1.4 NPWG, NPWA, NPDG, NPDA and NOWS fields

 fabrics.c                      |   2 +-
 linux/nvme.h                   |   7 +-
 nvme-ioctl.c                   | 126 +++++++++++++++++----------------
 nvme-ioctl.h                   |   2 +-
 nvme-lightnvm.c                |   2 +-
 nvme-models.c                  |   1 +
 nvme-print.c                   |  51 +++++++------
 plugins/huawei/huawei-nvme.c   |   3 +-
 plugins/intel/intel-nvme.c     |  16 ++---
 plugins/seagate/seagate-nvme.c |  58 +++++++--------
 plugins/virtium/virtium-nvme.c |  14 ++--
 plugins/wdc/wdc-nvme.c         |  88 ++++++++++++-----------
 12 files changed, 200 insertions(+), 170 deletions(-)

-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
