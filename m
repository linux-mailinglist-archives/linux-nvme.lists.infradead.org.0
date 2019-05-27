Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654342B999
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 19:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nbitt0HXHwpyc15Z3AB5B/rYVUdIh5yzGkbzw0W8QGo=; b=ORhWx5bysdVEuk
	91Uf+iheQvqbUV71m3+r+z7wzUNmsUr+ib4Z06kJx+fIvdS6YQ1ISKsl/YCp9EwnpKYXvHWhVdqHW
	GFm/cOTGSdZhrPPBUSHCUhjgXK4ikd/YUbcgpWYQ/F4tum7gXC/PQDO7YNcSMgBVzrTgglpXK25x9
	N0buEGPDemQ7NsXTlGByMELl9YXuxNW6NCWncNr4Niuak9NE1/IBiNsjZwpYLBGeT5yL8f37z6vSl
	9pZkvPxGBRr6J2Gq+WTnY7hlol2K/vLjhBcM8pMzThYERkXSdfOgu46MJyH68yuFZ3zAvIxCGpLNI
	sKtjjiqm4qEPoF1ULCMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJp4-0003YG-JP; Mon, 27 May 2019 17:54:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJoy-0003Xt-Hj
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 17:54:05 +0000
Received: by mail-pf1-x441.google.com with SMTP id y11so5073586pfm.13
 for <linux-nvme@lists.infradead.org>; Mon, 27 May 2019 10:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cmVgwEm6h8DhRPhXKcSIJJHG9JD24F8fx2hZaKTYpiU=;
 b=id/MCQJPQBPhTNHeUseKrhd+XVWnxRFaFXokGfIQOSV2PovxZbsXcn0WYTLe0cDohU
 qh40oc2IOxxLHPiUDBNGY9M4/+m3h4Vh6YepgpJQzlETdovvoV9CnFX+NY/0DBZLytDe
 MoHX4mxb9gTzC3KLSmio+nZ8Plw1ZQnmRaaBzQBNKz4UYt0lpnhdlpM5zJ5KoPlzYzpy
 X7nBV8mzqr79shfduoAQ0SkJvkHCrPqm9c/e52u0743OYjMuvMAhr80I9Q6ZtiQaCrJa
 kgR5oZVAERAuUmWC1MrAlJlto2ykRtryNLsFWh6ktBG3mcVU5ETSCNpkc6wdSAtQ2m19
 RMSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cmVgwEm6h8DhRPhXKcSIJJHG9JD24F8fx2hZaKTYpiU=;
 b=AD3+ZRmdruGw0cKUGx80rchSHVBd5Rdj1+o2GCL4U2kpt/loikBonweaFvW3Ip/kWs
 MlUlV6k+AjDlh88MbRS4mY7NueRSRafHb2iEjmY4zLygqyuPYgtGiK2Zy/mb4FlWGu1I
 KbCrbtbD8+DVcBNa9EtQBw4pzDSvuEXHzoDTYFZp1Es3WaJPbf8ELjln0VOaxKBcYC91
 IqGiYJX4bcU0uodEVd0CjwnKOFI/l9zyVq4ef6sC0R091reTu9/t808xSHmTFxAWVhfe
 2Tgk2YbEbjfG7VGNvf/+X1iK0Eps4dtld6/EsxcWldRMweYQLgGiVEWrWpfbkG3qyRJB
 2MLw==
X-Gm-Message-State: APjAAAWZLMWPKleN3GxM0OaGU+vzstd4zp8AJ4avfw2t2ltZE0XYh16D
 S6fvTEX6UWeOQj0gWUGBzdexOk7JxgQ=
X-Google-Smtp-Source: APXvYqxwcvjIWxR0D2rRmU7m45tZs/J6JGOYKoJj2GLr6HHDGlo8ODQbSYqomIq912OFWmOwKkL0Dg==
X-Received: by 2002:a63:5c45:: with SMTP id n5mr84021747pgm.172.1558979643326; 
 Mon, 27 May 2019 10:54:03 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z4sm12608936pfa.142.2019.05.27.10.54.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 10:54:02 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH V4 0/5] nvme-trace: Add support for fabrics command
Date: Tue, 28 May 2019 02:53:41 +0900
Message-Id: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_105404_607335_10B0CD77 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

Here's a fourth patchset to support fabrics command tracing.  The first
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
