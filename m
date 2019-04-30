Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4662DF0AA
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 08:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UBa0tcrjB/VnXKpi2d5aBJf8Gf4svOHhlXaOAmmd6XU=; b=iSL
	PJ9eFgYLwiQi5iTB2mMxgUNeWtOfXrq1LLnG/IIcqc8yL5rkoSiTAhVeJ/eDcgi0d7WzW9/VnIZvO
	xe5zsHob3IpUZiupfkGTEGMt75WgsQ1Ue2ZlSlhJKHJL2QEVSQ2ei+Hk6OxDgAAxPqwPzpeUp4SI4
	jXwUOC0ZxOqbG9MxnLq1roIoT2r4GNMiDhpWS9l3QSBF98JRlhLlIQlPOtOg2gwcl5bUx1qw8jKpz
	nRpy284D6nk3imOrAjNnBOnSXUsA7yl5f/7rZX60gdLf50apo1+6SD+3pzfjXVWCHDWh3k+HrFX+a
	2gYsXBNlpsoINRXQLtvrGh95uJ9ckIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLMUx-0005G4-52; Tue, 30 Apr 2019 06:44:15 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLMUr-0005Fb-VL
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 06:44:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 536ACAC70;
 Tue, 30 Apr 2019 06:44:05 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@intel.com>
Subject: [PATCH nvme-cli] nvme_fc auto-connect scripts
Date: Tue, 30 Apr 2019 08:43:59 +0200
Message-Id: <20190430064359.24905-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_234410_305957_B64EF43D 
X-CRM114-Status: GOOD (  12.39  )
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
Cc: Hannes Reinecke <hare@suse.com>, Simon Schricker <sschricker@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Here's a set of script to enable FC-NVMe autoconnect, based on
the initial posting from James Smart.
FC-NVMe already generates an uevent whenever a new FC-NVMe remote
port is registered, so we can create an udev rule to parse this
event and start connecting to it.

The problem here is that the 'nvme connect-all' call might be taking
some time or might even stall altogether, so we cannot call it
directly from the udev rule. Rather, the udev rule starts a systemd
service, which then calls 'nvme connect-all' as a 'simple' service.
With this approach we are insulated from any stalls in udev rules.
Additionally we can implement a boot service to restart any missed
connections attempts.

To stop autoconnect an additional nvmefc-connect.target has been
added, which will instruct systemd to cancel all outstanding
autoconnect services.

Cc: James Smart <james.smart@broadcom.com>
Signed-off-by: Simon Schricker <sschricker@suse.com>
Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 nvme-fc-autoconnect/70-nvmefc-autoconnect.conf      |  1 +
 nvme-fc-autoconnect/70-nvmefc-autoconnect.rules     |  8 ++++++++
 nvme-fc-autoconnect/nvmefc-boot-connections.service |  9 +++++++++
 nvme-fc-autoconnect/nvmefc-connect.target           |  2 ++
 nvme-fc-autoconnect/nvmefc-connect@.service         | 13 +++++++++++++
 5 files changed, 33 insertions(+)
 create mode 100644 nvme-fc-autoconnect/70-nvmefc-autoconnect.conf
 create mode 100644 nvme-fc-autoconnect/70-nvmefc-autoconnect.rules
 create mode 100644 nvme-fc-autoconnect/nvmefc-boot-connections.service
 create mode 100644 nvme-fc-autoconnect/nvmefc-connect.target
 create mode 100644 nvme-fc-autoconnect/nvmefc-connect@.service

diff --git a/nvme-fc-autoconnect/70-nvmefc-autoconnect.conf b/nvme-fc-autoconnect/70-nvmefc-autoconnect.conf
new file mode 100644
index 0000000..b92d94f
--- /dev/null
+++ b/nvme-fc-autoconnect/70-nvmefc-autoconnect.conf
@@ -0,0 +1 @@
+install_items+="/usr/lib/udev/rules.d/70-nvmefc-autoconnect.rules"
diff --git a/nvme-fc-autoconnect/70-nvmefc-autoconnect.rules b/nvme-fc-autoconnect/70-nvmefc-autoconnect.rules
new file mode 100644
index 0000000..aa4f9bf
--- /dev/null
+++ b/nvme-fc-autoconnect/70-nvmefc-autoconnect.rules
@@ -0,0 +1,8 @@
+#
+# nvme_fc: udev event to automatically scan (via discovery controller)
+#   new FC nvme remote ports and auto-connect to the subsystems they report.
+#
+
+ACTION=="change", SUBSYSTEM=="fc", ENV{FC_EVENT}=="nvmediscovery", \
+  ENV{NVMEFC_HOST_TRADDR}=="*",  ENV{NVMEFC_TRADDR}=="*", \
+  RUN+="/usr/bin/systemctl --no-block start nvmefc-connect@--host-traddr=$env{NVMEFC_HOST_TRADDR}\\x20--traddr=$env{NVMEFC_TRADDR}.service"
diff --git a/nvme-fc-autoconnect/nvmefc-boot-connections.service b/nvme-fc-autoconnect/nvmefc-boot-connections.service
new file mode 100644
index 0000000..aa35c15
--- /dev/null
+++ b/nvme-fc-autoconnect/nvmefc-boot-connections.service
@@ -0,0 +1,9 @@
+[Unit]
+Description=Auto-connect to subsystems on FC-NVME devices during boot
+
+[Service]
+Type=oneshot
+ExecStart=/bin/sh -c "echo add > /sys/class/fc/fc_udev_device/nvme_discovery"
+
+[Install]
+WantedBy=default.target
diff --git a/nvme-fc-autoconnect/nvmefc-connect.target b/nvme-fc-autoconnect/nvmefc-connect.target
new file mode 100644
index 0000000..953c0b7
--- /dev/null
+++ b/nvme-fc-autoconnect/nvmefc-connect.target
@@ -0,0 +1,2 @@
+[Unit]
+Description=All instances of nvme-fc-autoconnect daemon
diff --git a/nvme-fc-autoconnect/nvmefc-connect@.service b/nvme-fc-autoconnect/nvmefc-connect@.service
new file mode 100644
index 0000000..a8ff271
--- /dev/null
+++ b/nvme-fc-autoconnect/nvmefc-connect@.service
@@ -0,0 +1,13 @@
+#
+# Unit file used by 70-nvmefc-autoconnect.rules.
+#
+
+[Unit]
+Description=Auto-connect to subsystems on FC-NVME devices
+After=syslog.target
+PartOf=nvmefc-connect.target
+Requires=nvmefc-connect.target
+
+[Service]
+Type=simple
+ExecStart=/bin/sh -c "/usr/sbin/nvme connect-all --transport=fc `/usr/bin/echo -e '%i'`"
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
