Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB6C1ACDA
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HD/78OpWNf/GRj0mIj64VFzSVAUSGDmSLsIK8lbYyyc=; b=pn0
	62vuVtNHvv8/PEgkVQmbh9hHuhPlP6hgLQTMYbaeMZvtDjvSQfXZ7wtPuo2ZW8onHgDNXVe4F6k1t
	jfQOtObAQ+hyWysDbcETTje6UiqTgeCqhUdOtc515wQ8gItbjs1rX4SWYKtRgGDhvq96Z94U5ZkwA
	5R1sAUgdU/CYbsnlK+jEf82HefAER6oXRRbpg1C4JLElzn+BGU9wdyliwuT5Z9Enahj3HEcdyb049
	BeCw2t0krLEYhjKkzeckZHJH8Sn15w6UMsiCzj4jilElWrDvlEIxifhhXaGe6c9dcgf5siqfEr50P
	pcO6P9qEmV+Gfz1vNojo4cC/co940nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqoH-0000Ar-9W; Sun, 12 May 2019 15:54:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqoB-0000AB-70
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:54:40 +0000
Received: by mail-pf1-x444.google.com with SMTP id y11so5784849pfm.13
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=pp9hsv0U6RxBmNm7s8k4z5FRyT/Bo1Secwg5CSD+HCY=;
 b=qFnAxCk8el7x5LzVJiG7j6Ye5s2U3iuY59le4mkghTmIBcLuHu3dJUbLKdXXnMX77l
 DNHC0OpLZdQXvzWmQxX9bvc7a27ssW6jYKEx/W0IyIMAZDTNnGroevcIUW1NYJ5rIffG
 wBgbkPkkhajuxczSoCJaFNLBmU55SUtjk8xL89MsWBoTVWFqUZ45Dd51gLPpR9dhdPH7
 l5o/ATm2Et2M9ccM5F8hdejoMnv+O9njMsZygQSCjp3zpzhR4ZY/RU3dkCO2KXs3A4yh
 rxX7v1JFDPKhdFXtZCgv68lokwJYrqnqKI99p4N/rVd04vBnM8xQtL3JhGVGJdvhczS9
 9x4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=pp9hsv0U6RxBmNm7s8k4z5FRyT/Bo1Secwg5CSD+HCY=;
 b=gAfeHvvKxmQmCydzGOsB5gdWsZlTTlFzFMIB6Sn4Zbl5iLtl2lYyL3VJ+lcPv/0XSb
 IVqq+mxZ5ZrwiTwNquG8B78EStYdMe9LIPvTmEn/f/T2PMyJKaTcOLArrfx6yT1ppvtG
 LP+SACr6roihQU7pEwK15xm8z26bZMJUWFr4vZneKDuCX2a3nmU+AJ4hqcgYa7nowgdU
 8EG4qZ27XhAyMENKd+8BwlXp3HuzDtsQA4cU8GozazndBH+NHMIXWzZuRr047Y+5ErlN
 cuPkal/nRsnNaR6dYspSNFG2G1rTeR9TEeKoekWSpcLU2Xykt49BS/vX2BsY7HN+lFuu
 8Dyw==
X-Gm-Message-State: APjAAAXMI1o85R0nWS2bzW+UNbnxRDtFQR2LEiQY+KRhO9zhf9OAOwho
 SzytTf6Uk+RXrHQST2YcbOmt2rpl
X-Google-Smtp-Source: APXvYqxzfSK06s8Yc7onC8DkGnV7+VC7NSTngBHEbeYYr6A16YGtkImyzFj7kdIZJi+PM99pWWYoEQ==
X-Received: by 2002:a65:62c3:: with SMTP id m3mr26367134pgv.159.1557676478249; 
 Sun, 12 May 2019 08:54:38 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:918e:f7e4:1728:3f45])
 by smtp.gmail.com with ESMTPSA id v2sm4470058pgr.2.2019.05.12.08.54.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 12 May 2019 08:54:36 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/7] nvme-pci: support device coredump
Date: Mon, 13 May 2019 00:54:10 +0900
Message-Id: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_085439_281265_D39F1BD2 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This enables to collect snapshot of controller information via device
coredump mechanism.  The nvme device coredump is triggered when command
timeout occurs, and can also be triggered by writing sysfs attribute.

After finishing the nvme device coredump, the following files are created.

 - regs: NVMe controller registers (00h to 4Fh)
 - sq<qid>: Submission queue
 - cq<qid>: Completion queue
 - telemetry-ctrl-log: Telemetry controller-initiated log (if available)
 - data: Empty

The device coredump mechanism currently allows drivers to create only a
single coredump file, so this also provides a new function that allows
drivers to create several device coredump files in one crashed device.

* v3
- Merge 'add telemetry log page definisions' patch and 'add facility to
  check log page attributes' patch
- Copy struct nvme_telemetry_log_page_hdr from the latest nvme-cli
- Add BUILD_BUG_ON for the size of struct nvme_telemetry_log_page_hdr
- Fix typo s/machanism/mechanism/ in commit log
- Fix max transfer size calculation for get log page
- Add function comments
- Extract 'enable to trigger device coredump by hand' patch
- Don't try to get telemetry log when admin queue is not available
- Avoid deadlock in .coredump callback

* v2
- Add Reviewed-by tag.
- Add patch to fix typo in comment
- Remove unneeded braces.
- Allocate device_entry followed by an array of devcd_file elements.
- Add telemetry log page definisions
- Add facility to check log page attributes
- Exclude the doorbell registers from register dump.
- Save controller registers in a binary format instead of a text format.
- Create an empty 'data' file in the device coredump.
- Save telemetry controller-initiated log if available
- Make coredump procedure into two phases (before resetting controller and
  after resetting as soon as admin queue is available).

Akinobu Mita (7):
  devcoredump: use memory_read_from_buffer
  devcoredump: fix typo in comment
  devcoredump: allow to create several coredump files in one device
  nvme: add basic facility to get telemetry log page
  nvme-pci: add device coredump infrastructure
  nvme-pci: trigger device coredump on command timeout
  nvme-pci: enable to trigger device coredump by hand

 drivers/base/devcoredump.c  | 168 +++++++++------
 drivers/nvme/host/Kconfig   |   1 +
 drivers/nvme/host/core.c    |   3 +
 drivers/nvme/host/nvme.h    |   1 +
 drivers/nvme/host/pci.c     | 494 ++++++++++++++++++++++++++++++++++++++++++--
 include/linux/devcoredump.h |  33 +++
 include/linux/nvme.h        |  17 ++
 7 files changed, 644 insertions(+), 73 deletions(-)

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
