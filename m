Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4737E655
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bygUL2NsvsjVoz53SlpOZbAmbTbHADGa7hYx0ducpdM=; b=s2uqY3AK5WvN3V0IsTPs4jbZ+K
	rgGAq21xsG/JoRJQBZoJdEoi8wuoSgCBA5GPAkFkX5LuTgzXAwCUl4DA59xHK/iQ35NVKoS4niglT
	8W7Thwn2aDCsizWS88jRJ4I+R9nC6zGEftZOrleI42PdIIWGEh4DIq0J3CEIg1/OR3NodMwPfARMg
	WtDT4m8qDvR6+sv43Y2/jrSvgFqNgtCBePDF1DaT4rDmq4G4hgfT3i+5ORJaivcDNrQoqwZ96PluY
	YgEs/J4X8DghAtyOuoSLPrOG4QzkLlLDsDAvTEQR0+gm87JatqWT5D4UtLmLPw9kCvtLac2eLeZ45
	rxNGLEBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKIj-00086C-KM; Thu, 01 Aug 2019 23:16:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGr-0005Bo-EB
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id r7so34924577pfl.3
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WiFN919bItpLMevY1YIYVxUDc56IpCHGeKGbwR4mTmc=;
 b=ZmFq4vmgQXGeyfbsluwPNhkZxJM/LT2Ot1gVqfSct9Ffu1HVjiO/I+/RDiJjDnNRMd
 FdzI2hK240y6Ff12t3jqkm95gaYzAmUW90kF5tORlYcVZKQJWsclntYTXjf2T+QB4suC
 giA9HAccOcNbjv8y1eE3wQGA7Q+1AYsfLWSMjPal9eEKgoDHqKJW6w3UJ7Fo30SP0/El
 jpHTOwq2OZ9ZvSbD/pjpK8KzEIOzXDR5v/xYRzqCxVu1IUbn2tYH90pJr7WGc528pnxi
 VUp6luZFndG0zS6nR0BSDnfLTme2NL/kwJuAH0/80tTTKEYBMXCZ/XHzEstjtba+bMvS
 7n/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WiFN919bItpLMevY1YIYVxUDc56IpCHGeKGbwR4mTmc=;
 b=ZsORZRuhIFhxtr0dU6NpeAeuqVJKxgdKqvOJNUqp8b2J8wVmOd+f7awJjMNCqY0qvF
 7IXK2GvWdWKX1N76KqOF9YqeDF+oWVoBB3kdjaIMEZZU0g0F/r1u+Ey1Cci+cOnS+Vk+
 Bw1AHWAT9e/KRb63mCRBMHlY9WzvYiaGBgM4oHivC261nc01X0BgJQPLD35wDL17X8Oa
 tQI/kDW5t/8SnbSDzvNp69pzOrpzy3Bd/rJYo7iJBRzHzP+vHISGPSUp7L4IwF/J/RX0
 QfxSSqJlQgnobLQzKP++XhiNTFLj9xRuFaiQV67DIK++9W0RJiW3opto3psBd60chdNs
 njTA==
X-Gm-Message-State: APjAAAWSUIJEHiuiKcwMQLD+N7OO9CC9a6XhOfne3BJ80O5zobIVBdv7
 Ql8WPfVmoFWpSbFts4AHGyMJgSGd
X-Google-Smtp-Source: APXvYqyfxmFHp+rKR0VcbdE8KfE71LysO9HMPMUotqoRSa7lpMCIzm7zZwvmtGVwB2cjbLX/8/MCgw==
X-Received: by 2002:aa7:8108:: with SMTP id b8mr57254650pfi.197.1564701244225; 
 Thu, 01 Aug 2019 16:14:04 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.14.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:14:03 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 10/10] nvme-cli: nvmf auto-connect scripts
Date: Thu,  1 Aug 2019 16:13:48 -0700
Message-Id: <20190801231348.21397-11-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161405_498546_EC098BE6 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
v3:
  70-nvmf-autoconnect.rules:
    change from "/usr/bin/systemctl" to "systemctl".
    remove blank line at end of file
  Created dracut-conf, systemd, udev-rules sub directories under
     nvmf-autoconnect.  Moved the respective files into their
     proper subdirectory. Updated the makefile install targets
       accordingly.
---
 Makefile                                           | 22 +++++++++++++++++++---
 nvme.spec.in                                       |  9 +++++++++
 .../dracut-conf/70-nvmf-autoconnect.conf           |  1 +
 .../systemd/nvmefc-boot-connections.service        |  9 +++++++++
 nvmf-autoconnect/systemd/nvmf-connect.target       |  2 ++
 nvmf-autoconnect/systemd/nvmf-connect@.service     | 14 ++++++++++++++
 .../udev-rules/70-nvmf-autoconnect.rules           | 17 +++++++++++++++++
 7 files changed, 71 insertions(+), 3 deletions(-)
 create mode 100644 nvmf-autoconnect/dracut-conf/70-nvmf-autoconnect.conf
 create mode 100644 nvmf-autoconnect/systemd/nvmefc-boot-connections.service
 create mode 100644 nvmf-autoconnect/systemd/nvmf-connect.target
 create mode 100644 nvmf-autoconnect/systemd/nvmf-connect@.service
 create mode 100644 nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules

diff --git a/Makefile b/Makefile
index db594a3..ff52564 100644
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
+	$(INSTALL) -m 644 ./nvmf-autoconnect/systemd/* $(DESTDIR)$(SYSTEMDDIR)/system
+
+install-udev:
+	$(INSTALL) -d $(DESTDIR)$(UDEVDIR)/rules.d
+	$(INSTALL) -m 644 ./nvmf-autoconnect/udev-rules/* $(DESTDIR)$(UDEVDIR)/rules.d
+
+install-dracut:
+	$(INSTALL) -d $(DESTDIR)$(DRACUTDIR)/dracut.conf.d
+	$(INSTALL) -m 644 ./nvmf-autoconnect/dracut-conf/* $(DESTDIR)$(DRACUTDIR)/dracut.conf.d
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
diff --git a/nvmf-autoconnect/dracut-conf/70-nvmf-autoconnect.conf b/nvmf-autoconnect/dracut-conf/70-nvmf-autoconnect.conf
new file mode 100644
index 0000000..844f3d9
--- /dev/null
+++ b/nvmf-autoconnect/dracut-conf/70-nvmf-autoconnect.conf
@@ -0,0 +1 @@
+install_items+="/usr/lib/udev/rules.d/70-nvmf-autoconnect.rules"
diff --git a/nvmf-autoconnect/systemd/nvmefc-boot-connections.service b/nvmf-autoconnect/systemd/nvmefc-boot-connections.service
new file mode 100644
index 0000000..84f6486
--- /dev/null
+++ b/nvmf-autoconnect/systemd/nvmefc-boot-connections.service
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
diff --git a/nvmf-autoconnect/systemd/nvmf-connect.target b/nvmf-autoconnect/systemd/nvmf-connect.target
new file mode 100644
index 0000000..f64a37c
--- /dev/null
+++ b/nvmf-autoconnect/systemd/nvmf-connect.target
@@ -0,0 +1,2 @@
+[Unit]
+Description=All instances of nvmf-autoconnect daemon
diff --git a/nvmf-autoconnect/systemd/nvmf-connect@.service b/nvmf-autoconnect/systemd/nvmf-connect@.service
new file mode 100644
index 0000000..25dca0e
--- /dev/null
+++ b/nvmf-autoconnect/systemd/nvmf-connect@.service
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
diff --git a/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules b/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
new file mode 100644
index 0000000..789a2c8
--- /dev/null
+++ b/nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules
@@ -0,0 +1,17 @@
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
+  RUN+="systemctl --no-block start nvmf-connect@--device=$env{NVME_CTRL_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"
+
+# nvme-fc transport generated events (old-style for compatibility)
+ACTION=="change", SUBSYSTEM=="fc", ENV{FC_EVENT}=="nvmediscovery", \
+  ENV{NVMEFC_HOST_TRADDR}=="*",  ENV{NVMEFC_TRADDR}=="*", \
+  RUN+="systemctl --no-block start nvmf-connect@--device=none\t--transport=fc\t--traddr=$env{NVMEFC_TRADDR}\t--trsvcid=none\t--host-traddr=$env{NVMEFC_HOST_TRADDR}.service"
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
