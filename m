Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40740F038
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fscwe4xCO4Jrz+RguuiN98BkDxG72yjDTHtsNKDkoWc=; b=Lp1jO8pTECTJYySyMi1R6ah8xo
	Da4mkQxWL4SevJsv9oG6Z7mnAe9wfhQiJ3/GzfpYMuqJi7n8hyr8DNRXsSGGG250hGPEIqX+13W0K
	Iu8weNakWJtv0Yfe6klt8IwFeaeYyBFyde858iolznU4hqIW/OjlRppIBBNpvlpyAIkk1PuHxFcXr
	zsaPdLXEIWr6Fe/BF8ZeF/AV/WTPfxPzE52CcRLgFdt9mW+JnjKKIHTc7uNzUUUoZrZo5K5uY2Tur
	nTtPb6D2UNkxi3RWwZA+DJCfCID4LgXo0WLe874Cp9nRSScF123uSeqTKZxpTv9baK6N3fIc7vKZk
	08FIZdtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLuT-0008Nb-0q; Tue, 30 Apr 2019 06:06:33 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLu1-0007wy-OD
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:06:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 40489AF35;
 Tue, 30 Apr 2019 06:06:04 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@intel.com>
Subject: [nvme-cli 3/9] tests/nvme_compare_test.py: check if compare is
 supported
Date: Tue, 30 Apr 2019 08:05:48 +0200
Message-Id: <20190430060554.24368-4-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190430060554.24368-1-hare@suse.de>
References: <20190430060554.24368-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_230605_994900_A4665B77 
X-CRM114-Status: GOOD (  12.10  )
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

Before testing the COMPARE command we should be testing the
ONCS value of the IDENTIFY CONTROLLER command to figure out if
the command is supported.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 tests/nvme_compare_test.py |  7 ++++---
 tests/nvme_test.py         | 24 ++++++++++++++++++++++++
 2 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/tests/nvme_compare_test.py b/tests/nvme_compare_test.py
index c919c07..2dd0298 100644
--- a/tests/nvme_compare_test.py
+++ b/tests/nvme_compare_test.py
@@ -74,6 +74,7 @@ class TestNVMeCompareCmd(TestNVMeIO):
 
     def test_nvme_compare(self):
         """ Testcase main """
-        assert_equal(self.nvme_write(), 0)
-        assert_not_equal(self.nvme_compare(self.compare_file), 0)
-        assert_equal(self.nvme_compare(self.write_file), 0)
+        if self.get_oncs_compare() == 1:
+            assert_equal(self.nvme_write(), 0)
+            assert_not_equal(self.nvme_compare(self.compare_file), 0)
+            assert_equal(self.nvme_compare(self.write_file), 0)
diff --git a/tests/nvme_test.py b/tests/nvme_test.py
index 7db277f..7fa0734 100644
--- a/tests/nvme_test.py
+++ b/tests/nvme_test.py
@@ -300,6 +300,30 @@ class TestNVMe(object):
         return int(oncs, 16) & 2
 
     @tools.nottest
+    def get_oncs_compare(self):
+        """ Wrapper for extracting compare command support.
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
+
+        return int(oncs, 16) & 1
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
