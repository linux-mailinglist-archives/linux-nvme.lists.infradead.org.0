Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA15F03D
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8B1l8Qkwe0qnna//oA7b04/r1V9brrku286hgub1JmU=; b=YgMs1m49qjY+UMQmhP8oYDxuX5
	SWemWM8mPYiyeJnqlqkp53Ba4hMuNiA/u5+m8s5CmYOj40PQDnpw4TlAVv8pjVZVdqpWLT6/aCExi
	4qs+CP8xFjU3xQ/9WJDS2iD8OaaUJn7rssGV/K3Sn48pU222aoVODRX4Tpq0De2G1Sy+7KJO4JKRt
	i0oljn7ShdPuNT6fGL1mFz8OHegl8Yzo4GCldt0l5BGhm+Yuyb4/gL94NguHy+rJLg4fqcp+PdMZw
	8TKZ9IbKGQIN6CJd3F4IDxnIdk4BhvD48ZIm+l5Zu/IOT5C7EXdTukqQ83M1iheEdvUqNAO1lrhen
	Ci3FMoOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLun-0000NL-Gu; Tue, 30 Apr 2019 06:06:53 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLu4-0007yp-GF
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:06:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7C3E3AF40;
 Tue, 30 Apr 2019 06:06:04 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@intel.com>
Subject: [nvme-cli 7/9] tests/nvme_create_max_ns_test.py: skip if namespace
 mgmt is not supported
Date: Tue, 30 Apr 2019 08:05:52 +0200
Message-Id: <20190430060554.24368-8-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190430060554.24368-1-hare@suse.de>
References: <20190430060554.24368-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_230608_783781_C9DE82A9 
X-CRM114-Status: GOOD (  10.60  )
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
 tests/nvme_create_max_ns_test.py | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/tests/nvme_create_max_ns_test.py b/tests/nvme_create_max_ns_test.py
index f853732..b2b11b2 100644
--- a/tests/nvme_create_max_ns_test.py
+++ b/tests/nvme_create_max_ns_test.py
@@ -54,9 +54,6 @@ class TestNVMeCreateMaxNS(TestNVMe):
         self.ncap = self.nsze
         self.setup_log_dir(self.__class__.__name__)
         self.max_ns = self.get_max_ns()
-        self.ctrl_id = self.get_ctrl_id()
-        self.delete_all_ns()
-        time.sleep(1)
 
     def __del__(self):
         """
@@ -66,6 +63,8 @@ class TestNVMeCreateMaxNS(TestNVMe):
             - Atttach it to controller.
             - Call super class's destructor.
         """
+        if self.get_oacs_namespace_mgmt() == 0:
+            return
         assert_equal(self.create_and_validate_ns(self.default_nsid,
                                                  self.nsze,
                                                  self.ncap,
@@ -76,6 +75,11 @@ class TestNVMeCreateMaxNS(TestNVMe):
 
     def test_attach_detach_ns(self):
         """ Testcase main """
+        if self.get_oacs_namespace_mgmt() == 0:
+            return
+        self.ctrl_id = self.get_ctrl_id()
+        self.delete_all_ns()
+        time.sleep(1)
         for nsid in range(1, self.max_ns):
             print("##### Creating " + str(nsid))
             err = self.create_and_validate_ns(nsid,
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
