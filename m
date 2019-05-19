Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 205CF2270B
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 17:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dXVHndlcs0AnUCER55pd9FK26fkz0x2C/NCp4PBiuis=; b=o+L
	rp/+HKBY0ort552iPsmzkAHElM+lF9a+5B2aS5GU07BGItCsopeZp0F0iThWjuY4c6s8ZfJ7kxG+F
	Hzsu/Mlb05FDaIFUjXSWaqglps9hE8q+YCRJ/6/8yRrq5iqNoxU5Ui8Utd5YHt+4x61ALL0/wLj7G
	M28RUdWKHkCMGBgMBGuPzySBxhz+36ekQQgIEGY6LRVoVp0IuitUAEKA/NCzzyv/TGyj1q4fudPLV
	qIog+dCuWQrH25iyDRxpq9uNvNJGArv2/Qh156wSHqgdB4jBxLcKguW21Duj4VU59VcB0TWp/ZkJh
	MAK/R64rX3Z2g84jP9CKDV+WZE0jrYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSNPH-0004hB-Q6; Sun, 19 May 2019 15:07:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSNPA-0004gO-Lm
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 15:07:18 +0000
Received: by mail-pl1-x642.google.com with SMTP id f12so5517074plt.8
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 08:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7U4GWlu3NhNM+H5m0c8v1GRLQbRyHo7s1euACcIsXE0=;
 b=hZ2jJ1lV41sUooh+QYN+pA+yjuoXiY4VHfZYxskGzaKOZWy5Hw1p68M40Y6IB0E7PN
 c1JJmnhOQ/bS2iqdMwdNSbNd3dF7sv9qdvZ60VgXvxQzqKET3bT9IEsI9AlGelCvIdwc
 FwTyMi+7VtJNS4CBAY9fuIAESaBJOfW3mXLXM+exlywXR3DbxUdlRCjGrGP1cse3W8OJ
 zgjuS0BfZkTC58mdJJDxxa6Y2WzWXZQQANIcTA0hlshoz02yScOS6CKxbedXg8BeIwB3
 d5rEtDwouKwJXxsyYa8b/JSTsVdk1c25ACqkMd6JGS4LSGni7rzBChpOh93kAyAP4kOK
 4NqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7U4GWlu3NhNM+H5m0c8v1GRLQbRyHo7s1euACcIsXE0=;
 b=QWg/r7XWXdJxxwStU8aE8OGZSf4JH9XZPK2aCUy0rsD/ruxy2hlJWV/YErn7+YcTpX
 ImTBkTADDiNQKQnznkVEEJno6QLSwogPxJGfW0kkKLF8DiuBvW0h/M9HFQ6zN1uSSu54
 d1tk0+vmH5i0GhejBeFO2kX3iT1LgPeJ/ewf+i44CuTvpbbZfdGEn4HU8VfNrV5u6nA+
 fw1ETjveNBEd6hCXEYOYWiSdOpKjMxx0IFVf76Px5gUvvmyJEVdB+/kue8bdSqnoJlSV
 LPOFuZZMiHayCyola93Ym9tQG0G9aGLCh5jfqvjYBtNkPOJo1waipwTiiLWn9DfcdjF+
 45eA==
X-Gm-Message-State: APjAAAX8jkuzOuZIBgX6cJY71zUd2WHYhXUSPd+Wc7njIgLun89s5IP7
 qCA1sDduN1B46afLADcPdWnkj6R0
X-Google-Smtp-Source: APXvYqyayPBWTYNdQszcQhIMFK+aS0ZvpndSym28CO3lemv+V5G3d3inoDU6heKFHo+0JAyJ5HeyNQ==
X-Received: by 2002:a17:902:108a:: with SMTP id
 c10mr70960833pla.48.1558278435099; 
 Sun, 19 May 2019 08:07:15 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:5085:bb4a:e3a8:fc9d])
 by smtp.gmail.com with ESMTPSA id g17sm2441105pfb.56.2019.05.19.08.07.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 May 2019 08:07:14 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/7] nvme-pci: support device coredump
Date: Mon, 20 May 2019 00:06:51 +0900
Message-Id: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_080716_716108_64C1F6BE 
X-CRM114-Status: GOOD (  15.75  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
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

* v4
- Add Reviewed-by tags
- Add nvme_get_telemetry_log() to nvme core module.
- Copy struct nvme_telemetry_log_page_hdr from the latest nvme-cli
- Use bio_vec instead of sg_table to store telemetry log page
- Make nvme_coredump_logs() return error if the device didn't produce
  a response.
- Abandon the reset if nvme_coredump_logs() returns error code

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
  nvme: add basic facilities to get telemetry log page
  nvme-pci: add device coredump infrastructure
  nvme-pci: trigger device coredump on command timeout
  nvme-pci: enable to trigger device coredump by hand

 drivers/base/devcoredump.c  | 168 ++++++++++------
 drivers/nvme/host/Kconfig   |   1 +
 drivers/nvme/host/core.c    |  59 ++++++
 drivers/nvme/host/nvme.h    |   3 +
 drivers/nvme/host/pci.c     | 473 ++++++++++++++++++++++++++++++++++++++++++--
 include/linux/devcoredump.h |  33 ++++
 include/linux/nvme.h        |  32 +++
 7 files changed, 696 insertions(+), 73 deletions(-)

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
