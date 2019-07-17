Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B536C02C
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 19:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j2BaCX0hxeBJYqf+t/UAYhk0cwa583nOzETaF8VAAX0=; b=IDuvaZJHz9Vape
	K/TXxUU5yg8UrKD1HMhuGNzdqzDSgAIUXzBIbx/l6JdxO/JyeRkyJ0PsPC79Rr7ZFdCEFwg+iSjqy
	1U9NNASNfLVAOdjJrrzKCKXusnJwW7BSgW4BOyJuLC/6W8+kfTOPWoyDI2xOoUuWMaJfhfpNRPaTI
	8ZOyClAYcE4ySMfp6g3JkHcBXEnlCplJcge5oS4TbAUyTd1L6QEAXoP6O/xAmaCRXfd4MbzxqmCUD
	OHzj49s+UKQOSy2hOYFnFFlmjfKGDMDK5/e+2xAj8DpXnOXskxGl8Mm9FoVbs/XJQcJnUtFG8BDFg
	wDp/z9Nvj/UWThURiHLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnVv-0001ET-9k; Wed, 17 Jul 2019 17:14:47 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnUS-0000Q8-Ev
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 17:13:20 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUM-00012n-Uz; Wed, 17 Jul 2019 11:13:13 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUJ-0000sJ-W9; Wed, 17 Jul 2019 11:13:08 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Omar Sandoval <osandov@fb.com>
Date: Wed, 17 Jul 2019 11:12:47 -0600
Message-Id: <20190717171259.3311-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 osandov@fb.com, chaitanya.kulkarni@wdc.com, tytso@mit.edu, mmoese@suse.de,
 jthumshirn@suse.de, sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_NO_TEXT autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH blktests v2 00/12] Fix nvme block test issues
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_101316_593568_DD12DDD4 
X-CRM114-Status: GOOD (  15.95  )
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
Cc: Theodore Ts'o <tytso@mit.edu>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Johannes Thumshirn <jthumshirn@suse.de>,
 Logan Gunthorpe <logang@deltatee.com>, Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Changes since v1:
 * Use second sed expression instead of another call to grep
   in _filter_discovery() for Patch 2 (per Omar)
 * Redirect error output to $FULL in for nvme/018 in Patch 7
   (Per Johannes)
 * Rework _have_module_param() in Patch 11 so that it supports
   cases where the module is not inserted.

--

This patchset cleans up a number of issues and pain points
I've had with getting the nvme blktests to pass and run cleanly.

The first three patches are meant to fix the Generation Counter
issue that's been discussed before but hasn't been fixed in months.
I primarily use a slightly fixed up patch posted by Michael Moese[1]
but add another patch to properly test the Generation Counter that
would no longer be tested otherwise.

I've also taken it a step further to filter out more of the discovery
information so that we are less fragile against churn and less dependant
on the version of nvme-cli in use. This should also fix the issue discussed
in [2].

Patches 4 through 7 fix a number of smaller issues I've found with
individual tests.

Patches 8 through 10 implement a system to ensure the nvme tests
clean themselves up properly especially when ctrl-c is used to
interrupt a test (working with the tests before this was a huge
pain seeing,  when you ctrl-c, you have to either manually clean
up the nvmet configuration or reboot to get the system in a state
where it's sane to run the tests again).

Patches 11 and 12 make some minor changes that allow running the
tests with the nvme modules built into the kernel.

With these patches, plus a couple I've sent to the nvme list for the
kernel, I can consistently pass the entire nvme suite with the
exception of the lockdep false-positive with nvme/012 that still
seems to be in a bit of contention[3].

[1] https://github.com/osandov/blktests/pull/34
[2] https://lore.kernel.org/linux-block/20190505150611.15776-4-minwoo.im.dev@gmail.com/
[3] https://lore.kernel.org/lkml/20190214230058.196511-22-bvanassche@acm.org/

--

Logan Gunthorpe (11):
  nvme: More agressively filter the discovery output
  nvme: Add new test to verify the generation counter
  nvme/003,004: Add missing calls to nvme disconnect
  nvme/005: Don't rely on modprobing to set the multipath paramater
  nvme/015: Ensure the namespace is flushed not the char device
  nvme/018: Ignore error message generated by nvme read
  check: Add the ability to call a cleanup function after a test ends
  nvme: Cleanup modprobe lines into helper functions
  nvme: Ensure all ports and subsystems are removed on cleanup
  common: Use sysfs instead of modinfo for _have_module_param()
  nvme: Ignore errors when removing modules

Michael Moese (1):
  Add filter function for nvme discover

 check              |    9 +
 common/rc          |   24 +
 tests/nvme/002     |   10 +-
 tests/nvme/002.out | 6003 +-------------------------------------------
 tests/nvme/003     |    6 +-
 tests/nvme/003.out |    1 +
 tests/nvme/004     |    6 +-
 tests/nvme/004.out |    1 +
 tests/nvme/005     |   16 +-
 tests/nvme/006     |    6 +-
 tests/nvme/007     |    6 +-
 tests/nvme/008     |    6 +-
 tests/nvme/009     |    5 +-
 tests/nvme/010     |    6 +-
 tests/nvme/011     |    6 +-
 tests/nvme/012     |    6 +-
 tests/nvme/013     |    6 +-
 tests/nvme/014     |    6 +-
 tests/nvme/015     |    5 +-
 tests/nvme/016     |    6 +-
 tests/nvme/016.out |    9 +-
 tests/nvme/017     |    8 +-
 tests/nvme/017.out |    9 +-
 tests/nvme/018     |    8 +-
 tests/nvme/019     |    6 +-
 tests/nvme/020     |    5 +-
 tests/nvme/021     |    6 +-
 tests/nvme/022     |    6 +-
 tests/nvme/023     |    6 +-
 tests/nvme/024     |    6 +-
 tests/nvme/025     |    6 +-
 tests/nvme/026     |    6 +-
 tests/nvme/027     |    6 +-
 tests/nvme/028     |    6 +-
 tests/nvme/029     |    6 +-
 tests/nvme/030     |   72 +
 tests/nvme/030.out |    2 +
 tests/nvme/rc      |   65 +
 38 files changed, 216 insertions(+), 6162 deletions(-)
 create mode 100755 tests/nvme/030
 create mode 100644 tests/nvme/030.out

--
2.17.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
