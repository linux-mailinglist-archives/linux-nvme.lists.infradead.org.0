Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDD57E64E
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:15:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4OLFfcMqM9v5/uqDtCZf8jqJr+31B34Z9oBrA7LhqfQ=; b=Pp/
	f+fPni8W2vZpgmQylgaVgKo6N+mXD8aqCbI4aje9MNoz+OlYoeLRr3ZwloOcqvP3hFBGF+LmrMJWJ
	f/xl4vKZoCo+emzlOP6kf0AOY6NASGEkDzyRwFLvTE3WvylfW6bDNtvZBm5OCqt9xFPdV2703sAqL
	DcFa2bvZ50fjQqOOdX7VXA52/8IwHki4djichDyUwPt767sxZPxYiCyR5CsAuJM4oQL7Sql4STqvU
	sycWHX2yClcKWINZXKWxrcV9VoeXdjllcy1JuWKbhZ1CaOarx855XW+gWgga6uYqsJmpq6XPqW6lB
	MYY+ve98RAZ2Rdj41qnnEPl8koTv/MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKHg-0005vy-Gj; Thu, 01 Aug 2019 23:14:56 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGn-00057e-3B
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:03 +0000
Received: by mail-pl1-x635.google.com with SMTP id 4so25852312pld.10
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9uRK8PrwAmvNAjWlI/WqMxYN0MICcUBmbPxoHwI4HMw=;
 b=U1Ro6St1GaNh5vCiDG2RDue8SVaHMye84KZOFIYxf0OL43eV5zp0Mu8A2NWfGXXKx/
 Wp4DTQlfj3iRtXlHuQwV/c6HpdsFBNQPhw9M0Qo1UGieXPcuo4As/slh6luAdFsFhoC5
 9vcSGaA6JAMVCeiyc3CKJJkTYTlt5Qn7dSxIqs6PVI8IwElHGbtkYZJfTL2H8sWahc/m
 +8E3L4eJcXlRyVBPRvbGSzVK/FNIf4dWDBObKsGbhWb3OabiW1xKJ7OFoUTeyoj/I/pK
 L+8sjDSFv6dokKnjrfiMkGasdC53Aes8C3zdwYO4DGfUoYOxE02kth5KxZ/y6JF093d5
 f7CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9uRK8PrwAmvNAjWlI/WqMxYN0MICcUBmbPxoHwI4HMw=;
 b=Oi+h008lZ9W82wrVEFW2pY4GHE2gROixr2Ge+TGKnvtQJJS24brhAl30gRypSSK2TT
 gUYgB+kGiSWsWrfAzAtw933jjgZyuYTz+k3j6kjm+eI77eQ5phqrARIa/cAP7NG6rYn7
 ZrkwpkI9a9d7ne2dEmcLCXvz5a1ffcuMOOIrzXBMrsljuzsazX+JzOaxkScTvu9Mn1Zs
 2ueXcy0cDAGyfkxHjEKf1+cm6cJF2CHrPh9jYq2LhdpngxGldXdo9bHoznr6dhihC5Vd
 JEa5noGwDrvbAz01kPh5EqrW9rJssCNx0oo1nammK+oVmMXE3xCHxQJ6aSHvQOwwEMI8
 SjOw==
X-Gm-Message-State: APjAAAWAQRgxcycWmOUX/7wzUbwjzw8nMvVmJlSJNJ3cF9KOp4VR/bzy
 JXD5mOBVNcMp6Y+renbjaCen8vc0
X-Google-Smtp-Source: APXvYqy7N0bmQu7Yg7CohD4xdfSO3MDv81gJYTgGJkAlXZ/ksow8gBeslevI7UdHEEQW/bq2WmFJ8Q==
X-Received: by 2002:a17:902:e383:: with SMTP id
 ch3mr127893838plb.23.1564701236653; 
 Thu, 01 Aug 2019 16:13:56 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.13.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:13:55 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 00/10] nvme-cli: nvmf auto-connect scripts
Date: Thu,  1 Aug 2019 16:13:38 -0700
Message-Id: <20190801231348.21397-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161401_136492_97F4DB3B 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:635 listed in]
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

v3:
  Revise patch 10 scripts:
    70-nvmf-autoconnect.rules:
      change from "/usr/bin/systemctl" to "systemctl".
      remove blank line at end of file
    Created dracut-conf, systemd, udev-rules sub directories under
       nvmf-autoconnect.  Moved the respective files into their
       proper subdirectory. Updated the makefile install targets
         accordingly.


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

 Makefile                                           |  22 +-
 fabrics.c                                          | 118 ++++++++---
 fabrics.h                                          |   2 +
 nvme.c                                             | 226 ++++++++++++++++++---
 nvme.h                                             |  24 +++
 nvme.spec.in                                       |   9 +
 .../dracut-conf/70-nvmf-autoconnect.conf           |   1 +
 .../systemd/nvmefc-boot-connections.service        |   9 +
 nvmf-autoconnect/systemd/nvmf-connect.target       |   2 +
 nvmf-autoconnect/systemd/nvmf-connect@.service     |  14 ++
 .../udev-rules/70-nvmf-autoconnect.rules           |  17 ++
 11 files changed, 385 insertions(+), 59 deletions(-)
 create mode 100644 nvmf-autoconnect/dracut-conf/70-nvmf-autoconnect.conf
 create mode 100644 nvmf-autoconnect/systemd/nvmefc-boot-connections.service
 create mode 100644 nvmf-autoconnect/systemd/nvmf-connect.target
 create mode 100644 nvmf-autoconnect/systemd/nvmf-connect@.service
 create mode 100644 nvmf-autoconnect/udev-rules/70-nvmf-autoconnect.rules

-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
