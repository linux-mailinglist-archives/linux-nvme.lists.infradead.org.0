Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2142755B8
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=APUg1hD4QeZWgR2gL7EjfmdNbgMbxHzj0q9zfpAFpFA=; b=Ytn75m/HLVLoTf
	hisAI6K/CEpc1aihvWL5LKuzB7qdOCfg0MHlDwmjK3vLFVp2BCOfq9W/QEZ/iz+JImObA0zG6iXUk
	brB8+ItW4c9uj966/lHV0bxYGe11Y1d0h0+MX9YQhPGG3yKzP8q0Z/129FZhKodbSKlh5zW4kbAFw
	sdur1JVAiKS+p8OCrdRRpP7D15jI52ue/9i+pYPvv9btkdBfW2kwYOtcPMR1kdD5sTjScPgRi1nkG
	x/tmuB0s5ccueFB36OmjLxAsYoIceonlvAfk12gQogIAJ1b2dUyPxtMbuMZPWAs0LJSb0m43KkVch
	egq0TJrCkHSZn5FQL05A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhXU-00078R-9u; Thu, 25 Jul 2019 17:28:24 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhT8-0000IC-PQ
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:24:01 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hqhSv-0001JD-Lp; Thu, 25 Jul 2019 11:23:53 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hqhSu-0001n3-Pk; Thu, 25 Jul 2019 11:23:40 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Thu, 25 Jul 2019 11:23:19 -0600
Message-Id: <20190725172335.6825-1-logang@deltatee.com>
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
Subject: [PATCH v6 00/16] nvmet: add target passthru commands support
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_102354_899463_11709AB0 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
[2] https://github.com/sbates130272/linux-p2pmem/ nvmet_passthru_v6

--

v6 Changes (done by Logan):
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

Chaitanya Kulkarni (6):
  nvme-core: export existing ctrl and ns interfaces
  nvmet: add return value to  nvmet_add_async_event()
  nvmet-passthru: update KConfig with config passthru option
  nvmet-passthru: add passthru code to process commands
  nvmet-core: allow one host per passthru-ctrl
  nvmet-core: don't check the data len for pt-ctrl

Logan Gunthorpe (10):
  chardev: factor out cdev_lookup() helper
  chardev: introduce cdev_get_by_path()
  chardev: export cdev_put()
  nvme-core: introduce nvme_get_by_path()
  nvmet: make nvmet_copy_ns_identifier() non-static
  nvmet-passthru: add enable/disable helpers
  nvmet-configfs: introduce passthru configfs interface
  block: don't check blk_rq_is_passthrough() in blk_do_io_stat()
  block: call blk_account_io_start() in blk_execute_rq_nowait()
  nvmet-passthru: support block accounting

 block/blk-exec.c                      |   2 +
 block/blk-mq.c                        |   2 +-
 block/blk.h                           |   5 +-
 drivers/nvme/host/core.c              |  40 +-
 drivers/nvme/host/nvme.h              |   9 +
 drivers/nvme/target/Kconfig           |  10 +
 drivers/nvme/target/Makefile          |   1 +
 drivers/nvme/target/admin-cmd.c       |   4 +-
 drivers/nvme/target/configfs.c        |  99 ++++
 drivers/nvme/target/core.c            |  41 +-
 drivers/nvme/target/io-cmd-passthru.c | 681 ++++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h           |  71 ++-
 fs/char_dev.c                         |  61 ++-
 include/linux/cdev.h                  |   1 +
 14 files changed, 1003 insertions(+), 24 deletions(-)
 create mode 100644 drivers/nvme/target/io-cmd-passthru.c

--
2.20.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
