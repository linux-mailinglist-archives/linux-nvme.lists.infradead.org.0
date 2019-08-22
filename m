Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8399A23F
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 23:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V9uqkiqtE5JadfKwSx+vl/uegDBKXM/2mtc+AD5Th7k=; b=tO3GUCO2z9Kyen
	O/m9VSn6x5MPYPzIntx0Mhu3/jzo58HUYUEldApW5/Te6MiJucXNta3cLugM3rMjFuDGdQx1SOeZy
	ezUI0+Q8+iifowhEzhTRbVUWJrkBv0mlplxn7FMvwLSAibjSK+6i6ItnsTPKjdjXCypULbUTneIBn
	uuHfavKbxGlsxJWr/SGs7DKIBQRESzP31GlIJDZSMeTtOOdcqcMCTJcSnoBO/I7ckf3crBwF/CYP5
	3BJ11IJlgunMykqAYlcV6shYfYsL/IsSFuwLQbr9VfYt8DWxBJnRFdY1SMMk6LLplzGe9ffcyM3WB
	ZD3SgGjHUrvFshfnMlHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ukS-0006vo-Ke; Thu, 22 Aug 2019 21:36:00 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ukB-0006ij-7l; Thu, 22 Aug 2019 21:35:43 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <keith.busch@intel.com>
Subject: [PATCH] make: fix discovery.conf override
Date: Thu, 22 Aug 2019 14:35:39 -0700
Message-Id: <20190822213539.1198-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

it is located in sysconfdir and not sbindir

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index ff525643f838..6409c9e13a87 100644
--- a/Makefile
+++ b/Makefile
@@ -121,7 +121,7 @@ install-etc:
 	$(INSTALL) -d $(DESTDIR)$(SYSCONFDIR)/nvme
 	touch $(DESTDIR)$(SYSCONFDIR)/nvme/hostnqn
 	touch $(DESTDIR)$(SYSCONFDIR)/nvme/hostid
-	if [ ! -f $(DESTDIR)$(SBINDIR)/nvme/discovery.conf ]; then \
+	if [ ! -f $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf ]; then \
 		$(INSTALL) -m 644 -T ./etc/discovery.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
 	fi
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
