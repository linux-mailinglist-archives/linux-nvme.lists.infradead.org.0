Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597056C028
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 19:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHp4NXib0OtyWy1YAt3hOzBCHdWrPuiHXXjcSnz6ves=; b=O9/6TZQbKIwzFU
	ZqoArHxuFadELjYpKA75UYE53866Nl8tu60gvgd9NCfin7/PeCuHQMRV06p+DXBRke1cQB6Jw0tzc
	apwNj97vP32aM0nt1pZs/XArmIzFuvb3cUQ7VyEnhLDAnqhQmOaJ7HfynPzke6zJAC1e5Maa6oDCc
	/vosFJKbBmxGGl+raqk1jnRR81Giu3fHHfpEEK1HjcyziTHyVgnV0Lmc34rXnx61WpuJWO+B7CXna
	z6LyZGWewrLw00lptT+Y0+rmll7JgtEgrGCYrS/jW8fNU/F8ur7s0PzqKGLjtUong1qNREKMW6KDX
	fPRXKCkUV3qISz+zNSAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnV8-0000gW-JZ; Wed, 17 Jul 2019 17:13:58 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnUS-0000RO-Ea
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 17:13:19 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUM-00012v-Uz; Wed, 17 Jul 2019 11:13:14 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hnnUK-0000sg-SK; Wed, 17 Jul 2019 11:13:08 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Omar Sandoval <osandov@fb.com>
Date: Wed, 17 Jul 2019 11:12:55 -0600
Message-Id: <20190717171259.3311-9-logang@deltatee.com>
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
Subject: [PATCH blktests v2 08/12] check: Add the ability to call a cleanup
 function after a test ends
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_101316_587836_621861D4 
X-CRM114-Status: UNSURE (   7.81  )
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

In order to ensure tests properly clean themselves up, even if
they are subject to interruption, add the ability to call a test
specified function at cleanup time.

Any test can call _register_test_cleanup with the first argument
as a function to call after the test ends or is interrupted
(similar to using 'trap <func> EXIT').

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 check | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/check b/check
index 029095e7cf38..981058c59c12 100755
--- a/check
+++ b/check
@@ -288,7 +288,15 @@ _output_test_run() {
 	) | column -t -s $'\t'
 }
 
+_register_test_cleanup() {
+	TEST_CLEANUP=$1
+}
+
 _cleanup() {
+	if [[ -v TEST_CLEANUP ]]; then
+		${TEST_CLEANUP}
+	fi
+
 	if [[ "${TMPDIR:-}" ]]; then
 		rm -rf "$TMPDIR"
 		unset TMPDIR
@@ -337,6 +345,7 @@ _call_test() {
 	fi
 	$LOGGER_PROG "run blktests $TEST_NAME"
 
+	unset TEST_CLEANUP
 	trap _cleanup EXIT
 	if ! TMPDIR="$(mktemp --tmpdir -p "$OUTPUT" -d "tmpdir.${TEST_NAME//\//.}.XXX")"; then
 		return
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
