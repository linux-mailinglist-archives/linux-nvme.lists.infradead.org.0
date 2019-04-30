Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FDBF03E
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LcmfCQFw50f4rWIurq5L2bf8X+ajK50rzLhQoKyX2oc=; b=HtWmlGDo4IZGUqS4AIar4uH7X8
	8NhXHkDaQN6XTjwiFOfGe7OMFe5wLQgoNZhSTdhIm/tpgucfGFw0JUkv+jbFGQCHIisoqBKPB9k83
	T5I4zJv3LytnHzRi/ri999tcbmKk52ohlKCAn5AY3zatkgvvXYGvhUREVMk8lcSgANaG2FXZ/KOkQ
	YD7L3CfUcsEvVNm7JnFuvcNzk9JcuXQhHjA5scAjz9f+9OtfVIN9+zJXGg37BucDcl2qDXeHoLhn3
	UvEenXDzUjwBnAdeokjD930bGC/cSBBJLzt/F0q4jBb8yb3X/xhb1ohKuZTa0nETBlu5L3/Is7cad
	P0RZch8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLuu-0000Wq-Bk; Tue, 30 Apr 2019 06:07:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLu4-0007yn-Eq
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:06:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7D0B6AF42;
 Tue, 30 Apr 2019 06:06:04 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@intel.com>
Subject: [nvme-cli 9/9] tests/nvme_format_test.py: skip test if namespace
 management is not supported
Date: Tue, 30 Apr 2019 08:05:54 +0200
Message-Id: <20190430060554.24368-10-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190430060554.24368-1-hare@suse.de>
References: <20190430060554.24368-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_230608_641342_2159DF2E 
X-CRM114-Status: GOOD (  10.92  )
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

While the spec doesn't make any explicit reference to namespace management,
the 'format' command itself is optional, and as such should be allowed
to fail. And the test requires the use of the controller identifier, which
in itself requires namespace management.
So add a check for namespace management before executing the tests.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 tests/nvme_format_test.py | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/tests/nvme_format_test.py b/tests/nvme_format_test.py
index ce93f5e..093d1da 100644
--- a/tests/nvme_format_test.py
+++ b/tests/nvme_format_test.py
@@ -65,14 +65,11 @@ class TestNVMeFormatCmd(TestNVMe):
         self.flbas = 0               # ns formattes logical block settings
         self.nsze = 0x1400000        # ns size
         self.ncap = 0x1400000        # ns capacity
-        self.ctrl_id = self.get_ctrl_id()
         self.lba_format_list = []
         self.ms_list = []
         self.lbads_list = []
         self.test_log_dir = self.log_dir + "/" + self.__class__.__name__
         self.setup_log_dir(self.__class__.__name__)
-        self.delete_all_ns()
-        time.sleep(1)
 
     def __del__(self):
         """
@@ -82,6 +79,8 @@ class TestNVMeFormatCmd(TestNVMe):
             - Atttach it to controller.
             - Call super class's destructor.
         """
+        if self.get_oacs_namespace_mgmt() == 0:
+            return
         assert_equal(self.create_and_validate_ns(self.default_nsid,
                                                  self.nsze,
                                                  self.ncap,
@@ -92,6 +91,9 @@ class TestNVMeFormatCmd(TestNVMe):
 
     def attach_detach_primary_ns(self):
         """ Extract supported format information using default namespace """
+        self.ctrl_id = self.get_ctrl_id()
+        self.delete_all_ns()
+        time.sleep(1)
         assert_equal(self.create_and_validate_ns(self.default_nsid,
                                                  self.nsze,
                                                  self.ncap,
@@ -123,6 +125,8 @@ class TestNVMeFormatCmd(TestNVMe):
     def test_format_ns(self):
         """ Testcase main """
         # extract the supported format information.
+        if self.get_oacs_namespace_mgmt() == 0:
+            return
         self.attach_detach_primary_ns()
 
         # iterate through all supported format
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
