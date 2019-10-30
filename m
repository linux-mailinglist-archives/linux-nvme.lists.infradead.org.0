Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 879E6EA475
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 20:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quXqpvrFbRVoOeV5PwQrqPtcfDyp6uDyoufW23d+C18=; b=HOUkHpAaIGbkg8
	O0AE83DuTW2ohmhp0tYru+WnCMx7Mz44490InEkJ5b8RBdB9x2GFFkLvDw4dYJSHbB9xYr3cZjiCK
	d0+ENDdYhpWRCp7/P5FBCk+21t/j24XNawfFSX+5pVp3g38nBO6iI/iHbUrCnibYC73EtcMR5dgXR
	lfgx6OIHFOwCIjeg8+ToDH939sSdDxRQEcgfUsek2oCkFn3ddhf6puPqUxzU5hiL1Ek4sQgOhpA6E
	Fc1FcME5kbCQgLxn1f6Jbgz716gdBQTLwLKw8l1qHpNAyvzD11CpAzHYSw0NtNnWHdzOvloVWER1C
	rq48LU4J5Zn19KGtxZTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPu2I-0001zv-LD; Wed, 30 Oct 2019 19:53:42 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPu1i-0001fc-RD
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 19:53:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1572465186; x=1604001186;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xxB8ONVZT3rpIcghMpkObANMXcuVWQBdbOCLaXtbr1I=;
 b=JxFhfnCIhqxlFXRZAz9hyw/2PADQD66fi2rvfiCeZdcHjecr4CM2o56B
 WhaglzFGYO8WCYjiiUjtJA7mCZyH2HXr5wWMXX9S3VQ0U6zkW5Cp4z1Km
 eZDq5O60YuYp8joMqvwcv9nKnXV/MCXnuOWc7yuDAHVbZ1Fjvf3sgX2Va
 TBBHnC+DpS+wBaFermDNi5YaBhNctI8XjikCWWgrXDplCPVUoad4nfULs
 Y1xNuhniSJIp0B3gayL+OKPNcgdrAU7VlplYgyC2flXOASTcZK3+ud03b
 NlpnrfAv2hl6DdRizrW4JZDWOLm7KrovxzhgEeeRYPIP93Vlkmb3LKH5F g==;
IronPort-SDR: wiOxDEK1xIt6nA1hsaFKXzFN900ew6nSlPA4M6a1m3CZiOmmXXwaaZ0j8HgrpyvcnNP2vMmL1Q
 1EjVnG6zc+Hfxre56bJFDS6OAno9z8bH2EYAsPaQl/eNJ7+Z5W3kBlPUYDyyoBIxpGTw1K8vKI
 FPwtlag5Vq8RrntAJIzBD2i8mzuNt56zPOKIDXZQnXtBe5vSOtCivswNGQexD6eUF2vHY8nwaM
 VYo5rZ/M0ECaCHMZkqSYH49y5H9M3OBM9gykAYxT/cDUkpos4fdtl+V+V+veo4qF8gwBLhDLug
 BhA=
X-IronPort-AV: E=Sophos;i="5.68,248,1569254400"; d="scan'208";a="121731711"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 Oct 2019 03:53:05 +0800
IronPort-SDR: vh2IC0ip6v4ksTGfujmjaQyJVKyl6l8Wd45DEFCrf459mWRFOFoH0ec8ny4uQ9tGP5tvK4sKct
 o5DFw8Wj4NEavHCfdENg5LM7c6eNDztKlruZaCFiWi+5brAFpJbgWMUPQMDkNam3U1PvS5MEVJ
 nNshyHBpuUpCOl0BIfneb67sp69GljnD/hApjg15Xma8xsxytmgJYyldumrvqtrNaB//xKCjys
 9dmhJwSDFaDr1NnP1tL/DXKCnHoiD0ExABt0P2JNdfvhijjKPtsVjedT1w3xB2eEyYiAe2PUA2
 eWwTDvCCGameU4Uv4lLN8H3w
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 12:48:28 -0700
IronPort-SDR: GXvbH9Em6dJjDgNe6Ub/OVEaXoNkdvc7w9xpN2Cp3umpxLOCn9pz0oSy7s6GUkq6pUor08D5j/
 JzvF8gEnMaBjU8HsP+xDvybKLrTyr8KeeETqNdCHCCFbI5NO/JEf1tGxTrZ4c7v1UJe8yMiXr/
 Wemw3Cg/SsllkFVUc87a4FhRem2ly1rb8hzhpnoKMru1DsEjbwLhbU1vrxQjFzKCa/0VJIMJjR
 9Firr6ts4Fkw0bkdeLTGNR24cqhiPfYZ64W9ijP8AIwTQJtRowc7h+MldvVXonpJBhtDEuuHCF
 Dp0=
WDCIronportException: Internal
Received: from cvenusqemu.hgst.com ([10.202.66.73])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Oct 2019 12:53:06 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org
Subject: [blktests PATCH 2/2] nvme: add new test to check model attribute
Date: Wed, 30 Oct 2019 12:52:58 -0700
Message-Id: <20191030195258.31108-3-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20191030195258.31108-1-chaitanya.kulkarni@wdc.com>
References: <20191030195258.31108-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_125306_917504_2909F35D 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This test allows us to dynamically set the subsys model attribute
and verify in the nvme list command output.
---
 tests/nvme/033     | 61 ++++++++++++++++++++++++++++++++++++++++++++++
 tests/nvme/033.out |  3 +++
 2 files changed, 64 insertions(+)
 create mode 100755 tests/nvme/033
 create mode 100644 tests/nvme/033.out

diff --git a/tests/nvme/033 b/tests/nvme/033
new file mode 100755
index 0000000..8ddadcf
--- /dev/null
+++ b/tests/nvme/033
@@ -0,0 +1,61 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0+
+# Copyright (c) 2017-2018 Western Digital Corporation or its affiliates.
+#
+# Test NVMeOF model attribute for subsys.
+
+. tests/nvme/rc
+
+DESCRIPTION="test added subsys model attribute"
+QUICK=1
+
+requires() {
+	_have_program nvme && _have_modules loop nvme-loop nvmet && \
+		_have_configfs
+}
+
+test() {
+	echo "Running ${TEST_NAME}"
+
+	_setup_nvmet
+
+	local port
+	local nvmedev
+	local loop_dev
+	local file_path="$TMPDIR/img"
+	local subsys_name="blktests-subsystem-1"
+
+	truncate -s 1G "${file_path}"
+
+	loop_dev="$(losetup -f --show "${file_path}")"
+
+	_create_nvmet_subsystem "${subsys_name}" "${loop_dev}" \
+		"91fdba0d-f87b-4c25-b80f-db7be1418b9e" "${subsys_name}"
+	port="$(_create_nvmet_port "loop")"
+	_add_nvmet_subsys_to_port "${port}" "${subsys_name}"
+
+	nvme connect -t loop -n "${subsys_name}"
+
+	nvme list | grep -v grep | grep -q "${subsys_name}"
+	ret=$?
+	
+	nvmedev="$(_find_nvme_loop_dev)"
+
+	udevadm settle
+
+	nvme disconnect -n "${subsys_name}"
+
+	_remove_nvmet_subsystem_from_port "${port}" "${subsys_name}"
+	_remove_nvmet_subsystem "${subsys_name}"
+	_remove_nvmet_port "${port}"
+
+	losetup -d "${loop_dev}"
+
+	rm "${file_path}"
+
+	if [ ${ret} == 1 ]; then
+		echo "Test Fail"
+	else
+		echo "Test complete"
+	fi
+}
diff --git a/tests/nvme/033.out b/tests/nvme/033.out
new file mode 100644
index 0000000..eb508be
--- /dev/null
+++ b/tests/nvme/033.out
@@ -0,0 +1,3 @@
+Running nvme/033
+NQN:blktests-subsystem-1 disconnected 1 controller(s)
+Test complete
-- 
2.22.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
