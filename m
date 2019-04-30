Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78898F03C
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AD3VJTVjDnRb3GE8fto/mbfcVetx057nvcjS6bBFxNw=; b=vEB9DhZgbyJE3feYw9hCwPkbtW
	3EPzt8AZ/3hmlU8nOIAuJe0qBzA9VPH+ajjnrvxwbTQ23EL4VLiLboI8mmavYM2buXvhQHyQ1orBM
	SiPQ7ow6w0bs+EEuUG7rLqDUjyJCWFvCOrDh5IkR+pJxse0/EhrWyJLxuVOYQp41oSzrOlQHmPjwd
	dAr0geR8Te1qiyO+tUBrCVHM2e/vT+B/wjLblzOr8KXgQ1dQZesx+WjduElhigxSNAvrmRiUaXkj6
	maszUzgBgJ5Zbq0T64U7XVn/Wc961U1Qg9TEXwVZUPc/2IaybRYOlxn2YmtA0sTf5VAfToR9IOUnM
	ZCcemBcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLug-0000E5-Ad; Tue, 30 Apr 2019 06:06:46 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLu4-0007yl-ET
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:06:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 77C1AAF3B;
 Tue, 30 Apr 2019 06:06:04 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@intel.com>
Subject: [nvme-cli 6/9] tests/nvme_attach_detach_ns_test.py: skip if namespace
 mgmt is not supported
Date: Tue, 30 Apr 2019 08:05:51 +0200
Message-Id: <20190430060554.24368-7-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190430060554.24368-1-hare@suse.de>
References: <20190430060554.24368-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_230608_634945_CD336FBB 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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

If namespace management is not supported the test will fail, too.
So check for it prior to executing the test.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 tests/nvme_attach_detach_ns_test.py | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/tests/nvme_attach_detach_ns_test.py b/tests/nvme_attach_detach_ns_test.py
index 92a82dd..2225e2c 100644
--- a/tests/nvme_attach_detach_ns_test.py
+++ b/tests/nvme_attach_detach_ns_test.py
@@ -53,18 +53,17 @@ class TestNVMeAttachDetachNSCmd(TestNVMe):
         self.nsze = 0x1400000
         self.ncap = 0x1400000
         self.setup_log_dir(self.__class__.__name__)
-        self.ctrl_id = self.get_ctrl_id()
-        self.delete_all_ns()
-        time.sleep(1)
 
     def __del__(self):
         """
         Post Section for TestNVMeAttachDetachNSCmd
 
             - Create primary namespace.
-            - Atttach it to controller.
+            - Attach it to controller.
             - Call super class's destructor.
         """
+        if self.get_oacs_namespace_mgmt() == 0:
+            return
         assert_equal(self.create_and_validate_ns(self.default_nsid,
                                                  self.nsze,
                                                  self.ncap,
@@ -75,6 +74,12 @@ class TestNVMeAttachDetachNSCmd(TestNVMe):
 
     def test_attach_detach_ns(self):
         """ Testcase main """
+        if self.get_oacs_namespace_mgmt() == 0:
+            return
+
+        self.ctrl_id = self.get_ctrl_id()
+        self.delete_all_ns()
+        time.sleep(1)
         err = self.create_and_validate_ns(self.default_nsid,
                                           self.nsze,
                                           self.ncap,
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
