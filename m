Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F3EF035
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iBLh4rv4iZ+UblV9DaX5oYdhO4Ph2E/UxDeNzLkKf8A=; b=lnaqeAktUQHN9diYH1C1+V9tht
	KZA2ZiF86j6eUq3Lc7FGMeiESTY803R8tZ4p9OK3bhbpvH/rjxo05utIYaZADy3qA9kBhvclsiWsu
	/HF4avongTwAk/p7BSD+OlR6rCsDj2iyfZvR7+7hm/+7nPt5xi4OFttWdU2dhd6CGTtCBTEpMLKr5
	0LmTCW1CfVAKu2DpmPDKT22DXD1yHocvksM6t6P2yvEd77lw6m0T8tQ01LJKrnPf/SnVjUOUDNFlZ
	vQPULyd7Rbm51G6Rv0BNd6+LglTG7dMCLds950hKzfRN6z81LJUX3zTmTaxiNlRQ21X4WMrMXpli/
	g9EsLwiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLu8-000805-TC; Tue, 30 Apr 2019 06:06:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLu1-0007ww-OC
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:06:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3D6CEAF32;
 Tue, 30 Apr 2019 06:06:04 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@intel.com>
Subject: [nvme-cli 1/9] tests/nvme_writezeros_test.py: check if write zeroes
 is supported
Date: Tue, 30 Apr 2019 08:05:46 +0200
Message-Id: <20190430060554.24368-2-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190430060554.24368-1-hare@suse.de>
References: <20190430060554.24368-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_230605_936424_8DA3E0EF 
X-CRM114-Status: GOOD (  11.29  )
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

Before testing the WRITE ZEROS command we should be testing the
ONCS value of the IDENTIFY CONTROLLER command to figure out if
the command is supported.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 tests/nvme_test.py            | 23 +++++++++++++++++++++++
 tests/nvme_writezeros_test.py | 15 ++++++++-------
 2 files changed, 31 insertions(+), 7 deletions(-)

diff --git a/tests/nvme_test.py b/tests/nvme_test.py
index 80939dc..1c17ba1 100644
--- a/tests/nvme_test.py
+++ b/tests/nvme_test.py
@@ -253,6 +253,29 @@ class TestNVMe(object):
         return int(nvm_format)
 
     @tools.nottest
+    def get_oncs_write_zeroes(self):
+        """ Wrapper for extracting write zeroes command support.
+            - Args:
+                - None
+            - Returns:
+                - true if supported.
+        """
+        pattern = re.compile("^oncs[ ]+: [0-9]", re.IGNORECASE)
+        oncs = 0
+        get_ctrl_id = "nvme id-ctrl " + self.ctrl
+        proc = subprocess.Popen(get_ctrl_id,
+                                shell=True,
+                                stdout=subprocess.PIPE)
+        err = proc.wait()
+        assert_equal(err, 0, "ERROR : reading oncs value failed")
+
+        for line in proc.stdout:
+            if pattern.match(line):
+                oncs = line.split(":")[1].strip()
+                break
+        return int(oncs, 16) & 8
+
+    @tools.nottest
     def delete_all_ns(self):
         """ Wrapper for deleting all the namespaces.
             - Args:
diff --git a/tests/nvme_writezeros_test.py b/tests/nvme_writezeros_test.py
index 157fd78..e549f3b 100644
--- a/tests/nvme_writezeros_test.py
+++ b/tests/nvme_writezeros_test.py
@@ -93,10 +93,11 @@ class TestNVMeWriteZeros(TestNVMeIO):
         return 0 if filecmp.cmp(self.zero_file, self.read_file) is True else 1
 
     def test_write_zeros(self):
-        """ Testcae main """
-        assert_equal(self.nvme_write(), 0)
-        assert_equal(self.nvme_read(), 0)
-        assert_equal(self.validate_write_read(), 0)
-        assert_equal(self.write_zeroes(), 0)
-        assert_equal(self.nvme_read(), 0)
-        assert_equal(self.validate_zeroes(), 0)
+        """ Testcase main """
+        if self.get_oncs_write_zeroes() == 1:
+            assert_equal(self.nvme_write(), 0)
+            assert_equal(self.nvme_read(), 0)
+            assert_equal(self.validate_write_read(), 0)
+            assert_equal(self.write_zeroes(), 0)
+            assert_equal(self.nvme_read(), 0)
+            assert_equal(self.validate_zeroes(), 0)
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
