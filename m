Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF98F037
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0lcsFnUb4c4JpDOAerCkqIVyUBYqAlMZWog9hphbJS0=; b=hnn/vvvuSVXTvhS5PSJRB64uLd
	YPCNsg4A4/XtCbDxxPQyWaZBcLoRrRPrm5adYjYuxmpvTQcAmNqGquBeqSppvUJrg1UlFcbxOxz+s
	yZF5xVZGww3PvkJTnOMnijcbu+ELunUHyBycbJtMutDmLnC/K27CrwxF7LjkwZNZELDrIbAVEZLRA
	Ob8rSTlbOAnPNli30D0QY3TaDY1SawW9iLRn6IHy1fjl0z6n22R2WgFTsEKC6A4lsxfZbFz6ug7xc
	7s5rZjMTWPgOfFkgQQQIc1LJi54LDYxTrf1W1b8oMpE7d8zuRMHecsH7Oi+zev5ywZz+iLTkH/5pS
	bIkjX5WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLuL-0008DK-Lo; Tue, 30 Apr 2019 06:06:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLu1-0007xJ-Re
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:06:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 44229AF3A;
 Tue, 30 Apr 2019 06:06:04 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@intel.com>
Subject: [nvme-cli 4/9] tests: ignore log tests for Qemu
Date: Tue, 30 Apr 2019 08:05:49 +0200
Message-Id: <20190430060554.24368-5-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190430060554.24368-1-hare@suse.de>
References: <20190430060554.24368-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_230606_069168_F3D626D0 
X-CRM114-Status: GOOD (  12.09  )
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

The Qemu NVMe implementation doesn't support the GET LOG command,
so these tests are expected to fail.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 tests/nvme_error_log_test.py |  3 ++-
 tests/nvme_smart_log_test.py |  5 +++--
 tests/nvme_test.py           | 24 ++++++++++++++++++++++++
 3 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/tests/nvme_error_log_test.py b/tests/nvme_error_log_test.py
index a6a451d..68a0b1f 100644
--- a/tests/nvme_error_log_test.py
+++ b/tests/nvme_error_log_test.py
@@ -60,4 +60,5 @@ class TestNVMeErrorLogCmd(TestNVMe):
 
     def test_get_error_log(self):
         """ Testcase main """
-        assert_equal(self.get_error_log_ctrl(), 0)
+        if self.is_qemu_controller() == 0:
+            assert_equal(self.get_error_log_ctrl(), 0)
diff --git a/tests/nvme_smart_log_test.py b/tests/nvme_smart_log_test.py
index e1eb6e5..ddfac72 100644
--- a/tests/nvme_smart_log_test.py
+++ b/tests/nvme_smart_log_test.py
@@ -82,5 +82,6 @@ class TestNVMeSmartLogCmd(TestNVMe):
 
     def test_smart_log(self):
         """ Testcase main """
-        assert_equal(self.get_smart_log_ctrl(), 0)
-        assert_equal(self.get_smart_log_all_ns(), 0)
+        if self.is_qemu_controller() == 0:
+            assert_equal(self.get_smart_log_ctrl(), 0)
+            assert_equal(self.get_smart_log_all_ns(), 0)
diff --git a/tests/nvme_test.py b/tests/nvme_test.py
index 7fa0734..538d30c 100644
--- a/tests/nvme_test.py
+++ b/tests/nvme_test.py
@@ -324,6 +324,30 @@ class TestNVMe(object):
         return int(oncs, 16) & 1
 
     @tools.nottest
+    def is_qemu_controller(self):
+        """ Wrapper for checking for Qemu NVMe controller.
+            - Args:
+                - None
+            - Returns:
+                - true if supported.
+        """
+        pattern = re.compile("^mn[ ]+: [a-z ]", re.IGNORECASE)
+        model = ""
+        get_ctrl_id = "nvme id-ctrl " + self.ctrl
+        proc = subprocess.Popen(get_ctrl_id,
+                                shell=True,
+                                stdout=subprocess.PIPE)
+        err = proc.wait()
+        assert_equal(err, 0, "ERROR : reading controller model value failed")
+
+        for line in proc.stdout:
+            if pattern.match(line):
+                model = line.split(":")[1].strip()
+                break
+
+        return model in "QEMU NVMe Ctrl"
+
+    @tools.nottest
     def delete_all_ns(self):
         """ Wrapper for deleting all the namespaces.
             - Args:
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
