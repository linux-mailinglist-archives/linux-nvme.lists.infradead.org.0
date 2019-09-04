Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E40A95B7
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 00:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tXfIFvGWwQJ9v0XPOEBFqIciBCuF4EWmL9vLaCil4Ss=; b=k6n4fX+woOKgRyuMj1/Irps/iI
	+OSrVwRZN3zvR4C5mZAuwDoHlEG3Q9E5JXX6UtKrn16nPN7i8hGGvf6DtddIc976cQD/6soXYLJWF
	31EX3bWG6g1JURYoAWk0WuUdgCpGSLGViKxUotRcUAw+C8GYW34y4+WL2f9p3Ic1KLv0fFLD/VP5q
	1SZ+FumKnMbVGT6Buxjdmxx3kJNv0v8AtNHvzfoNTxHB+U9ehHgzTFRJyoQlPlgKbxoHJ2iqbPQG0
	643c4cwu4nZzaPmV5Q7JF8tqDKm0AYrJ00i3RG2Hk+c+cVPPY1rxTrIVA3rrGPOJhZJBYNXYDmGjB
	RNgtAA8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5dKm-0007qD-3U; Wed, 04 Sep 2019 22:01:00 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i5dJn-0005pf-Kw; Wed, 04 Sep 2019 21:59:59 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v4 5/4 nvme-cli] udev: convert the discovery event handler to
 the kernel support
Date: Wed,  4 Sep 2019 14:59:54 -0700
Message-Id: <20190904215954.15423-6-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904215954.15423-1-sagi@grimberg.me>
References: <20190904215954.15423-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The kernel will not send us a specific event for discovery but
rather the AEN result code. So expect NVME_AEN=0x70f002 for
discovery log change events.

Also, we don't get the NVME_CTRL_NAME env var anymore as this is
available from the device $kernel.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules b/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
index c909fb036d54..cbbebc56ea80 100644
--- a/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
+++ b/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
@@ -6,10 +6,12 @@
 #
 
 # Events from persistent discovery controllers or nvme-fc transport events
-ACTION=="change", SUBSYSTEM=="nvme", ENV{NVME_EVENT}=="discovery",\
-  ENV{NVME_CTRL_NAME}=="*", ENV{NVME_TRTYPE}=="*", ENV{NVME_TRADDR}=="*", \
+# NVME_AEN:
+#   type 0x2 (NOTICE) info 0xf0 (DISCOVERY_LOG_CHANGE) log-page-id 0x70 (DISCOVERY_LOG_PAGE)
+ACTION=="change", SUBSYSTEM=="nvme", ENV{NVME_AEN}=="0x70f002",\
+  ENV{NVME_TRTYPE}=="*", ENV{NVME_TRADDR}=="*", \
   ENV{NVME_TRSVCID}=="*", ENV{NVME_HOST_TRADDR}=="*", \
-  RUN+="/bin/systemctl --no-block start nvmf-connect@--device=$env{NVME_CTRL_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"
+  RUN+="/bin/systemctl --no-block start nvmf-connect@--device=$kernel\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"
 
 # nvme-fc transport generated events (old-style for compatibility)
 ACTION=="change", SUBSYSTEM=="fc", ENV{FC_EVENT}=="nvmediscovery", \
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
