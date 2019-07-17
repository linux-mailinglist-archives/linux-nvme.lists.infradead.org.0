Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A9D6C036
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 19:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omeJN3uGP+JHMWiTpTjYZhz5x3pv6/nVkrtwN7DQbDg=; b=M37GT5nYlXu/AQ
	2d3uxWQmVu1uyfIo3k8mnOHVozZbfd0NpK18jVllPONLnbtcMFeLthTP3vPzvB9eIZtEwg5TW1RYu
	h5yxsLc+saFNOdTW9HhzDObOD/hzx72pLyTD2bBfXdjBLFlhqDPr8y2ecFIlKDe7yfYqjDaPBYXx6
	OPep5IUrpxG/IbvSeDYAm0pE6agiva0O5R64ROAlT6Qx60E6Wb0IF2KpYPCAyaayBJs1EShvteGD5
	p21nyXPWYFodEsWGzP2TppQGH9kGxKAQHpbQ2pcVCX6uWZUMyhPKaRBomRwoNETrplI0UKkpUKiIT
	+48l9b+ctZcgZ1G8wzTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnWx-0003B9-3l; Wed, 17 Jul 2019 17:15:51 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnUS-0000Q9-EZ
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 17:13:20 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUM-00012s-Uz; Wed, 17 Jul 2019 11:13:13 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUK-0000sX-Hx; Wed, 17 Jul 2019 11:13:08 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Omar Sandoval <osandov@fb.com>
Date: Wed, 17 Jul 2019 11:12:52 -0600
Message-Id: <20190717171259.3311-6-logang@deltatee.com>
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
Subject: [PATCH blktests v2 05/12] nvme/005: Don't rely on modprobing to set
 the multipath paramater
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_101316_853069_0748192D 
X-CRM114-Status: GOOD (  11.78  )
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

On test systems with existing nvme drives or built-in modules it may not
be possible to remove nvme-core in order to re-probe it with
multipath=1.

Instead, skip the test if the multipath parameter is not already set
ahead of time.

Note: the multipath parameter of nvme-core is set by default if
CONFIG_NVME_MULTIPATH is set so this will only affect systems
that explicitly disable it via the module parameter.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 common/rc      | 18 ++++++++++++++++++
 tests/nvme/005 | 10 ++--------
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/common/rc b/common/rc
index 5dd2c9512fd2..a487cc69026c 100644
--- a/common/rc
+++ b/common/rc
@@ -55,6 +55,24 @@ _have_module_param() {
 	return 0
 }
 
+_have_module_param_value() {
+	local value
+
+	modprobe "$1"
+
+	if ! _have_module_param "$1" "$2"; then
+		return 1
+	fi
+
+	value=$(cat "/sys/module/$1/parameters/$2")
+	if [[ "${value}" != "$3" ]]; then
+		SKIP_REASON="$1 module parameter $2 must be set to $3"
+		return 1
+	fi
+
+	return 0
+}
+
 _have_program() {
 	if command -v "$1" >/dev/null 2>&1; then
 		return 0
diff --git a/tests/nvme/005 b/tests/nvme/005
index e72fc809c936..91c164de73e6 100755
--- a/tests/nvme/005
+++ b/tests/nvme/005
@@ -12,18 +12,13 @@ QUICK=1
 
 requires() {
 	_have_modules loop nvme-core nvme-loop nvmet && \
-		_have_module_param nvme-core multipath && _have_configfs
+		_have_module_param_value nvme_core multipath Y && \
+		_have_configfs
 }
 
 test() {
 	echo "Running ${TEST_NAME}"
 
-	# Clean up all stale modules
-	modprobe -r nvme-loop
-	modprobe -r nvme-core
-	modprobe -r nvmet
-
-	modprobe nvme-core multipath=1
 	modprobe nvmet
 	modprobe nvme-loop
 
@@ -57,7 +52,6 @@ test() {
 	rm "$TMPDIR/img"
 
 	modprobe -r nvme-loop
-	modprobe -r nvme-core
 	modprobe -r nvmet
 
 	echo "Test complete"
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
