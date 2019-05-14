Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098D81E437
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 23:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gWEXimd2WGm4iTxnrJgwAKAt9fktrAjGwCaEJtM7XfE=; b=d+D
	YZ4JmqYAUg3PxiBT+rBCpo0Bv2FFSvAshH+TtVzAPCVJZc76EGCj/6kdkGackErbqhkhFvxMDBjnO
	a2FodXsDiI5rf+rWSQVrSTTyDlShbTqIYRPV0IOsYyA8O2CEY6Fev/F73f5tkxliQMI4kaDiD35Ks
	AFTgRsuzoOlSLwt9W1dUPuekQ35xbrtCv/0RJ358q5L5hKqGQH0lWcCOYIlTT/6euvUHCe0eYVb/q
	cUE7k5gJGzSC3ENOhUZR2VogyxM7Qq3byu3oxOYOfrj7MDTLG70JA8G1xAxQ83SNBRSbenj4ffOCU
	CZifcwSTeppmOuFU7vWvnuJxVMV/uyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfRH-0007sv-Mb; Tue, 14 May 2019 21:58:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfRB-0007s2-Nk
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 21:58:19 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so265314plz.1
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 14:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=zUrx1ebbrVY0BkLcWnEsyIoUXLLt4sbS7ml0Z0zHL54=;
 b=ftI71QLxcNjWOQMFgTjFchljR7oQ/8cPNx0nnacEdvG55LxRrAS7CPGEizR7FhiI+H
 tys1zyhUS0BRbuTX/Th2pAIJ57CFwZqro/Cl8j3CB/u5y+X5Np8IB8o06Zf+nTFUeHH9
 MCXQAqm5hFyN/3DhmabhW0Qh+mibAsYH8k5h8jTMHAwacIuWe22WZclyxvzrkm6R6B0+
 jfobn2ka8de5Sy+XZvj7S6vaAFUbXRSkOaJ+Uj0O9MKWY6JuVePgua+znJA4v/lYb7ZE
 25j7sIt6+vJdJwXvWANzst4KILcNBg+9IEeoDU3ZFket95thvZw19frGIZz5G0g7DPTl
 vUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zUrx1ebbrVY0BkLcWnEsyIoUXLLt4sbS7ml0Z0zHL54=;
 b=uc3lT0SzlidjotkDBlEp6BLLvkG8ruXvQzuBwFaOXKE/81rH3VPbbjrf0Qi3YR3Qfx
 0NhTTBaboCj0PtPVvGcc+2BxTUJ/1Br+oeRfAB9qBBIfZsdxSa3ebCCCEG1Y0ZeuPzAq
 UL+yMpBvkyBwyKF5a65YXvBH62rrUzYJmzsZPExIY0YGEAPzjN9VlZl21J3pWYazdx3p
 DmTRYfeg62GXnqWyfuY2g8E8OGyArCj4/yTNpLyMWVxaEnk8p+3FXAY3a4agbST71HX+
 y5sQrHO4x8GC83XYETrSuhPaLe6IFAmg1b9UD6VczCZc7FyZ1kHTrzNRaK+0auuncn2u
 f8qw==
X-Gm-Message-State: APjAAAU3IxeVc+BNT6knTPfqQrjgg6n9GuM6EpbSP9jqmeOPQDhi/WBX
 35kCVcBTx8kZPK1C18rxM74HLLnX
X-Google-Smtp-Source: APXvYqy7y1cnuxQimXf2QBTomVaG1tjXRUHQFE390q8KNDyv+6n8v0uWC35bk3wQV+NkFScC0KFKfg==
X-Received: by 2002:a17:902:7486:: with SMTP id
 h6mr39709104pll.58.1557871096492; 
 Tue, 14 May 2019 14:58:16 -0700 (PDT)
Received: from os42.localdomain ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id o6sm120917pfa.88.2019.05.14.14.58.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 14 May 2019 14:58:16 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 0/7] nvmet/nvmet_fc: add events for discovery controller
 rescan
Date: Tue, 14 May 2019 14:58:01 -0700
Message-Id: <20190514215808.10572-1-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_145817_816863_7D48039C 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

v2:
Revise lpfc patch 6 to check for port role nvme discovery not just
  nvme target


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
