Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7FF6EC98
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 00:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wQqyETg+pfAf5p9E1SzQExRqkyI3UiiU417yMOjdeRc=; b=JN9
	cV3jtcBZCrhawXsRmsvsnTgDFRqwxn7lJPlodUFeA3+DiEgvwpHgjpyMFugGnafi/bZavlFQNJOoy
	i1O+7l0L2Z7DxAN3+Xt6TWjhzjxLRYrh08iL8nFS1xHQEIE2kwJDbDvnnrTWNIgiOhIrnlUiEzDV2
	n3oRVb6IDRdUbRUnUG3zuFIAGtAz4SpA2nK96X3x2oK9eoxAZUkN3oo1beBkhUptUhmljYRS2wlmH
	mKHAYeniRSFtnrE1fha+WFLvk43p5Gtyk08zTowKbR1cGjdq79HowCnxjN5BF6jJcuGGcVvXwFXgc
	BdDkbVgw0TpX3MIFbaH8rb+4hvYOAEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hobl6-00008j-H7; Fri, 19 Jul 2019 22:53:48 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobkZ-0008Qz-HQ
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 22:53:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so15051601pgv.10
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 15:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FJT4ZkRH5sgqpB8nEO7593uKt77p9MoqF4bzCdleGz4=;
 b=ANZ5lwcMzy0XhoNzjiaACruv6ABe4/Hz6yNvfW33yEfJzfsjZDfG2xt7iCTcRSldW5
 Y6IA9CUtLRtaO2iodX2QMGmBm7hSMls2qlFM7GmzhEaa7Q6g7BRROPi/eSVFHQNv5rcY
 48NbVNYYnC9U+3J0hbFfjLjorJnf80PYgWudgr+R928G1SDr2pDNbjRoLVsRQla3xIqY
 uTHKu4dEqoFV9S4YiR//F0bGlZ7sSXQ9TbByAOmwjzIR2ETmU6bn2SSKAhjJQ6ZL3EcC
 16R2aITUNOpt3I19FziEXPl7w2NPLlUHOuq0uszIPvXQv7NuO5aaN70XosylQrMdUoY6
 velg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FJT4ZkRH5sgqpB8nEO7593uKt77p9MoqF4bzCdleGz4=;
 b=YZZEMUH5CNCZw6NKkPlar3An1btoOh2SrD/ApAmGMf8XCcC9dObiJlJ//0oG4NEWLQ
 8IkEFD2qZ+RikcrrGcxiaPv1Hxu9Enxq78wff09XPEW2ra8MuZkwEsnKDXCahU63z26N
 J7hX55/FPKpWxu/A4k0f6yiUpV8KSK0ucNde8iJeM6tycHrRyBdgeIdemQcv8ihR6YTH
 HSn6jP0t1GcCgCGsAY/93FQ+gbQsYqQRbQI5pd9+hPvOAWvyUqbpbaeoK4D5/jCOq9qw
 2KvvshPy/b+HJTftD4JJ5xNcdvB/YassWouf2Ym+iyimsdve22yYEmewG587K/zJdFGS
 04uA==
X-Gm-Message-State: APjAAAVMVuoushInKMcWI1aiB9XuoFtFetvdCnzW7p//QmLa0zwWiBWj
 0xAmj7kQp3NGsbG/oyc7enw/fmV7
X-Google-Smtp-Source: APXvYqwlpYF52vFw5n1Cf31FQcM4vKPpOmxUz42uDUoB5i6bp70XLtn22zbOr5a1eBLVDmpVoJ74Nw==
X-Received: by 2002:a17:90a:2244:: with SMTP id
 c62mr61767160pje.29.1563576793486; 
 Fri, 19 Jul 2019 15:53:13 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w3sm27823645pgl.31.2019.07.19.15.53.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 15:53:12 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 00/10] nvme-cli: nvmf auto-connect scripts
Date: Fri, 19 Jul 2019 15:52:55 -0700
Message-Id: <20190719225305.11397-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_155315_611830_EC4B2E53 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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


v2:
  Change "ctlr" to "ctrl" in fprintf string in patch 7.
  Swap enablement order of systemd vs udev in patch 10.


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
