Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1931688D
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 18:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=v+PsCk/HCe8OGMBuYQN1t8TsN6L/ktNpZfQ2GvL4+Y4=; b=iFK
	7mwVquQl080pNPuXJknak80LaVdnTsySm4kaY/SuyxeYZUOxFn5905THdpezuZRDAc+zUXgBVuf9f
	nSrOMqVWMVipcC2iei/CPHHSRu+D108a2JGwMPx2puE1mG6d3SbqriinC2dZiC4kmnt5WjSQuRO57
	0bGH8BCwkhHDWKj9cGLn/cVSxpI6sDFccq+GglxZxSuWHLwhvqficNQ2MWhAl0eLjLxzW7BPvomeV
	vwEiCAS8rUQod4YEv6Nd6So3Sse37EHBI4b0FgtY/Etia3YIXbzVhsl8Q+WtJO9cUoqe3i2mzYYz0
	T3A7sRGKVflVBVBjhtyD5mLyo4I/56g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3Qe-0007JF-RD; Tue, 07 May 2019 16:58:56 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3QY-0007IG-Sp
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 16:58:52 +0000
Received: by mail-pf1-x441.google.com with SMTP id n19so416609pfa.1
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 09:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=F24W/VQdFijjB1XGiNkd+uOp8FfAnZYn7ACk/HniCPU=;
 b=Y3Zmc4Ma29TBsmGOUgwg/jPSIzCpH5JEVkNVRIChv+DGVQRwMrPtv4fU/OV5Zdqg9f
 FcehhvuCbJIP6W7xn1UQf2RtbFurlNLSOfo3waSOoI+iEzAhS4wVBuUDBGw6EE1qs1s9
 npyy0aEHaXXEASHaz9KQnjcDzqfp/6zt7R3RfSmuCrWlT1/jxrf5HKdPj6xkST6pOWeG
 SBc2d/bOIDuYHF0tItNJenK6BszLfEBCVBmMIP0prNNeLj9FBjlKD9wO+j/teKWtt7ko
 4KdClyUwrPURGOmeyinrZyvb1wTKNHdl4XLw5WynCm/dfPtgQ+dLTLXsrGA3xN5D/eaD
 zfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=F24W/VQdFijjB1XGiNkd+uOp8FfAnZYn7ACk/HniCPU=;
 b=EDzjXgQ0MExGmDkq95nNIVfC+xHoCycNFWcf7t+owFnKroybB8S9Q/hqRAIdJI+2B4
 ETfRDhekJZ2FHX5dFIJQmjqeNEgEV3NsMsrDTQQ1HYsMYwyPGpWIuF1m2c+VHT70DIfI
 I/bBNaMSPNQv5NMTH5qBmkNZsbhUpwPWcCWZZ8xp5i7fp1QWQGTLLsutLqnzZGwu7PkZ
 16GI1kl4z81M0kuFLwpCjWPb9VC+R9M8nZhRw2WUob69+Cmfkr2/5oEAqMxvQ5gles+/
 sLJ23qDQAW6x6Wbb2oZK/83C2fngOwA2g5MduYyUHd1mfwPO3rS2R5fggevPz9APYkbN
 eBag==
X-Gm-Message-State: APjAAAXszT1jdYPBOINhg8v3XcKn6vEse+mT906RGG8TCFqjrzfTCMKj
 Dk1T1C9DK5gg2/UbYYdfRjc9UMRD
X-Google-Smtp-Source: APXvYqyIg1w1Fe7zxUiHrffJfT0aPJd66Jea9lk8GVdzXmRZC1nVbx0EGEdiR0579yTPC1RZ60b+LQ==
X-Received: by 2002:a63:fe0a:: with SMTP id p10mr39874187pgh.86.1557248329585; 
 Tue, 07 May 2019 09:58:49 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id r12sm18140093pfn.144.2019.05.07.09.58.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 09:58:48 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/7] nvme-pci: support device coredump
Date: Wed,  8 May 2019 01:58:27 +0900
Message-Id: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_095850_956701_4DBB2A42 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This enables to capture snapshot of controller information via device
coredump machanism, and it helps diagnose and debug issues.

The nvme device coredump is triggered when command timeout occurs, and
creates the following coredump files.

 - regs: NVMe controller registers (00h to 4Fh)
 - sq<qid>: Submission queue
 - cq<qid>: Completion queue
 - telemetry-ctrl-log: Telemetry controller-initiated log (if available)
 - data: Empty

(I don't have the NVMe device that supports telemetry log page for now, so
capturing telemetry log is untested.)

The device coredump mechanism currently allows drivers to create only a
single coredump file, so this also provides a new function that allows
drivers to create several device coredump files in one crashed device.

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
  nvme.h: add telemetry log page definisions
  nvme: add facility to check log page attributes
  nvme-pci: add device coredump support
  nvme-pci: trigger device coredump on command timeout

 drivers/base/devcoredump.c  | 168 ++++++++++------
 drivers/nvme/host/Kconfig   |   1 +
 drivers/nvme/host/core.c    |   2 +
 drivers/nvme/host/nvme.h    |   1 +
 drivers/nvme/host/pci.c     | 460 ++++++++++++++++++++++++++++++++++++++++++--
 include/linux/devcoredump.h |  33 ++++
 include/linux/nvme.h        |  25 +++
 7 files changed, 617 insertions(+), 73 deletions(-)

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
