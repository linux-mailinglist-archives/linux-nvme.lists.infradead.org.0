Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601696C03E
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 19:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmgqMBdlfbwETaPIRyCs0zkTcsTyhFGerqWFlutkGH0=; b=CWCiAOLzQm33F4
	H/hDrTmfErYOSAXFhz3iRk7G4oq99hBawKJp+DggnVgI6FAgSc3X53hJBbb6uacgRDw1lEkeS6ix+
	GdpVm+K+nwJKvHUGcxKS16zetq+rgOznHdk65zEKrbpCoikYm7X1JKkayteD+AkDnd7VCK1f37p/4
	g9kbS6CK+sX/Ds9hXrQMuSUiYQbwZ40Ul8FxRNSW1oyJscPnGM9HJOWScaVh2oi/OGOilUFu06tZA
	x1cOe2QowBn4FIEySW4qW+JBFW4eqCTYTnV/8J19VrxPWjBNkrbs6hVD8sARUErjqVQ/FYOYB6MQI
	ysD2JXC0KNALPoNOXW1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnYC-00040x-Ti; Wed, 17 Jul 2019 17:17:08 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnUW-0000XV-Vd
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 17:13:32 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUM-00012p-Uz; Wed, 17 Jul 2019 11:13:20 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUK-0000sP-92; Wed, 17 Jul 2019 11:13:08 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Omar Sandoval <osandov@fb.com>
Date: Wed, 17 Jul 2019 11:12:49 -0600
Message-Id: <20190717171259.3311-3-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190717171259.3311-1-logang@deltatee.com>
References: <20190717171259.3311-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 osandov@fb.com, chaitanya.kulkarni@wdc.com, tytso@mit.edu, mmoese@suse.de,
 jthumshirn@suse.de, sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH blktests v2 02/12] nvme: More agressively filter the discovery
 output
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Spam-Note: CRM114 run bypassed due to message size (184963 bytes)
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

Comparing the entire output of nvme-cli for discovery is fragile
and error prone as things change. There's already been the
long standing issue of the generation counter mismatching
and also some versions of nvme-cli print an extra "sq flow control
disable supported" text[1].

Instead, filter out all but a few key values from the discovery
text which should still be sufficient for this test and much
less likely to be subject to churn.

[1] https://lore.kernel.org/linux-block/20190505150611.15776-4-minwoo.im.dev@gmail.com/

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 tests/nvme/002.out | 6001 --------------------------------------------
 tests/nvme/016.out |    7 -
 tests/nvme/017.out |    7 -
 tests/nvme/rc      |    5 +-
 4 files changed, 3 insertions(+), 6017 deletions(-)

diff --git a/tests/nvme/002.out b/tests/nvme/002.out
index 7437a21f60a9..cb0fbbf3fb98 100644
--- a/tests/nvme/002.out
+++ b/tests/nvme/002.out
@@ -1,9004 +1,3003 @@
 Running nvme/002
-
 Discovery Log Number of Records 1000, Generation counter X
 =====Discovery Log Entry 0======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-0
-traddr:  
 =====Discovery Log Entry 1======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-1
-traddr:  
 =====Discovery Log Entry 2======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-2
-traddr:  
 =====Discovery Log Entry 3======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-3
-traddr:  
 =====Discovery Log Entry 4======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-4
-traddr:  
 =====Discovery Log Entry 5======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-5
-traddr:  
 =====Discovery Log Entry 6======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-6
-traddr:  
 =====Discovery Log Entry 7======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-7
-traddr:  
 =====Discovery Log Entry 8======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-8
-traddr:  
 =====Discovery Log Entry 9======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-9
-traddr:  
 =====Discovery Log Entry 10======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-10
-traddr:  
 =====Discovery Log Entry 11======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-11
-traddr:  
 =====Discovery Log Entry 12======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-12
-traddr:  
 =====Discovery Log Entry 13======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-13
-traddr:  
 =====Discovery Log Entry 14======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-14
-traddr:  
 =====Discovery Log Entry 15======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-15
-traddr:  
 =====Discovery Log Entry 16======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-16
-traddr:  
 =====Discovery Log Entry 17======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-17
-traddr:  
 =====Discovery Log Entry 18======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-18
-traddr:  
 =====Discovery Log Entry 19======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-19
-traddr:  
 =====Discovery Log Entry 20======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-20
-traddr:  
 =====Discovery Log Entry 21======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-21
-traddr:  
 =====Discovery Log Entry 22======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-22
-traddr:  
 =====Discovery Log Entry 23======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-23
-traddr:  
 =====Discovery Log Entry 24======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-24
-traddr:  
 =====Discovery Log Entry 25======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-25
-traddr:  
 =====Discovery Log Entry 26======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-26
-traddr:  
 =====Discovery Log Entry 27======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-27
-traddr:  
 =====Discovery Log Entry 28======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-28
-traddr:  
 =====Discovery Log Entry 29======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-29
-traddr:  
 =====Discovery Log Entry 30======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-30
-traddr:  
 =====Discovery Log Entry 31======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-31
-traddr:  
 =====Discovery Log Entry 32======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-32
-traddr:  
 =====Discovery Log Entry 33======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-33
-traddr:  
 =====Discovery Log Entry 34======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-34
-traddr:  
 =====Discovery Log Entry 35======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-35
-traddr:  
 =====Discovery Log Entry 36======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-36
-traddr:  
 =====Discovery Log Entry 37======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-37
-traddr:  
 =====Discovery Log Entry 38======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-38
-traddr:  
 =====Discovery Log Entry 39======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-39
-traddr:  
 =====Discovery Log Entry 40======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-40
-traddr:  
 =====Discovery Log Entry 41======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-41
-traddr:  
 =====Discovery Log Entry 42======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-42
-traddr:  
 =====Discovery Log Entry 43======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-43
-traddr:  
 =====Discovery Log Entry 44======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-44
-traddr:  
 =====Discovery Log Entry 45======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-45
-traddr:  
 =====Discovery Log Entry 46======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-46
-traddr:  
 =====Discovery Log Entry 47======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-47
-traddr:  
 =====Discovery Log Entry 48======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-48
-traddr:  
 =====Discovery Log Entry 49======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-49
-traddr:  
 =====Discovery Log Entry 50======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-50
-traddr:  
 =====Discovery Log Entry 51======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-51
-traddr:  
 =====Discovery Log Entry 52======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-52
-traddr:  
 =====Discovery Log Entry 53======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-53
-traddr:  
 =====Discovery Log Entry 54======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-54
-traddr:  
 =====Discovery Log Entry 55======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-55
-traddr:  
 =====Discovery Log Entry 56======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-56
-traddr:  
 =====Discovery Log Entry 57======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-57
-traddr:  
 =====Discovery Log Entry 58======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-58
-traddr:  
 =====Discovery Log Entry 59======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-59
-traddr:  
 =====Discovery Log Entry 60======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-60
-traddr:  
 =====Discovery Log Entry 61======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-61
-traddr:  
 =====Discovery Log Entry 62======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-62
-traddr:  
 =====Discovery Log Entry 63======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-63
-traddr:  
 =====Discovery Log Entry 64======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-64
-traddr:  
 =====Discovery Log Entry 65======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-65
-traddr:  
 =====Discovery Log Entry 66======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-66
-traddr:  
 =====Discovery Log Entry 67======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-67
-traddr:  
 =====Discovery Log Entry 68======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-68
-traddr:  
 =====Discovery Log Entry 69======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-69
-traddr:  
 =====Discovery Log Entry 70======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-70
-traddr:  
 =====Discovery Log Entry 71======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-71
-traddr:  
 =====Discovery Log Entry 72======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-72
-traddr:  
 =====Discovery Log Entry 73======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-73
-traddr:  
 =====Discovery Log Entry 74======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-74
-traddr:  
 =====Discovery Log Entry 75======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-75
-traddr:  
 =====Discovery Log Entry 76======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-76
-traddr:  
 =====Discovery Log Entry 77======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-77
-traddr:  
 =====Discovery Log Entry 78======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-78
-traddr:  
 =====Discovery Log Entry 79======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-79
-traddr:  
 =====Discovery Log Entry 80======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-80
-traddr:  
 =====Discovery Log Entry 81======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-81
-traddr:  
 =====Discovery Log Entry 82======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-82
-traddr:  
 =====Discovery Log Entry 83======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-83
-traddr:  
 =====Discovery Log Entry 84======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-84
-traddr:  
 =====Discovery Log Entry 85======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-85
-traddr:  
 =====Discovery Log Entry 86======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-86
-traddr:  
 =====Discovery Log Entry 87======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-87
-traddr:  
 =====Discovery Log Entry 88======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-88
-traddr:  
 =====Discovery Log Entry 89======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-89
-traddr:  
 =====Discovery Log Entry 90======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-90
-traddr:  
 =====Discovery Log Entry 91======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-91
-traddr:  
 =====Discovery Log Entry 92======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-92
-traddr:  
 =====Discovery Log Entry 93======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-93
-traddr:  
 =====Discovery Log Entry 94======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-94
-traddr:  
 =====Discovery Log Entry 95======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-95
-traddr:  
 =====Discovery Log Entry 96======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-96
-traddr:  
 =====Discovery Log Entry 97======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-97
-traddr:  
 =====Discovery Log Entry 98======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-98
-traddr:  
 =====Discovery Log Entry 99======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-99
-traddr:  
 =====Discovery Log Entry 100======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-100
-traddr:  
 =====Discovery Log Entry 101======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-101
-traddr:  
 =====Discovery Log Entry 102======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-102
-traddr:  
 =====Discovery Log Entry 103======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-103
-traddr:  
 =====Discovery Log Entry 104======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-104
-traddr:  
 =====Discovery Log Entry 105======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-105
-traddr:  
 =====Discovery Log Entry 106======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-106
-traddr:  
 =====Discovery Log Entry 107======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-107
-traddr:  
 =====Discovery Log Entry 108======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-108
-traddr:  
 =====Discovery Log Entry 109======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-109
-traddr:  
 =====Discovery Log Entry 110======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-110
-traddr:  
 =====Discovery Log Entry 111======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-111
-traddr:  
 =====Discovery Log Entry 112======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-112
-traddr:  
 =====Discovery Log Entry 113======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-113
-traddr:  
 =====Discovery Log Entry 114======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-114
-traddr:  
 =====Discovery Log Entry 115======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-115
-traddr:  
 =====Discovery Log Entry 116======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-116
-traddr:  
 =====Discovery Log Entry 117======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-117
-traddr:  
 =====Discovery Log Entry 118======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-118
-traddr:  
 =====Discovery Log Entry 119======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-119
-traddr:  
 =====Discovery Log Entry 120======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-120
-traddr:  
 =====Discovery Log Entry 121======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-121
-traddr:  
 =====Discovery Log Entry 122======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-122
-traddr:  
 =====Discovery Log Entry 123======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-123
-traddr:  
 =====Discovery Log Entry 124======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-124
-traddr:  
 =====Discovery Log Entry 125======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-125
-traddr:  
 =====Discovery Log Entry 126======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-126
-traddr:  
 =====Discovery Log Entry 127======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-127
-traddr:  
 =====Discovery Log Entry 128======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-128
-traddr:  
 =====Discovery Log Entry 129======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-129
-traddr:  
 =====Discovery Log Entry 130======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-130
-traddr:  
 =====Discovery Log Entry 131======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-131
-traddr:  
 =====Discovery Log Entry 132======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-132
-traddr:  
 =====Discovery Log Entry 133======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-133
-traddr:  
 =====Discovery Log Entry 134======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-134
-traddr:  
 =====Discovery Log Entry 135======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-135
-traddr:  
 =====Discovery Log Entry 136======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-136
-traddr:  
 =====Discovery Log Entry 137======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-137
-traddr:  
 =====Discovery Log Entry 138======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-138
-traddr:  
 =====Discovery Log Entry 139======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-139
-traddr:  
 =====Discovery Log Entry 140======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-140
-traddr:  
 =====Discovery Log Entry 141======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-141
-traddr:  
 =====Discovery Log Entry 142======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-142
-traddr:  
 =====Discovery Log Entry 143======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-143
-traddr:  
 =====Discovery Log Entry 144======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-144
-traddr:  
 =====Discovery Log Entry 145======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-145
-traddr:  
 =====Discovery Log Entry 146======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-146
-traddr:  
 =====Discovery Log Entry 147======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-147
-traddr:  
 =====Discovery Log Entry 148======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-148
-traddr:  
 =====Discovery Log Entry 149======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-149
-traddr:  
 =====Discovery Log Entry 150======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-150
-traddr:  
 =====Discovery Log Entry 151======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-151
-traddr:  
 =====Discovery Log Entry 152======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-152
-traddr:  
 =====Discovery Log Entry 153======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-153
-traddr:  
 =====Discovery Log Entry 154======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-154
-traddr:  
 =====Discovery Log Entry 155======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-155
-traddr:  
 =====Discovery Log Entry 156======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-156
-traddr:  
 =====Discovery Log Entry 157======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-157
-traddr:  
 =====Discovery Log Entry 158======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-158
-traddr:  
 =====Discovery Log Entry 159======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-159
-traddr:  
 =====Discovery Log Entry 160======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-160
-traddr:  
 =====Discovery Log Entry 161======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-161
-traddr:  
 =====Discovery Log Entry 162======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-162
-traddr:  
 =====Discovery Log Entry 163======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-163
-traddr:  
 =====Discovery Log Entry 164======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-164
-traddr:  
 =====Discovery Log Entry 165======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-165
-traddr:  
 =====Discovery Log Entry 166======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-166
-traddr:  
 =====Discovery Log Entry 167======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-167
-traddr:  
 =====Discovery Log Entry 168======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-168
-traddr:  
 =====Discovery Log Entry 169======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-169
-traddr:  
 =====Discovery Log Entry 170======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-170
-traddr:  
 =====Discovery Log Entry 171======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-171
-traddr:  
 =====Discovery Log Entry 172======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-172
-traddr:  
 =====Discovery Log Entry 173======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-173
-traddr:  
 =====Discovery Log Entry 174======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-174
-traddr:  
 =====Discovery Log Entry 175======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-175
-traddr:  
 =====Discovery Log Entry 176======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-176
-traddr:  
 =====Discovery Log Entry 177======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-177
-traddr:  
 =====Discovery Log Entry 178======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-178
-traddr:  
 =====Discovery Log Entry 179======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-179
-traddr:  
 =====Discovery Log Entry 180======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-180
-traddr:  
 =====Discovery Log Entry 181======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-181
-traddr:  
 =====Discovery Log Entry 182======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-182
-traddr:  
 =====Discovery Log Entry 183======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-183
-traddr:  
 =====Discovery Log Entry 184======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-184
-traddr:  
 =====Discovery Log Entry 185======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-185
-traddr:  
 =====Discovery Log Entry 186======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-186
-traddr:  
 =====Discovery Log Entry 187======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-187
-traddr:  
 =====Discovery Log Entry 188======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-188
-traddr:  
 =====Discovery Log Entry 189======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-189
-traddr:  
 =====Discovery Log Entry 190======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-190
-traddr:  
 =====Discovery Log Entry 191======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-191
-traddr:  
 =====Discovery Log Entry 192======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-192
-traddr:  
 =====Discovery Log Entry 193======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-193
-traddr:  
 =====Discovery Log Entry 194======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-194
-traddr:  
 =====Discovery Log Entry 195======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-195
-traddr:  
 =====Discovery Log Entry 196======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-196
-traddr:  
 =====Discovery Log Entry 197======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-197
-traddr:  
 =====Discovery Log Entry 198======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-198
-traddr:  
 =====Discovery Log Entry 199======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-199
-traddr:  
 =====Discovery Log Entry 200======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-200
-traddr:  
 =====Discovery Log Entry 201======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-201
-traddr:  
 =====Discovery Log Entry 202======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-202
-traddr:  
 =====Discovery Log Entry 203======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-203
-traddr:  
 =====Discovery Log Entry 204======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-204
-traddr:  
 =====Discovery Log Entry 205======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-205
-traddr:  
 =====Discovery Log Entry 206======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-206
-traddr:  
 =====Discovery Log Entry 207======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-207
-traddr:  
 =====Discovery Log Entry 208======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-208
-traddr:  
 =====Discovery Log Entry 209======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-209
-traddr:  
 =====Discovery Log Entry 210======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-210
-traddr:  
 =====Discovery Log Entry 211======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-211
-traddr:  
 =====Discovery Log Entry 212======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-212
-traddr:  
 =====Discovery Log Entry 213======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-213
-traddr:  
 =====Discovery Log Entry 214======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-214
-traddr:  
 =====Discovery Log Entry 215======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-215
-traddr:  
 =====Discovery Log Entry 216======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-216
-traddr:  
 =====Discovery Log Entry 217======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-217
-traddr:  
 =====Discovery Log Entry 218======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-218
-traddr:  
 =====Discovery Log Entry 219======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-219
-traddr:  
 =====Discovery Log Entry 220======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-220
-traddr:  
 =====Discovery Log Entry 221======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-221
-traddr:  
 =====Discovery Log Entry 222======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-222
-traddr:  
 =====Discovery Log Entry 223======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-223
-traddr:  
 =====Discovery Log Entry 224======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-224
-traddr:  
 =====Discovery Log Entry 225======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-225
-traddr:  
 =====Discovery Log Entry 226======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-226
-traddr:  
 =====Discovery Log Entry 227======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-227
-traddr:  
 =====Discovery Log Entry 228======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-228
-traddr:  
 =====Discovery Log Entry 229======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-229
-traddr:  
 =====Discovery Log Entry 230======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-230
-traddr:  
 =====Discovery Log Entry 231======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-231
-traddr:  
 =====Discovery Log Entry 232======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-232
-traddr:  
 =====Discovery Log Entry 233======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-233
-traddr:  
 =====Discovery Log Entry 234======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-234
-traddr:  
 =====Discovery Log Entry 235======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-235
-traddr:  
 =====Discovery Log Entry 236======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-236
-traddr:  
 =====Discovery Log Entry 237======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-237
-traddr:  
 =====Discovery Log Entry 238======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-238
-traddr:  
 =====Discovery Log Entry 239======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-239
-traddr:  
 =====Discovery Log Entry 240======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-240
-traddr:  
 =====Discovery Log Entry 241======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-241
-traddr:  
 =====Discovery Log Entry 242======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-242
-traddr:  
 =====Discovery Log Entry 243======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-243
-traddr:  
 =====Discovery Log Entry 244======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-244
-traddr:  
 =====Discovery Log Entry 245======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-245
-traddr:  
 =====Discovery Log Entry 246======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-246
-traddr:  
 =====Discovery Log Entry 247======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-247
-traddr:  
 =====Discovery Log Entry 248======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-248
-traddr:  
 =====Discovery Log Entry 249======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-249
-traddr:  
 =====Discovery Log Entry 250======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-250
-traddr:  
 =====Discovery Log Entry 251======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-251
-traddr:  
 =====Discovery Log Entry 252======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-252
-traddr:  
 =====Discovery Log Entry 253======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-253
-traddr:  
 =====Discovery Log Entry 254======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-254
-traddr:  
 =====Discovery Log Entry 255======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-255
-traddr:  
 =====Discovery Log Entry 256======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-256
-traddr:  
 =====Discovery Log Entry 257======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-257
-traddr:  
 =====Discovery Log Entry 258======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-258
-traddr:  
 =====Discovery Log Entry 259======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-259
-traddr:  
 =====Discovery Log Entry 260======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-260
-traddr:  
 =====Discovery Log Entry 261======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-261
-traddr:  
 =====Discovery Log Entry 262======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-262
-traddr:  
 =====Discovery Log Entry 263======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-263
-traddr:  
 =====Discovery Log Entry 264======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-264
-traddr:  
 =====Discovery Log Entry 265======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-265
-traddr:  
 =====Discovery Log Entry 266======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-266
-traddr:  
 =====Discovery Log Entry 267======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-267
-traddr:  
 =====Discovery Log Entry 268======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-268
-traddr:  
 =====Discovery Log Entry 269======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-269
-traddr:  
 =====Discovery Log Entry 270======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-270
-traddr:  
 =====Discovery Log Entry 271======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-271
-traddr:  
 =====Discovery Log Entry 272======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-272
-traddr:  
 =====Discovery Log Entry 273======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-273
-traddr:  
 =====Discovery Log Entry 274======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-274
-traddr:  
 =====Discovery Log Entry 275======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-275
-traddr:  
 =====Discovery Log Entry 276======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-276
-traddr:  
 =====Discovery Log Entry 277======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-277
-traddr:  
 =====Discovery Log Entry 278======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-278
-traddr:  
 =====Discovery Log Entry 279======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-279
-traddr:  
 =====Discovery Log Entry 280======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-280
-traddr:  
 =====Discovery Log Entry 281======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-281
-traddr:  
 =====Discovery Log Entry 282======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-282
-traddr:  
 =====Discovery Log Entry 283======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-283
-traddr:  
 =====Discovery Log Entry 284======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-284
-traddr:  
 =====Discovery Log Entry 285======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-285
-traddr:  
 =====Discovery Log Entry 286======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-286
-traddr:  
 =====Discovery Log Entry 287======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-287
-traddr:  
 =====Discovery Log Entry 288======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-288
-traddr:  
 =====Discovery Log Entry 289======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-289
-traddr:  
 =====Discovery Log Entry 290======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-290
-traddr:  
 =====Discovery Log Entry 291======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-291
-traddr:  
 =====Discovery Log Entry 292======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-292
-traddr:  
 =====Discovery Log Entry 293======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-293
-traddr:  
 =====Discovery Log Entry 294======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-294
-traddr:  
 =====Discovery Log Entry 295======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-295
-traddr:  
 =====Discovery Log Entry 296======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-296
-traddr:  
 =====Discovery Log Entry 297======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-297
-traddr:  
 =====Discovery Log Entry 298======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-298
-traddr:  
 =====Discovery Log Entry 299======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-299
-traddr:  
 =====Discovery Log Entry 300======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-300
-traddr:  
 =====Discovery Log Entry 301======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-301
-traddr:  
 =====Discovery Log Entry 302======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-302
-traddr:  
 =====Discovery Log Entry 303======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-303
-traddr:  
 =====Discovery Log Entry 304======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-304
-traddr:  
 =====Discovery Log Entry 305======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-305
-traddr:  
 =====Discovery Log Entry 306======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-306
-traddr:  
 =====Discovery Log Entry 307======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-307
-traddr:  
 =====Discovery Log Entry 308======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-308
-traddr:  
 =====Discovery Log Entry 309======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-309
-traddr:  
 =====Discovery Log Entry 310======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-310
-traddr:  
 =====Discovery Log Entry 311======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-311
-traddr:  
 =====Discovery Log Entry 312======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-312
-traddr:  
 =====Discovery Log Entry 313======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-313
-traddr:  
 =====Discovery Log Entry 314======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-314
-traddr:  
 =====Discovery Log Entry 315======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-315
-traddr:  
 =====Discovery Log Entry 316======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-316
-traddr:  
 =====Discovery Log Entry 317======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-317
-traddr:  
 =====Discovery Log Entry 318======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-318
-traddr:  
 =====Discovery Log Entry 319======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-319
-traddr:  
 =====Discovery Log Entry 320======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-320
-traddr:  
 =====Discovery Log Entry 321======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-321
-traddr:  
 =====Discovery Log Entry 322======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-322
-traddr:  
 =====Discovery Log Entry 323======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-323
-traddr:  
 =====Discovery Log Entry 324======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-324
-traddr:  
 =====Discovery Log Entry 325======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-325
-traddr:  
 =====Discovery Log Entry 326======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-326
-traddr:  
 =====Discovery Log Entry 327======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-327
-traddr:  
 =====Discovery Log Entry 328======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-328
-traddr:  
 =====Discovery Log Entry 329======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-329
-traddr:  
 =====Discovery Log Entry 330======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-330
-traddr:  
 =====Discovery Log Entry 331======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-331
-traddr:  
 =====Discovery Log Entry 332======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-332
-traddr:  
 =====Discovery Log Entry 333======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-333
-traddr:  
 =====Discovery Log Entry 334======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-334
-traddr:  
 =====Discovery Log Entry 335======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-335
-traddr:  
 =====Discovery Log Entry 336======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-336
-traddr:  
 =====Discovery Log Entry 337======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-337
-traddr:  
 =====Discovery Log Entry 338======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-338
-traddr:  
 =====Discovery Log Entry 339======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-339
-traddr:  
 =====Discovery Log Entry 340======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-340
-traddr:  
 =====Discovery Log Entry 341======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-341
-traddr:  
 =====Discovery Log Entry 342======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-342
-traddr:  
 =====Discovery Log Entry 343======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-343
-traddr:  
 =====Discovery Log Entry 344======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-344
-traddr:  
 =====Discovery Log Entry 345======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-345
-traddr:  
 =====Discovery Log Entry 346======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-346
-traddr:  
 =====Discovery Log Entry 347======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-347
-traddr:  
 =====Discovery Log Entry 348======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-348
-traddr:  
 =====Discovery Log Entry 349======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-349
-traddr:  
 =====Discovery Log Entry 350======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-350
-traddr:  
 =====Discovery Log Entry 351======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-351
-traddr:  
 =====Discovery Log Entry 352======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-352
-traddr:  
 =====Discovery Log Entry 353======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-353
-traddr:  
 =====Discovery Log Entry 354======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-354
-traddr:  
 =====Discovery Log Entry 355======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-355
-traddr:  
 =====Discovery Log Entry 356======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-356
-traddr:  
 =====Discovery Log Entry 357======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-357
-traddr:  
 =====Discovery Log Entry 358======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-358
-traddr:  
 =====Discovery Log Entry 359======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-359
-traddr:  
 =====Discovery Log Entry 360======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-360
-traddr:  
 =====Discovery Log Entry 361======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-361
-traddr:  
 =====Discovery Log Entry 362======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-362
-traddr:  
 =====Discovery Log Entry 363======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-363
-traddr:  
 =====Discovery Log Entry 364======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-364
-traddr:  
 =====Discovery Log Entry 365======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-365
-traddr:  
 =====Discovery Log Entry 366======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-366
-traddr:  
 =====Discovery Log Entry 367======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-367
-traddr:  
 =====Discovery Log Entry 368======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-368
-traddr:  
 =====Discovery Log Entry 369======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-369
-traddr:  
 =====Discovery Log Entry 370======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-370
-traddr:  
 =====Discovery Log Entry 371======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-371
-traddr:  
 =====Discovery Log Entry 372======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-372
-traddr:  
 =====Discovery Log Entry 373======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-373
-traddr:  
 =====Discovery Log Entry 374======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-374
-traddr:  
 =====Discovery Log Entry 375======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-375
-traddr:  
 =====Discovery Log Entry 376======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-376
-traddr:  
 =====Discovery Log Entry 377======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-377
-traddr:  
 =====Discovery Log Entry 378======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-378
-traddr:  
 =====Discovery Log Entry 379======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-379
-traddr:  
 =====Discovery Log Entry 380======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-380
-traddr:  
 =====Discovery Log Entry 381======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-381
-traddr:  
 =====Discovery Log Entry 382======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-382
-traddr:  
 =====Discovery Log Entry 383======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-383
-traddr:  
 =====Discovery Log Entry 384======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-384
-traddr:  
 =====Discovery Log Entry 385======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-385
-traddr:  
 =====Discovery Log Entry 386======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-386
-traddr:  
 =====Discovery Log Entry 387======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-387
-traddr:  
 =====Discovery Log Entry 388======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-388
-traddr:  
 =====Discovery Log Entry 389======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-389
-traddr:  
 =====Discovery Log Entry 390======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-390
-traddr:  
 =====Discovery Log Entry 391======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-391
-traddr:  
 =====Discovery Log Entry 392======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-392
-traddr:  
 =====Discovery Log Entry 393======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-393
-traddr:  
 =====Discovery Log Entry 394======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-394
-traddr:  
 =====Discovery Log Entry 395======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-395
-traddr:  
 =====Discovery Log Entry 396======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-396
-traddr:  
 =====Discovery Log Entry 397======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-397
-traddr:  
 =====Discovery Log Entry 398======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-398
-traddr:  
 =====Discovery Log Entry 399======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-399
-traddr:  
 =====Discovery Log Entry 400======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-400
-traddr:  
 =====Discovery Log Entry 401======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-401
-traddr:  
 =====Discovery Log Entry 402======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-402
-traddr:  
 =====Discovery Log Entry 403======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-403
-traddr:  
 =====Discovery Log Entry 404======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-404
-traddr:  
 =====Discovery Log Entry 405======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-405
-traddr:  
 =====Discovery Log Entry 406======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-406
-traddr:  
 =====Discovery Log Entry 407======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-407
-traddr:  
 =====Discovery Log Entry 408======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-408
-traddr:  
 =====Discovery Log Entry 409======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-409
-traddr:  
 =====Discovery Log Entry 410======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-410
-traddr:  
 =====Discovery Log Entry 411======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-411
-traddr:  
 =====Discovery Log Entry 412======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-412
-traddr:  
 =====Discovery Log Entry 413======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-413
-traddr:  
 =====Discovery Log Entry 414======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-414
-traddr:  
 =====Discovery Log Entry 415======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-415
-traddr:  
 =====Discovery Log Entry 416======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-416
-traddr:  
 =====Discovery Log Entry 417======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-417
-traddr:  
 =====Discovery Log Entry 418======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-418
-traddr:  
 =====Discovery Log Entry 419======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-419
-traddr:  
 =====Discovery Log Entry 420======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-420
-traddr:  
 =====Discovery Log Entry 421======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-421
-traddr:  
 =====Discovery Log Entry 422======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-422
-traddr:  
 =====Discovery Log Entry 423======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-423
-traddr:  
 =====Discovery Log Entry 424======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-424
-traddr:  
 =====Discovery Log Entry 425======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-425
-traddr:  
 =====Discovery Log Entry 426======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-426
-traddr:  
 =====Discovery Log Entry 427======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-427
-traddr:  
 =====Discovery Log Entry 428======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-428
-traddr:  
 =====Discovery Log Entry 429======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-429
-traddr:  
 =====Discovery Log Entry 430======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-430
-traddr:  
 =====Discovery Log Entry 431======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-431
-traddr:  
 =====Discovery Log Entry 432======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-432
-traddr:  
 =====Discovery Log Entry 433======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-433
-traddr:  
 =====Discovery Log Entry 434======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-434
-traddr:  
 =====Discovery Log Entry 435======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-435
-traddr:  
 =====Discovery Log Entry 436======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-436
-traddr:  
 =====Discovery Log Entry 437======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-437
-traddr:  
 =====Discovery Log Entry 438======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-438
-traddr:  
 =====Discovery Log Entry 439======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-439
-traddr:  
 =====Discovery Log Entry 440======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-440
-traddr:  
 =====Discovery Log Entry 441======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-441
-traddr:  
 =====Discovery Log Entry 442======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-442
-traddr:  
 =====Discovery Log Entry 443======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-443
-traddr:  
 =====Discovery Log Entry 444======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-444
-traddr:  
 =====Discovery Log Entry 445======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-445
-traddr:  
 =====Discovery Log Entry 446======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-446
-traddr:  
 =====Discovery Log Entry 447======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-447
-traddr:  
 =====Discovery Log Entry 448======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-448
-traddr:  
 =====Discovery Log Entry 449======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-449
-traddr:  
 =====Discovery Log Entry 450======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-450
-traddr:  
 =====Discovery Log Entry 451======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-451
-traddr:  
 =====Discovery Log Entry 452======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-452
-traddr:  
 =====Discovery Log Entry 453======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-453
-traddr:  
 =====Discovery Log Entry 454======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-454
-traddr:  
 =====Discovery Log Entry 455======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-455
-traddr:  
 =====Discovery Log Entry 456======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-456
-traddr:  
 =====Discovery Log Entry 457======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-457
-traddr:  
 =====Discovery Log Entry 458======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-458
-traddr:  
 =====Discovery Log Entry 459======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-459
-traddr:  
 =====Discovery Log Entry 460======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-460
-traddr:  
 =====Discovery Log Entry 461======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-461
-traddr:  
 =====Discovery Log Entry 462======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-462
-traddr:  
 =====Discovery Log Entry 463======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-463
-traddr:  
 =====Discovery Log Entry 464======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-464
-traddr:  
 =====Discovery Log Entry 465======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-465
-traddr:  
 =====Discovery Log Entry 466======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-466
-traddr:  
 =====Discovery Log Entry 467======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-467
-traddr:  
 =====Discovery Log Entry 468======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-468
-traddr:  
 =====Discovery Log Entry 469======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-469
-traddr:  
 =====Discovery Log Entry 470======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-470
-traddr:  
 =====Discovery Log Entry 471======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-471
-traddr:  
 =====Discovery Log Entry 472======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-472
-traddr:  
 =====Discovery Log Entry 473======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-473
-traddr:  
 =====Discovery Log Entry 474======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-474
-traddr:  
 =====Discovery Log Entry 475======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-475
-traddr:  
 =====Discovery Log Entry 476======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-476
-traddr:  
 =====Discovery Log Entry 477======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-477
-traddr:  
 =====Discovery Log Entry 478======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-478
-traddr:  
 =====Discovery Log Entry 479======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-479
-traddr:  
 =====Discovery Log Entry 480======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-480
-traddr:  
 =====Discovery Log Entry 481======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-481
-traddr:  
 =====Discovery Log Entry 482======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-482
-traddr:  
 =====Discovery Log Entry 483======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-483
-traddr:  
 =====Discovery Log Entry 484======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-484
-traddr:  
 =====Discovery Log Entry 485======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-485
-traddr:  
 =====Discovery Log Entry 486======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-486
-traddr:  
 =====Discovery Log Entry 487======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-487
-traddr:  
 =====Discovery Log Entry 488======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-488
-traddr:  
 =====Discovery Log Entry 489======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-489
-traddr:  
 =====Discovery Log Entry 490======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-490
-traddr:  
 =====Discovery Log Entry 491======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-491
-traddr:  
 =====Discovery Log Entry 492======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-492
-traddr:  
 =====Discovery Log Entry 493======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-493
-traddr:  
 =====Discovery Log Entry 494======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-494
-traddr:  
 =====Discovery Log Entry 495======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-495
-traddr:  
 =====Discovery Log Entry 496======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-496
-traddr:  
 =====Discovery Log Entry 497======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-497
-traddr:  
 =====Discovery Log Entry 498======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-498
-traddr:  
 =====Discovery Log Entry 499======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-499
-traddr:  
 =====Discovery Log Entry 500======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-500
-traddr:  
 =====Discovery Log Entry 501======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-501
-traddr:  
 =====Discovery Log Entry 502======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-502
-traddr:  
 =====Discovery Log Entry 503======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-503
-traddr:  
 =====Discovery Log Entry 504======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-504
-traddr:  
 =====Discovery Log Entry 505======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-505
-traddr:  
 =====Discovery Log Entry 506======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-506
-traddr:  
 =====Discovery Log Entry 507======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-507
-traddr:  
 =====Discovery Log Entry 508======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-508
-traddr:  
 =====Discovery Log Entry 509======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-509
-traddr:  
 =====Discovery Log Entry 510======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-510
-traddr:  
 =====Discovery Log Entry 511======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-511
-traddr:  
 =====Discovery Log Entry 512======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-512
-traddr:  
 =====Discovery Log Entry 513======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-513
-traddr:  
 =====Discovery Log Entry 514======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-514
-traddr:  
 =====Discovery Log Entry 515======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-515
-traddr:  
 =====Discovery Log Entry 516======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-516
-traddr:  
 =====Discovery Log Entry 517======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-517
-traddr:  
 =====Discovery Log Entry 518======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-518
-traddr:  
 =====Discovery Log Entry 519======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-519
-traddr:  
 =====Discovery Log Entry 520======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-520
-traddr:  
 =====Discovery Log Entry 521======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-521
-traddr:  
 =====Discovery Log Entry 522======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-522
-traddr:  
 =====Discovery Log Entry 523======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-523
-traddr:  
 =====Discovery Log Entry 524======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-524
-traddr:  
 =====Discovery Log Entry 525======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-525
-traddr:  
 =====Discovery Log Entry 526======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-526
-traddr:  
 =====Discovery Log Entry 527======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-527
-traddr:  
 =====Discovery Log Entry 528======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-528
-traddr:  
 =====Discovery Log Entry 529======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-529
-traddr:  
 =====Discovery Log Entry 530======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-530
-traddr:  
 =====Discovery Log Entry 531======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-531
-traddr:  
 =====Discovery Log Entry 532======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-532
-traddr:  
 =====Discovery Log Entry 533======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-533
-traddr:  
 =====Discovery Log Entry 534======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-534
-traddr:  
 =====Discovery Log Entry 535======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-535
-traddr:  
 =====Discovery Log Entry 536======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-536
-traddr:  
 =====Discovery Log Entry 537======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-537
-traddr:  
 =====Discovery Log Entry 538======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-538
-traddr:  
 =====Discovery Log Entry 539======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-539
-traddr:  
 =====Discovery Log Entry 540======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-540
-traddr:  
 =====Discovery Log Entry 541======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-541
-traddr:  
 =====Discovery Log Entry 542======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-542
-traddr:  
 =====Discovery Log Entry 543======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-543
-traddr:  
 =====Discovery Log Entry 544======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-544
-traddr:  
 =====Discovery Log Entry 545======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-545
-traddr:  
 =====Discovery Log Entry 546======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-546
-traddr:  
 =====Discovery Log Entry 547======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-547
-traddr:  
 =====Discovery Log Entry 548======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-548
-traddr:  
 =====Discovery Log Entry 549======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-549
-traddr:  
 =====Discovery Log Entry 550======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-550
-traddr:  
 =====Discovery Log Entry 551======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-551
-traddr:  
 =====Discovery Log Entry 552======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-552
-traddr:  
 =====Discovery Log Entry 553======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-553
-traddr:  
 =====Discovery Log Entry 554======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-554
-traddr:  
 =====Discovery Log Entry 555======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-555
-traddr:  
 =====Discovery Log Entry 556======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-556
-traddr:  
 =====Discovery Log Entry 557======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-557
-traddr:  
 =====Discovery Log Entry 558======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-558
-traddr:  
 =====Discovery Log Entry 559======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-559
-traddr:  
 =====Discovery Log Entry 560======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-560
-traddr:  
 =====Discovery Log Entry 561======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-561
-traddr:  
 =====Discovery Log Entry 562======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-562
-traddr:  
 =====Discovery Log Entry 563======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-563
-traddr:  
 =====Discovery Log Entry 564======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-564
-traddr:  
 =====Discovery Log Entry 565======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-565
-traddr:  
 =====Discovery Log Entry 566======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-566
-traddr:  
 =====Discovery Log Entry 567======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-567
-traddr:  
 =====Discovery Log Entry 568======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-568
-traddr:  
 =====Discovery Log Entry 569======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-569
-traddr:  
 =====Discovery Log Entry 570======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-570
-traddr:  
 =====Discovery Log Entry 571======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-571
-traddr:  
 =====Discovery Log Entry 572======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-572
-traddr:  
 =====Discovery Log Entry 573======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-573
-traddr:  
 =====Discovery Log Entry 574======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-574
-traddr:  
 =====Discovery Log Entry 575======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-575
-traddr:  
 =====Discovery Log Entry 576======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-576
-traddr:  
 =====Discovery Log Entry 577======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-577
-traddr:  
 =====Discovery Log Entry 578======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-578
-traddr:  
 =====Discovery Log Entry 579======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-579
-traddr:  
 =====Discovery Log Entry 580======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-580
-traddr:  
 =====Discovery Log Entry 581======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-581
-traddr:  
 =====Discovery Log Entry 582======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-582
-traddr:  
 =====Discovery Log Entry 583======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-583
-traddr:  
 =====Discovery Log Entry 584======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-584
-traddr:  
 =====Discovery Log Entry 585======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-585
-traddr:  
 =====Discovery Log Entry 586======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-586
-traddr:  
 =====Discovery Log Entry 587======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-587
-traddr:  
 =====Discovery Log Entry 588======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-588
-traddr:  
 =====Discovery Log Entry 589======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-589
-traddr:  
 =====Discovery Log Entry 590======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-590
-traddr:  
 =====Discovery Log Entry 591======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-591
-traddr:  
 =====Discovery Log Entry 592======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-592
-traddr:  
 =====Discovery Log Entry 593======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-593
-traddr:  
 =====Discovery Log Entry 594======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-594
-traddr:  
 =====Discovery Log Entry 595======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-595
-traddr:  
 =====Discovery Log Entry 596======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-596
-traddr:  
 =====Discovery Log Entry 597======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-597
-traddr:  
 =====Discovery Log Entry 598======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-598
-traddr:  
 =====Discovery Log Entry 599======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-599
-traddr:  
 =====Discovery Log Entry 600======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-600
-traddr:  
 =====Discovery Log Entry 601======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-601
-traddr:  
 =====Discovery Log Entry 602======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-602
-traddr:  
 =====Discovery Log Entry 603======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-603
-traddr:  
 =====Discovery Log Entry 604======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-604
-traddr:  
 =====Discovery Log Entry 605======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-605
-traddr:  
 =====Discovery Log Entry 606======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-606
-traddr:  
 =====Discovery Log Entry 607======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-607
-traddr:  
 =====Discovery Log Entry 608======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-608
-traddr:  
 =====Discovery Log Entry 609======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-609
-traddr:  
 =====Discovery Log Entry 610======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-610
-traddr:  
 =====Discovery Log Entry 611======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-611
-traddr:  
 =====Discovery Log Entry 612======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-612
-traddr:  
 =====Discovery Log Entry 613======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-613
-traddr:  
 =====Discovery Log Entry 614======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-614
-traddr:  
 =====Discovery Log Entry 615======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-615
-traddr:  
 =====Discovery Log Entry 616======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-616
-traddr:  
 =====Discovery Log Entry 617======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-617
-traddr:  
 =====Discovery Log Entry 618======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-618
-traddr:  
 =====Discovery Log Entry 619======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-619
-traddr:  
 =====Discovery Log Entry 620======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-620
-traddr:  
 =====Discovery Log Entry 621======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-621
-traddr:  
 =====Discovery Log Entry 622======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-622
-traddr:  
 =====Discovery Log Entry 623======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-623
-traddr:  
 =====Discovery Log Entry 624======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-624
-traddr:  
 =====Discovery Log Entry 625======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-625
-traddr:  
 =====Discovery Log Entry 626======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-626
-traddr:  
 =====Discovery Log Entry 627======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-627
-traddr:  
 =====Discovery Log Entry 628======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-628
-traddr:  
 =====Discovery Log Entry 629======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-629
-traddr:  
 =====Discovery Log Entry 630======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-630
-traddr:  
 =====Discovery Log Entry 631======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-631
-traddr:  
 =====Discovery Log Entry 632======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-632
-traddr:  
 =====Discovery Log Entry 633======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-633
-traddr:  
 =====Discovery Log Entry 634======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-634
-traddr:  
 =====Discovery Log Entry 635======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-635
-traddr:  
 =====Discovery Log Entry 636======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-636
-traddr:  
 =====Discovery Log Entry 637======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-637
-traddr:  
 =====Discovery Log Entry 638======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-638
-traddr:  
 =====Discovery Log Entry 639======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-639
-traddr:  
 =====Discovery Log Entry 640======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-640
-traddr:  
 =====Discovery Log Entry 641======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-641
-traddr:  
 =====Discovery Log Entry 642======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-642
-traddr:  
 =====Discovery Log Entry 643======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-643
-traddr:  
 =====Discovery Log Entry 644======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-644
-traddr:  
 =====Discovery Log Entry 645======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-645
-traddr:  
 =====Discovery Log Entry 646======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-646
-traddr:  
 =====Discovery Log Entry 647======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-647
-traddr:  
 =====Discovery Log Entry 648======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-648
-traddr:  
 =====Discovery Log Entry 649======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-649
-traddr:  
 =====Discovery Log Entry 650======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-650
-traddr:  
 =====Discovery Log Entry 651======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-651
-traddr:  
 =====Discovery Log Entry 652======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-652
-traddr:  
 =====Discovery Log Entry 653======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-653
-traddr:  
 =====Discovery Log Entry 654======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-654
-traddr:  
 =====Discovery Log Entry 655======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-655
-traddr:  
 =====Discovery Log Entry 656======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-656
-traddr:  
 =====Discovery Log Entry 657======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-657
-traddr:  
 =====Discovery Log Entry 658======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-658
-traddr:  
 =====Discovery Log Entry 659======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-659
-traddr:  
 =====Discovery Log Entry 660======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-660
-traddr:  
 =====Discovery Log Entry 661======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-661
-traddr:  
 =====Discovery Log Entry 662======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-662
-traddr:  
 =====Discovery Log Entry 663======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-663
-traddr:  
 =====Discovery Log Entry 664======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-664
-traddr:  
 =====Discovery Log Entry 665======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-665
-traddr:  
 =====Discovery Log Entry 666======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-666
-traddr:  
 =====Discovery Log Entry 667======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-667
-traddr:  
 =====Discovery Log Entry 668======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-668
-traddr:  
 =====Discovery Log Entry 669======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-669
-traddr:  
 =====Discovery Log Entry 670======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-670
-traddr:  
 =====Discovery Log Entry 671======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-671
-traddr:  
 =====Discovery Log Entry 672======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-672
-traddr:  
 =====Discovery Log Entry 673======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-673
-traddr:  
 =====Discovery Log Entry 674======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-674
-traddr:  
 =====Discovery Log Entry 675======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-675
-traddr:  
 =====Discovery Log Entry 676======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-676
-traddr:  
 =====Discovery Log Entry 677======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-677
-traddr:  
 =====Discovery Log Entry 678======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-678
-traddr:  
 =====Discovery Log Entry 679======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-679
-traddr:  
 =====Discovery Log Entry 680======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-680
-traddr:  
 =====Discovery Log Entry 681======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-681
-traddr:  
 =====Discovery Log Entry 682======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-682
-traddr:  
 =====Discovery Log Entry 683======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-683
-traddr:  
 =====Discovery Log Entry 684======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-684
-traddr:  
 =====Discovery Log Entry 685======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-685
-traddr:  
 =====Discovery Log Entry 686======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-686
-traddr:  
 =====Discovery Log Entry 687======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-687
-traddr:  
 =====Discovery Log Entry 688======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-688
-traddr:  
 =====Discovery Log Entry 689======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-689
-traddr:  
 =====Discovery Log Entry 690======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-690
-traddr:  
 =====Discovery Log Entry 691======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-691
-traddr:  
 =====Discovery Log Entry 692======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-692
-traddr:  
 =====Discovery Log Entry 693======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-693
-traddr:  
 =====Discovery Log Entry 694======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-694
-traddr:  
 =====Discovery Log Entry 695======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-695
-traddr:  
 =====Discovery Log Entry 696======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-696
-traddr:  
 =====Discovery Log Entry 697======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-697
-traddr:  
 =====Discovery Log Entry 698======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-698
-traddr:  
 =====Discovery Log Entry 699======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-699
-traddr:  
 =====Discovery Log Entry 700======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-700
-traddr:  
 =====Discovery Log Entry 701======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-701
-traddr:  
 =====Discovery Log Entry 702======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-702
-traddr:  
 =====Discovery Log Entry 703======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-703
-traddr:  
 =====Discovery Log Entry 704======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-704
-traddr:  
 =====Discovery Log Entry 705======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-705
-traddr:  
 =====Discovery Log Entry 706======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-706
-traddr:  
 =====Discovery Log Entry 707======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-707
-traddr:  
 =====Discovery Log Entry 708======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-708
-traddr:  
 =====Discovery Log Entry 709======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-709
-traddr:  
 =====Discovery Log Entry 710======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-710
-traddr:  
 =====Discovery Log Entry 711======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-711
-traddr:  
 =====Discovery Log Entry 712======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-712
-traddr:  
 =====Discovery Log Entry 713======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-713
-traddr:  
 =====Discovery Log Entry 714======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-714
-traddr:  
 =====Discovery Log Entry 715======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-715
-traddr:  
 =====Discovery Log Entry 716======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-716
-traddr:  
 =====Discovery Log Entry 717======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-717
-traddr:  
 =====Discovery Log Entry 718======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-718
-traddr:  
 =====Discovery Log Entry 719======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-719
-traddr:  
 =====Discovery Log Entry 720======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-720
-traddr:  
 =====Discovery Log Entry 721======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-721
-traddr:  
 =====Discovery Log Entry 722======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-722
-traddr:  
 =====Discovery Log Entry 723======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-723
-traddr:  
 =====Discovery Log Entry 724======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-724
-traddr:  
 =====Discovery Log Entry 725======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-725
-traddr:  
 =====Discovery Log Entry 726======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-726
-traddr:  
 =====Discovery Log Entry 727======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-727
-traddr:  
 =====Discovery Log Entry 728======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-728
-traddr:  
 =====Discovery Log Entry 729======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-729
-traddr:  
 =====Discovery Log Entry 730======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-730
-traddr:  
 =====Discovery Log Entry 731======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-731
-traddr:  
 =====Discovery Log Entry 732======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-732
-traddr:  
 =====Discovery Log Entry 733======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-733
-traddr:  
 =====Discovery Log Entry 734======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-734
-traddr:  
 =====Discovery Log Entry 735======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-735
-traddr:  
 =====Discovery Log Entry 736======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-736
-traddr:  
 =====Discovery Log Entry 737======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-737
-traddr:  
 =====Discovery Log Entry 738======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-738
-traddr:  
 =====Discovery Log Entry 739======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-739
-traddr:  
 =====Discovery Log Entry 740======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-740
-traddr:  
 =====Discovery Log Entry 741======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-741
-traddr:  
 =====Discovery Log Entry 742======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-742
-traddr:  
 =====Discovery Log Entry 743======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-743
-traddr:  
 =====Discovery Log Entry 744======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-744
-traddr:  
 =====Discovery Log Entry 745======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-745
-traddr:  
 =====Discovery Log Entry 746======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-746
-traddr:  
 =====Discovery Log Entry 747======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-747
-traddr:  
 =====Discovery Log Entry 748======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-748
-traddr:  
 =====Discovery Log Entry 749======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-749
-traddr:  
 =====Discovery Log Entry 750======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-750
-traddr:  
 =====Discovery Log Entry 751======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-751
-traddr:  
 =====Discovery Log Entry 752======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-752
-traddr:  
 =====Discovery Log Entry 753======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-753
-traddr:  
 =====Discovery Log Entry 754======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-754
-traddr:  
 =====Discovery Log Entry 755======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-755
-traddr:  
 =====Discovery Log Entry 756======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-756
-traddr:  
 =====Discovery Log Entry 757======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-757
-traddr:  
 =====Discovery Log Entry 758======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-758
-traddr:  
 =====Discovery Log Entry 759======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-759
-traddr:  
 =====Discovery Log Entry 760======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-760
-traddr:  
 =====Discovery Log Entry 761======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-761
-traddr:  
 =====Discovery Log Entry 762======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-762
-traddr:  
 =====Discovery Log Entry 763======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-763
-traddr:  
 =====Discovery Log Entry 764======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-764
-traddr:  
 =====Discovery Log Entry 765======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-765
-traddr:  
 =====Discovery Log Entry 766======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-766
-traddr:  
 =====Discovery Log Entry 767======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-767
-traddr:  
 =====Discovery Log Entry 768======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-768
-traddr:  
 =====Discovery Log Entry 769======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-769
-traddr:  
 =====Discovery Log Entry 770======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-770
-traddr:  
 =====Discovery Log Entry 771======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-771
-traddr:  
 =====Discovery Log Entry 772======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-772
-traddr:  
 =====Discovery Log Entry 773======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-773
-traddr:  
 =====Discovery Log Entry 774======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-774
-traddr:  
 =====Discovery Log Entry 775======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-775
-traddr:  
 =====Discovery Log Entry 776======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-776
-traddr:  
 =====Discovery Log Entry 777======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-777
-traddr:  
 =====Discovery Log Entry 778======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-778
-traddr:  
 =====Discovery Log Entry 779======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-779
-traddr:  
 =====Discovery Log Entry 780======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-780
-traddr:  
 =====Discovery Log Entry 781======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-781
-traddr:  
 =====Discovery Log Entry 782======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-782
-traddr:  
 =====Discovery Log Entry 783======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-783
-traddr:  
 =====Discovery Log Entry 784======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-784
-traddr:  
 =====Discovery Log Entry 785======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-785
-traddr:  
 =====Discovery Log Entry 786======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-786
-traddr:  
 =====Discovery Log Entry 787======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-787
-traddr:  
 =====Discovery Log Entry 788======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-788
-traddr:  
 =====Discovery Log Entry 789======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-789
-traddr:  
 =====Discovery Log Entry 790======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-790
-traddr:  
 =====Discovery Log Entry 791======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-791
-traddr:  
 =====Discovery Log Entry 792======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-792
-traddr:  
 =====Discovery Log Entry 793======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-793
-traddr:  
 =====Discovery Log Entry 794======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-794
-traddr:  
 =====Discovery Log Entry 795======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-795
-traddr:  
 =====Discovery Log Entry 796======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-796
-traddr:  
 =====Discovery Log Entry 797======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-797
-traddr:  
 =====Discovery Log Entry 798======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-798
-traddr:  
 =====Discovery Log Entry 799======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-799
-traddr:  
 =====Discovery Log Entry 800======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-800
-traddr:  
 =====Discovery Log Entry 801======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-801
-traddr:  
 =====Discovery Log Entry 802======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-802
-traddr:  
 =====Discovery Log Entry 803======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-803
-traddr:  
 =====Discovery Log Entry 804======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-804
-traddr:  
 =====Discovery Log Entry 805======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-805
-traddr:  
 =====Discovery Log Entry 806======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-806
-traddr:  
 =====Discovery Log Entry 807======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-807
-traddr:  
 =====Discovery Log Entry 808======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-808
-traddr:  
 =====Discovery Log Entry 809======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-809
-traddr:  
 =====Discovery Log Entry 810======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-810
-traddr:  
 =====Discovery Log Entry 811======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-811
-traddr:  
 =====Discovery Log Entry 812======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-812
-traddr:  
 =====Discovery Log Entry 813======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-813
-traddr:  
 =====Discovery Log Entry 814======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-814
-traddr:  
 =====Discovery Log Entry 815======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-815
-traddr:  
 =====Discovery Log Entry 816======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-816
-traddr:  
 =====Discovery Log Entry 817======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-817
-traddr:  
 =====Discovery Log Entry 818======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-818
-traddr:  
 =====Discovery Log Entry 819======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-819
-traddr:  
 =====Discovery Log Entry 820======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-820
-traddr:  
 =====Discovery Log Entry 821======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-821
-traddr:  
 =====Discovery Log Entry 822======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-822
-traddr:  
 =====Discovery Log Entry 823======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-823
-traddr:  
 =====Discovery Log Entry 824======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-824
-traddr:  
 =====Discovery Log Entry 825======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-825
-traddr:  
 =====Discovery Log Entry 826======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-826
-traddr:  
 =====Discovery Log Entry 827======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-827
-traddr:  
 =====Discovery Log Entry 828======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-828
-traddr:  
 =====Discovery Log Entry 829======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-829
-traddr:  
 =====Discovery Log Entry 830======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-830
-traddr:  
 =====Discovery Log Entry 831======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-831
-traddr:  
 =====Discovery Log Entry 832======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-832
-traddr:  
 =====Discovery Log Entry 833======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-833
-traddr:  
 =====Discovery Log Entry 834======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-834
-traddr:  
 =====Discovery Log Entry 835======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-835
-traddr:  
 =====Discovery Log Entry 836======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-836
-traddr:  
 =====Discovery Log Entry 837======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-837
-traddr:  
 =====Discovery Log Entry 838======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-838
-traddr:  
 =====Discovery Log Entry 839======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-839
-traddr:  
 =====Discovery Log Entry 840======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-840
-traddr:  
 =====Discovery Log Entry 841======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-841
-traddr:  
 =====Discovery Log Entry 842======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-842
-traddr:  
 =====Discovery Log Entry 843======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-843
-traddr:  
 =====Discovery Log Entry 844======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-844
-traddr:  
 =====Discovery Log Entry 845======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-845
-traddr:  
 =====Discovery Log Entry 846======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-846
-traddr:  
 =====Discovery Log Entry 847======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-847
-traddr:  
 =====Discovery Log Entry 848======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-848
-traddr:  
 =====Discovery Log Entry 849======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-849
-traddr:  
 =====Discovery Log Entry 850======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-850
-traddr:  
 =====Discovery Log Entry 851======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-851
-traddr:  
 =====Discovery Log Entry 852======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-852
-traddr:  
 =====Discovery Log Entry 853======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-853
-traddr:  
 =====Discovery Log Entry 854======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-854
-traddr:  
 =====Discovery Log Entry 855======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-855
-traddr:  
 =====Discovery Log Entry 856======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-856
-traddr:  
 =====Discovery Log Entry 857======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-857
-traddr:  
 =====Discovery Log Entry 858======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-858
-traddr:  
 =====Discovery Log Entry 859======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-859
-traddr:  
 =====Discovery Log Entry 860======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-860
-traddr:  
 =====Discovery Log Entry 861======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-861
-traddr:  
 =====Discovery Log Entry 862======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-862
-traddr:  
 =====Discovery Log Entry 863======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-863
-traddr:  
 =====Discovery Log Entry 864======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-864
-traddr:  
 =====Discovery Log Entry 865======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-865
-traddr:  
 =====Discovery Log Entry 866======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-866
-traddr:  
 =====Discovery Log Entry 867======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-867
-traddr:  
 =====Discovery Log Entry 868======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-868
-traddr:  
 =====Discovery Log Entry 869======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-869
-traddr:  
 =====Discovery Log Entry 870======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-870
-traddr:  
 =====Discovery Log Entry 871======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-871
-traddr:  
 =====Discovery Log Entry 872======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-872
-traddr:  
 =====Discovery Log Entry 873======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-873
-traddr:  
 =====Discovery Log Entry 874======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-874
-traddr:  
 =====Discovery Log Entry 875======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-875
-traddr:  
 =====Discovery Log Entry 876======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-876
-traddr:  
 =====Discovery Log Entry 877======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-877
-traddr:  
 =====Discovery Log Entry 878======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-878
-traddr:  
 =====Discovery Log Entry 879======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-879
-traddr:  
 =====Discovery Log Entry 880======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-880
-traddr:  
 =====Discovery Log Entry 881======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-881
-traddr:  
 =====Discovery Log Entry 882======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-882
-traddr:  
 =====Discovery Log Entry 883======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-883
-traddr:  
 =====Discovery Log Entry 884======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-884
-traddr:  
 =====Discovery Log Entry 885======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-885
-traddr:  
 =====Discovery Log Entry 886======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-886
-traddr:  
 =====Discovery Log Entry 887======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-887
-traddr:  
 =====Discovery Log Entry 888======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-888
-traddr:  
 =====Discovery Log Entry 889======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-889
-traddr:  
 =====Discovery Log Entry 890======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-890
-traddr:  
 =====Discovery Log Entry 891======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-891
-traddr:  
 =====Discovery Log Entry 892======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-892
-traddr:  
 =====Discovery Log Entry 893======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-893
-traddr:  
 =====Discovery Log Entry 894======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-894
-traddr:  
 =====Discovery Log Entry 895======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-895
-traddr:  
 =====Discovery Log Entry 896======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-896
-traddr:  
 =====Discovery Log Entry 897======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-897
-traddr:  
 =====Discovery Log Entry 898======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-898
-traddr:  
 =====Discovery Log Entry 899======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-899
-traddr:  
 =====Discovery Log Entry 900======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-900
-traddr:  
 =====Discovery Log Entry 901======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-901
-traddr:  
 =====Discovery Log Entry 902======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-902
-traddr:  
 =====Discovery Log Entry 903======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-903
-traddr:  
 =====Discovery Log Entry 904======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-904
-traddr:  
 =====Discovery Log Entry 905======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-905
-traddr:  
 =====Discovery Log Entry 906======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-906
-traddr:  
 =====Discovery Log Entry 907======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-907
-traddr:  
 =====Discovery Log Entry 908======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-908
-traddr:  
 =====Discovery Log Entry 909======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-909
-traddr:  
 =====Discovery Log Entry 910======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-910
-traddr:  
 =====Discovery Log Entry 911======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-911
-traddr:  
 =====Discovery Log Entry 912======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-912
-traddr:  
 =====Discovery Log Entry 913======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-913
-traddr:  
 =====Discovery Log Entry 914======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-914
-traddr:  
 =====Discovery Log Entry 915======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-915
-traddr:  
 =====Discovery Log Entry 916======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-916
-traddr:  
 =====Discovery Log Entry 917======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-917
-traddr:  
 =====Discovery Log Entry 918======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-918
-traddr:  
 =====Discovery Log Entry 919======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-919
-traddr:  
 =====Discovery Log Entry 920======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-920
-traddr:  
 =====Discovery Log Entry 921======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-921
-traddr:  
 =====Discovery Log Entry 922======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-922
-traddr:  
 =====Discovery Log Entry 923======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-923
-traddr:  
 =====Discovery Log Entry 924======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-924
-traddr:  
 =====Discovery Log Entry 925======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-925
-traddr:  
 =====Discovery Log Entry 926======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-926
-traddr:  
 =====Discovery Log Entry 927======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-927
-traddr:  
 =====Discovery Log Entry 928======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-928
-traddr:  
 =====Discovery Log Entry 929======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-929
-traddr:  
 =====Discovery Log Entry 930======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-930
-traddr:  
 =====Discovery Log Entry 931======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-931
-traddr:  
 =====Discovery Log Entry 932======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-932
-traddr:  
 =====Discovery Log Entry 933======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-933
-traddr:  
 =====Discovery Log Entry 934======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-934
-traddr:  
 =====Discovery Log Entry 935======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-935
-traddr:  
 =====Discovery Log Entry 936======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-936
-traddr:  
 =====Discovery Log Entry 937======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-937
-traddr:  
 =====Discovery Log Entry 938======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-938
-traddr:  
 =====Discovery Log Entry 939======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-939
-traddr:  
 =====Discovery Log Entry 940======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-940
-traddr:  
 =====Discovery Log Entry 941======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-941
-traddr:  
 =====Discovery Log Entry 942======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-942
-traddr:  
 =====Discovery Log Entry 943======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-943
-traddr:  
 =====Discovery Log Entry 944======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-944
-traddr:  
 =====Discovery Log Entry 945======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-945
-traddr:  
 =====Discovery Log Entry 946======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-946
-traddr:  
 =====Discovery Log Entry 947======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-947
-traddr:  
 =====Discovery Log Entry 948======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-948
-traddr:  
 =====Discovery Log Entry 949======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-949
-traddr:  
 =====Discovery Log Entry 950======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-950
-traddr:  
 =====Discovery Log Entry 951======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-951
-traddr:  
 =====Discovery Log Entry 952======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-952
-traddr:  
 =====Discovery Log Entry 953======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-953
-traddr:  
 =====Discovery Log Entry 954======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-954
-traddr:  
 =====Discovery Log Entry 955======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-955
-traddr:  
 =====Discovery Log Entry 956======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-956
-traddr:  
 =====Discovery Log Entry 957======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-957
-traddr:  
 =====Discovery Log Entry 958======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-958
-traddr:  
 =====Discovery Log Entry 959======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-959
-traddr:  
 =====Discovery Log Entry 960======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-960
-traddr:  
 =====Discovery Log Entry 961======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-961
-traddr:  
 =====Discovery Log Entry 962======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-962
-traddr:  
 =====Discovery Log Entry 963======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-963
-traddr:  
 =====Discovery Log Entry 964======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-964
-traddr:  
 =====Discovery Log Entry 965======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-965
-traddr:  
 =====Discovery Log Entry 966======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-966
-traddr:  
 =====Discovery Log Entry 967======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-967
-traddr:  
 =====Discovery Log Entry 968======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-968
-traddr:  
 =====Discovery Log Entry 969======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-969
-traddr:  
 =====Discovery Log Entry 970======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-970
-traddr:  
 =====Discovery Log Entry 971======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-971
-traddr:  
 =====Discovery Log Entry 972======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-972
-traddr:  
 =====Discovery Log Entry 973======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-973
-traddr:  
 =====Discovery Log Entry 974======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-974
-traddr:  
 =====Discovery Log Entry 975======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-975
-traddr:  
 =====Discovery Log Entry 976======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-976
-traddr:  
 =====Discovery Log Entry 977======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-977
-traddr:  
 =====Discovery Log Entry 978======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-978
-traddr:  
 =====Discovery Log Entry 979======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-979
-traddr:  
 =====Discovery Log Entry 980======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-980
-traddr:  
 =====Discovery Log Entry 981======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-981
-traddr:  
 =====Discovery Log Entry 982======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-982
-traddr:  
 =====Discovery Log Entry 983======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-983
-traddr:  
 =====Discovery Log Entry 984======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-984
-traddr:  
 =====Discovery Log Entry 985======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-985
-traddr:  
 =====Discovery Log Entry 986======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-986
-traddr:  
 =====Discovery Log Entry 987======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-987
-traddr:  
 =====Discovery Log Entry 988======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-988
-traddr:  
 =====Discovery Log Entry 989======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-989
-traddr:  
 =====Discovery Log Entry 990======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-990
-traddr:  
 =====Discovery Log Entry 991======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-991
-traddr:  
 =====Discovery Log Entry 992======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-992
-traddr:  
 =====Discovery Log Entry 993======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-993
-traddr:  
 =====Discovery Log Entry 994======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-994
-traddr:  
 =====Discovery Log Entry 995======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-995
-traddr:  
 =====Discovery Log Entry 996======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-996
-traddr:  
 =====Discovery Log Entry 997======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-997
-traddr:  
 =====Discovery Log Entry 998======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-998
-traddr:  
 =====Discovery Log Entry 999======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-999
-traddr:  
 Test complete
diff --git a/tests/nvme/016.out b/tests/nvme/016.out
index b70603144d5c..f59410e98f99 100644
--- a/tests/nvme/016.out
+++ b/tests/nvme/016.out
@@ -1,13 +1,6 @@
 Running nvme/016
-
 Discovery Log Number of Records 1, Generation counter X
 =====Discovery Log Entry 0======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-1
-traddr:  
 Test complete
diff --git a/tests/nvme/017.out b/tests/nvme/017.out
index cf212971d180..14a31646ed79 100644
--- a/tests/nvme/017.out
+++ b/tests/nvme/017.out
@@ -1,13 +1,6 @@
 Running nvme/017
-
 Discovery Log Number of Records 1, Generation counter X
 =====Discovery Log Entry 0======
 trtype:  loop
-adrfam:  pci
-subtype: nvme subsystem
-treq:    not specified
-portid:  X
-trsvcid: 
 subnqn:  blktests-subsystem-1
-traddr:  
 Test complete
diff --git a/tests/nvme/rc b/tests/nvme/rc
index 22833d8ef9bb..74e316248ef5 100644
--- a/tests/nvme/rc
+++ b/tests/nvme/rc
@@ -120,6 +120,7 @@ _find_nvme_loop_dev() {
 }
 
 _filter_discovery() {
-	sed -r  -e "s/portid:  [0-9]+/portid:  X/" \
-		-e "s/Generation counter [0-9]+/Generation counter X/"
+	sed -n -r -e "s/Generation counter [0-9]+/Generation counter X/" \
+		  -e '/Discovery Log Number|Log Entry|trtype|subnqn/p'
+
 }
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
