Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2003CF040
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LlCI/+2WFWre/DqGmMWNc9Bnwcf52DgbjBh94N9JEn0=; b=nuSpukSGTguNQigpeIsmiC/KvV
	Vkj+OkawGrsVeYDEKpovdqTAfXt4fqZCpvFHU7Az1FexBc7/G2GYQBSXdyZgoV86CkvqhtV1NL12/
	VXnDExeucEDjJTVCkXJRuLBBm0kPuAKrr7qANhJ3qzafGnjIxaZrzkVnOnYvJAo++RaRuURL2ZZqy
	//Rih+3LyStxlV+p0HMmZSRAsxWU5HEUtMnoM5kpmhvULVGnZHhysJAiH1yASgPaqf1xzTwHGlECp
	JwoDfey4lN2eHGT8V2wUwkqllkZfvm5mR9NPWc6C0+6Ge6RXqC9lS01j3fGCIJp8/o6sfAWOsHjiV
	J17SIxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLvD-0000sp-14; Tue, 30 Apr 2019 06:07:19 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLu5-0007zp-TY
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:06:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7D221AF44;
 Tue, 30 Apr 2019 06:06:04 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@intel.com>
Subject: [nvme-cli 8/9] tests/nvme_get_features_test.py: skip features for Qemu
Date: Tue, 30 Apr 2019 08:05:53 +0200
Message-Id: <20190430060554.24368-9-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190430060554.24368-1-hare@suse.de>
References: <20190430060554.24368-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_230610_349873_53E9392F 
X-CRM114-Status: UNSURE (   8.89  )
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

Qemu doesn't implement all mandatory features, so we should
only be querying the implemented features when running under
qemu.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 tests/nvme_get_features_test.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tests/nvme_get_features_test.py b/tests/nvme_get_features_test.py
index 8888e4a..7236b60 100644
--- a/tests/nvme_get_features_test.py
+++ b/tests/nvme_get_features_test.py
@@ -54,6 +54,8 @@ class TestNVMeGetMandatoryFeatures(TestNVMe):
         self.setup_log_dir(self.__class__.__name__)
         self.feature_id_list = ["0x01", "0x02", "0x04", "0x05", "0x07",
                                 "0x08", "0x09", "0x0A", "0x0B"]
+        if self.is_qemu_controller():
+            self.feature_id_list = [ "0x06", "0x07" ]
         get_vector_list_cmd = "cat /proc/interrupts | grep nvme |" \
                               " cut -d : -f 1 | tr -d ' ' | tr '\n' ' '"
         proc = subprocess.Popen(get_vector_list_cmd,
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
