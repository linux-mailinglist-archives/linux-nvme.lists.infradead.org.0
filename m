Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32220F03F
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dGpYsicbPS8dGv2gEIeGICh6+qXl0rQ+JVcymdega8I=; b=A4bna4E7AusJvqWPvFlEX8Xl70
	dKqEf9lYY0T9WELeWBZH4gIzT3bkaFxoQwHLNX8pdhVagf48fok9vSlyGgHo8hCWBY3oFH18CgUSp
	vJ+4MM4Js0wsuyYVl8paUOIap+jtl1f85+Dn6v/tOfUhwrAjj4/4IfndLz0QJtT0kb0y3KFaREAJ5
	/uM/alh82dFTXy/GHYGfEkcardWWuQdX+jTlY9hcUSbMTJ0Yy9PIpXmsWrVDfmBDCy6urseD9l8u/
	mGt3Uyfih7QSvVFIpBjpZhcyPnHNcF4G539A/FphPihKTAqZy0oxqZM0wKB0ICWp3G4z7q7As/BTo
	Yhx9MEvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLv4-0000kE-Vh; Tue, 30 Apr 2019 06:07:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLu4-0007yo-GL
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:06:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 82DCDAF45;
 Tue, 30 Apr 2019 06:06:04 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@intel.com>
Subject: [nvme-cli 5/9] tests/nvme_text.py: add test for namespace management
Date: Tue, 30 Apr 2019 08:05:50 +0200
Message-Id: <20190430060554.24368-6-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190430060554.24368-1-hare@suse.de>
References: <20190430060554.24368-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_230608_775622_9416D568 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Hannes Reinecke <hare@suse.com>, Hannes Reinecke <hare@suse.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Some commands are only mandatory if namespace management is
supported, so add a test to detect it.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 tests/nvme_test.py | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/tests/nvme_test.py b/tests/nvme_test.py
index 538d30c..2f50a51 100644
--- a/tests/nvme_test.py
+++ b/tests/nvme_test.py
@@ -324,6 +324,30 @@ class TestNVMe(object):
         return int(oncs, 16) & 1
 
     @tools.nottest
+    def get_oacs_namespace_mgmt(self):
+        """ Wrapper for extracting namespace management support.
+            - Args:
+                - None
+            - Returns:
+                - true if supported.
+        """
+        pattern = re.compile("^oacs[ ]+: [0-9]", re.IGNORECASE)
+        oacs = 0
+        get_ctrl_id = "nvme id-ctrl " + self.ctrl
+        proc = subprocess.Popen(get_ctrl_id,
+                                shell=True,
+                                stdout=subprocess.PIPE)
+        err = proc.wait()
+        assert_equal(err, 0, "ERROR : reading oacs value failed")
+
+        for line in proc.stdout:
+            if pattern.match(line):
+                oacs = line.split(":")[1].strip()
+                break
+
+        return int(oacs, 16) & 8
+
+    @tools.nottest
     def is_qemu_controller(self):
         """ Wrapper for checking for Qemu NVMe controller.
             - Args:
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
