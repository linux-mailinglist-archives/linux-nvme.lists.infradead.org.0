Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F51415B180
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Feb 2020 21:02:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aPeB79ETAxaMFMSUlCv+nCzBHIRWc7jDT5Y64B+nsI=; b=l1e/3GEbsl4eWb
	oLv1jkhCkd4f6WDzFhpY74qfQ/ETj2ttwbLWuMvtDd6nehc74uJNqhasG5Uspdzmzu15gDpUaOhku
	/+yeBTix3sU32looptNGuVb4UiUvwUojJCYGpka0u4JV3Zqk9cwuhayqNe5XeFduPWehITTGNmCmh
	HqNcoPoxNWg/1Apn7bqxEB+wBw7UOhWAuAGFC7R/l49Bopnm2/O/wqlsOGHORbh2ig/tAyp1K2i3h
	z+zt9bd5R52t10838s7H8/ZhgjDgdERcLRzfTRNJErwLPpIKgWSDZ0+ht9oZFO58Kl/D6AFm5iwzf
	AIs0YhtjAz9Zrt4febSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1yDK-0007gS-4i; Wed, 12 Feb 2020 20:02:26 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1yCx-0007bx-Hc; Wed, 12 Feb 2020 20:02:03 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <kbusch@kernel.org>
Subject: [PATCH 2/2] fabrics: set keep_alive_tmo also for discovery controllers
Date: Wed, 12 Feb 2020 12:01:58 -0800
Message-Id: <20200212200158.14237-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200212200158.14237-1-sagi@grimberg.me>
References: <20200212200158.14237-1-sagi@grimberg.me>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We may use persistent discovery connections on referrals
so don't restrict it for discovery controllers.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 fabrics.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fabrics.c b/fabrics.c
index 4b5c9669edc7..14b453d00e87 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -1000,7 +1000,7 @@ retry:
 		p += len;
 	}
 
-	if (cfg.keep_alive_tmo && !discover) {
+	if (cfg.keep_alive_tmo) {
 		len = sprintf(p, ",keep_alive_tmo=%d", cfg.keep_alive_tmo);
 		if (len < 0)
 			return -EINVAL;
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
