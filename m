Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18D16B0CB
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 23:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=y1rDKWojpyjHRwsqYZ/tlKqeY0SWIBXgmTvI3oRxC04=; b=Hyt
	CWOhQf+HFp9x4ejDJ3Rkf3F2t9q77Lxta/6qs8Po/Rd7AMIYgPN5GFy1Prg1O7WtkJ1uMFBqn+Rn+
	XGkZoxdq59Z2RqooAydfGQm0l0EdpELA4BbV3PB47Jkydp1f78O4xhCB6MMKkjnAyyQwrbAktEi1K
	WcyrrIpbLWKfq+2lFTQViqUrruqaKH++Mdg52jKaxz/FtYOshMXHJWCnMT1xnDGbdwEAK2GD8NxQf
	RsEPoyhpyu0vxNagE7oOpQ7Es+gqzmyG5V0HgaBgGbBmBWPUWJeY89VJDmsj+0ImLJfimTn+OrREA
	fUSUoWXKHSIvqymQXpaMo561c1dY+dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUlF-0005XX-OY; Tue, 16 Jul 2019 21:13:21 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUkr-0005MK-QE
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 21:12:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so9692692pfe.11
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jul 2019 14:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tlg1QuWAtvPIcPVPWIpFyF3XQt6rwxtJ+MnT+OqgtQM=;
 b=IRnmwLZCqyt+AHyWxP8LRSZ3ZM4R+s3Gy7vt8H/p6kdNP0QU6vlVy/HJaey0fS9JIN
 49XIJQuBE0yCeSRr/z5UeHxZCxlwaMUw40jJkaPVvS1QiPSAdSpYHgTdGfKdeK19roqN
 wbCslB9pYpQ5haumv7qRo7E/SL4vjPLBJl7vpWVTI11MuM+158G6kZ+U0v//nQhcugBh
 d7Hj0LHLXUJu2xHeAQYAKjirj1xIOYxNMNZKu1dUEB5hIgAWCWcxrs51Vh5ICMsmJjcG
 TOYydZFvGLoWkQq5YBossXWcLHrPRt6Cs1wOMFhrYFPQV/3AZ2BnwaCqJ77A9lSDH5FY
 KqyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tlg1QuWAtvPIcPVPWIpFyF3XQt6rwxtJ+MnT+OqgtQM=;
 b=jr6EHop7t3yaXg5NloVOcl2YtgacZjB2t1LH69s9josKgIaZ63qNUwwDjLThmVZrrC
 PD+spTHqRHSoD/Ron2xHG78MK2MiyUxS1yv85ne+yAUHQRdWPL8z6g8Zcy5nX/tJSjav
 sA5VfHLRHC356fR3C9RsXL3ZongrZcq4unmNycAxLJ6FPMWGqYm6sDMXngxYXMCNO71J
 mCthQuWtoJJtuYP9t4fVpbwlM7D1nOqewl5Bi73TSI8QH6+BaOcBtJzlh3gWD+xbnA2q
 Z+Lj/M+j3zx4vIsGusIB4yKdFbS0dCbpEiyjEOxzi7Gv6cMFYnbdUNBa6vDfjHS5STpW
 9a4g==
X-Gm-Message-State: APjAAAXzDvKgZ7KdJ+GuZHr3zEWrChvkhmYJaCPaOjCwuOzayXfNXqJ+
 iXbbgIkeNqmutMIZ0s233GRGcyl3
X-Google-Smtp-Source: APXvYqwQlYkxT1iRpiFMVDHq9pLw+Bb9MnXF1Oi3sRHrAQANCeKVWaKWUFMLQe13tNZgYSFve4z9wQ==
X-Received: by 2002:a63:3c5:: with SMTP id 188mr35887452pgd.394.1563311575564; 
 Tue, 16 Jul 2019 14:12:55 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v18sm140683pgl.87.2019.07.16.14.12.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 14:12:54 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 00/10] nvme-cli: nvmf auto-connect scripts
Date: Tue, 16 Jul 2019 14:12:31 -0700
Message-Id: <20190716211241.7650-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_141257_867033_63671EBF 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is a formal posting of the patches, not an RFC.

This posting is a combination of the RFC postings of nvme-fc
auto-connect scripts by Hannes, Sagi, and I. The auto-connect
scripts are utilized on nvme-fc and for persistent discovery
controllers that send AENs.  It does not contain the code that
handles the persistent discovery controller AEN and generates the
event.

The auto-connect scripts are now commonized with the exception
of the nvme-fc boot connections service.  It's expected that both
the persistent discovery controllers and nvme-fc can post the same
udev event. Whenever the discovery aen generates an event, the
new --device=<name> argument will be used to identify the persistent
discovery controller. When --device is used, the other connect
attributes will be specified, set to the values of the discovery
controller, and will be used by the cli to validate the device is
who it should be or a new discovery controller will be created.
When nvme-fc generates it's events, it will specify --device=none
and specify the discovery controller addressing arguments.  If a
persistent discovery controller exists on nvme-fc, will do nothing
special and AEN's from it will follow the --device=<name> syntax.

The udev event handler supports both the new event to be used
by discovery controllers as well as the existing nvme-fc transport
event. The nvme-fc transport will be migrated to issue the new
event syntax. The udev script will continue to support the older
style nvme-fc event info in case the cli is running against an
older kernel.

Since last rfc:
 Add reviewed-by's
 Parsing for ctlr_list_item left as is.
 Moved SYS_NVME from fabrics.c to nvme.h
 Changed udev device variable to NVME_CTRL_NAME
 Removed full pathname for nvme and echo in systemd service that
    invokes connect-all
 Moved --quiet option. Rather than include in "arguments" in
    systemd service name, add directly to systemd service that
    invokes connect-all
 Makefile:
   Created install-systemd and install-dracut Make targets
   Changed PREFIX to /usr to match nvme.spec.in's %install target
   Changed LIBDIR to use PREFIX as base path


James Smart (8):
  nvme-cli: ignore arguments that pass in "none"
  nvme-cli: allow discover to address discovery controller by persistent
    name
  nvme-cli: Refactor to create a get_nvme_ctrl_info routine
  nvme-cli: extend ctrl_list_item for connect attributes
  nvme-cli: Add routine to compare ctrl_list_item to connect args
  nvme-cli: Add routine to search for controller with specific
    attributes
  nvme-cli: Expand --device argument processing
  nvme-cli: nvmf auto-connect scripts

Sagi Grimberg (2):
  nvme-cli: support persistent connections to a discovery controller
  nvme-cli: add --quiet option

 Makefile                                         |  22 ++-
 fabrics.c                                        | 118 +++++++++---
 fabrics.h                                        |   2 +
 nvme.c                                           | 226 +++++++++++++++++++----
 nvme.h                                           |  24 +++
 nvme.spec.in                                     |   9 +
 nvmf-autoconnect/70-nvmf-autoconnect.conf        |   1 +
 nvmf-autoconnect/70-nvmf-autoconnect.rules       |  18 ++
 nvmf-autoconnect/nvmefc-boot-connections.service |   9 +
 nvmf-autoconnect/nvmf-connect.target             |   2 +
 nvmf-autoconnect/nvmf-connect@.service           |  14 ++
 11 files changed, 386 insertions(+), 59 deletions(-)
 create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.conf
 create mode 100644 nvmf-autoconnect/70-nvmf-autoconnect.rules
 create mode 100644 nvmf-autoconnect/nvmefc-boot-connections.service
 create mode 100644 nvmf-autoconnect/nvmf-connect.target
 create mode 100644 nvmf-autoconnect/nvmf-connect@.service

-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
