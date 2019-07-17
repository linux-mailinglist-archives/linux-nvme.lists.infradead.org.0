Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAC16C02F
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 19:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tb0gwrdOEKCoXUJS2zDrH8+aPtifUNyM2xIyHx3qyyY=; b=Fu/jhkRLQKZDRy
	CN/Z+zN82DM4CSjJHFkfHDJn4WCEtwoBnBThDdd9pSTiMW3H1g95ZZYB1nMFvLBoX6aS3eSqwKZOK
	uR0uCmA2ZxCTfE5ISE61DhzjG5zgxRnvz5yNhuskSVl8kjTRDtaUS0OYoFbLciCE389sNumJOqJPD
	EMFQ6G+40KIOnVPRDSFvne0Cw9pUJBzXDeSHe/Fus76VDtrOIhE6Wz2ycCqCwj0A6+y4eNDm9/bSL
	YrF37OKaI4IFJ4ewbnlNtxzyv7HTMHxCmbzk41dYYGSEddn972/OqKVP4/VPLa1daMrkAhk8lPb0B
	svHKoPuVtrU3PX4eVwDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnWF-0001Nr-2n; Wed, 17 Jul 2019 17:15:07 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnUS-0000RK-F2
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 17:13:20 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUM-00012w-Uz; Wed, 17 Jul 2019 11:13:14 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUK-0000sj-VD; Wed, 17 Jul 2019 11:13:08 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Omar Sandoval <osandov@fb.com>
Date: Wed, 17 Jul 2019 11:12:56 -0600
Message-Id: <20190717171259.3311-10-logang@deltatee.com>
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
Subject: [PATCH blktests v2 09/12] nvme: Cleanup modprobe lines into helper
 functions
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_101316_673488_CDB95726 
X-CRM114-Status: GOOD (  10.00  )
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

Move all the lines to modprobe nvmet and nvme-loop
into _setup_nvmet() and _cleanup_nvmet() helper functions
and call _cleanup_nvmet() using _register_test_cleanup()
to ensure it's always called after the test terminates.

This will allow us to improve the cleanup of these tests and
not leave the system in an inconsistent state when tests
are aborted.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 tests/nvme/002 |  8 ++------
 tests/nvme/003 |  5 +----
 tests/nvme/004 |  5 +----
 tests/nvme/005 |  6 +-----
 tests/nvme/006 |  6 +-----
 tests/nvme/007 |  6 +-----
 tests/nvme/008 |  6 +-----
 tests/nvme/009 |  5 +----
 tests/nvme/010 |  6 +-----
 tests/nvme/011 |  6 +-----
 tests/nvme/012 |  6 +-----
 tests/nvme/013 |  6 +-----
 tests/nvme/014 |  6 +-----
 tests/nvme/015 |  3 +--
 tests/nvme/016 |  4 +---
 tests/nvme/017 |  6 +-----
 tests/nvme/018 |  3 +--
 tests/nvme/019 |  6 +-----
 tests/nvme/020 |  5 +----
 tests/nvme/021 |  6 +-----
 tests/nvme/022 |  6 +-----
 tests/nvme/023 |  6 +-----
 tests/nvme/024 |  6 +-----
 tests/nvme/025 |  6 +-----
 tests/nvme/026 |  6 +-----
 tests/nvme/027 |  6 +-----
 tests/nvme/028 |  6 +-----
 tests/nvme/029 |  6 +-----
 tests/nvme/030 |  6 +-----
 tests/nvme/rc  | 11 +++++++++++
 30 files changed, 41 insertions(+), 134 deletions(-)

diff --git a/tests/nvme/002 b/tests/nvme/002
index ceac1c677bd4..07b7fdae2d39 100755
--- a/tests/nvme/002
+++ b/tests/nvme/002
@@ -16,11 +16,9 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	local iterations=1000
-
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
+	local iterations=1000
 	local port
 	port="$(_create_nvmet_port "loop")"
 
@@ -41,7 +39,5 @@ test() {
 
 	_remove_nvmet_port "${port}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
 	echo "Test complete"
 }
diff --git a/tests/nvme/003 b/tests/nvme/003
index 374e6af0ca6f..ed0feca3cac7 100755
--- a/tests/nvme/003
+++ b/tests/nvme/003
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	port="$(_create_nvmet_port "loop")"
@@ -47,7 +46,5 @@ test() {
 	_remove_nvmet_subsystem "blktests-subsystem-1"
 	_remove_nvmet_port "${port}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
 	echo "Test complete"
 }
diff --git a/tests/nvme/004 b/tests/nvme/004
index 767aedaa0263..0debcd9c7049 100755
--- a/tests/nvme/004
+++ b/tests/nvme/004
@@ -18,8 +18,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	port="$(_create_nvmet_port "loop")"
@@ -47,7 +46,5 @@ test() {
 	losetup -d "$loop_dev"
 	rm "$TMPDIR/img"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
 	echo "Test complete"
 }
diff --git a/tests/nvme/005 b/tests/nvme/005
index 91c164de73e6..8c79d234bb1d 100755
--- a/tests/nvme/005
+++ b/tests/nvme/005
@@ -19,8 +19,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	port="$(_create_nvmet_port "loop")"
@@ -51,8 +50,5 @@ test() {
 	losetup -d "$loop_dev"
 	rm "$TMPDIR/img"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/006 b/tests/nvme/006
index d12d66bc5a8d..6c8e18560264 100755
--- a/tests/nvme/006
+++ b/tests/nvme/006
@@ -21,8 +21,7 @@ test() {
 	local loop_dev
 	local subsys_name="blktests-subsystem-1"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	truncate -s 1G "$TMPDIR/img"
 
@@ -41,8 +40,5 @@ test() {
 
 	rm "$TMPDIR/img"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/007 b/tests/nvme/007
index 6a57b7bf7e0d..58f4bf8808a1 100755
--- a/tests/nvme/007
+++ b/tests/nvme/007
@@ -20,8 +20,7 @@ test() {
 	local file_path
 	local subsys_name="blktests-subsystem-1"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	file_path="${TMPDIR}/img"
 
@@ -38,8 +37,5 @@ test() {
 
 	rm "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/008 b/tests/nvme/008
index 04ff0bda42e3..71ff4d962b00 100755
--- a/tests/nvme/008
+++ b/tests/nvme/008
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -53,8 +52,5 @@ test() {
 
 	rm "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/009 b/tests/nvme/009
index 81e61f99aba5..25c7da2ab854 100755
--- a/tests/nvme/009
+++ b/tests/nvme/009
@@ -16,8 +16,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -47,7 +46,5 @@ test() {
 
 	rm "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
 	echo "Test complete"
 }
diff --git a/tests/nvme/010 b/tests/nvme/010
index ed7c95af2853..2ed0f4871a30 100755
--- a/tests/nvme/010
+++ b/tests/nvme/010
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -54,8 +53,5 @@ test() {
 	rm "${file_path}"
 	rm -f local*verify*state
 
-	modprobe -r nvme_loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/011 b/tests/nvme/011
index fa638a193bad..974b33745b99 100755
--- a/tests/nvme/011
+++ b/tests/nvme/011
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -50,8 +49,5 @@ test() {
 	rm "${file_path}"
 	rm -f local-write-and-verify*state
 
-	modprobe -r nvme_loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/012 b/tests/nvme/012
index d7a8751ec752..27981e903c58 100755
--- a/tests/nvme/012
+++ b/tests/nvme/012
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -66,8 +65,5 @@ test() {
 	rm "${file_path}"
 	rm -fr "${mount_dir}"
 
-	modprobe -r nvme_loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/013 b/tests/nvme/013
index 131855298f0f..af5f3730a2fc 100755
--- a/tests/nvme/013
+++ b/tests/nvme/013
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -62,8 +61,5 @@ test() {
 	rm "${file_path}"
 	rm -fr "${mount_dir}"
 
-	modprobe -r nvme_loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/014 b/tests/nvme/014
index 7de568faeff2..c255d5f12205 100755
--- a/tests/nvme/014
+++ b/tests/nvme/014
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -55,8 +54,5 @@ test() {
 
 	rm "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/015 b/tests/nvme/015
index ca1216163e16..a8497a2ba400 100755
--- a/tests/nvme/015
+++ b/tests/nvme/015
@@ -16,8 +16,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
diff --git a/tests/nvme/016 b/tests/nvme/016
index dd1b84a16daa..9e670e7f6bcd 100755
--- a/tests/nvme/016
+++ b/tests/nvme/016
@@ -20,8 +20,7 @@ test() {
 	local loop_dev
 	local subsys_nqn="blktests-subsystem-1"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	loop_dev="$(losetup -f)"
 
@@ -44,6 +43,5 @@ test() {
 
 	_remove_nvmet_subsystem "${subsys_nqn}"
 
-	modprobe -r nvme-loop nvmet
 	echo "Test complete"
 }
diff --git a/tests/nvme/017 b/tests/nvme/017
index 5f8d60907293..ef27de65cf2e 100755
--- a/tests/nvme/017
+++ b/tests/nvme/017
@@ -20,8 +20,7 @@ test() {
 	local iterations=1000
 	local subsys_name="blktests-subsystem-1"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	file_path="${TMPDIR}/img"
 
@@ -49,8 +48,5 @@ test() {
 
 	rm "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/018 b/tests/nvme/018
index f5f5ecdb0989..0a5b4c2ab019 100755
--- a/tests/nvme/018
+++ b/tests/nvme/018
@@ -18,8 +18,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
diff --git a/tests/nvme/019 b/tests/nvme/019
index 4a167361c42c..a8b0204ec0eb 100755
--- a/tests/nvme/019
+++ b/tests/nvme/019
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -55,8 +54,5 @@ test() {
 
 	rm -f "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/020 b/tests/nvme/020
index 6bd8075b1f4d..b480ee1b92d0 100755
--- a/tests/nvme/020
+++ b/tests/nvme/020
@@ -16,8 +16,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -49,7 +48,5 @@ test() {
 
 	rm -f "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
 	echo "Test complete"
 }
diff --git a/tests/nvme/021 b/tests/nvme/021
index fef31b080c99..bbee54d16ff1 100755
--- a/tests/nvme/021
+++ b/tests/nvme/021
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -50,8 +49,5 @@ test() {
 
 	rm -f "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/022 b/tests/nvme/022
index 8f7492c0ff15..9ba07c1cc50f 100755
--- a/tests/nvme/022
+++ b/tests/nvme/022
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -50,8 +49,5 @@ test() {
 
 	rm -f "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/023 b/tests/nvme/023
index de1a6bc0f975..ed2a5ad7653f 100755
--- a/tests/nvme/023
+++ b/tests/nvme/023
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -55,8 +54,5 @@ test() {
 
 	rm -f "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/024 b/tests/nvme/024
index c88fbd8a3663..538580947c5c 100755
--- a/tests/nvme/024
+++ b/tests/nvme/024
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -49,8 +48,5 @@ test() {
 
 	rm -f "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/025 b/tests/nvme/025
index 6468f59d9dd9..0039fefa5007 100755
--- a/tests/nvme/025
+++ b/tests/nvme/025
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -50,8 +49,5 @@ test() {
 
 	rm -f "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/026 b/tests/nvme/026
index 2e9655bdd40f..7e89d840529c 100755
--- a/tests/nvme/026
+++ b/tests/nvme/026
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -50,8 +49,5 @@ test() {
 
 	rm -f "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/027 b/tests/nvme/027
index db732425db21..4d293beb8b47 100755
--- a/tests/nvme/027
+++ b/tests/nvme/027
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -49,8 +48,5 @@ test() {
 
 	rm -f "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/028 b/tests/nvme/028
index 10be8fb4ba9c..1280107ed5df 100755
--- a/tests/nvme/028
+++ b/tests/nvme/028
@@ -17,8 +17,7 @@ requires() {
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -49,8 +48,5 @@ test() {
 
 	rm -f "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/029 b/tests/nvme/029
index e63dfc166f26..65eb40031888 100755
--- a/tests/nvme/029
+++ b/tests/nvme/029
@@ -50,8 +50,7 @@ test_user_io()
 test() {
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+	_setup_nvmet
 
 	local port
 	local nvmedev
@@ -92,8 +91,5 @@ test() {
 
 	rm "${file_path}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/030 b/tests/nvme/030
index 963e1ad7118c..94020f47411e 100755
--- a/tests/nvme/030
+++ b/tests/nvme/030
@@ -36,8 +36,7 @@ test() {
 
 	echo "Running ${TEST_NAME}"
 
-	modprobe nvmet
-	modprobe nvme-loop
+    _setup_nvmet
 
 	port="$(_create_nvmet_port "loop")"
 
@@ -69,8 +68,5 @@ test() {
 
 	_remove_nvmet_port "${port}"
 
-	modprobe -r nvme-loop
-	modprobe -r nvmet
-
 	echo "Test complete"
 }
diff --git a/tests/nvme/rc b/tests/nvme/rc
index 7be6c903611b..16bdb7f0c083 100644
--- a/tests/nvme/rc
+++ b/tests/nvme/rc
@@ -24,6 +24,17 @@ _test_dev_is_nvme() {
 	return 0
 }
 
+_cleanup_nvmet() {
+	modprobe -r nvme-loop
+	modprobe -r nvmet
+}
+
+_setup_nvmet() {
+	_register_test_cleanup _cleanup_nvmet
+	modprobe nvmet
+	modprobe nvme-loop
+}
+
 _create_nvmet_port() {
 	local trtype="$1"
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
