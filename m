Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C024C662E4
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mI0QBbqo26DHhfIagn8TR5pBIi/yXaFXa/EnYa80F7c=; b=HgY
	d+qJuPW48aS4Vmlv6CT7esiM/woV2XXIdOIJujBB5aeyKWY9uleRklFxQk0I/edwGgP7sltso9ijh
	14Oq6YNuJTjnXZ1cTrQYGXaZhS6hjo2Vi2A6nSy4gFfvAlT1wc8dgFl5kLe8MaQkinOXf0eKGVlBf
	Ny8kCh5WAKUnQjWGqHI0RKSyN84Pdw0Z5LtFIrsNupksz5KaSCficRY+jqAgYFGnHSzyMBKlUkcqU
	wGH96QEILGmedj6kfPTBYfKE4dwP9lwkhn9aJpaJ7pH72phYKnrKR8yYpRn1qGZZO1tAfiKWKdMOn
	QTesV0mxkkWjdYeKO+/WWjz6+coOaxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljUs-0001uk-Qu; Fri, 12 Jul 2019 00:33:11 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljTe-0001W7-Vp
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:31:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id c2so3859672plz.13
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=9Z+D09ErhCfpcDXenw7E8zR4IXS1qutyrO1xN1Yml98=;
 b=Y0p3ifQke4h6wvDCTWwL+cJpyLqFBDMpjlm7KnmOHu8gpQjO2Q/PrcUSzkeY4wH14N
 G6WlknmrDRLnQlOG3bX1anXg5glvbGP5yuOg5dmgJUKlOVua6eFhgUjLK6zB4WCMejl7
 uN0G76lKb0YvRQcFzrmYI7vuPyEodZxtXyrISXjUYAQmV4Qxmg+JLVtpqAq7TFE5R0f+
 4fPrsBNZuSGTJZRt6R3phvBJPRCKsmPvPJCdfviKf1pwBsYGb099dwdRhFSxLHhiK0Wq
 TLuIvYwDa/s/tQ/+rBR03BUwrJTiPlON5o7+JsdwOvUSuNNUTLgy48msX4SNoBPtOukk
 LXTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=9Z+D09ErhCfpcDXenw7E8zR4IXS1qutyrO1xN1Yml98=;
 b=jvdT4og6XNQfzygYPABQuPwzQqqJw5K1U0hveFFneJKJAshKRDoqTc/uBu+qA68xdY
 UJAxRQGlqsGbj99FkGT8fbcBvpvVertD9XFGAe6yekD9q3E2uCs+YXBhf9vkMhdfwfAO
 qICvcRhj5mc0FENOP5EcD/a2coMtV14WngZ+mzPpZNrAdFWBu/dmQCk4DpUCMmEPpPHn
 Ey+pSTYBKJBuzTke3Wo5AB+VYnx4MXm0lRF1nK1wysu6pzTJO9m2MUCGxTcHRhOAKTCZ
 UvHgU4F8FbCe5uWmhrlpFBDSM3jKCL0UDwjPqYifTGijf+3zqJ+ndO9uDliYzhYGBWh8
 GElg==
X-Gm-Message-State: APjAAAXMHRdg9cjYLhrL6zO1GE8GfLz+hHfY/2WivRcN8kYqQXPrMPRu
 OzC4koyxHwnpEJ4hDKbMssDI8CAm
X-Google-Smtp-Source: APXvYqzdx0Mcq9eFgzOWw4tdrOLtQacuKs2bFg1VjDlKmL0HIblEUHgXPjIs5X6K/ZlSN6ReneLwJA==
X-Received: by 2002:a17:902:112a:: with SMTP id
 d39mr7936952pla.254.1562891511201; 
 Thu, 11 Jul 2019 17:31:51 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u69sm11480522pgu.77.2019.07.11.17.31.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 17:31:50 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc v2 00/10] nvme-cli: nvmf auto-connect scripts
Date: Thu, 11 Jul 2019 17:31:30 -0700
Message-Id: <20190712003140.16221-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_173155_023250_1A1B2896 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This posting is a combination of the nvme-fc auto-connect scripts
posted by Hannes, the RFC from Sagi to allow auto-connect for
persistent discovery controllers that send AENs, and the RFC that
I posted addressing comments. It does not contain the code that
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
 Addressed a couple of comments from Minwoo Im
 Break device arg extension into multiple patches
 Slight tweaks to parse routine
 Add reviewed-by's

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

 Makefile                                         |  16 +-
 fabrics.c                                        | 117 +++++++++---
 fabrics.h                                        |   2 +
 nvme.c                                           | 228 +++++++++++++++++++----
 nvme.h                                           |  22 +++
 nvme.spec.in                                     |   9 +
 nvmf-autoconnect/70-nvmf-autoconnect.conf        |   1 +
 nvmf-autoconnect/70-nvmf-autoconnect.rules       |  18 ++
 nvmf-autoconnect/nvmefc-boot-connections.service |   9 +
 nvmf-autoconnect/nvmf-connect.target             |   2 +
 nvmf-autoconnect/nvmf-connect@.service           |  14 ++
 11 files changed, 381 insertions(+), 57 deletions(-)
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
