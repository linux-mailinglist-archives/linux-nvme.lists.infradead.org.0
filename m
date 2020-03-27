Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E598D1951AB
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Mar 2020 08:01:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XhoITuQxLyUarZXjlVUaYvN2TKl/E0t4DJ9nBs62A7s=; b=cNA
	gsJvWyEwIouEBLFsFgz6DeAwZUdcJ9LnwPtq7gcLtjzneqjrqNRmyc8Tfvqr8I03XLDkKcJt+ZvqS
	YdnoPg6Mh59Cj/hAgB8RjXbYjxWqudHjCSsxDPztdhf4jaJEstmLRzJj+4U9GEKZx/BZojpz6ZmZn
	cKOcziG3nfTuyVIrzW2nTiCntLV4yBtH/wUlIYzDFGT4V+ZFjoaQz7qxgBvSYwaSQUdS7zrt72IRf
	DAaudV4fkdtYRUfRtC76dN1L5hKaLrjQ1bbAUSL3xTGacpZFXCDbiFHA3K1MYem95bek0nfrQwyh2
	7R5vS11ePRXEoB1laklSKdItOEIHULA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHj04-0007yC-F6; Fri, 27 Mar 2020 07:01:52 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHj01-0007xf-0S
 for linux-nvme@lists.infradead.org; Fri, 27 Mar 2020 07:01:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 06ECBB265;
 Fri, 27 Mar 2020 07:01:44 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvmetcli: don't remove ANA Group 1 on clear
Date: Fri, 27 Mar 2020 08:01:34 +0100
Message-Id: <20200327070134.2882-1-hare@suse.de>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_000149_194006_5751DA41 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>,
 Keith Busch <keith.busch@wdc.com>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The first ANA group is maintained by the kernel so it cannot
be deleted.

Signed-off-by: Hannes Reinecke <hare@suse.de>
---
 nvmet/nvme.py | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/nvmet/nvme.py b/nvmet/nvme.py
index 0647ddc..fdec4ff 100644
--- a/nvmet/nvme.py
+++ b/nvmet/nvme.py
@@ -845,6 +845,11 @@ class ANAGroup(CFSNode):
 
         a._setup_attrs(n, err_func)
 
+    def delete(self):
+        # ANA Group 1 is automatically created/deleted
+        if self.grpid != 1:
+            super(ANAGroup, self).delete()
+
     def dump(self):
         d = super(ANAGroup, self).dump()
         d['grpid'] = self.grpid
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
