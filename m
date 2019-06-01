Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C0031A0A
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 09:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X/BLovZVRYwqG5sKeKpaQkGbt7VBmy+YZBqqe1+peiA=; b=jA1ufD/uKFdr2Q
	mL/uS6TD1vOncd5TNc/GfIbLC0ccS7y/WARJADFFJ7z6lLSKoom/nucGRpFCSScnDwua1p0TmfMIS
	GTihALk9vgws8G5oR4X5CTIDKlVHG8OnXTmNPfvtAVc2rn/QXq8/wCLSiTUXsjM6EDuYFAx5Ha3+O
	qPbKSm+sWWWjLhVA+Z+MEbPQXRmonBkpTME7AXkMw/2DBKW0zh9jvuci1ROd4yD30KsyTYldHb9z0
	XZVoSWlfI+eaDY7j1INh4Ros9NLl5w/Y99I3CCgev7J/78aA1ic1ypZSU7Nt7+7IBEXAioj70YavB
	If1fuAFwIkybmtGcAD2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWyL7-0006tt-1T; Sat, 01 Jun 2019 07:22:05 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWyL2-0006tX-Bv
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 07:22:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id q17so7559305pfq.8
 for <linux-nvme@lists.infradead.org>; Sat, 01 Jun 2019 00:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VjisWqNBIzZBfQLYnHSu9nbFOak4aSDlC+NfVd1WxqQ=;
 b=lfH/SoNJ4U2G653QNoFiJA2dDx8Pgej0qyV0KFnT9C7G12gPD/4VHIZ4cXNXeGCDPI
 fY0lVinT1N/AeWu83Xmli1undk2x3UT62gAVvHCn0fExoCrrqhog+t6jiXjoIIhP/XvU
 6D2OM4lwZrSvtw2gwYZ9ccOc1OLD1X7DH9LoKa4KRO35cjDs36MG0VKFT/Xc+h/JiLmT
 5J8zNJkmcyLu3oFPn9BW18tSkSBXQMRioWCni3AVHaWpgJh68Yvy9Nnhtqvr46mAjiyO
 S3IKCOdmPsaYRXWG87S5Ut7AxjVbJ47pR+YtWBiCR+Y0O3EGmP3Rwx9yrUe6PFYfQo9d
 1YmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VjisWqNBIzZBfQLYnHSu9nbFOak4aSDlC+NfVd1WxqQ=;
 b=RZe3MwEU/U6eQUeco7T1v0K9WFSViHvBy2v9f/UpMzihTUe5BsjOXtguSZtFsUpYq0
 YqEuBkkV5yRQqMh86edKd/ydTg+bn9oSuVj1WdzZrDkNQH9kyXg2GSrSSmm1IVLcVmnT
 xrARA82LZlLK+P8ZiUhhM9u50ioeZC4KGvjL4qsifdXu8OMPEGt2wBjF0EZDr/9ncoW8
 RKVh0hUy0ny909H6IzjpQRPBVE4Jc3OL1/E5zjxCCR0dpQBZRBKhWH2bBkgBcE/zgeUr
 VMm6aGFPQ0LNPkmRqWjYRVbFV3Hant4bbdtTMK2PVryJWBSqQogwTV7nsZjqJrlbMTUp
 aR4w==
X-Gm-Message-State: APjAAAWgwN1Bg5p46xLgr45JVxgkND2JFZcI80+dyUG4zTJrW2LGKSsJ
 deJXktUQJrWKo4z/eaHD/Jr0zZwQgA8=
X-Google-Smtp-Source: APXvYqw7FoGAUvf2hVDqjMr8grnUneRxz/O2LYEJUpTeXBRtz4f7IYEQjSi6Y5DJqeCIWEnfgWP2Aw==
X-Received: by 2002:aa7:9604:: with SMTP id q4mr8055942pfg.184.1559373717696; 
 Sat, 01 Jun 2019 00:21:57 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id t33sm7881200pjb.1.2019.06.01.00.21.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 01 Jun 2019 00:21:55 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 0/5] nvme-trace: Add support for fabrics command
Date: Sat,  1 Jun 2019 16:21:38 +0900
Message-Id: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_002200_433492_15951595 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

Here's a fifth patchset to support fabrics command tracing.  The first
patch updated host/trace module to a outside of it to provide common
interfaces for host and target both.  The second one adds support for
tracing fabrics command from host-side.  The third is a trivial clean-up
for providing a helper function to figure out given command structure is
for fabrics or not.

The fourth and fifth are the major change points of this patchset.  4th
patch adds request tracing from the target-side.  5th updated, of
course, completion of given request.

Tihs series has been reviewed by V3, but I didn't like the additional
argument frmo the caller side like NVME_TRACE_[HOST|TARGET].  V4
introduces it without additional argument, but it has an work-around not
to make them have additional arguments in caller level.

Please review.
Thanks,

Changes to V4:
  - Add Reviewed-by: tag from Sagi. (Thanks to Sagi)
  - Consider endianness for cqe->status when assigning the value in
    trace
  - Add more descriptions about the variable arguments in events.

Changes to V3:
  - Remove additional argument from the caller level.

Changes to V2:
  - Provide a common code for both host and target. (Chaitanya)
  - Add support for tracing requests in target-side (Chaitanya)
  - Make it simple in trace.h without branch out from nvme core module
    (Christoph)

Changes to V1:
  - fabrics commands should also be decoded, not just showing that it's
    a fabrics command. (Christoph)
  - do not make it within nvme admin commands (Chaitanya)

Minwoo Im (5):
  nvme: Make trace common for host and target both
  nvme-trace: Support tracing fabrics commands from host-side
  nvme: Introduce nvme_is_fabrics to check fabrics cmd
  nvme-trace: Add tracing for req_init in target
  nvme-trace: Add tracing for req_comp in target

 MAINTAINERS                       |   2 +
 drivers/nvme/Makefile             |   3 +
 drivers/nvme/host/Makefile        |   1 -
 drivers/nvme/host/core.c          |   3 +-
 drivers/nvme/host/fabrics.c       |   2 +-
 drivers/nvme/host/pci.c           |   2 +-
 drivers/nvme/target/core.c        |   8 +-
 drivers/nvme/target/fabrics-cmd.c |   2 +-
 drivers/nvme/target/fc.c          |   2 +-
 drivers/nvme/target/nvmet.h       |   9 ++
 drivers/nvme/{host => }/trace.c   |  75 +++++++++++++++
 drivers/nvme/{host => }/trace.h   | 154 +++++++++++++++++++++++++-----
 include/linux/nvme.h              |   7 +-
 13 files changed, 237 insertions(+), 33 deletions(-)
 rename drivers/nvme/{host => }/trace.c (65%)
 rename drivers/nvme/{host => }/trace.h (57%)

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
