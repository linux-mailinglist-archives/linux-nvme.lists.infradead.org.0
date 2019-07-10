Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A040364F3D
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 01:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cA6XH7rpM4sIU1yvVK/ZKqG2IXFUiXQcZ53+Oq8SAPs=; b=pPOxqQIQ3/b8IxRPdUGyruNsTO
	WiRQR5igXt1zBKfK8v2fSJ1hfjzRtVkMSIh7DsnGA8WClX/08OvDnnK8bzAp6dUV/pDDQ/l4hXt36
	9o4pnbAhtEhry5lm2E0kLNOJpdkH03TZfAJ410O+HtmHY7HhgXIGFe2OkPlzlosk+MWuz8JvMCv14
	Svt1Q8bRUGb3wSz6KxTfkBKBlS7W1byTOo2QrxHL4X0+rXW7NrPA83Hjd5I7GdHyzGIBsfv7zGhUA
	ztMXfbC3/5RDaBi4OhWv7P2xj8Td7YdWJjaPJvXDjcGqfjxyLPpnQrDf3SysMTzhfs4gYMS1c1tBI
	i4UAFa5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlM22-0000mH-3n; Wed, 10 Jul 2019 23:29:50 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlM0E-00089x-Te
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 23:28:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id s27so1973117pgl.2
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jul 2019 16:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pg6P3ZhWqbPdFPQm4HbTNZZdNeVnVJI6APxcLxY59OE=;
 b=OnnP75ei1/u9o9NzRbzkcWTWBnrbkKGQgXkrsjlfR86f83doOA/pEf6/i2bZbZEeRb
 Y7RzzVcxB0Zin7bDVnKsfP/wVI8MvqlAQ4sq2b5hcKNRFOSw7BdLrf+9Hx9s6A936T/x
 7jC7c5lYmHCZ8uHaM7txmYv3Zu53P0mjwKoXyNWhknoTidF5lP/qB17iLoG17RJ4jPDs
 B8v2SCU5wzXv0hBvjabsZEtmbDs3C1zRXpTw+HF6F9piepDASb+W5WG6Y7zMDMbOryg/
 Kcq++CthPbl+mdd5hsuH60Z7+Fvf6UvmTc2t69NenyP4GHQI80TLxkx9iuIPrGxjd8Eh
 8DLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pg6P3ZhWqbPdFPQm4HbTNZZdNeVnVJI6APxcLxY59OE=;
 b=KEgYdlKJS8XnY2Sh9MFFA4i6kOA+G9STNrGb3UtkeoBGkQ9btwZH7IAbe7niwhBHjr
 85W4kIW4FRMZkusdWpXnfFz4y7dAagfoVrJ+RCKRAaaM0ci5gxCJ1Y/+tI0tT7JHpfEe
 QXx80InT6mooSRho4FRL/dzCLIvUZqF3C2KT36DDLO5qV3OmQ+QGyI9BGjhQLOOcCKJd
 I3TW+ZPkzFnPvlAGYTz7yVVf7oHu6m3gOGnPtfbS4VJNJU3OEReh181KkyoCzR5/beGq
 R06TaQ4kCDO5wSzAomRxpqD/3wNjqsQvIKx+9LZsdavFg+vP8eJfF3GlerlEpOYMPe6+
 aGsw==
X-Gm-Message-State: APjAAAVnfvdQHCSR43lZ7f5xyvEzEiLnhkt5E5FqzzyTRK+M0p3ELxgD
 lKdLsqykK5MKtQ6AjNlKtq2mf/2l
X-Google-Smtp-Source: APXvYqzqdeca+nD0Z1lXsTUGquTtVDPCTYmsjYYFZYjJqFcyf+D7hjUk1indSRDNjKBDZxmecjZJog==
X-Received: by 2002:a17:90a:ba93:: with SMTP id
 t19mr996613pjr.139.1562801277636; 
 Wed, 10 Jul 2019 16:27:57 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n140sm3305478pfd.132.2019.07.10.16.27.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 10 Jul 2019 16:27:57 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc 6/6] nvme-cli: nvmf auto-connect scripts
Date: Wed, 10 Jul 2019 16:27:40 -0700
Message-Id: <20190710232740.26734-7-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190710232740.26734-1-jsmart2021@gmail.com>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_162759_036160_2DBFECB5 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: James Smart <jsmart2021@gmail.com>, Simon Schricker <sschricker@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>
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
CC: Simon Schricker <sschricker@suse.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
CC: Sagi Grimberg <sagi@grimberg.me>

---
Added install lines for 70-nvmf-autoconnect.conf and nvmf-connect.target
Revised Makefile to set/use LIBDIR. Hardset to /usr/lib to match the
  nvme.spec.in file
Revised nvme.spec.in to use %{_libdir}
Added --quiet option udev scripts that specify nvme connect-all args
---
 Makefile                                         | 16 ++++++++++++++--
 nvme.spec.in                                     |  9 +++++++++
 nvmf-autoconnect/70-nvmf-autoconnect.conf        |  1 +
 nvmf-autoconnect/70-nvmf-autoconnect.rules       | 18 ++++++++++++++++++
 nvmf-autoconnect/nvmefc-boot-connections.service |  9 +++++++++
 nvmf-autoconnect/nvmf-connect.target             |  2 ++
 nvmf-autoconnect/nvmf-connect@.service           | 14 ++++++++++++++
 7 files changed, 67 insertions(+), 2 deletions(-)
 create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.conf
 create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.rules
 create mode 100644 nvmf-autoconnect/nvmefc-boot-connections.service
 create mode 100644 nvmf-autoconnect/nvmf-connect.target
 create mode 100644 nvmf-autoconnect/nvmf-connect@.service

diff --git a/Makefile b/Makefile
index ebb6b75..0389497 100644
--- a/Makefile
+++ b/Makefile
@@ -8,6 +8,10 @@ DESTDIR =
 PREFIX ?= /usr/local
 SYSCONFDIR = /etc
 SBINDIR = $(PREFIX)/sbin
+LIBDIR ?= /usr/lib
+SYSTEMDDIR ?= $(LIBDIR)/systemd
+UDEVDIR ?= $(LIBDIR)/udev
+DRACUTDIR ?= $(LIBDIR)/dracut
 LIB_DEPENDS =
 
 ifeq ($(LIBUUID),0)
@@ -87,6 +91,14 @@ install-bash-completion:
 	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/bash-completion/completions
 	$(INSTALL) -m 644 -T ./completions/bash-nvme-completion.sh $(DESTDIR)$(PREFIX)/share/bash-completion/completions/nvme
 
+install-udev:
+	$(INSTALL) -d $(DESTDIR)$(SYSTEMDDIR)/system
+	$(INSTALL) -m 644 ./nvmf-autoconnect/*.service ./nvmf-autoconnect/*.target $(DESTDIR)$(SYSTEMDDIR)/system
+	$(INSTALL) -d $(DESTDIR)$(UDEVDIR)/rules.d
+	$(INSTALL) -m 644 ./nvmf-autoconnect/*.rules $(DESTDIR)$(UDEVDIR)/rules.d
+	$(INSTALL) -d $(DESTDIR)$(DRACUTDIR)/dracut.conf.d
+	$(INSTALL) -m 644 ./nvmf-autoconnect/*.conf $(DESTDIR)$(DRACUTDIR)/dracut.conf.d
+
 install-zsh-completion:
 	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/zsh/site-functions
 	$(INSTALL) -m 644 -T ./completions/_nvme $(DESTDIR)$(PREFIX)/share/zsh/site-functions/_nvme
@@ -107,7 +119,7 @@ install-etc:
 		$(INSTALL) -m 644 -T ./etc/discovery.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
 	fi
 
-install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc
+install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc install-udev
 install: install-spec install-hostparams
 
 nvme.spec: nvme.spec.in NVME-VERSION-FILE
@@ -175,7 +187,7 @@ deb-light: $(NVME) pkg nvme.control.in
 	dpkg-deb --build nvme-$(NVME_VERSION)
 
 rpm: dist
-	$(RPMBUILD) -ta nvme-$(NVME_VERSION).tar.gz
+	$(RPMBUILD) --define '_libdir ${LIBDIR}' -ta nvme-$(NVME_VERSION).tar.gz
 
 .PHONY: default doc all clean clobber install-man install-bin install
 .PHONY: dist pkg dist-orig deb deb-light rpm FORCE test
diff --git a/nvme.spec.in b/nvme.spec.in
index 6934f8f..1286e58 100644
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
+	udevadm control --reload-rules && udevadm trigger
+	systemctl daemon-reload
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
index 0000000..b241b12
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
+  ENV{NVME_CTLR_NAME}=="*", ENV{NVME_TRTYPE}=="*", ENV{NVME_TRADDR}=="*", \
+  ENV{NVME_TRSVCID}=="*", ENV{NVME_HOST_TRADDR}=="*", \
+  RUN+="/usr/bin/systemctl --no-block start nvmf-connect@--quiet\t--device=$env{NVME_CTLR_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"
+
+# nvme-fc transport generated events (old-style for compatibility)
+ACTION=="change", SUBSYSTEM=="fc", ENV{FC_EVENT}=="nvmediscovery", \
+  ENV{NVMEFC_HOST_TRADDR}=="*",  ENV{NVMEFC_TRADDR}=="*", \
+  RUN+="/usr/bin/systemctl --no-block start nvmf-connect@--quiet\t--device=none\t--transport=fc\t--traddr=$env{NVMEFC_TRADDR}\t--trsvcid=none\t--host-traddr=$env{NVMEFC_HOST_TRADDR}.service"
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
index 0000000..7d9f856
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
+ExecStart=/bin/sh -c "/usr/sbin/nvme connect-all `/usr/bin/echo -e $CONNECT_ARGS`"
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
