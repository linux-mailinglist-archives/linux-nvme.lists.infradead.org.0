Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4978912E383
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Jan 2020 08:54:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RRy/33uFtAEQM4Pwbraah3gw9HxQoYmqdFVHVlXtc+s=; b=PUQjEnQEt7yDLV
	Dw11U1JLl40rVD6GY4/S/SLXi+PbfW8WDGctQo8iMomuO7rxI3XZhRPLDPNZ+fZYojFDCK6yqadN6
	sgd9qx2jfdYPz9VV/QGmTdfG7oS4jUX96uZfvAIExnYQaSVJ03dxJJF4lb1RB6RAL8H74Ctm2STZu
	VbdCoWeEJCo23ktT+Eb7ZJkitYZVakwN9yXQ6PARIYlFbga5Qk7hqPIe4sAIvxIzlm7ip5B4nZLeT
	xmGYDAR39mnHsZvDxP4XycLtGimOTTit9RAuEvGTYQU7TkOAfTzPcElTdkSVBsoQw1M8N6QIztADg
	KxLbkbGxe+Zqz4zhJtPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imvJU-0002O9-SM; Thu, 02 Jan 2020 07:54:36 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imvIY-0001dc-6J
 for linux-nvme@lists.infradead.org; Thu, 02 Jan 2020 07:53:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1577951618; x=1609487618;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=PVg07FoUIijqCDgNCxD6SqGn7u8VxPLR6RUrEx5u2Xs=;
 b=qI6B1LDvPxpXy1qx7HpyUUypFagkvaPwBxlGAefbRJSqlWLBkSIbAT8X
 WtgyinN2LCN9j6jAke4nmNdHO9ShJWuy4QDfgkbXraVHfBFNK0oiHAQBp
 vyN5tyOMJKc8nl4ibdwXIuMG5i/2L0P43cy197PxJEkAxE07Qn5V6jgoq E=;
IronPort-SDR: Q8h005rSzjI1pkx7eTWj8InTdlJl4q+w4jgOi5elBCR2/fK7u77rpRkaQyTWfDNiEVbVkVRzrV
 rNnJKZ4HaWXw==
X-IronPort-AV: E=Sophos;i="5.69,385,1571702400"; d="scan'208";a="16411671"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1d-474bcd9f.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 02 Jan 2020 07:53:21 +0000
Received: from EX13MTAUWA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1d-474bcd9f.us-east-1.amazon.com (Postfix) with ESMTPS
 id 65A71A1ED5; Thu,  2 Jan 2020 07:53:19 +0000 (UTC)
Received: from EX13D01UWA003.ant.amazon.com (10.43.160.107) by
 EX13MTAUWA001.ant.amazon.com (10.43.160.58) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 2 Jan 2020 07:53:18 +0000
Received: from EX13MTAUEA001.ant.amazon.com (10.43.61.82) by
 EX13d01UWA003.ant.amazon.com (10.43.160.107) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Thu, 2 Jan 2020 07:53:17 +0000
Received: from localhost (172.23.204.141) by mail-relay.amazon.com
 (10.43.61.243) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Thu, 2 Jan 2020 07:53:16 +0000
From: Balbir Singh <sblbir@amazon.com>
To: <linux-kernel@vger.kernel.org>, <linux-block@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>
Subject: [resend v1 0/5] Add support for block disk resize notification
Date: Thu, 2 Jan 2020 07:53:10 +0000
Message-ID: <20200102075315.22652-1-sblbir@amazon.com>
X-Mailer: git-send-email 2.16.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_235338_282851_43BE0475 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.9 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: axboe@kernel.dk, Chaitanya.Kulkarni@wdc.com, mst@redhat.com,
 jejb@linux.ibm.com, ssomesh@amazon.com, Balbir Singh <sblbir@amazon.com>,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Allow block/genhd to notify user space about disk size changes
using a new helper disk_set_capacity(), which is a wrapper on top
of set_capacity(). disk_set_capacity() will only notify if
the current capacity or the target capacity is not zero.

Background:

As a part of a patch to allow sending the RESIZE event on disk capacity
change, Christoph (hch@lst.de) requested that the patch be made generic
and the hacks for virtio block and xen block devices be removed and
merged via a generic helper.

This series consists of 5 changes. The first one adds the basic
support for changing the size and notifying. The follow up patches
are per block subsystem changes. Other block drivers can add their
changes as necessary on top of this series.

Testing:
1. I did some basic testing with an NVME device, by resizing it in
the backend and ensured that udevd received the event.

NOTE: After these changes, the notification might happen before
revalidate disk, where as it occured later before.

Balbir Singh (5):
  block/genhd: Notify udev about capacity change
  drivers/block/virtio_blk.c: Convert to use disk_set_capacity
  drivers/block/xen-blkfront.c: Convert to use disk_set_capacity
  drivers/nvme/host/core.c: Convert to use disk_set_capacity
  drivers/scsi/sd.c: Convert to use disk_set_capacity

 block/genhd.c                | 19 +++++++++++++++++++
 drivers/block/virtio_blk.c   |  4 +---
 drivers/block/xen-blkfront.c |  5 +----
 drivers/nvme/host/core.c     |  2 +-
 drivers/scsi/sd.c            |  2 +-
 include/linux/genhd.h        |  1 +
 6 files changed, 24 insertions(+), 9 deletions(-)

-- 
2.16.5


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
