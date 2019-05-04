Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EED13674
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 02:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YZEhfgyrT7jUD/WiE1rqOAnRGsZk4E9QcqyHb+g8kPs=; b=d1EAmcciv98szexndBM51qTlFG
	3x0m1mHgQJPElDiCOE4Aw/ClJc0LX+XtAY6d/dyjb7HDHQuKu4fdMY+8vIvhCk7vIUj3VXJGlzbbz
	6Lhq4264eiCKhuXV3j575OduI9OMJqFHLeG4RlZR82nfih3il2TpE+u0Gy+YETmyi6CBdpgcpw7qS
	c3LT0vGPDhJ/NXDPQOcnScgg3hGftKugp0vlnQCJbXqcx2YduM+64OgF7u0L7EdNcKXgbKr1DNWe0
	+arjAt3ipG0rQEv4GGd+xduOGFgM83IgxED95yS0ghTlnuhZMVDqEXl1gVodF4hQmF+CXLf4ET0/b
	TuiY8mOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMiBd-0005Qk-JM; Sat, 04 May 2019 00:05:53 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMiAw-0004dr-Uq
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 00:05:15 +0000
Received: by mail-pf1-x434.google.com with SMTP id g3so3669086pfi.4
 for <linux-nvme@lists.infradead.org>; Fri, 03 May 2019 17:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WXPkFXtw4fUW95Vq7yhY/KYvAk0/a/V2HIEhAhOVPos=;
 b=B3AT9P2IqYGCPFhJBBAZcuxWU3MNBjwIz4jvoplcSu23G4Ml05Dxk7jXnnGv6uETfi
 ZQ8Yw3t1pwiJ6riWohKVTbJyU+0e1Wy8scfCqNef8XzP4XzmJ1KRc/g5ceVZYMj9ObkH
 xmQJ/i4wDA2gG6/joHXE8KVj4IwaO2kff0px/jXIiaIq/+41Q6yvbJOk+ZQ1ou/mgrZk
 g9Sh8CMuJkEGDbv7yLytpzXjkXW8iqpPmaCYBtijfTtBX+8DbsASk8m8TOrS6B7tZP9M
 dD4sendxbCjBnfuNGSEVieRjo+JPL5SL4/jlMYGqM8API/FIc7iTPFunq7YKx8602+W8
 PhSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WXPkFXtw4fUW95Vq7yhY/KYvAk0/a/V2HIEhAhOVPos=;
 b=nagUEednpd/BGBuTR6Q5r/W2EgnTUM8ySdOzeiR+dGGk8EyTATVPAcAjLtRy6eaPb9
 4lInRQhNAYdoWJp4JdsywRtSh4n7RQWhUT5xJETmR5BvTEU8Qh6OhrDrItuox2eaQzUK
 8xqTS5quCl/EQZgyTdB5YLnLieX2tRvsXvi2YiyZ/VKu7Yatm7MK6pUgqs82MqsBjZIc
 Kx1PzO3YMwtCkBsZFwWpAc7wu5Il7M27fuA2WID+LY0+n2CxL6kvI017W1XLdRBESQSL
 r5VRV2wrUxWJ1HwkhH59WVysFGuu7GFx44lPssqmJM9cKKzKrM4uuks06DIrsvo7C2X3
 kgZQ==
X-Gm-Message-State: APjAAAU0Mz2tUgkqRA5qoFR9Yu2zig3olxy5QB1L0t7rCDHIh80IM65Z
 7hrMdGh00x6lN28ImcS6MoYAQTI7
X-Google-Smtp-Source: APXvYqyMb9ZMFUWGZ+qxkfEypFu6Sp0Rj4Pxl/Q88l4zsRCc+cuDEVGR+teuPKcL/7yVH5jIBEGFGQ==
X-Received: by 2002:a62:ed10:: with SMTP id u16mr14882171pfh.187.1556928309853; 
 Fri, 03 May 2019 17:05:09 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id t65sm6461446pfa.175.2019.05.03.17.05.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 May 2019 17:05:09 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH nvme-cli rfc 5/5] nvmf auto-connect scripts
Date: Fri,  3 May 2019 17:04:56 -0700
Message-Id: <20190504000456.3888-6-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190504000456.3888-1-jsmart2021@gmail.com>
References: <20190504000456.3888-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_170511_257282_618D1B8B 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Hannes Reinecke <hare@suse.com>, James Smart <jsmart2021@gmail.com>,
 Simon Schricker <sschricker@suse.com>, Sagi Grimberg <sagi@grimberg.me>
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
CC: Hannes Reinecke <hare@suse.com>
CC: Sagi Grimberg <sagi@grimberg.me>
---
I could use some recommendations on where to install the
70-nvmf-autoconnect.conf and nvmf-connect.target files
---
 Makefile                                         | 10 +++++++++-
 nvme.spec.in                                     |  8 ++++++++
 nvmf-autoconnect/70-nvmf-autoconnect.conf        |  1 +
 nvmf-autoconnect/70-nvmf-autoconnect.rules       | 18 ++++++++++++++++++
 nvmf-autoconnect/nvmefc-boot-connections.service |  9 +++++++++
 nvmf-autoconnect/nvmf-connect.target             |  2 ++
 nvmf-autoconnect/nvmf-connect@.service           | 14 ++++++++++++++
 7 files changed, 61 insertions(+), 1 deletion(-)
 create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.conf
 create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.rules
 create mode 100644 nvmf-autoconnect/nvmefc-boot-connections.service
 create mode 100644 nvmf-autoconnect/nvmf-connect.target
 create mode 100644 nvmf-autoconnect/nvmf-connect@.service

diff --git a/Makefile b/Makefile
index 4bfbebb..a86751e 100644
--- a/Makefile
+++ b/Makefile
@@ -8,6 +8,8 @@ DESTDIR =
 PREFIX ?= /usr/local
 SYSCONFDIR = /etc
 SBINDIR = $(PREFIX)/sbin
+SYSTEMDDIR = /usr/lib/systemd
+UDEVDIR = /usr/lib/udev
 LIB_DEPENDS =
 
 ifeq ($(LIBUUID),0)
@@ -86,6 +88,12 @@ install-bash-completion:
 	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/bash-completion/completions
 	$(INSTALL) -m 644 -T ./completions/bash-nvme-completion.sh $(DESTDIR)$(PREFIX)/share/bash-completion/completions/nvme
 
+install-udev:
+	$(INSTALL) -d $(DESTDIR)$(SYSTEMDDIR)/system
+	$(INSTALL) -m 644 ./nvmf-autoconnect/*.service $(DESTDIR)$(SYSTEMDDIR)/system
+	$(INSTALL) -d $(DESTDIR)$(UDEVDIR)/rules.d
+	$(INSTALL) -m 644 ./nvmf-autoconnect/*.rules $(DESTDIR)$(UDEVDIR)/rules.d
+
 install-zsh-completion:
 	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/zsh/site-functions
 	$(INSTALL) -m 644 -T ./completions/_nvme $(DESTDIR)$(PREFIX)/share/zsh/site-functions/_nvme
@@ -106,7 +114,7 @@ install-etc:
 		$(INSTALL) -m 644 -T ./etc/discovery.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
 	fi
 
-install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc
+install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc install-udev
 install: install-spec install-hostparams
 
 nvme.spec: nvme.spec.in NVME-VERSION-FILE
diff --git a/nvme.spec.in b/nvme.spec.in
index 6934f8f..40a5eff 100644
--- a/nvme.spec.in
+++ b/nvme.spec.in
@@ -35,6 +35,9 @@ make install-spec DESTDIR=%{buildroot} PREFIX=/usr
 %{_sysconfdir}/nvme/hostnqn
 %{_sysconfdir}/nvme/hostid
 %{_sysconfdir}/nvme/discovery.conf
+/usr/lib/udev/rules.d/70-nvmf-autoconnect.rules
+/usr/lib/systemd/system/nvmf-connect@.service
+/usr/lib/systemd/system/nvmefc-boot-connections.service
 
 %clean
 rm -rf $RPM_BUILD_ROOT
@@ -47,6 +50,11 @@ if [ $1 -eq 1 ]; then # 1 : This package is being installed for the first time
         if [ ! -s %{_sysconfdir}/nvme/hostid ]; then
                 uuidgen > %{_sysconfdir}/nvme/hostid
         fi
+
+	# apply udev and systemd changes that we did
+	udevadm control --reload-rules && udevadm trigger
+	systemctl daemon-reload
+ fi
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
index 0000000..5405314
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
+  RUN+="/usr/bin/systemctl --no-block start nvmf-connect@--device=$env{NVME_CTLR_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"
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
