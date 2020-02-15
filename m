Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162B815FC1C
	for <lists+linux-nvme@lfdr.de>; Sat, 15 Feb 2020 02:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLZteuevKG1lyO3Jdl5UaLNXIydtZj7kBL43neXBUOg=; b=VI+hKHM+CYgZdQ
	f2qmECIKvw6H8AALgI3UZECnIbiIcRpSHlGpurIijM9a5ZpOkpBAJMHfIbiby1nrvAmRw0WWt4Fd0
	Y65/cOI9YEXqfw+Dfan046S8qW7AM7NGGw0McoW8Rh5B0Xv+cYFbbqJpGfuXiWDQJlzY1BEJMklxQ
	YKu08c3+429OtCkklzD6hu3cmqz1YC3KUXXmzAujcZZx6pbT3OnEVA/nSVNTH6ArQl/3Q3FL9FCWL
	0+h1WCzDJ3LAptzawMkOhKup8u9fFVUbw8LbWz1NDvjY8+Bo759DBMSbwy5Q3O9GuRj6Bhs/YYR6s
	SCnAr1jrZh6miP49yb2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2mQb-000760-AB; Sat, 15 Feb 2020 01:39:29 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2mQ7-0006nm-0r
 for linux-nvme@lists.infradead.org; Sat, 15 Feb 2020 01:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581730738; x=1613266738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5L38YCFHyNaTJJrUPZRKoSjD9YGnj5K8/s1glqKjrms=;
 b=aidzwTB0vHzNuCNZiHY83LRcbmZo8Q30+CJzyD+lr769IJFS3nGoAWfG
 hRDP6cgQGWKV1DCoo364gtogyLrFi34d5l6Tf19D28g3T09SbCracvRKV
 gTn0cLTc1CNjl/H3C9Ory7EfccfCvOEtmR0VjuxTUH1JOlCUGTYPW/Ri/
 q/k0P9KwO8JxtKRAegIkpy4lrL05JahrRKffNfN1P2CJ2hxx7B//yjfqL
 g/exTbgRLJa6rGkEFVMsWC6Ml4d+L82bc2Z7YHbPv7Xq5soCmebMx1DtM
 2L4xvMjw8DNLBFEGSCmZ3y2mC35YRJ5QcntiadcZGmKGsXQvZX0o4RgHD g==;
IronPort-SDR: 1KC88hRguSIJnMAcsuCno/e98YZNJmJDp/ZdMcqnVC5A3HVpCvYHayd9CqRsCRSfLWEKkLtU4M
 n8AaGU9wejgARA2z7DFYoC3h96LTBUH/9At4eKqW0Gyqo30RlTR2ZaacIOqwbyhs0/XmVTgZ0m
 xXCgwc7CeFfKsSKdZhSMNXlrC1GHqwv/1CyhVG4SegWbThhCzoojhdbQMMM0OcqBrVR0kO6cO2
 3PvV6KWYjaxDvvc+QzsaWieqs6R5ZeouiitOmK6gmUdKlwZqYzIJkwFvfT8B7j7VimjdeMXy3S
 uEs=
X-IronPort-AV: E=Sophos;i="5.70,442,1574092800"; d="scan'208";a="129907010"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2020 09:38:39 +0800
IronPort-SDR: XP5EqpftmDw+iqt20PJgCgODtqrmlBxMTUng+drUCpFfgx3TGSCMsC9iQVB9fia889OqP+JZj5
 lyhzq6ZOhVDjQxKx63soCGP9+T8EqxrB/PeayL5r8Rr/3oxd5HnfM2FV8C82sdyr5ntxV3Kexy
 i4UqdUsbjfWTm3gXtckaExI2xWyNnytNWnbuygXYjcVjE3R/7lTjYHgI+xzk9D2YXoEemCDxiC
 0T+v/Sk6zxVxDwopglA7KUtN1c9IdEbPN0PiMz4P9AqrFXpmZpiQcWR5cYFC2kTLHzUdVQPofm
 eK+i/LacxQQlyXsgKamA72kj
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 17:31:24 -0800
IronPort-SDR: ddlkWu/OvFKpj3IaiZX2oNYEfsDFFydug6wgJKZkSuljNLr79ok5eouWq6JutStbefJSaycQjK
 mxEwZwOQPsiqg2tcLipcWX0kYMX9h7pJXvJNxU+r3JmXmQOgeIJ5vaEGeNz939b3QKYjht+SsL
 p59ldazokABtXMNfGXEOoqkC8MLkUu2QtOe4zfkxsBfcYNykU4c5P3iJZiyh+M3tV3bvDr0/Fm
 AiFM+5DC+5c+pSL+40KIBPRTo90A77y3ko67hg/fKhy+3lkK5qr0hRuCeFmYIvJpsd8bD6b/8I
 BMg=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 14 Feb 2020 17:38:39 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: osandov@fb.com
Subject: [PATCH blktests V2 3/3] nvme: test target model attribute
Date: Fri, 14 Feb 2020 17:38:31 -0800
Message-Id: <20200215013831.6715-4-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200215013831.6715-1-chaitanya.kulkarni@wdc.com>
References: <20200215013831.6715-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_173859_125002_2B12C5A1 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-block@vger.kernel.org,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The new testcases exercises newly added model attribute for
NVMeOF target.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 tests/nvme/034     | 64 ++++++++++++++++++++++++++++++++++++++++++++++
 tests/nvme/034.out |  3 +++
 2 files changed, 67 insertions(+)
 create mode 100755 tests/nvme/034
 create mode 100644 tests/nvme/034.out

diff --git a/tests/nvme/034 b/tests/nvme/034
new file mode 100755
index 0000000..0e51a62
--- /dev/null
+++ b/tests/nvme/034
@@ -0,0 +1,64 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0+
+# Copyright (c) 2017-2018 Western Digital Corporation or its affiliates.
+#
+# Test NVMeOF target model attributes.
+
+. tests/nvme/rc
+
+DESCRIPTION="Test NVMeOF target model attribute"
+QUICK=1
+
+PORT=""
+NVMEDEV=""
+LOOP_DEV=""
+MODEL="test~model"
+FILE_PATH="$TMPDIR/img"
+SUBSYS_NAME="blktests-subsystem-1"
+
+_have_model()
+
+{
+	_setup_nvmet
+	truncate -s 1G "${FILE_PATH}"
+	LOOP_DEV="$(losetup -f --show "${FILE_PATH}")"
+
+	# we can only know skip reason when we create a subsys
+	 _create_nvmet_subsystem "${SUBSYS_NAME}" "${LOOP_DEV}" \
+		"91fdba0d-f87b-4c25-b80f-db7be1418b9e" 14 15 \
+		${MODEL}
+}
+
+requires() {
+	_have_program nvme && _have_modules loop nvme-loop nvmet && \
+		_have_configfs && _have_model
+}
+
+test() {
+	echo "Running ${TEST_NAME}"
+
+	PORT="$(_create_nvmet_port "loop")"
+	_add_nvmet_subsys_to_port "${PORT}" "${SUBSYS_NAME}"
+
+	nvme connect -t loop -n "${SUBSYS_NAME}"
+
+	udevadm settle
+
+	NVMEDEV="$(_find_nvme_loop_dev)"
+	nvme list | grep "${NVMEDEV}"n1 | grep -q "${MODEL}"
+	result=$?
+
+	nvme disconnect -n "${SUBSYS_NAME}"
+
+	_remove_nvmet_subsystem_from_port "${PORT}" "${SUBSYS_NAME}"
+	_remove_nvmet_subsystem "${SUBSYS_NAME}"
+	_remove_nvmet_port "${PORT}"
+
+	losetup -d "${LOOP_DEV}"
+
+	rm "${FILE_PATH}"
+
+	if [ ${result} -eq 0 ]; then
+		echo "Test complete"
+	fi
+}
diff --git a/tests/nvme/034.out b/tests/nvme/034.out
new file mode 100644
index 0000000..0a7bd2f
--- /dev/null
+++ b/tests/nvme/034.out
@@ -0,0 +1,3 @@
+Running nvme/034
+NQN:blktests-subsystem-1 disconnected 1 controller(s)
+Test complete
-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
