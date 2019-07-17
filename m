Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9D76C027
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 19:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsMIzzH4fWAdAl580wqvbjwX4eKYNUv73YOTXXbH0WQ=; b=WZO++69kd07nz2
	A/M+K7GYdrgR7C/CziwZYny+gJ5ReLV/qPHBhgoYzbIlyjLvN6YX8fOeyXGB3jDCUf1yczkCore5W
	UHAJkDBJl+RZyowT+6Fnwftg+0uHSPqI8Rm7i1u6xVQT62q0A8dvguOdcz0kpnohFwEFC18Kla3L7
	Qm+xqg6wrPZwwuh3fXuYIaHwEbgtdDvMh9LrMmfxbW5stJuwuv5PLN+u9YSPiQFHth51gk3pWsv4u
	ASOWsPADvRZdOXzVZ4SA+N8zQOJHDIicvhabLJ+rUukCsVOdOYFKXHmf0XRrBbfhIyOrN0xj3AGCT
	gUxY0WM9nH5m6EE4KCwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnUt-0000WE-6l; Wed, 17 Jul 2019 17:13:43 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnUS-0000Px-Ej
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 17:13:18 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUM-00012r-Uz; Wed, 17 Jul 2019 11:13:12 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUK-0000sU-F9; Wed, 17 Jul 2019 11:13:08 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Omar Sandoval <osandov@fb.com>
Date: Wed, 17 Jul 2019 11:12:51 -0600
Message-Id: <20190717171259.3311-5-logang@deltatee.com>
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
Subject: [PATCH blktests v2 04/12] nvme/003,
 004: Add missing calls to nvme disconnect
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_101316_584168_DF9834F1 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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

Tests 003 and 004 do not call  nvme disconnect. In most cases it is
cleaned up by removing the modules but it should be made explicit.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 tests/nvme/003     | 1 +
 tests/nvme/003.out | 1 +
 tests/nvme/004     | 1 +
 tests/nvme/004.out | 1 +
 4 files changed, 4 insertions(+)

diff --git a/tests/nvme/003 b/tests/nvme/003
index c6b3d4037aa6..374e6af0ca6f 100755
--- a/tests/nvme/003
+++ b/tests/nvme/003
@@ -42,6 +42,7 @@ test() {
 		echo "Fail"
 	fi
 
+	nvme disconnect -n nqn.2014-08.org.nvmexpress.discovery
 	_remove_nvmet_subsystem_from_port "${port}" "blktests-subsystem-1"
 	_remove_nvmet_subsystem "blktests-subsystem-1"
 	_remove_nvmet_port "${port}"
diff --git a/tests/nvme/003.out b/tests/nvme/003.out
index 01b275612159..beb356128c9d 100644
--- a/tests/nvme/003.out
+++ b/tests/nvme/003.out
@@ -1,2 +1,3 @@
 Running nvme/003
+NQN:nqn.2014-08.org.nvmexpress.discovery disconnected 1 controller(s)
 Test complete
diff --git a/tests/nvme/004 b/tests/nvme/004
index 0506fa220de3..767aedaa0263 100755
--- a/tests/nvme/004
+++ b/tests/nvme/004
@@ -40,6 +40,7 @@ test() {
 	cat "/sys/block/${nvmedev}n1/uuid"
 	cat "/sys/block/${nvmedev}n1/wwid"
 
+	nvme disconnect -n "blktests-subsystem-1"
 	_remove_nvmet_subsystem_from_port "${port}" "blktests-subsystem-1"
 	_remove_nvmet_subsystem "blktests-subsystem-1"
 	_remove_nvmet_port "${port}"
diff --git a/tests/nvme/004.out b/tests/nvme/004.out
index 53f911ecf329..51f605227320 100644
--- a/tests/nvme/004.out
+++ b/tests/nvme/004.out
@@ -1,4 +1,5 @@
 Running nvme/004
 91fdba0d-f87b-4c25-b80f-db7be1418b9e
 uuid.91fdba0d-f87b-4c25-b80f-db7be1418b9e
+NQN:blktests-subsystem-1 disconnected 1 controller(s)
 Test complete
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
