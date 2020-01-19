Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A261314201F
	for <lists+linux-nvme@lfdr.de>; Sun, 19 Jan 2020 22:23:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L9BgdagYxhqoSR1SfCCz0NyXIbkmEuJJlf08EYeurBw=; b=D2YyJEkaWMxSmt
	1qyJpfUVFoNnvtVlZMxy0yrIKdvPhJj5C/kppZgvz0X0834fFzADcHKgGcvE2wYgBV6o24Wn1vKQh
	eZ0PCB35/Z4nsqwDntW0UkvZjZyVEbS16v/T7LelNqXT+SJHAvNBvxteNgzN7BFwnKl+t9I5d/+hG
	lLzJmXQ2MA62+FVA9H5Np5Y2iw4pXwPb45iD0845IoJ8XBou7fL8il4ZuvqKq+HQtF65VWcRAb2do
	yNiBOJzel56uOTYU+mjR6hc25ty/3U4c286/fGivuaCpHCrRWmHwebhy9330PPlYjhvX462Y3cB9f
	LWZ+g4Se2DxeM/WlHZTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itI2v-0004lz-FZ; Sun, 19 Jan 2020 21:23:49 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itI2d-0004hn-NI
 for linux-nvme@lists.infradead.org; Sun, 19 Jan 2020 21:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1579469011; x=1611005011;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=snPR+Ukse6AywtwPfngO90lgKS486nb39Uuz9XWNxYY=;
 b=JShjWjnh6++EWaAgvnZKx3siwG/sLz743y4ujBS8LhWOj7Wf1okXYLgg
 awHoe5mVFTB3GycFHBDfhAev31HyxPUnMsPPGMseqADAOyBvCjIKKz2rt
 n9U57o9qtpG/UY4feYwVmL5nv+1TgXIulm1JIt0KMcZy2dAfJLa2KDXgx
 aZ+EMzkWafzQW89F5cVcWvnkX9wXZjVlH5utUOc71Ydz62Y5bXT6mdbsd
 1Sya24Y0GaN6SSq7sXwda+F5D9zqkDeH9XWsK77zxk391UBEmkMvt62tM
 jG0+PTowBQOygn+DmLN5yB8DeXiSgjcQKaCzHneydALlmU0TKFiYPKZwi A==;
IronPort-SDR: 2K14338YZGshSL2GO5Mxwe/+KidO0zK5RM7pLidLJ21u2k7uWmaIlWvKFPMafAgNobjEwwkngN
 FipmxCxNJ7ih+ih+B33q6e8wO4Xo3pYCORp/zbOp04F+DS2VBTiVAyix7CoDljA8gHeGcOR38i
 agJR9k0d0umqKoxG9fQYlRnKJ0wxrkdvRkNBpuWXMyTAJTWagVZsBo5Tbw0qERLZRPm77SQ8RL
 2dVABqCBc0G43Onc7lENrpr8KeV7epiLY4XvF1CtWp4HfH/Ao+lCI+qEbw2s3YhqSFjcVQIpMb
 5ig=
X-IronPort-AV: E=Sophos;i="5.70,339,1574092800"; d="scan'208";a="235845822"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 20 Jan 2020 05:23:27 +0800
IronPort-SDR: VF513dTTz6Kkwxfuvp5BTyAZGqWpw8/W7W54xK/7LeAuwlw1KRwi3H6TornHF2P+XQ5N5SIQNy
 FSKfnLcK32tCYv9XjiACZQoYXcTK0Qz+Eq6WWOPwf0ch/fnG+DQ286fjJrd1yhLLsLTeHzipbT
 I/4zoJ0EF5vGKiZqvNzej+cEP3UOE9FlI/9wXpsXKlgmh9KzZqh1+oXuBRZQ47q50yZToU6f+c
 2gyVWlmwtvgd9lrKfz5cgOAxgvU6xl+IfTVR7MefLcZ/3os55Brt/WhzfyF8o3EM5WGz4oOi3w
 SZAksCIALX/BVp0cpV0Lfjom
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2020 13:16:56 -0800
IronPort-SDR: Wpvpv5UUQi3gR7e8cDoX1zW9T1HjwBPXAKz7EbOVGFgQAbsvoBESZALC//Sb2YEJosjDmeA+dT
 OmLlf19YlVq9LxFLxkbfVPeE4VWbO75tP19kkSDWmMp47jX+Cq/4tMzt15hu851lOJL0DfVqn5
 nVvQZ9Ew/8AB8Rs99LDfR1nmCBRMVTkiMf1HEPDqrU8vyIeq2YpMWS5zRD/fcGLcZPS9au9Sya
 NOr+YFqq3VskZYimSwkS+qhDMir+4mTZz/bsVkvRVLD3x2Rqdrw2UA6iyhOA7sO0am7T+04dwQ
 XFY=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 19 Jan 2020 13:23:28 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/4] nvmet: misc model, ctrl-id and AEN fixes
Date: Sun, 19 Jan 2020 13:23:22 -0800
Message-Id: <20200119212326.19701-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_132331_762439_1CBD00EF 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sagi@grimberg.me, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This is a small patch series that allows users to configure the model
and controller ID. Also, patch #3 has a fix for missing sscanf check
in the nvmet_subsys_attr_serial_store() where patch #4 provides a fix
to clear out the async event for which AEN is not generated.

The changelog is present in the respective patches.

Regards,
Chaitanya

Chaitanya Kulkarni (2):
  nvmet: make ctrl-id configurable
  nvmet: check sscanf value for subsys serial attr

Daniel Wagner (1):
  nvmet: update AEN list and array at one place

Mark Ruijter (1):
  nvmet: make ctrl model configurable

 drivers/nvme/target/admin-cmd.c |  17 +++-
 drivers/nvme/target/configfs.c  | 135 +++++++++++++++++++++++++++++++-
 drivers/nvme/target/core.c      |  72 ++++++++++-------
 drivers/nvme/target/nvmet.h     |  10 +++
 4 files changed, 201 insertions(+), 33 deletions(-)

-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
