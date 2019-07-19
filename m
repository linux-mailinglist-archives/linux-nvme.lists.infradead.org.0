Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3310E6ECA2
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 00:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JNeS1Mzufym8Yxve3eWOtBb0I6RYp49FKsHoqfckzXU=; b=Pup7lft+Be4282yyMUWpYhUWoq
	tFvqRmlvGuV6PejvMB4IcfwAgsIJB0rPdngW/Esli3Bjjf2gRWQODJ6Bcbwbn9GDjLhr8vHpOamW3
	SnYntuCncZHoDMmDs/YBUoH/bU3tP5wVwmYvOm8jxq5nbFNOxMZME9hkHZ2A8c55zxzCCzJRI3cpD
	oF1B59NXlkBpuwnGBxNh4pM1s9LiJ4GBke0v1pduTdgSZkxuz3m9JIQR4MX8izCnTKUIAxhny4IHF
	y8oHhy43tQL4aW6DUjkbV1fylZFgHfM3+/vBxf87CDgs2k3Zmb6lPiO2lEVY2Z0+YziZECnoXgbb7
	2Qvu0fMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hobnh-0003D7-E1; Fri, 19 Jul 2019 22:56:29 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobkh-0008VD-Tg
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 22:53:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so14763243pff.9
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 15:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SE35Ly/o7ol5kP4/L61QIBVEA6Ri5tpclce1XD7RUh4=;
 b=E7QURR7shgbAewCFDJg0qwQ+Bycmbdn2XCNGajA9aPzV58apPmfpurXBUuosd1cwqH
 ulFQoLU/h0mbI7WsFdTv5EH1T1plITnGm7O7BDxt7nKqKB3NqZerBc2m3/qFMkeh6wyN
 uMggj9i4YXzLpglZq3leip7KIM4+IbeHsXem4Xc/RiTyfaguFZhQDecCJKBLAZYOmu1V
 WA9coyDSnKrBu45oAQYKJdn5JIzZl8+i0BNnNAf5b5sIVvW/ms5wYU1JKxqzHV4JwWxY
 g2iEMCedpkH634+f4OPN92CqXpYxXHz8SQw4k4qknZsvXzuEy7mkybc8LbxlTy98fMpb
 UhMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SE35Ly/o7ol5kP4/L61QIBVEA6Ri5tpclce1XD7RUh4=;
 b=bBngoEqFmCSymTFJhFiwv8cIjkqBrrlELwmLNVKGW5SGp3+d3qnSlCHw3Wf1VG5ZNY
 C5J1x/rEbKv57jI4QeJFBSlreAyrB5NHOxzpdATE6dp1/7lRbrfxuoq047j52UHuTWNt
 poZc89vb5/i3Yegiy6tqjhioh5uxXL12KefpAu/Z5OinHvvW81p/reaUYKZ9U7Re3nNx
 J8JUu04MAuQjl9cyvSclILCXv1bNA/ibWeIkndWvaUOFz1QCt/JLJfoqvQhpz7Q9tnjS
 nlXza10OvWdgNu5iZnkycrcBIwMApnGjNeQQnWXG8AcJco2PKultYWwRtXSXMAm+5fm/
 XeHg==
X-Gm-Message-State: APjAAAWgUsiuEWx2Hp3PCfSovKLaDpwv8E4mbTfHRMzYZ2rCnvkNpdRj
 lppJ9IcVXqJNOEP8IeZ/Cek/x4A2
X-Google-Smtp-Source: APXvYqwDPwpWNCJtQVMIe9/DUUG11uhAX0uMEwWX6ZInh7ju7STnB15J7cFq46QIEo3D1Ii4uJl4YQ==
X-Received: by 2002:a63:6bc5:: with SMTP id
 g188mr25757547pgc.225.1563576802776; 
 Fri, 19 Jul 2019 15:53:22 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w3sm27823645pgl.31.2019.07.19.15.53.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 15:53:22 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 10/10] nvme-cli: nvmf auto-connect scripts
Date: Fri, 19 Jul 2019 15:53:05 -0700
Message-Id: <20190719225305.11397-11-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190719225305.11397-1-jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_155324_070562_6CB9C573 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Smart <jsmart2021@gmail.com>, Simon Schricker <sschricker@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This set of scripts is a combination of those sent by Hannes, Sagi,
and I in earlier patches and RFC's.

Auto-connect operates by the nvme core layer or nvme-fc transport
generating a udev event with directory-controller addressing
information. The nvme core layer generates an event when a
persistent discovery controller generates a Discovery Log Change
Notification AEN.  The nvme-fc transport generates an event when
an FC rport that has a NVME Discovery controller is detected or
when a FC state change event occurs for for an FC rport that has
a NVME Discovery controller

The udev event is handled by a script that extracts the Discovery
controller addressing information and initiates a systemd service
to perform a "nvme connect-all" to the Discovery controller.
The "nvme connect-all" request is not called directly from the udev
handler itself as the request may take some time or stall altogether,
which would block other udev event handling.  By transitioning to
a sytemd service, the call can take as much time as needed to
complete.

The scripts consist of:
- A udev script that handles nvme core and nvme-fc udev events.
  The udev handler starts a nvmf-connect systemd service.
- A nvmf-connect systemd service. The service, in its instance
  name, is passed the connect arguments for the discovery
  controller. The service performs a "nvme connect-all" to the
  discovery controller.
- A nvmefc-boot-connections systemd service. This is a run-once
  service run after udev is enabled, which will replay events
  generated by NVME-FC devices detected during boot while udev
  is not yet running.
- To stop autoconnect an additional nvmefc-connect.target has
  been added, which will instruct systemd to cancel all
  outstanding autoconnect services.

Note: Although the nvme-fc subsystem is converting to use the
  same nvme core layer event mechanism, the nvme-fc-specific
  udev event that has been in existence for a while is contained
  in in the script so that the utilities may run against older
  kernels.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Hannes Reinecke <hare@suse.com>
CC: Simon Schricker <sschricker@suse.com>

---
v2:
  change nvme.spec.in to load systemd mods before loading udev mods
---
 Makefile                                         | 22 +++++++++++++++++++---
 nvme.spec.in                                     |  9 +++++++++
 nvmf-autoconnect/70-nvmf-autoconnect.conf        |  1 +
 nvmf-autoconnect/70-nvmf-autoconnect.rules       | 18 ++++++++++++++++++
 nvmf-autoconnect/nvmefc-boot-connections.service |  9 +++++++++
 nvmf-autoconnect/nvmf-connect.target             |  2 ++
 nvmf-autoconnect/nvmf-connect@.service           | 14 ++++++++++++++
 7 files changed, 72 insertions(+), 3 deletions(-)
 create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.conf
 create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.rules
 create mode 100644 nvmf-autoconnect/nvmefc-boot-connections.service
 create mode 100644 nvmf-autoconnect/nvmf-connect.target
 create mode 100644 nvmf-autoconnect/nvmf-connect@.service

diff --git a/Makefile b/Makefile
index db594a3..2ce255b 100644
--- a/Makefile
+++ b/Makefile
@@ -5,9 +5,13 @@ LIBUUID = $(shell $(LD) -o /dev/null -luuid >/dev/null 2>&1; echo $$?)
 NVME = nvme
 INSTALL ?= install
 DESTDIR =
-PREFIX ?= /usr/local
+PREFIX ?= /usr
 SYSCONFDIR = /etc
 SBINDIR = $(PREFIX)/sbin
+LIBDIR ?= $(PREFIX)/lib
+SYSTEMDDIR ?= $(LIBDIR)/systemd
+UDEVDIR ?= $(LIBDIR)/udev
+DRACUTDIR ?= $(LIBDIR)/dracut
 LIB_DEPENDS =
 
 ifeq ($(LIBUUID),0)
@@ -89,6 +93,18 @@ install-bash-completion:
 	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/bash-completion/completions
 	$(INSTALL) -m 644 -T ./completions/bash-nvme-completion.sh $(DESTDIR)$(PREFIX)/share/bash-completion/completions/nvme
 
+install-systemd:
+	$(INSTALL) -d $(DESTDIR)$(SYSTEMDDIR)/system
+	$(INSTALL) -m 644 ./nvmf-autoconnect/*.service ./nvmf-autoconnect/*.target $(DESTDIR)$(SYSTEMDDIR)/system
+
+install-udev:
+	$(INSTALL) -d $(DESTDIR)$(UDEVDIR)/rules.d
+	$(INSTALL) -m 644 ./nvmf-autoconnect/*.rules $(DESTDIR)$(UDEVDIR)/rules.d
+
+install-dracut:
+	$(INSTALL) -d $(DESTDIR)$(DRACUTDIR)/dracut.conf.d
+	$(INSTALL) -m 644 ./nvmf-autoconnect/*.conf $(DESTDIR)$(DRACUTDIR)/dracut.conf.d
+
 install-zsh-completion:
 	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/zsh/site-functions
 	$(INSTALL) -m 644 -T ./completions/_nvme $(DESTDIR)$(PREFIX)/share/zsh/site-functions/_nvme
@@ -109,7 +125,7 @@ install-etc:
 		$(INSTALL) -m 644 -T ./etc/discovery.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
 	fi
 
-install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc
+install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc install-systemd install-udev install-dracut
 install: install-spec install-hostparams
 
 nvme.spec: nvme.spec.in NVME-VERSION-FILE
@@ -177,7 +193,7 @@ deb-light: $(NVME) pkg nvme.control.in
 	dpkg-deb --build nvme-$(NVME_VERSION)
 
 rpm: dist
-	$(RPMBUILD) -ta nvme-$(NVME_VERSION).tar.gz
+	$(RPMBUILD) --define '_libdir ${LIBDIR}' -ta nvme-$(NVME_VERSION).tar.gz
 
 .PHONY: default doc all clean clobber install-man install-bin install
 .PHONY: dist pkg dist-orig deb deb-light rpm FORCE test
diff --git a/nvme.spec.in b/nvme.spec.in
index 6934f8f..b8e3377 100644
--- a/nvme.spec.in
+++ b/nvme.spec.in
@@ -35,6 +35,11 @@ make install-spec DESTDIR=%{buildroot} PREFIX=/usr
 %{_sysconfdir}/nvme/hostnqn
 %{_sysconfdir}/nvme/hostid
 %{_sysconfdir}/nvme/discovery.conf
+%{_libdir}/udev/rules.d/70-nvmf-autoconnect.rules
+%{_libdir}/dracut/dracut.conf.d/70-nvmf-autoconnect.conf
+%{_libdir}/systemd/system/nvmf-connect@.service
+%{_libdir}/systemd/system/nvmefc-boot-connections.service
+%{_libdir}/systemd/system/nvmf-connect.target
 
 %clean
 rm -rf $RPM_BUILD_ROOT
@@ -47,6 +52,10 @@ if [ $1 -eq 1 ]; then # 1 : This package is being installed for the first time
         if [ ! -s %{_sysconfdir}/nvme/hostid ]; then
                 uuidgen > %{_sysconfdir}/nvme/hostid
         fi
+
+	# apply udev and systemd changes that we did
+	systemctl daemon-reload
+	udevadm control --reload-rules && udevadm trigger
 fi
 
 %changelog
diff --git a/nvmf-autoconnect/70-nvmf-autoconnect.conf b/nvmf-autoconnect/70-nvmf-autoconnect.conf
new file mode 100644
index 0000000..844f3d9
--- /dev/null
+++ b/nvmf-autoconnect/70-nvmf-autoconnect.conf
@@ -0,0 +1 @@
+install_items+="/usr/lib/udev/rules.d/70-nvmf-autoconnect.rules"
diff --git a/nvmf-autoconnect/70-nvmf-autoconnect.rules b/nvmf-autoconnect/70-nvmf-autoconnect.rules
new file mode 100644
index 0000000..f901bd1
--- /dev/null
+++ b/nvmf-autoconnect/70-nvmf-autoconnect.rules
@@ -0,0 +1,18 @@
+#
+# nvmf-autoconnect.rules:
+#   Handles udev events which invoke automatically scan via discovery
+#   controller and connect to elements in the discovery log.
+#
+#
+
+# Events from persistent discovery controllers or nvme-fc transport events
+ACTION=="change", SUBSYSTEM=="nvme", ENV{NVME_EVENT}=="discovery",\
+  ENV{NVME_CTRL_NAME}=="*", ENV{NVME_TRTYPE}=="*", ENV{NVME_TRADDR}=="*", \
+  ENV{NVME_TRSVCID}=="*", ENV{NVME_HOST_TRADDR}=="*", \
+  RUN+="/usr/bin/systemctl --no-block start nvmf-connect@--device=$env{NVME_CTRL_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"
+
+# nvme-fc transport generated events (old-style for compatibility)
+ACTION=="change", SUBSYSTEM=="fc", ENV{FC_EVENT}=="nvmediscovery", \
+  ENV{NVMEFC_HOST_TRADDR}=="*",  ENV{NVMEFC_TRADDR}=="*", \
+  RUN+="/usr/bin/systemctl --no-block start nvmf-connect@--device=none\t--transport=fc\t--traddr=$env{NVMEFC_TRADDR}\t--trsvcid=none\t--host-traddr=$env{NVMEFC_HOST_TRADDR}.service"
+
diff --git a/nvmf-autoconnect/nvmefc-boot-connections.service b/nvmf-autoconnect/nvmefc-boot-connections.service
new file mode 100644
index 0000000..84f6486
--- /dev/null
+++ b/nvmf-autoconnect/nvmefc-boot-connections.service
@@ -0,0 +1,9 @@
+[Unit]
+Description=Auto-connect to subsystems on FC-NVME devices found during boot
+
+[Service]
+Type=oneshot
+ExecStart=/bin/sh -c "echo add > /sys/class/fc/fc_udev_device/nvme_discovery"
+
+[Install]
+WantedBy=default.target
diff --git a/nvmf-autoconnect/nvmf-connect.target b/nvmf-autoconnect/nvmf-connect.target
new file mode 100644
index 0000000..f64a37c
--- /dev/null
+++ b/nvmf-autoconnect/nvmf-connect.target
@@ -0,0 +1,2 @@
+[Unit]
+Description=All instances of nvmf-autoconnect daemon
diff --git a/nvmf-autoconnect/nvmf-connect@.service b/nvmf-autoconnect/nvmf-connect@.service
new file mode 100644
index 0000000..25dca0e
--- /dev/null
+++ b/nvmf-autoconnect/nvmf-connect@.service
@@ -0,0 +1,14 @@
+#
+# Unit file used by 70-nvmf-autoconnect.rules.
+#
+
+[Unit]
+Description=NVMf auto-connect scan upon nvme discovery controller Events
+After=syslog.target
+PartOf=nvmf-connect.target
+Requires=nvmf-connect.target
+
+[Service]
+Type=simple
+Environment="CONNECT_ARGS=%i"
+ExecStart=/bin/sh -c "nvme connect-all --quiet `echo -e $CONNECT_ARGS`"
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
