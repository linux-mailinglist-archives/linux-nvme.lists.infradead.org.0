Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1511166892
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Feb 2020 21:39:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=74qBzncE66JVnqBN/V3gHoCIb9yVw50qbq7SrghF5CY=; b=hz0vtWTMJUzvGd
	ZW26OeAt36GwNvQ7qpmLqQFAHgqVgm9ZZJKWsBib9YtuTqOq6DyGyJAKAp02EHg/ldhn3o81S0nx7
	aIurpMSEyXDeDE6XKB3rimf/YTS4henTboNwlAkpCgvha+fEY48YqWzEM7hl0vynOXUigZg58+8lA
	KStmy14gNAfnaXuJYkgwPw56lBxmIWYLbPwmUmmywO3K+ANoIqWvkGVTYJ5NjxdSaX7mdU8xBZmIs
	Z6DE8o1yCR9QxHO0nWQ3KN1kIoJI6Uzs/vvgc3pXmwUHPthXrUXyI7V8Vx0P1muRERiUGOugslNNy
	4jDaCYNqj66tCWdu7yug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4say-00028M-7e; Thu, 20 Feb 2020 20:38:52 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4sZD-0000dw-9W
 for linux-nvme@lists.infradead.org; Thu, 20 Feb 2020 20:37:05 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1j4sZ8-0005cN-BQ; Thu, 20 Feb 2020 13:37:02 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1j4sZ7-0006y5-K0; Thu, 20 Feb 2020 13:36:57 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Thu, 20 Feb 2020 13:36:43 -0700
Message-Id: <20200220203652.26734-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com,
 Chaitanya.Kulkarni@wdc.com, maxg@mellanox.com, sbates@raithlin.com,
 logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_NO_TEXT autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH v11 0/9]  nvmet: add target passthru commands support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_123703_431144_7413FBA5 
X-CRM114-Status: GOOD (  24.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This is v11 of the passthru patchset. There was little review for v10
so I'm hoping to get some more review this cycle.

v10 addressed the vast majority of Christoph's feedback from v9.There
were a couple issues that were not addressed discussed below.

I don't think cloning the ctrl_id or the subsysnqn is a good idea.
I sent an email trying to explain why here[1] but there was no response.
In short, I think cloning the ctrl_id will break multipathing over
fabrics and copying the subsysnqn only has the effect of breaking
loopback; the user can always copy the underlying subsysnqn if it
makes sense for their overall system.

I maintain overriding the CMIC bit in the ctrl id is necessary to
allow multipath over fabrics even if the underlying device did
not support multipath.

I also think the black list for admin commands is appropriate, and I
added it based on Sagi's feedback[2]. There are plenty of commands that
may be dangerous like firmware update and format NVM commands, and NS
attach commands won't work out of the box because we don't copy the
ctrl_id. It seems like there's more commands to be careful of than ones
that are that are obviously acceptable. So, I think the prudent course
is blacklisting by default until someone has a usecase and can show
the command is safe seems and makes sense. For our present use cases,
the identify, log page and vendor specific commands are all that we
care about.

A git branch is available here:

https://github.com/sbates130272/linux-p2pmem nvmet_passthru_v11

Thanks,

Logan

[1] https://lore.kernel.org/linux-block/247eca47-c3bc-6452-fb19-f7aa27b05a60@deltatee.com/
[2] https://lore.kernel.org/linux-block/e4430207-7def-8776-0289-0d58689dc0cd@grimberg.me/

--

v11 Changes:
  1. Rebased onto v5.6-rc2
  2. Collected Max's Reviewed-By tag

v10 Changes:
  1. Rebased onto v5.5-rc1
  2. Disable all exports in core nvme if CONFIG_NVME_TARGET_PASSTHRU is
     not set and put them near the end of the file with a big fat
     comment (per Christoph)
  3. Don't fake up the vs field: pass it through as is and bump
     it to 1.2.1 if it is below that (per Christoph)
  4. Rework how passthru requests are submitted into the core
     with proper nvme_passthru_start/end handling (per Christoph)
  5. Rework how commands are parsed with passthru hooks in
     parse_admin_cmd() and nvmet_parse_io_cmd() (per Christoph)
  6. Rework commands are handled so they are only done in a work
     item if absolutely necessary (per Christoph)
  7. The data_len hack was dropped as a patchset was introduced to
     remove data_len altogether (per Christoph)
  8. The passthru accounting changes are now in v5.5-rc1
  9. A large number of other minor cleanups that were pointed out by
     Christoph

v9 Changes:
  1. Rebased onto v5.4-rc2 (required adjusting nvme_identify_ns() usage)
  2. Collected Sagi's Reviewed-By Tags
  3. Squashed seperate Kconfig patch into passthru patch (Per Sagi)
  4. Set REQ_FUA for flush requests and remove special casing
     on RQF_IO_STAT (Per Sagi)

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

Chaitanya Kulkarni (1):
  nvmet-passthru: Introduce NVMet passthru Kconfig option

Logan Gunthorpe (8):
  nvme-core: Clear any SGL flags in passthru commands
  nvme: Create helper function to obtain command effects
  nvme: Move nvme_passthru_[start|end]() calls to common helper
  nvme-core: Introduce nvme_ctrl_get_by_path()
  nvme: Export existing nvme core functions
  nvmet-passthru: Add passthru code to process commands
  nvmet-passthru: Add enable/disable helpers
  nvmet-configfs: Introduce passthru configfs interface

 drivers/nvme/host/core.c        | 229 ++++++++++-------
 drivers/nvme/host/nvme.h        |  14 +
 drivers/nvme/target/Kconfig     |  10 +
 drivers/nvme/target/Makefile    |   1 +
 drivers/nvme/target/admin-cmd.c |   7 +-
 drivers/nvme/target/configfs.c  | 102 ++++++++
 drivers/nvme/target/core.c      |  13 +-
 drivers/nvme/target/nvmet.h     |  52 ++++
 drivers/nvme/target/passthru.c  | 435 ++++++++++++++++++++++++++++++++
 include/linux/nvme.h            |   1 +
 10 files changed, 771 insertions(+), 93 deletions(-)
 create mode 100644 drivers/nvme/target/passthru.c


base-commit: 11a48a5a18c63fd7621bb050228cebf13566e4d8
--
2.20.1

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
