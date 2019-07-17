Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 775256C02A
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 19:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXrNJ2X1TFxCW4yaY6c1WkUeVVKCGbA5mCDUhCj+KBM=; b=I7LORgYQzE9xC9
	+U6RAh24P7VYY+LbBE/A91n1lYF0Fcvlnq/k8SBQIq5q4vlCtAVEUp5OJ6I6s2Kc7HZcFEqAZSQOG
	ZAli2MFgHq3S6Mt2Yf6VRQEk61rZVoSd4QS/PI1le5VKVzVVEm0Lo+YWB7Gydck+n/SBiXaVp6fcX
	lOywzuEEGHxdcFtv01M8BAiIl0wUeNfTR1AwAUNbqH/S7zYTxR0flkDw5Z/F5Z0ixF7r3adKul7eh
	qfGDYGrGDmHJ6HIAH4OmYloJs7OyFCPr7pGtpoXTDaD49DETsjqqI0+Iey3y6DbMRno8UYRh509VK
	mOiYihbxqVFyAU4KJ8jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnVQ-0000rV-4z; Wed, 17 Jul 2019 17:14:16 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnUS-0000QP-EY
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 17:13:19 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUM-00012o-Uy; Wed, 17 Jul 2019 11:13:14 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUK-0000sL-42; Wed, 17 Jul 2019 11:13:08 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Omar Sandoval <osandov@fb.com>
Date: Wed, 17 Jul 2019 11:12:48 -0600
Message-Id: <20190717171259.3311-2-logang@deltatee.com>
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
Subject: [PATCH blktests v2 01/12] Add filter function for nvme discover
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_101316_580645_39FDC0AD 
X-CRM114-Status: UNSURE (   9.95  )
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

From: Michael Moese <mmoese@suse.de>

Several NVMe tests (002, 016, 017) used a pipe to a sed call filtering
the output. This call is moved to a new filter function nvme/rc and
the calls to sed are replaced by this function.

Additionally, the test nvme/016 failed for me due to the Generation
counter being greater than 1, so the new filter function was expanded to
replace the Generation counter with 'X'.

Signed-off-by: Michael Moese <mmoese@suse.de>
[logang@deltatee.com: added missing changes to 002.out and 017.out]
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 tests/nvme/002     | 2 +-
 tests/nvme/002.out | 2 +-
 tests/nvme/016     | 2 +-
 tests/nvme/016.out | 2 +-
 tests/nvme/017     | 2 +-
 tests/nvme/017.out | 2 +-
 tests/nvme/rc      | 5 +++++
 7 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/tests/nvme/002 b/tests/nvme/002
index 106a5a8395f2..ceac1c677bd4 100755
--- a/tests/nvme/002
+++ b/tests/nvme/002
@@ -32,7 +32,7 @@ test() {
 		_add_nvmet_subsys_to_port "${port}" "blktests-subsystem-$i"
 	done
 
-	nvme discover -t loop | sed -r -e "s/portid:  [0-9]+/portid:  X/"
+	nvme discover -t loop | _filter_discovery
 
 	for ((i = iterations - 1; i >= 0; i--)); do
 		_remove_nvmet_subsystem_from_port "${port}" "blktests-subsystem-$i"
diff --git a/tests/nvme/002.out b/tests/nvme/002.out
index aa71d8f5f5f8..7437a21f60a9 100644
--- a/tests/nvme/002.out
+++ b/tests/nvme/002.out
@@ -1,6 +1,6 @@
 Running nvme/002
 
-Discovery Log Number of Records 1000, Generation counter 1000
+Discovery Log Number of Records 1000, Generation counter X
 =====Discovery Log Entry 0======
 trtype:  loop
 adrfam:  pci
diff --git a/tests/nvme/016 b/tests/nvme/016
index 966d5dc0a4a2..dd1b84a16daa 100755
--- a/tests/nvme/016
+++ b/tests/nvme/016
@@ -34,7 +34,7 @@ test() {
 	port="$(_create_nvmet_port "loop")"
 	_add_nvmet_subsys_to_port "$port" "${subsys_nqn}"
 
-	nvme discover -t loop | sed -r -e "s/portid:  [0-9]+/portid:  X/"
+	nvme discover -t loop | _filter_discovery
 	_remove_nvmet_subsystem_from_port "${port}" "${subsys_nqn}"
 	_remove_nvmet_port "${port}"
 
diff --git a/tests/nvme/016.out b/tests/nvme/016.out
index 59bd2935346f..b70603144d5c 100644
--- a/tests/nvme/016.out
+++ b/tests/nvme/016.out
@@ -1,6 +1,6 @@
 Running nvme/016
 
-Discovery Log Number of Records 1, Generation counter 1
+Discovery Log Number of Records 1, Generation counter X
 =====Discovery Log Entry 0======
 trtype:  loop
 adrfam:  pci
diff --git a/tests/nvme/017 b/tests/nvme/017
index 0b86bece9520..5f8d60907293 100755
--- a/tests/nvme/017
+++ b/tests/nvme/017
@@ -37,7 +37,7 @@ test() {
 	port="$(_create_nvmet_port "loop")"
 	_add_nvmet_subsys_to_port "${port}" "${subsys_name}"
 
-	nvme discover -t loop | sed -r -e "s/portid:  [0-9]+/portid:  X/"
+	nvme discover -t loop | _filter_discovery
 	_remove_nvmet_subsystem_from_port "${port}" "${subsys_name}"
 	_remove_nvmet_port "${port}"
 
diff --git a/tests/nvme/017.out b/tests/nvme/017.out
index 4b0877aaf3ca..cf212971d180 100644
--- a/tests/nvme/017.out
+++ b/tests/nvme/017.out
@@ -1,6 +1,6 @@
 Running nvme/017
 
-Discovery Log Number of Records 1, Generation counter 1
+Discovery Log Number of Records 1, Generation counter X
 =====Discovery Log Entry 0======
 trtype:  loop
 adrfam:  pci
diff --git a/tests/nvme/rc b/tests/nvme/rc
index eff1dd992460..22833d8ef9bb 100644
--- a/tests/nvme/rc
+++ b/tests/nvme/rc
@@ -118,3 +118,8 @@ _find_nvme_loop_dev() {
 		fi
 	done
 }
+
+_filter_discovery() {
+	sed -r  -e "s/portid:  [0-9]+/portid:  X/" \
+		-e "s/Generation counter [0-9]+/Generation counter X/"
+}
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
