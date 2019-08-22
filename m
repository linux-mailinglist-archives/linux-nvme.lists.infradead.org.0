Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECE29A2A1
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 00:10:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NwjitodTcionX8Aa8222CbC1umKU198iMH2nnltQtl4=; b=edO
	Do6dVAcP4XB/AkQPAF/KlhvD+c2J/1ZmY94vG04oOG9lSwaSCx8Ogpe6AaUdOJOIeKvl3uHeXXird
	GJAYH9Lx/tuJJL/qmD3lTLquWo9SutPCsZrjC7iMMwS1dfdykYngBIZZd6RKaNW4w5NmWJe+yBwVY
	LLIKb9qLa2VIZsCjRbbWY0wEYeJ4emGMZQU3mIl7aA1BJ4JRQLgRbjFDc90y7RziQ1HRPlqBT8QXZ
	4S7gGkwcuBuwkiU74kAEa6tOLQQObT6EuP2xgkM47HvXm1IQ9Qn88NuyaB11KlhQnBRcVOlFj6lNO
	WIEVox3h9sw5wDGMtiWwYEDcfqQUKqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vHh-0003W9-62; Thu, 22 Aug 2019 22:10:21 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vGz-0001hC-Je; Thu, 22 Aug 2019 22:09:37 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Keith Busch <keith.busch@intel.com>
Subject: [PATCH 1/3] make: install udev rules in sysconfdir
Date: Thu, 22 Aug 2019 15:09:35 -0700
Message-Id: <20190822220937.8021-1-sagi@grimberg.me>
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
Cc: James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When the libdir is set to /usr/lib the nvmf connect udev rules are
ignored, when placing it in /etc/udev rules are working as expected.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 6409c9e13a87..64684a88d9f9 100644
--- a/Makefile
+++ b/Makefile
@@ -10,7 +10,7 @@ SYSCONFDIR = /etc
 SBINDIR = $(PREFIX)/sbin
 LIBDIR ?= $(PREFIX)/lib
 SYSTEMDDIR ?= $(LIBDIR)/systemd
-UDEVDIR ?= $(LIBDIR)/udev
+UDEVDIR ?= $(SYSCONFDIR)/udev
 DRACUTDIR ?= $(LIBDIR)/dracut
 LIB_DEPENDS =
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
