Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA52C13670
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 02:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gvEi2Kn12Mg2D8O2QyY/Vc2BXrj73+/nIfBh7BYLkGU=; b=Hxi
	mBqYlYGerMXIBQurppSktCscVzZm6/gf8ZmWMAHpBrnP9rQh6GaBeGX+KLkRChdauF3bzbuADD/1/
	qWBFYI7B+hA8Gcqp3A8N6X4CcyJqqEO3lD65Rf1h46qMfh3xC6ZJ3EpixqoY9uOwTQ4xX43MV8IBf
	YO5V4AuDLAMngIbDtcfFwPvRZdU31NTCVyL2kpTzzHl+SYDTGp5qZ8V5ve9rDKDSo6XW2rPscoL3C
	52aQwHTHIqrO3fXqqBNJpg0quh+EUHZ1M8NTgPHrGCwIXl9NMtVfbHM4DsfJReWQoS5KKn8kCPF0/
	A3eSOTsYgrY/vCB6IDFFvsh86O1bRxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMiB4-0004gq-Um; Sat, 04 May 2019 00:05:19 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMiAt-0004BG-4D
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 00:05:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id ck18so3451171plb.1
 for <linux-nvme@lists.infradead.org>; Fri, 03 May 2019 17:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MrlMfStTMUDXL4fsPXJoe/IuSsV0mOz0FvV0zA71pYk=;
 b=WGRTiV8lz5PM0HcmLHxI++1Ly4LWSinixtnucNvNxoYzizR55rRcdpfTqv6x7bB89X
 ZxK04KXc6m5DHWXJe8c41kLMSwqdSX+b1A1mf+BNSjHAs3/H9M9365HWNz3IrKh0YBVU
 hX306oC33bVwD9rZRbVf/zS4v2BWMJt2YTuPi8YClEyUdM0dnIOQFb+8m8HlR/Oe8PlK
 VhE5jmZ3BXUKzXyXrjJeZUWPA311yJLmpAsB78VXBXNN+fk+Jk/IbfaKrvjhMYsR+NeE
 sLjq303XUCoi8BeJ8oczRHltr97W12qrbtrnjFwGbd4XgL/XYMQHKEqdbfJXYOQKmYiZ
 vTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MrlMfStTMUDXL4fsPXJoe/IuSsV0mOz0FvV0zA71pYk=;
 b=K5Gw7sq6BgiSqqFNwP2KabnoWMO7zwOeXH8wpSDzCU2ZyAW97ZVesRsRwGKsr0rNls
 4tbi1a2xE3qh5RFvZZqxVPAtCmvjSC3xtfZoipxx0sBjnDY0d82oBTEylAfGegVlyMI/
 qZIn/GLyLsCSMcZLA2v3/tr/12O8z2sNbgskyj1pzzioyEasSquCk2N40bv7gSzY4o4G
 M7QdxjFfLFisaJNJWk9TErzsShqIQEuuF++jzCICxUgxzcCCBDocyMUqGQvOFO+bO2ex
 wMaiocVTJ8h/kYHJRoVh6qVrfwpYrgf9A+Z/AAqts1o45tmUXz1ZfFt/bizX2zGzHJga
 hU/w==
X-Gm-Message-State: APjAAAVEznxkI672nmSPDjM3jquHWHQLcYRnGdlAoZZS67cxYX/O4Pho
 GKZQP9TtWMVwN68U6Y2/CgpE+z29
X-Google-Smtp-Source: APXvYqzOTz11QwcxKQfrKtHWfqRwElgdDlahFgeVO2zx7kyc1rZonCTOEGYueLKgGdCdrRnVuiPY8w==
X-Received: by 2002:a17:902:8349:: with SMTP id
 z9mr14237212pln.144.1556928305680; 
 Fri, 03 May 2019 17:05:05 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id t65sm6461446pfa.175.2019.05.03.17.05.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 May 2019 17:05:05 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH nvme-cli rfc 0/5] nvmf auto-connect scripts
Date: Fri,  3 May 2019 17:04:51 -0700
Message-Id: <20190504000456.3888-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_170507_207359_E658A1D2 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This rfc is a combination of the nvme-fc auto-connect scripts
posted by Hannes and the RFC from Sagi to allow auto-connect for
persistent discovery controllers that send AENs. It does not
contain the code that handles the AEN and generates the event.

The auto-connect scripts are now commonized with the exception
of the nvme-fc boot connections service.  It's expected that both
the persistent discovery controllers and nvme-fc can post the same
udev event. Whenever the discovery aen generates an event, the
new --device=<name> argument will be used to identify the persistent
discovery controller. Other connect attributes will be no-op'd by a
"none" value.  When nvme-fc generates it's events, it will specify
--device=none and specify the discovery controller addressing
arguments.  If a persistent discovery controller exists on nvme-fc,
will do nothing special and AEN's from it will follow the
--device=<name> syntax.

The udev event handler supports both the new event to be used
by discovery controllers. The nvme-fc transport will be migrated
to issue the new event syntax as well. But the udev script will
continue to support the older style nvme-fc event info in case
it's running against an older kernel.

Feedback is welcome.


James Smart (3):
  fabrics: ignore arguments that pass in "none"
  fabrics: allow discover to address discovery controller by persistent
    name
  nvmf auto-connect scripts

Sagi Grimberg (2):
  fabrics: support persistent connections to a discovery controller
  fabrics: add --quiet option

 Makefile                                         | 10 +++-
 fabrics.c                                        | 70 +++++++++++++++++-------
 fabrics.h                                        |  2 +
 nvme.spec.in                                     |  8 +++
 nvmf-autoconnect/70-nvmf-autoconnect.conf        |  1 +
 nvmf-autoconnect/70-nvmf-autoconnect.rules       | 18 ++++++
 nvmf-autoconnect/nvmefc-boot-connections.service |  9 +++
 nvmf-autoconnect/nvmf-connect.target             |  2 +
 nvmf-autoconnect/nvmf-connect@.service           | 14 +++++
 9 files changed, 114 insertions(+), 20 deletions(-)
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
