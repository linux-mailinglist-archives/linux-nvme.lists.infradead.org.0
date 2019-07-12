Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D752662FF
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DS9HjZrgO/TJ1oemBG5DlydKMlDpQKt888hw30kreKo=; b=LAutypMsO5QOV4ehzWPPiXXI2
	ti5fE8S9o9yEQnL3/XuFAOHsybyph0cImRQwvOtoDn6npVyR/a+RqxcsqQOKqIy6A6WkRgfMQf8F2
	DU8qBaRuU+D8Bj/82l0WHB13EfOz2vQcv30vv4zQ/E2KotbFr4Enup0SBwlYy/S4RoyzC4hpk7ucU
	pJ7iHLmu9UOkcbFfeKBWPoIBMiWdhXCqlPn3smJZE5fm+2IEYwNozv5E5e1IIcR8SsCBGZIeQUIKX
	SZF418QvRqR+FQK0/i6mDH/tP02uxi6PATHBOuQK03Q/Li8vWQSKRqLA8tz5blzG3xm3pHMj/ckfb
	D8QxvbJrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlje6-0007sU-IH; Fri, 12 Jul 2019 00:42:42 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljdt-0007rZ-KR
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:42:31 +0000
Received: by mail-ot1-f67.google.com with SMTP id l15so7768020otn.9
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:42:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2UitIiOUuiSBrPzQ0MNfDZS25gS/SQslq6VhAEca0Nw=;
 b=tu3jZoVmwDmJC5KihIXca3KnE/PahseMxlIbrNTLIsqIYqjaMRpam+ufL5U8VnN5es
 Je/TX/33+6e1XK/KP+0nDO2q3BaZsEc458USlxqQ/S2vmiP2tYSYgYtua/FIn7y8gLyw
 te+nlCkYcEwk02homSo3i+0l8AH5hTBqeGUM2DyPLoFlMEZtKFBU4gs5pPs7s3y4VSp2
 GYt4QfJ+RdCGqAyiP7zgT7bRyxhj+tP5poIY2YsBeKkN7SumCLNPfufAfMgOaFqwj7Iq
 PcDCIlhI0CMx357ZN70ykDMVKCRL7Tj10slRDr4OKnzQtiOmW+6PiR/3s6BlbC82kgDo
 vUIg==
X-Gm-Message-State: APjAAAWkPanGDwmPFv2U/hqvojp9dAL6EuXzSuT7uRJwm6VOf9H7W8om
 n1RddUYWxTLTlUJDE4k5DvM=
X-Google-Smtp-Source: APXvYqwFTsbnJKl+2AGPe1x+7BYskUMiYMp0GlpZbCjJQGPyHxEowEvOH6jWfQ0vNzSt7R6ARO4DPA==
X-Received: by 2002:a9d:6f84:: with SMTP id h4mr1618823otq.354.1562892145748; 
 Thu, 11 Jul 2019 17:42:25 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id n26sm2481077otq.10.2019.07.11.17.42.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 17:42:25 -0700 (PDT)
Subject: Re: [PATCH rfc v2 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190712003140.16221-1-jsmart2021@gmail.com>
 <20190712003140.16221-11-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6d5d2c16-232d-27de-894b-98a370db958f@grimberg.me>
Date: Thu, 11 Jul 2019 17:42:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712003140.16221-11-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_174229_673770_E6B32B15 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 7/11/19 5:31 PM, James Smart wrote:
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
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> CC: Sagi Grimberg <sagi@grimberg.me>
> 
> ---
> Added install lines for 70-nvmf-autoconnect.conf and nvmf-connect.target
> Added LIBDIR to Makefile, hardset to /usr/lib to match nvme.spec.in
>    (thus why it is not using PREFIX)
> Revised Makefile to pass LIBDIR to rpmbuild.
> Revised nvme.spec.in to use %{_libdir}
> Removed bogus fi in nvme.spec.in
> Added --quiet option udev scripts that specify nvme connect-all args
> ---
>   Makefile                                         | 16 ++++++++++++++--
>   nvme.spec.in                                     |  9 +++++++++
>   nvmf-autoconnect/70-nvmf-autoconnect.conf        |  1 +
>   nvmf-autoconnect/70-nvmf-autoconnect.rules       | 18 ++++++++++++++++++
>   nvmf-autoconnect/nvmefc-boot-connections.service |  9 +++++++++
>   nvmf-autoconnect/nvmf-connect.target             |  2 ++
>   nvmf-autoconnect/nvmf-connect@.service           | 14 ++++++++++++++
>   7 files changed, 67 insertions(+), 2 deletions(-)
>   create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.conf
>   create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.rules
>   create mode 100644 nvmf-autoconnect/nvmefc-boot-connections.service
>   create mode 100644 nvmf-autoconnect/nvmf-connect.target
>   create mode 100644 nvmf-autoconnect/nvmf-connect@.service
> 
> diff --git a/Makefile b/Makefile
> index db594a3..4ea8b41 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -8,6 +8,10 @@ DESTDIR =
>   PREFIX ?= /usr/local
>   SYSCONFDIR = /etc
>   SBINDIR = $(PREFIX)/sbin
> +LIBDIR ?= /usr/lib
> +SYSTEMDDIR ?= $(LIBDIR)/systemd
> +UDEVDIR ?= $(LIBDIR)/udev
> +DRACUTDIR ?= $(LIBDIR)/dracut
>   LIB_DEPENDS =
>   
>   ifeq ($(LIBUUID),0)
> @@ -89,6 +93,14 @@ install-bash-completion:
>   	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/bash-completion/completions
>   	$(INSTALL) -m 644 -T ./completions/bash-nvme-completion.sh $(DESTDIR)$(PREFIX)/share/bash-completion/completions/nvme
>   
> +install-udev:
> +	$(INSTALL) -d $(DESTDIR)$(SYSTEMDDIR)/system
> +	$(INSTALL) -m 644 ./nvmf-autoconnect/*.service ./nvmf-autoconnect/*.target $(DESTDIR)$(SYSTEMDDIR)/system
> +	$(INSTALL) -d $(DESTDIR)$(UDEVDIR)/rules.d
> +	$(INSTALL) -m 644 ./nvmf-autoconnect/*.rules $(DESTDIR)$(UDEVDIR)/rules.d
> +	$(INSTALL) -d $(DESTDIR)$(DRACUTDIR)/dracut.conf.d
> +	$(INSTALL) -m 644 ./nvmf-autoconnect/*.conf $(DESTDIR)$(DRACUTDIR)/dracut.conf.d
> +

I think we want to have service files in systemd/ dir, rules files in 
udev/ dir, and dracut files in dracut/ dir. This way we can easily add
more things that are not related to autoreconnect.

>   install-zsh-completion:
>   	$(INSTALL) -d $(DESTDIR)$(PREFIX)/share/zsh/site-functions
>   	$(INSTALL) -m 644 -T ./completions/_nvme $(DESTDIR)$(PREFIX)/share/zsh/site-functions/_nvme
> @@ -109,7 +121,7 @@ install-etc:
>   		$(INSTALL) -m 644 -T ./etc/discovery.conf.in $(DESTDIR)$(SYSCONFDIR)/nvme/discovery.conf; \
>   	fi
>   
> -install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc
> +install-spec: install-bin install-man install-bash-completion install-zsh-completion install-etc install-udev

Lets separate to targets:
install-udev
install-systemd
install-dracut

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
