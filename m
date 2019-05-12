Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A981ACBA
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/rVHTUce5N7UHUk9eXabtUgMO5bonNHbSq9gJIYRTpQ=; b=ZUAiaWPwW33OL5pybE1jyaZA2
	bfLTuUsjpnHRBuBBDPTR6jj82UOsrg/BmE4f8HlhJIXbq7cWyNIJxYa9pHqZPXchZ5yQisKcXrWTu
	YE69VV5061ecVNlGORRQB1NvsH2Ls32hTmdc1YWuUFQhm78gXJx0z4Gbx5cRMpO5aEuBwoSGkaP1S
	n8JDce2XD5MTgIWb0yMggGSppMm2rDru/C4yZXJP3Ojmre0NonYgSyERbGliNfZsGh+sZ7Zv2Lnlf
	ooVhawHplvutkefB3Owth3Z3bQbRLczEKb0dthKcq6oMUURgPXaELa91ub+isRVq3QUSJBqI77gev
	f5g9OURzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqCT-00015J-Nt; Sun, 12 May 2019 15:15:41 +0000
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqCO-00014w-5z
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:15:37 +0000
Received: by mail-wr1-f41.google.com with SMTP id d9so4116041wrx.0
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:15:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=25h4kk91EJJ+LQ0HK9i4/C0NRw7PVDAfFvZbVxP0A1g=;
 b=t2BB5fQykMzVlFvUoaHrPJMctxn2UhDNvFe9kWTzdLvZ8jdWHE8BELH3Awlx9nUw5g
 +TBeaXZuO1MqfLW7ytIqNtYaTMApxZqBxYz5cUn/iCL8nHDqxti73kwos9REQef8JCcZ
 L2uaE2cnszf47qzHjBDOLCtT/zfbCgqCGc1TBPf/SL3Q1DgdtE3CNq7y8Wg287ExyU1d
 rA4O8BnjJ6/5UyK12petCBqQqEJa2oT01pn1u+6XqWaVSonSw53pi987YgTvf/0Fr1VK
 q3ZWYcb+d4khYnkKqMkSXZvUOF2Qn7kFufFEHPFpu+SjITmSUXDyUnHEcJPEDnbFbS1F
 OuLw==
X-Gm-Message-State: APjAAAUokkawBzInEtLKUBTsgPKNgZLzDejFzqAnt1y9oznIJQT/1gud
 71voPV8CwyJxR/AZhMONXZg=
X-Google-Smtp-Source: APXvYqw9togOVaS0FvUF54TvdQoqsN38VLnduzgBl+bw5mGWimQKrHlc9oojpD0N15HKqt4TrcPbuQ==
X-Received: by 2002:adf:f74f:: with SMTP id z15mr14030563wrp.282.1557674131552; 
 Sun, 12 May 2019 08:15:31 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id h9sm11775111wmb.5.2019.05.12.08.15.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 08:15:31 -0700 (PDT)
Subject: Re: [PATCH nvme-cli rfc 5/5] nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190504000456.3888-1-jsmart2021@gmail.com>
 <20190504000456.3888-6-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <dfad55a0-0a65-b9af-19a0-00b496541767@grimberg.me>
Date: Sun, 12 May 2019 08:15:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504000456.3888-6-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_081536_226451_E3104156 
X-CRM114-Status: GOOD (  30.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hannes Reinecke <hare@suse.com>, Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/3/19 5:04 PM, James Smart wrote:
> This set of scripts is a combination of those sent by Hannes, Sagi,
> and I in earlier patches and RFC's.
> 
> Auto-connect operates by the nvme core layer or nvme-fc transport
> generating a udev event with directory-controller addressing
> information. The nvme core layer generates an event when a
> persistent discovery controller generates a Discovery Log Change
> Notification AEN.  The nvme-fc transport generates an event when
> an FC rport that has a NVME Discovery controller is detected or
> when a FC state change event occurs for for an FC rport that has
> a NVME Discovery controller
> 
> The udev event is handled by a script that extracts the Discovery
> controller addressing information and initiates a systemd service
> to perform a "nvme connect-all" to the Discovery controller.
> The "nvme connect-all" request is not called directly from the udev
> handler itself as the request may take some time or stall altogether,
> which would block other udev event handling.  By transitioning to
> a sytemd service, the call can take as much time as needed to
> complete.
> 
> The scripts consist of:
> - A udev script that handles nvme core and nvme-fc udev events.
>    The udev handler starts a nvmf-connect systemd service.
> - A nvmf-connect systemd service. The service, in its instance
>    name, is passed the connect arguments for the discovery
>    controller. The service performs a "nvme connect-all" to the
>    discovery controller.
> - A nvmefc-boot-connections systemd service. This is a run-once
>    service run after udev is enabled, which will replay events
>    generated by NVME-FC devices detected during boot while udev
>    is not yet running.
> - To stop autoconnect an additional nvmefc-connect.target has
>    been added, which will instruct systemd to cancel all
>    outstanding autoconnect services.
> 
> Note: Although the nvme-fc subsystem is converting to use the
>    same nvme core layer event mechanism, the nvme-fc-specific
>    udev event that has been in existence for a while is contained
>    in in the script so that the utilities may run against older
>    kernels.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> CC: Simon Schricker <sschricker@suse.com>
> CC: Hannes Reinecke <hare@suse.com>
> CC: Sagi Grimberg <sagi@grimberg.me>
> ---
> I could use some recommendations on where to install the
> 70-nvmf-autoconnect.conf and nvmf-connect.target files
> ---
>   Makefile                                         | 10 +++++++++-
>   nvme.spec.in                                     |  8 ++++++++
>   nvmf-autoconnect/70-nvmf-autoconnect.conf        |  1 +
>   nvmf-autoconnect/70-nvmf-autoconnect.rules       | 18 ++++++++++++++++++
>   nvmf-autoconnect/nvmefc-boot-connections.service |  9 +++++++++
>   nvmf-autoconnect/nvmf-connect.target             |  2 ++
>   nvmf-autoconnect/nvmf-connect@.service           | 14 ++++++++++++++
>   7 files changed, 61 insertions(+), 1 deletion(-)
>   create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.conf
>   create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.rules
>   create mode 100644 nvmf-autoconnect/nvmefc-boot-connections.service
>   create mode 100644 nvmf-autoconnect/nvmf-connect.target
>   create mode 100644 nvmf-autoconnect/nvmf-connect@.service
> 
> diff --git a/Makefile b/Makefile
> index 4bfbebb..a86751e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -8,6 +8,8 @@ DESTDIR =
>   PREFIX ?= /usr/local
>   SYSCONFDIR = /etc
>   SBINDIR = $(PREFIX)/sbin
> +SYSTEMDDIR = /usr/lib/systemd
> +UDEVDIR = /usr/lib/udev

Lets do instead:
+LIBDIR ?= $(PREFIX)/lib
+SYSTEMDDIR ?= $(LIBDIR)/systemd
+UDEVDIR ?= $(LIBDIR)/udev

>   LIB_DEPENDS =
>   
>   ifeq ($(LIBUUID),0)
> @@ -86,6 +88,12 @@ install-bash-completion:
>   	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/bash-completion/completions
>   	$(INSTALL) -m 644 -T ./completions/bash-nvme-completion.sh $(DESTDIR)$(PREFIX)/share/bash-completion/completions/nvme
>   
> +install-udev:
> +	$(INSTALL) -d $(DESTDIR)$(SYSTEMDDIR)/system
> +	$(INSTALL) -m 644 ./nvmf-autoconnect/*.service $(DESTDIR)$(SYSTEMDDIR)/system
> +	$(INSTALL) -d $(DESTDIR)$(UDEVDIR)/rules.d
> +	$(INSTALL) -m 644 ./nvmf-autoconnect/*.rules $(DESTDIR)$(UDEVDIR)/rules.d
> +
>   install-zsh-completion:
>   	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/zsh/site-functions
>   	$(INSTALL) -m 644 -T ./completions/_nvme $(DESTDIR)$(PREFIX)/share/zsh/site-functions/_nvme
> @@ -106,7 +114,7 @@ install-etc:
>   		$(INSTALL) -m 644 -T ./etc/discovery.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
>   	fi
>   
> -install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc
> +install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc install-udev
>   install: install-spec install-hostparams
>   
>   nvme.spec: nvme.spec.in NVME-VERSION-FILE
> diff --git a/nvme.spec.in b/nvme.spec.in
> index 6934f8f..40a5eff 100644
> --- a/nvme.spec.in
> +++ b/nvme.spec.in
> @@ -35,6 +35,9 @@ make install-spec DESTDIR=%{buildroot} PREFIX=/usr
>   %{_sysconfdir}/nvme/hostnqn
>   %{_sysconfdir}/nvme/hostid
>   %{_sysconfdir}/nvme/discovery.conf
> +/usr/lib/udev/rules.d/70-nvmf-autoconnect.rules
> +/usr/lib/systemd/system/nvmf-connect@.service
> +/usr/lib/systemd/system/nvmefc-boot-connections.service

How about making the prefix ${_libdir} and pass make intall 
LIBDIR=%{_libdir} argument as well?

>   
>   %clean
>   rm -rf $RPM_BUILD_ROOT
> @@ -47,6 +50,11 @@ if [ $1 -eq 1 ]; then # 1 : This package is being installed for the first time
>           if [ ! -s %{_sysconfdir}/nvme/hostid ]; then
>                   uuidgen > %{_sysconfdir}/nvme/hostid
>           fi
> +
> +	# apply udev and systemd changes that we did
> +	udevadm control --reload-rules && udevadm trigger
> +	systemctl daemon-reload
> + fi
>   fi
>   
>   %changelog
> diff --git a/nvmf-autoconnect/70-nvmf-autoconnect.conf b/nvmf-autoconnect/70-nvmf-autoconnect.conf
> new file mode 100644
> index 0000000..844f3d9
> --- /dev/null
> +++ b/nvmf-autoconnect/70-nvmf-autoconnect.conf
> @@ -0,0 +1 @@
> +install_items+="/usr/lib/udev/rules.d/70-nvmf-autoconnect.rules"
> diff --git a/nvmf-autoconnect/70-nvmf-autoconnect.rules b/nvmf-autoconnect/70-nvmf-autoconnect.rules
> new file mode 100644
> index 0000000..5405314
> --- /dev/null
> +++ b/nvmf-autoconnect/70-nvmf-autoconnect.rules
> @@ -0,0 +1,18 @@
> +#
> +# nvmf-autoconnect.rules:
> +#   Handles udev events which invoke automatically scan via discovery
> +#   controller and connect to elements in the discovery log.
> +#
> +#
> +
> +# Events from persistent discovery controllers or nvme-fc transport events
> +ACTION=="change", SUBSYSTEM=="nvme", ENV{NVME_EVENT}=="discovery",\
> +  ENV{NVME_CTLR_NAME}=="*", ENV{NVME_TRTYPE}=="*", ENV{NVME_TRADDR}=="*", \
> +  ENV{NVME_TRSVCID}=="*", ENV{NVME_HOST_TRADDR}=="*", \
> +  RUN+="/usr/bin/systemctl --no-block start nvmf-connect@--device=$env{NVME_CTLR_NAME}\t--transport=$env{NVME_TRTYPE}\t--traddr=$env{NVME_TRADDR}\t--trsvcid=$env{NVME_TRSVCID}\t--host-traddr=$env{NVME_HOST_TRADDR}.service"

with --quite?

> +
> +# nvme-fc transport generated events (old-style for compatibility)
> +ACTION=="change", SUBSYSTEM=="fc", ENV{FC_EVENT}=="nvmediscovery", \
> +  ENV{NVMEFC_HOST_TRADDR}=="*",  ENV{NVMEFC_TRADDR}=="*", \
> +  RUN+="/usr/bin/systemctl --no-block start nvmf-connect@--device=none\t--transport=fc\t--traddr=$env{NVMEFC_TRADDR}\t--trsvcid=none\t--host-traddr=$env{NVMEFC_HOST_TRADDR}.service"
> +
> diff --git a/nvmf-autoconnect/nvmefc-boot-connections.service b/nvmf-autoconnect/nvmefc-boot-connections.service
> new file mode 100644
> index 0000000..84f6486
> --- /dev/null
> +++ b/nvmf-autoconnect/nvmefc-boot-connections.service
> @@ -0,0 +1,9 @@
> +[Unit]
> +Description=Auto-connect to subsystems on FC-NVME devices found during boot
> +
> +[Service]
> +Type=oneshot
> +ExecStart=/bin/sh -c "echo add > /sys/class/fc/fc_udev_device/nvme_discovery"
> +
> +[Install]
> +WantedBy=default.target
> diff --git a/nvmf-autoconnect/nvmf-connect.target b/nvmf-autoconnect/nvmf-connect.target
> new file mode 100644
> index 0000000..f64a37c
> --- /dev/null
> +++ b/nvmf-autoconnect/nvmf-connect.target
> @@ -0,0 +1,2 @@
> +[Unit]
> +Description=All instances of nvmf-autoconnect daemon
> diff --git a/nvmf-autoconnect/nvmf-connect@.service b/nvmf-autoconnect/nvmf-connect@.service
> new file mode 100644
> index 0000000..7d9f856
> --- /dev/null
> +++ b/nvmf-autoconnect/nvmf-connect@.service
> @@ -0,0 +1,14 @@
> +#
> +# Unit file used by 70-nvmf-autoconnect.rules.
> +#
> +
> +[Unit]
> +Description=NVMf auto-connect scan upon nvme discovery controller Events
> +After=syslog.target
> +PartOf=nvmf-connect.target
> +Requires=nvmf-connect.target
> +
> +[Service]
> +Type=simple
> +Environment="CONNECT_ARGS=%i"
> +ExecStart=/bin/sh -c "/usr/sbin/nvme connect-all `/usr/bin/echo -e $CONNECT_ARGS`"
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
