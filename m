Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AD364F34
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 01:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=P5WMtn1aonRGQmzlsOAd1mKXuqb3BVJ+k+o/AMMV4JM=; b=lhp
	mvnIbiY5t/IUb5CJa3TGrK7Uzh0bBUFUqM9G9OE+jv/kFA6xMarNkGl6LUtOPR2Q0CvZ6KyBh3nxS
	NnL7fafI3nP9vRl6QKKfhrqYFXBgHtgObzM1lgEj2vRXy5Pl5RLxJlA5q0YrfAXxqbEkiqZw6UPOL
	t5qJ1YYIPSHWFfrJDSokTKKyK5E/hRy7aX8C1kKWW1ENVn04fNZiZO1P+hIvzONuloDMD/duvQHny
	2wWHSzmHyyRaeWwQL0dYAfyAy+XhyxYUcdktcZpuyPI3clzGnWdQA6VXLHkvHDXaYKGkk/w51fCn5
	AhTuogGuVmlLpyZ6PYQ54TQQ1OM1f9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlM0P-00089r-Fz; Wed, 10 Jul 2019 23:28:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlM0B-00087p-0g
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 23:27:56 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so1813550pfa.4
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jul 2019 16:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BhKEkMRK7bHcQYu4E7IwhAE1Lp7fVYWBr9ypbzOiZLM=;
 b=nDMl4SSbZwNXQYMrn/j+gavgmaMMWsd+NmUOKEN23zc3TAO5mFBZ2UuQttzPKsGAiD
 QXQfVe7Cc8K76wA94rtxJiabvt5AeoTKvyKrK8KLNFtmTvQPwA6fSCnJ2WmLMNP/9MIO
 1xKLXnbn7hAO+gqSnfThPSdiUpBvgQYlitGVMBh3BlXBkrCARYxgLcsW3ZKpV5Up7GfG
 B6BMC9F7IASm6mzGySqqReLsd4QL26RaIlCH1vmfGr1aSI0O1pBcyRzu5fyEr3vPN1Vm
 RPlZScWSS+f4qia6NWpXKXNnyLQoAJ8EnnbZVwiAvd0Dkt703STitFy4N1z6luLAa/NT
 U6NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BhKEkMRK7bHcQYu4E7IwhAE1Lp7fVYWBr9ypbzOiZLM=;
 b=Af9TP06ZdKFcGqOJa5DgoMZHwMyT4HPXJ3DauMxpXCkhe9zhq+4lFVi/EtV8trhE9a
 66q4lVmY5y/yP0toE8TiOx78q4XeOIFxb3cELyY9ZnsOs3qhJv5gD/1VwqpJwpGi7pg8
 PqOSwtSGuqtESf5CpJO5lcwje1aAPRgAWZ2rS20L8H//HutBfETsiBKQYaGVXNNqvdW4
 oaMp3UGJSnWUK1+b7Ide8+9spRNRsu5igDecgkEupHIMesQzehwz044uThQI0NtIFKN7
 BFLr67BMfgL02psOZCAfQZLzAAS0GxVz1nkU239rfKqYFZqy8SWPlGsVEEI+4WfEVv8c
 tF3w==
X-Gm-Message-State: APjAAAVoGmoOoJm3B2llnORKIhpnRkiozyoYj0a70TE5OBhI340R6fbV
 Oi6zsJHR7o78IHPJy/7fMPiPE2OV
X-Google-Smtp-Source: APXvYqzkUm78NZifTojSNeYk/DlM+zjm5JrERThFagJiMjEl8vbNh194RAL7lDC6zs3O7HIhl5xBwg==
X-Received: by 2002:a63:4c19:: with SMTP id z25mr912649pga.47.1562801270821;
 Wed, 10 Jul 2019 16:27:50 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n140sm3305478pfd.132.2019.07.10.16.27.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 10 Jul 2019 16:27:50 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc 0/6] nvme-cli: nvmf auto-connect scripts
Date: Wed, 10 Jul 2019 16:27:34 -0700
Message-Id: <20190710232740.26734-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_162755_090349_A5ECEDEF 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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



James Smart (4):
  nvme-cli: ignore arguments that pass in "none"
  nvme-cli: allow discover to address discovery controller by persistent
    name
  nvme-cli: expand --device argument processing
  nvme-cli: nvmf auto-connect scripts

Sagi Grimberg (2):
  nvme-cli: support persistent connections to a discovery controller
  nvme-cli: add --quiet option

 Makefile                                         |  16 +-
 fabrics.c                                        | 115 ++++++++++---
 fabrics.h                                        |   2 +
 nvme.c                                           | 207 +++++++++++++++++++----
 nvme.h                                           |  21 +++
 nvme.spec.in                                     |   9 +
 nvmf-autoconnect/70-nvmf-autoconnect.conf        |   1 +
 nvmf-autoconnect/70-nvmf-autoconnect.rules       |  18 ++
 nvmf-autoconnect/nvmefc-boot-connections.service |   9 +
 nvmf-autoconnect/nvmf-connect.target             |   2 +
 nvmf-autoconnect/nvmf-connect@.service           |  14 ++
 11 files changed, 359 insertions(+), 55 deletions(-)
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
