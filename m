Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5C1115E2
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 10:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wzHge3iN++RDmJLZYRncKl8wVAng/kK2xqGr1DQu+2M=; b=tcA
	X/U3AEqkTRpi7djOab2LVvFXv+N9W7ut4oaXGIbvjLp33Crw/zuZwehhLvxqh33ZZA2bw70GvfhAb
	FXNiFaOQVfA6VV56sps+9ngAiHBbbuQd4nX9ZaQowTJ3EU8EBNlnGhe+W7CjeCqj/T6/om5QYP/rD
	wgGjd11XXDo07AGRsCnROCgcJin8ITqkBwTtPIkYxFMDEAczOdP0ffsXU95hTm9js7SRhv4VyCm/o
	4pWRZH74TMx5Bqy/i4tDd6XEZSofTBqTL6ZSoTuqNopBKYlZ+uehCcKJWUBIAWwIGsZb/91w8nikb
	0zI77Qv4258Ug5kHQChf5XDnvFyv52w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7Z8-0004N8-3R; Thu, 02 May 2019 08:59:42 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7Z3-0004MB-8c
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 08:59:38 +0000
Received: by mail-pl1-x642.google.com with SMTP id n8so711423plp.10
 for <linux-nvme@lists.infradead.org>; Thu, 02 May 2019 01:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=nR2hjJ7UdjaiCokIC7QFZTHdxkSdbYuSlKgyi1UOJCc=;
 b=FnuyaiZMo6zoeUzdXDAHbFFLF00XiKpUHFgqrqvQehNz3iMJgPm/q/ku3A+M+AqYtW
 YIXUfXzGJhU9zGQVsLZIU/h2BiWsH6o33gQLZBqOnbHR4ZEpcgcF/rGxEXcnDBV1zE40
 TeGX/L/peWegooaY8tXN45iGg4Pm53yNeUjL8CuwNZK+Nn52TWWPN6Ks770WFgqJSZNl
 Hv6ueikGZB+0E7k9I6js7oKP8o0pkBQHxD4rWWigT+cwXxVvqXkUVdKN7nHqiEaSgNV4
 80KPtejo0AmGUj9M2rz3AYdog0XN8qmSCL1LntJ8yvhIUNKm3zR4U7T0JkC1ywdxBx8n
 g28Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nR2hjJ7UdjaiCokIC7QFZTHdxkSdbYuSlKgyi1UOJCc=;
 b=CGLYuBJowac72L/KU1TirPMrrXG4LkSMiJfDjXKVxfhFvdB9R0AJqfRoh6/0wHY119
 sqqSa4yNuW2xXfSmVCaeAhhleDpFw17GstsCneirvuTLTtBcu61S3o2hu9Qf4L1zkSO2
 xSryJ5guBw2C//A2x3d6Tcrb0gtjoiYGYnWmxTCFyUzJ2km5BdRV77p0Brkns2oEf3IW
 RBK3PRDDJF0n2kiICeRDbMPl/yYFIZ5Sgm5EkH3MWrZsArcJoVqkfM3vLJLtj5BKDybe
 kMwe1cChcEtmvQKFkf2DHE1l2Ib8zYqrSySMQioq+PYFwuWnCqKuhIoWTj6xYSikXRqI
 NMig==
X-Gm-Message-State: APjAAAXEJehqFwzYNxKjeOYG/O2QewTDJSJI+owRky0ZD/v4wLwZGa97
 pIaqkB8cnjcyKFY83l/gKn5jmn2e
X-Google-Smtp-Source: APXvYqw/eKFMGVDywRH6P7JDlpGAmL+cFlDS5um4/QOt8InsWmPm8XB9kvyKPJIyUDAGMK5wT1Bw3A==
X-Received: by 2002:a17:902:294b:: with SMTP id
 g69mr2491883plb.57.1556787576324; 
 Thu, 02 May 2019 01:59:36 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id z7sm74960831pgh.81.2019.05.02.01.59.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 02 May 2019 01:59:35 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] nvme-pci: support device coredump
Date: Thu,  2 May 2019 17:59:17 +0900
Message-Id: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_015937_323224_96D57E34 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This enables to capture snapshot of controller information via device
coredump machanism, and it helps diagnose and debug issues.

The nvme device coredump is triggered before resetting the controller
caused by I/O timeout, and creates the following coredump files.

- regs: NVMe controller registers, including each I/O queue doorbell
        registers, in nvme-show-regs style text format.

- sq<qid>: I/O submission queue

- cq<qid>: I/O completion queue

The device coredump mechanism currently allows drivers to create only a
single coredump file, so this also provides a new function that allows
drivers to create several device coredump files in one crashed device.

Akinobu Mita (4):
  devcoredump: use memory_read_from_buffer
  devcoredump: allow to create several coredump files in one device
  nvme-pci: add device coredump support
  nvme-pci: trigger device coredump before resetting controller

 drivers/base/devcoredump.c  | 173 +++++++++++++++++++-----------
 drivers/nvme/host/Kconfig   |   1 +
 drivers/nvme/host/pci.c     | 252 +++++++++++++++++++++++++++++++++++++++++---
 include/linux/devcoredump.h |  33 ++++++
 4 files changed, 387 insertions(+), 72 deletions(-)

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
