Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A7F6C03B
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 19:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0VPGiEigQdd15Dsim+bq8zSYExGZW+gFcl9XwRAIpM=; b=ktbj2iDeSdbAOL
	Xgr9iUO7W8sO4UlTP/RMJxi9XQ/jSfr525/1hNVvP6tciGkKbzfJjB4MXCejO/FkFfSewZoR8+HTi
	faOFmapL4vC1uhooZ7Ohydbr5o5jcwTPqqk1uL0flVmnh3CuiIbdgWs+6JrmY9ThB+BsGvQdcdN2x
	QrW9r10pbINlRMEipnUINx3j58ioaLV5diyJ3IjrK62Osp8N45A1xAU6wiL7qlpZlDNrV+qyyOkRP
	OVGFHKEKnW6J7O2ZAv/dkJiXmmri+ni70l/7fPOKRd6nRbeTm9tG58W16R/6iz2PNc2fGMLvbQDFR
	67UrvJLAiDfCQobkJ+sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnXa-0003aa-Ii; Wed, 17 Jul 2019 17:16:30 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnUT-0000Ua-FF
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 17:13:21 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUM-00012q-Uz; Wed, 17 Jul 2019 11:13:17 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUK-0000sR-CH; Wed, 17 Jul 2019 11:13:08 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Omar Sandoval <osandov@fb.com>
Date: Wed, 17 Jul 2019 11:12:50 -0600
Message-Id: <20190717171259.3311-4-logang@deltatee.com>
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
Subject: [PATCH blktests v2 03/12] nvme: Add new test to verify the generation
 counter
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_101317_548359_5F96AAB7 
X-CRM114-Status: GOOD (  11.32  )
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

Now that the other discovery tests ignore the generation counter value,
create a new test to specifically check that it increments when
subsystems are added or removed from ports and when allow_any_host
is set/unset.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 tests/nvme/030     | 76 ++++++++++++++++++++++++++++++++++++++++++++++
 tests/nvme/030.out |  2 ++
 tests/nvme/rc      |  5 +++
 3 files changed, 83 insertions(+)
 create mode 100755 tests/nvme/030
 create mode 100644 tests/nvme/030.out

diff --git a/tests/nvme/030 b/tests/nvme/030
new file mode 100755
index 000000000000..963e1ad7118c
--- /dev/null
+++ b/tests/nvme/030
@@ -0,0 +1,76 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-3.0+
+# Copyright (C) 2019 Logan Gunthorpe
+#
+# Test nvme discovery generation counter
+
+. tests/nvme/rc
+
+DESCRIPTION="ensure the discovery generation counter is updated appropriately"
+QUICK=1
+
+requires() {
+	_have_program nvme &&
+	_have_modules loop nvme-loop nvmet &&
+	_have_configfs
+}
+
+
+checkgenctr() {
+	local last=$1
+	local msg=$2
+	local genctr
+
+	genctr=$(_discovery_genctr)
+	if (( "${genctr}" <= "${last}" )); then
+		echo "Generation counter not incremented when ${msg} (${genctr} <= ${last})"
+	fi
+
+	echo "${genctr}"
+}
+
+test() {
+	local port
+	local genctr
+	local subsys="blktests-subsystem-"
+
+	echo "Running ${TEST_NAME}"
+
+	modprobe nvmet
+	modprobe nvme-loop
+
+	port="$(_create_nvmet_port "loop")"
+
+	_create_nvmet_subsystem "${subsys}1" "$(losetup -f)"
+	_add_nvmet_subsys_to_port "${port}" "${subsys}1"
+
+	genctr=$(_discovery_genctr)
+
+	_create_nvmet_subsystem "${subsys}2" "$(losetup -f)"
+	_add_nvmet_subsys_to_port "${port}" "${subsys}2"
+
+	genctr=$(checkgenctr "${genctr}" "adding a subsystem to a port")
+
+	echo 0 > "${NVMET_CFS}/subsystems/${subsys}2/attr_allow_any_host"
+
+	genctr=$(checkgenctr "${genctr}" "clearing attr_allow_any_host")
+
+	echo 1 > "${NVMET_CFS}/subsystems/${subsys}2/attr_allow_any_host"
+
+	genctr=$(checkgenctr "${genctr}" "setting attr_allow_any_host")
+
+	_remove_nvmet_subsystem_from_port "${port}" "${subsys}2"
+	_remove_nvmet_subsystem "${subsys}2"
+
+	genctr=$(checkgenctr "${genctr}" "removing a subsystem from a port")
+
+	_remove_nvmet_subsystem_from_port "${port}" "${subsys}1"
+	_remove_nvmet_subsystem "${subsys}1"
+
+	_remove_nvmet_port "${port}"
+
+	modprobe -r nvme-loop
+	modprobe -r nvmet
+
+	echo "Test complete"
+}
diff --git a/tests/nvme/030.out b/tests/nvme/030.out
new file mode 100644
index 000000000000..93e51905b5d4
--- /dev/null
+++ b/tests/nvme/030.out
@@ -0,0 +1,2 @@
+Running nvme/030
+Test complete
diff --git a/tests/nvme/rc b/tests/nvme/rc
index 74e316248ef5..7be6c903611b 100644
--- a/tests/nvme/rc
+++ b/tests/nvme/rc
@@ -124,3 +124,8 @@ _filter_discovery() {
 		  -e '/Discovery Log Number|Log Entry|trtype|subnqn/p'
 
 }
+
+_discovery_genctr() {
+	nvme discover -t loop |
+		sed -n -e 's/^.*Generation counter \([0-9]\+\).*$/\1/p'
+}
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
