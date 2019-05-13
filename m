Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C741BF8E
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 00:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C0gIYobC8gyGMsKyr7iXy6PIclcDvNiR+sTk9CG4kDo=; b=Tiu
	jY1/zw0vDLkj8SBWPYBsb3EdRMnjMgflzAgxSH5HvooPaJhz+/yqfgiRoC+N4UTaZu7yrus7TMrOg
	HjG5Op3LYw1dsU/+RIOBSNPwFoc360eOs3y5DiRIGAEzJAjf9BSOKHnhQZ//lfsfNS3xgNegKIeWe
	W7x7tYQEjUsHmkyjmTKV1ti/3XzvR4ifyJAHETQUMuxp814Ls6/n9W51P1U0NjE+tAXx0sTaF9Elh
	7W1lUSOYnVNZOvm5OMbsVCT6XHmvk2DrNfIKBgHTI9BUnDCAh2LhjCyd/77Pd9DiNdqaVZ0Aimz5K
	KV3TVO/546kgW9oCmAVGF5pYibK8nGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJfW-0007It-HQ; Mon, 13 May 2019 22:43:38 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJfR-0007IL-Ow
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 22:43:35 +0000
Received: by mail-pl1-x644.google.com with SMTP id d3so7179279plj.11
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 15:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=X7CgLhmlpRVTmdupfYC/vsOlC8krkzQbkLi+Eg7NCTU=;
 b=tCt/n2z8LlkeuuOH7FCAajOHU5m+dMJwXtDB4t8hPSljFwyR17fNu5EoFmOLu/6wrg
 ZXXqfyfo9s8h6i8cOZAp/7uzQkJoxJ54vow7H2dej6681xaP2oMKJgft81YLJdWE3pC5
 DyvYqhupPfdldTkx0v0uViRiEogopNIVtOzZ32ytTe8Af6bjmV65MVUOxRJMeXLrGwh1
 5E5yUNoYw3gjbVe7e/c0ZrH9awiyseJFnFYim6DqZa/KRCfyvb8t/hi04cRE+F7PmFoD
 TntoXZDyRwHMkSWcmRaEbHafyccDQNcROhVNU0/WvR01AH6WmFuwlXY4+1afw1JMQ85+
 hdMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=X7CgLhmlpRVTmdupfYC/vsOlC8krkzQbkLi+Eg7NCTU=;
 b=GAwaCXGwJ9tR1tkL1lSnxIyNN68cw+N7OPNVDzbtWV5Q4iVekpZmIkBcC7keXhBsWP
 x7YM4yT2zJnFHue9wSBaSh4eLUTfLiF1BEVKo7nB6rbgNcltITZjYWQjl2qRj+GuDn4c
 4iWM57OdTSVISvdtMVm+x5/kXrWG1n67G4hC3wvZMThiMIwlnTZzOjLlkoEODCHhU0yS
 GJ66+15EYjI/4h+bZYMvJ0jX/jYe2cJHi488j7AKDmBJuEeKYEteAqYUpbJDpQOUQ8GG
 4kv/hzHSsXxo7fPrmUTilLV05bYGrBa14rdPt9rL88aogfpXTnK3VtMQme4x9Dw0uptm
 YR7w==
X-Gm-Message-State: APjAAAWonUvxrRkzB3Oam6lzvW27FsNiKYgfs39k3njwF1wKrjEZ6al7
 cQoYcUKQp9JqT6R8JpkXZNbHVLI8
X-Google-Smtp-Source: APXvYqwQVzclFsnz+NzGgzMHgjiD0sHMNOfuy/VhPPE8EvOklO8q8ds48x7yCp5xBU5e/VH3oqh3eg==
X-Received: by 2002:a17:902:9693:: with SMTP id
 n19mr33924720plp.92.1557787412532; 
 Mon, 13 May 2019 15:43:32 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id g188sm20299309pfc.151.2019.05.13.15.43.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 15:43:31 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/7] nvmet/nvmet_fc: add events for discovery controller rescan
Date: Mon, 13 May 2019 15:43:07 -0700
Message-Id: <20190513224314.24169-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_154333_813430_D2A3FC7F 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Smart <jsmart2021@gmail.com>, martin.petersen@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A transport may have a transport-specific mechanism that can signal
when discovery controller content has changed and request a host
to rescan to the discovery controller.

FC is such a transport. RSCNs may be generated by the subsystem's FC
port and sent to the initiator or fabric controller. If a fabric, the
fabric controller will broadcast the RSCN to registered hosts. A host,
upon receiving the RSCN, would validate connectivity then initiate a
discovery controller rescan.

These patches:
- Modify the nvmet core layer to call a transport callback whenever
  a port discovery change occurs.  To facilitate the callback and
  avoid new routines between core. and discovery.c the port structure
  now has a copy of the transport ops structure.
- Modify the nvmet-fc transport to support the nvmet callback, and add
  its own internal lldd api to request the lldd to generate an RSCN.
- Update nvme-fcloop test harness to support the lldd api and invoke
  the rescan on the host.
- Modify the lpfc driver to support the new interfaces:
  - Adds a new routine to transmit an RSCN to the other port (pt2pt)
    or fabric controller.  Add recognition for receipt of an RSCN.
  - Add support for the nvmet lldd api for discovery event, which
    invokes the RSCN transmit.
  - Ties into the RSCN receipt and requests the nvme_fc transport
    to rescan the remote port (discovery event will be posted).
  - Adds a sysfs routine to enable manual generation of an RSCN.

The patches were cut against the nvme-5.2 branch

Due to the dependence of the lpfc mods on the new nvme apis, the
patches are intended to be merged through the nvme tree and *not* the
scsi tree.


James Smart (7):
  nvmet: add transport discovery change op
  nvmet_fc: add transport discovery change event callback support
  nvme-fcloop: Add support for nvmet discovery_event op
  lpfc: Add support to generate RSCN events for nport
  lpfc: add nvmet discovery_event op support
  lpfc: Add support for translating an RSCN rcv into a discovery rescan
  lpfc: Add sysfs interface to post NVME RSCN

 drivers/nvme/target/core.c       |   2 +
 drivers/nvme/target/discovery.c  |   4 ++
 drivers/nvme/target/fc.c         |  11 ++++
 drivers/nvme/target/fcloop.c     |  37 ++++++++++++
 drivers/nvme/target/nvmet.h      |   2 +
 drivers/scsi/lpfc/lpfc.h         |   2 +
 drivers/scsi/lpfc/lpfc_attr.c    |  60 ++++++++++++++++++
 drivers/scsi/lpfc/lpfc_crtn.h    |   4 ++
 drivers/scsi/lpfc/lpfc_els.c     | 127 +++++++++++++++++++++++++++++++++++++++
 drivers/scsi/lpfc/lpfc_hbadisc.c |  35 +++++++++++
 drivers/scsi/lpfc/lpfc_hw.h      |   2 +
 drivers/scsi/lpfc/lpfc_nvme.c    |  44 ++++++++++++++
 drivers/scsi/lpfc/lpfc_nvmet.c   |  17 ++++++
 drivers/scsi/lpfc/lpfc_sli.c     |   1 +
 include/linux/nvme-fc-driver.h   |   6 ++
 15 files changed, 354 insertions(+)

-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
