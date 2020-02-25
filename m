Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415F616EF94
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Feb 2020 21:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=55YnFKvCgWiKj2Oyojs6f2GAF5EvyjbfMLZrrsY3f+0=; b=RO3kz2j1M4t0ym
	Cb1u+hmW8OR2iVEd2QeJCEzagbiswenD8lutHEjtNpLKWyZblt9v0NSFMqJEDS3JV/Y1xxcjXcpAf
	2T+e3buglVjyMr0tLFctUT2Zl2gCorfC+nv4aYCizNWq6JR5guJKsVo85vNEkQEN+/24vUhSnEDJi
	a/EN2g0eIgc7N+09G7BipcNnBUU5wpfKq7rUDBg8GTn4jqBicpOPuwuwM/ciEp2/UZcofp0yGmFNT
	RWd1t63CVoP7ucKTKLQEU7l11w+5sVv38kWd07QR7c1UeIG5EsKDfBa2Ip1XcVQHMEgGKU0JTDRPq
	TSeYBIxkjBdHPCiOkVpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6gPH-0003N5-0Z; Tue, 25 Feb 2020 20:02:15 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6gP1-0003Dw-2t
 for linux-nvme@lists.infradead.org; Tue, 25 Feb 2020 20:02:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1582660919; x=1614196919;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=MiZmJA9pUK0ijDarkYLGiDBqwKVr4yTOHuXUxcsXrBg=;
 b=Ce1FE4hX93+ZbpfUbEC/KiVD7gwVRJdBLa3Ga7XQUBliUxsliPISOPJp
 SA1fOLc/rj4Ahn27KZBqWcEJ2juLnbAxLSX+qwwFJKdPzfftvLGWBg34/
 jHWq+n5YU1tsxyKjePHEBF6wOts2Kyb8dbsh4qwhyiare7t0casPjh/kU c=;
IronPort-SDR: sN/t/WJn64u0lZCt/DO/e1weHM2PLgt2TP5iya85xnAuukMZpJzpojl5JPgQLB/IleWexU2A2q
 KP+DmoyZ55sA==
X-IronPort-AV: E=Sophos;i="5.70,485,1574121600"; d="scan'208";a="18550457"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-821c648d.us-east-1.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 25 Feb 2020 20:01:45 +0000
Received: from EX13MTAUWA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1a-821c648d.us-east-1.amazon.com (Postfix) with ESMTPS
 id DB45EA18EF; Tue, 25 Feb 2020 20:01:42 +0000 (UTC)
Received: from EX13D01UWA002.ant.amazon.com (10.43.160.74) by
 EX13MTAUWA001.ant.amazon.com (10.43.160.58) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 25 Feb 2020 20:01:41 +0000
Received: from EX13MTAUWC001.ant.amazon.com (10.43.162.135) by
 EX13d01UWA002.ant.amazon.com (10.43.160.74) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Tue, 25 Feb 2020 20:01:41 +0000
Received: from localhost (10.2.75.237) by mail-relay.amazon.com
 (10.43.162.232) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Tue, 25 Feb 2020 20:01:41 +0000
From: Balbir Singh <sblbir@amazon.com>
To: <linux-kernel@vger.kernel.org>, <linux-block@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>
Subject: [PATCH v2 0/5] Add support for block disk resize notification
Date: Tue, 25 Feb 2020 20:01:24 +0000
Message-ID: <20200225200129.6687-1-sblbir@amazon.com>
X-Mailer: git-send-email 2.16.6
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_120159_406113_E9AF570E 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [72.21.198.25 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 jejb@linux.ibm.com, Balbir Singh <sblbir@amazon.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Allow block/genhd to notify user space about disk size changes using a
new helper set_capacity_revalidate_and_notify(), which is a wrapper
on top of set_capacity(). set_capacity_revalidate_and_notify() will only notify
iff the current capacity or the target capacity is not zero and the
capacity really changes.

Background:

As a part of a patch to allow sending the RESIZE event on disk capacity
change, Christoph (hch@lst.de) requested that the patch be made generic
and the hacks for virtio block and xen block devices be removed and
merged via a generic helper.

This series consists of 5 changes. The first one adds the basic
support for changing the size and notifying. The follow up patches
are per block subsystem changes. Other block drivers can add their
changes as necessary on top of this series. Since not all devices
are resizable, the default was to add a new API and let users
slowly convert over as needed.

Testing:
1. I did some basic testing with an NVME device, by resizing it in
the backend and ensured that udevd received the event.


Changelog v2:
- Rename disk_set_capacity to set_capacity_revalidate_and_notify
- set_capacity_revalidate_and_notify can call revalidate disk
  if needed, a new bool parameter is passed (suggested by Bob Liu)

Balbir Singh (5):
  block/genhd: Notify udev about capacity change
  drivers/block/virtio_blk.c: Convert to use
    set_capacity_revalidate_and_notify
  drivers/block/xen-blkfront.c: Convert to use
    set_capacity_revalidate_and_notify
  drivers/nvme/host/core.c: Convert to use
    set_capacity_revalidate_and_notify
  drivers/scsi/sd.c: Convert to use set_capacity_revalidate_and_notify

 block/genhd.c                | 24 ++++++++++++++++++++++++
 drivers/block/virtio_blk.c   |  5 +----
 drivers/block/xen-blkfront.c |  6 +-----
 drivers/nvme/host/core.c     |  2 +-
 drivers/scsi/sd.c            |  3 ++-
 include/linux/genhd.h        |  2 ++
 6 files changed, 31 insertions(+), 11 deletions(-)

-- 
2.16.6


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
