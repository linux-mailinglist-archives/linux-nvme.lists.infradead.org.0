Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EB87D214
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 01:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vz/rb1OZFdp86DsnV49CelcyrHlPnG/XyZ3LUCMAteQ=; b=prNDS2o+jfCGc6
	F8xe1Z2Vp8O/nkHMIctt6mcBmXMMCPwA/U2AyWlVc9JMJ6QScFjWSqGnu0+iemrY6bCcsCIOEXtXA
	9ZGh3Dky/DEg1ERl/UHFB8j2FyVXEis4b+AFvdSAEzw6vlauqX0w7gkJJkjPUGWK1d7psg1ODeBeo
	fluNrAtDsE7OCDAUapOaaydxi4XdzjXz12KB8JTsJF5BaK/uljeCYaXWD5+xqSsZ9Wy9ndFvlFpHI
	xQa7ui+hWnfp4m2QwWV1YNsHcL1uRrW/W1O0psaSzAptMfBwDStikGG78P+/N7CmQ4CiEgxN0NQND
	s5EMfNdXvaf/1qprIK6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsyJc-0003LX-UY; Wed, 31 Jul 2019 23:47:28 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsyJZ-0003LC-2Q
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 23:47:26 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hsyJX-0003gk-Lp; Wed, 31 Jul 2019 17:47:24 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hsyJW-0001Qd-4d; Wed, 31 Jul 2019 17:47:22 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Omar Sandoval <osandov@fb.com>
Date: Wed, 31 Jul 2019 17:47:08 -0600
Message-Id: <20190731234708.5450-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 osandov@fb.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH blktests] nvme/031: Add test to check controller deletion
 after setup
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_164725_155483_DE26B8A7 
X-CRM114-Status: GOOD (  12.74  )
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
Cc: Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A number of bug fixes have been submitted to the kernel to
fix bugs when a controller is removed immediately after it is
set up. This new test ensures this doesn't regress.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---

All of the fixes required for this test to pass have been on the
list for a couple weeks, but not all of them have been merged.

I'm not sure what the policy is for blktests for patches that
aren't yet upstream but this patch is here for when it makes
sense to pick it up.

 tests/nvme/031     | 55 ++++++++++++++++++++++++++++++++++++++++++++++
 tests/nvme/031.out |  2 ++
 2 files changed, 57 insertions(+)
 create mode 100755 tests/nvme/031
 create mode 100644 tests/nvme/031.out

diff --git a/tests/nvme/031 b/tests/nvme/031
new file mode 100755
index 000000000000..16390dcb380e
--- /dev/null
+++ b/tests/nvme/031
@@ -0,0 +1,55 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-3.0+
+# Copyright (C) 2019 Logan Gunthorpe
+#
+# Regression test for the following patches:
+#    nvme: fix controller removal race with scan work
+#    nvme: fix regression upon hot device removal and insertion
+#    nvme-core: Fix extra device_put() call on error path
+#    nvmet-loop: Flush nvme_delete_wq when removing the port
+#    nvmet: Fix use-after-free bug when a port is removed
+#
+# All these patches fix issues related to deleting a controller
+# immediately after setting it up.
+
+. tests/nvme/rc
+
+DESCRIPTION="test deletion of NVMeOF controllers immediately after setup"
+QUICK=1
+
+requires() {
+	_have_program nvme &&
+	_have_modules loop nvme-loop nvmet &&
+	_have_configfs
+}
+
+test() {
+	local subsys="blktests-subsystem-"
+	local iterations=10
+	local loop_dev
+	local port
+
+	echo "Running ${TEST_NAME}"
+
+	_setup_nvmet
+
+	truncate -s 1G "$TMPDIR/img"
+
+	local loop_dev
+	loop_dev="$(losetup -f --show "$TMPDIR/img")"
+
+	port="$(_create_nvmet_port "loop")"
+
+	for ((i = 0; i < iterations; i++)); do
+		_create_nvmet_subsystem "${subsys}$i" "${loop_dev}"
+		_add_nvmet_subsys_to_port "${port}" "${subsys}$i"
+		nvme connect -t loop -n "${subsys}$i"
+		nvme disconnect -n "${subsys}$i" >> "${FULL}" 2>&1
+		_remove_nvmet_subsystem_from_port "${port}" "${subsys}$i"
+		_remove_nvmet_subsystem "${subsys}$i"
+	done
+
+	_remove_nvmet_port "${port}"
+
+	echo "Test complete"
+}
diff --git a/tests/nvme/031.out b/tests/nvme/031.out
new file mode 100644
index 000000000000..ae902bdd36d4
--- /dev/null
+++ b/tests/nvme/031.out
@@ -0,0 +1,2 @@
+Running nvme/031
+Test complete
--
2.20.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
