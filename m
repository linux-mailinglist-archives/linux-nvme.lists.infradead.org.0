Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7069A0D11
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 23:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w+P/vwQ9oAjqlxZBUVQE0N+X7GzKlHd0bgEZDJ2mdkc=; b=rGhlmZC6zJT/qG
	aKUWiYURxlyXRsVxW6TcqnxVuMM9cHOU83s3cb+E8TYTezfHa7W+m+JR+ZjzTeVzgF1qwIFddz4/b
	wipM0c3o9HPP/nGXQ6jkGykppnn5VMUQqYFbv7NbpLC/pP/e3Q1h7wSjgeLjX4utgahiFaRSHj8Gt
	PlOAoPzC6RgdNf24PBMGBySdTDph4HXih24WstpfZVGzgxIemBDnU96LgNRdSIO3g0dXMsHJzNXY4
	sbTsXBspkjgSwcBX+Nh/bKp16P9KatOT/dnkPa0vy8se35waL7wIF7hdvtvr3FLwUY0x/Nxh1oAxY
	w71vi05hswmZw7iTv3LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i35wU-0007hV-FF; Wed, 28 Aug 2019 21:57:26 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i35ts-00037j-QP
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 21:54:47 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1i35tj-00071b-NH; Wed, 28 Aug 2019 15:54:44 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1i35ti-0001Ch-1x; Wed, 28 Aug 2019 15:54:34 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Wed, 28 Aug 2019 15:54:16 -0600
Message-Id: <20190828215429.4572-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org, hch@lst.de,
 sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com, Chaitanya.Kulkarni@wdc.com,
 maxg@mellanox.com, sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.6 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_EXCLUSIVE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH v8 00/13] nvmet: add target passthru commands support
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_145445_304057_90FA171F 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This is v8 of the passthru patchset. This addresses the feedback
so far from v7: allowing multiple connections from hosts but
black-listing all admin commands besides the vendor specific ones.

--

Chaitainya has asked us to take on these patches as we have an
interest in getting them into upstream. To that end, we've done
a large amount of testing, bug fixes and cleanup.

Passthru support for nvmet allows users to export an entire
NVMe controller through NVMe-oF. When exported in this way (as opposed
to exporting each namespace as a block device), all the NVMe commands
are passed to the given controller unmodified, including most admin
commands and Vendor Unique Commands (VUCs). A passthru target will
expose all namespaces for a given device to the remote host.

There are three major non-bugfix changes that we've done to the series:

1) Instead of using a seperate special passthru subsystem in
   configfs simply add a passthru directory that's analogous to
   the existing namespace directories. The directories have
   very similar attributes to namespaces but are mutually exclusive.
   If a user enables a namespaces, they can't then enable
   passthru controller and vice versa. This simplifies the code
   required to implement passthru configfs and IMO creates a much
   clearer and uniform interface.

2) Instead of taking a bare controller name (ie. "nvme1"), take a
   full device path to the controller's char device. This is more
   consistent with the regular namespaces which take a path and
   also allows users to make use of udev rules and symlinks to
   manage their controllers instead of the potentially unstable
   device names.

3) Implement block accounting for the passthru devices. This is so
   the target OS can still track device usage using /proc/diskstats.

Besides these three changes, we've also found a large number of bugs
and crashes and did a bunch of testing with KASAN, lockdep and kmemleak.
A more complete list of changes is given below.

Additionally, we've written some new blktests to test the passthru
code. A branch is available here[1] and can be submitted once these
patches are upstream.

These patches are based off of v5.3-rc1 and a git branch is available
at [2].

Thanks,

Logan

[1] https://github.com/Eideticom/blktests nvmet_passthru
[2] https://github.com/sbates130272/linux-p2pmem/ nvmet_passthru_v8

--

v8 Changes:
  1. Rebased onto v5.3-rc6
  2. Collected Max's Reviewed-By tags
  3. Converted admin command black-list to a white-list, but
     allow all vendor specific commands. With this, we feel
     it's safe to allow multiple connections from hosts.
     (As per Sagi's feedback)

v7 Changes:
  1. Rebased onto v5.3-rc2
  2. Rework nvme_ctrl_get_by_path() to use filp_open() instead of
     the cdev changes that were in v6. (Per Al)
  3. Override the cmic bit to allow multipath and allow
     multiple connections from the same hostnqn. (At the same
     time I cleaned up the method of rejecting multiple connections.)
     See Patch 8)
  4. Found a bug when used with the tcp transport (See Patch 10)

v6 Changes:
  1. Rebased onto v5.3-rc1
  2. Rework configfs interface to simply be a passthru directory
     within the existing subsystem. The directory is similar to
     and consistent with a namespace directory.
  3. Have the configfs take a path instead of a bare controller name
  4. Renamed the main passthru file to io-cmd-passthru.c for consistency
     with the file and block-dev methods.
  5. Cleaned up all the CONFIG_NVME_TARGET_PASSTHRU usage to remove
     all the inline #ifdefs
  6. Restructured nvmet_passthru_make_request() a bit for clearer code
  7. Moved nvme_find_get_ns() call into nvmet_passthru_execute_cmd()
     seeing calling it in nvmet_req_init() causes a lockdep warning
     due to nvme_find_get_ns() being able to sleep.
  8. Added a check in nvmet_passthru_execute_cmd() to ensure we don't
     violate queue_max_segments or queue_max_hw_sectors and overrode
     mdts to ensure hosts don't intentionally submit commands
     that will exceed these limits.
  9. Reworked the code which ensures there's only one subsystem per
     passthru controller to use an xarray instead of a list as this is
     simpler and more easily fixed some bugs triggered by disabling
     subsystems that weren't enabled.
 10. Removed the overide of the target cntlid with the passthru cntlid;
     this seemed like a really bad idea especially in the presence of
     mixed systems as you could end up with two ctrlrs with the same
     cntlid. For now, commands that depend on cntlid are black listed.
 11. Implement block accounting for passthru so the target can track
     usage using /proc/diskstats
 12. A number of other minor bug fixes and cleanups

v5 Changes (not sent to list, from Chaitanya):
  1. Added workqueue for admin commands.
  2. Added kconfig option for the pass-thru feature.
  3. Restructure the parsing code according to your suggestion,
     call nvmet_xxx_parse_cmd() from nvmet_passthru_parse_cmd().
  4. Use pass-thru instead of pt.
  5. Several cleanups and add comments at the appropriate locations.
  6. Minimize the code for checking pass-thru ns across all the subsystems.
  7. Removed the delays in the ns related admin commands since I was
     not able to reproduce the previous bug.

v4 Changes:
  1. Add request polling interface to the block layer.
  2. Use request polling interface in the NVMEoF target passthru code
     path.
  3. Add checks suggested by Sagi for creating one target ctrl per
     passthru ctrl.
  4. Don't enable the namespace if it belongs to the configured passthru
     ctrl.
  5. Adjust the code latest kernel.

v3 Changes:
  1. Split the addition of passthru command handlers and integration
     into two different patches since we add guards to create one target
     controller per passthru controller. This way it will be easier to
     review the code.
  2. Adjust the code for 4.18.

v2 Changes:
  1. Update the new nvme core controller find API naming and
     changed the string comparison of the ctrl.
  2. Get rid of the newly added #defines for target ctrl values.
  3. Use the newly added structure members in the same patch where
     they are used. Aggregate the passthru command handling support
     and integration with nvmet-core into one patch.
  4. Introduce global NVMe Target subsystem list for connected and
     not connected subsystems on the target side.
  5. Add check when configuring the target ns and target
     passthru ctrl to allow only one target controller to be created
     for one passthru subsystem.
  6. Use the passthru ctrl cntlid when creating the
     target controller.

--

Chaitanya Kulkarni (5):
  nvme-core: export existing ctrl and ns interfaces
  nvmet: add return value to  nvmet_add_async_event()
  nvmet-passthru: update KConfig with config passthru option
  nvmet-passthru: add passthru code to process commands
  nvmet-core: don't check the data len for pt-ctrl

Logan Gunthorpe (8):
  nvme-core: introduce nvme_ctrl_get_by_path()
  nvmet: make nvmet_copy_ns_identifier() non-static
  nvmet-passthru: add enable/disable helpers
  nvmet-tcp: don't check data_len in nvmet_tcp_map_data()
  nvmet-configfs: introduce passthru configfs interface
  block: don't check blk_rq_is_passthrough() in blk_do_io_stat()
  block: call blk_account_io_start() in blk_execute_rq_nowait()
  nvmet-passthru: support block accounting

 block/blk-exec.c                      |   2 +
 block/blk-mq.c                        |   2 +-
 block/blk.h                           |   5 +-
 drivers/nvme/host/core.c              |  41 +-
 drivers/nvme/host/nvme.h              |   9 +
 drivers/nvme/target/Kconfig           |  10 +
 drivers/nvme/target/Makefile          |   1 +
 drivers/nvme/target/admin-cmd.c       |   4 +-
 drivers/nvme/target/configfs.c        |  99 ++++
 drivers/nvme/target/core.c            |  36 +-
 drivers/nvme/target/io-cmd-passthru.c | 644 ++++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h           |  61 ++-
 drivers/nvme/target/tcp.c             |   2 +-
 include/linux/nvme.h                  |   1 +
 14 files changed, 899 insertions(+), 18 deletions(-)
 create mode 100644 drivers/nvme/target/io-cmd-passthru.c

--
2.20.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
