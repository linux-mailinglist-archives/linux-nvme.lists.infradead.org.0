Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBC41EB368
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 04:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pdAPPRn3HQNun4Xix8DFqnq6vYmWLCQcSNdMArsOiHA=; b=pYH/PLc0pgc3VV
	ExWOMTu4i2Edn7zzzcMmE4eprQ1NkAMRAC/iZ1tkv6Ft1ZAsPOaLq/BbSHv9Ctp+TXam6i4a3XYRa
	gaN5dptXXewBirlcgwsWYAvbjWvMHbAnKBvzUZx+aY29oC3CL0sAVxAXgFVhGylH9ex9siwyxaAX5
	t9IkRLxH0xxBwb1Iux+YbXnETIIsY/3ygqBPEbP3H6QUhqJOhQf+DRSdGe9KOltX69xIZYJirxHTu
	d8IjuNHCVVQ/hm6pY6sWIoqS1Qsfo1F2MJLoqoc4LBA84QPD+fMCTo+pv7T/aGBRKAenKackj9GxI
	4mXZWyBEKN66C7jVGu6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfwrk-0004RN-Nk; Tue, 02 Jun 2020 02:41:24 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfwrg-0004QU-05
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 02:41:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1591065680; x=1622601680;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rFEtzCwfZZTkTKh2YsOXgt6aLw8owcapaynhDeGs5A4=;
 b=Wd4zKg9Qa9j0K3+9b8RoO93UnyEFfgjyF8/Rwu6NAN2DOBZ8wMs2lp2Z
 nsJOuXcZ8Lk4KqV+ge9lMc3MUpioScNyEeLwX4KKEcLmYx+dFUKR2xlcW
 9Ygsse9Idbrj/D1trDoCaWBSA/5D4pGZ2boYEMjotai5UOnn2oCkiXKiZ
 qO/+9QW9dFtk+pM/VFiv7HErcZnnPWUtqANZnBKW/hZEDW+fnu1xSOO+v
 cbxUwGQgM/f0UHpGZ/zgVLa4NZBb0C9nTHEyNBn0PaRonClKNeEXEwCUg
 PED5BDVBgylHmaN7RLsXREXj0Rk4ZHxZ+9Q7doCW1Juk4BEo/3iwfBhlI g==;
IronPort-SDR: pwJP4R20ZvTbzSKlo9b6utR1XgJif/YfqQcgP4eTBPB/incto7GtSMXRn9Io5+6BBM2Rbi/FnL
 URdWG31XHVTRIY2/0gC6tlSCuoq+9TSk2qUdFh+zuqZaRxNeE+CQ10EPHqcPifAsSuRGFEBrud
 kfC10DTZjTMq+t7zVAOvCxzUEX3QrTHVCvwDbF5jkhlkY3qwJ6HtOrgPyT/rLy1+Czj/P8EO9k
 1nkHF4ZJ/sNWI1I3rmCSDyaTfc3XV2jxAgtfKfxp8/xEaXB5IQtD9uqb4HGPAmrde9naD+j4hc
 x5E=
X-IronPort-AV: E=Sophos;i="5.73,462,1583164800"; d="scan'208";a="139314107"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 Jun 2020 10:41:18 +0800
IronPort-SDR: 3GMsv00nWm9qqTC7I+XPpdapmBLHonAM0nFY/1onFNvVfWqLViFXhMbWAWKiuMFXwHQtcJ6/dj
 RjeqMLXvs0aUZdCQmLWcQzl7RpBZBG+Mg=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 19:30:59 -0700
IronPort-SDR: 9lYFI0JMYZ9lvKiteK+7C6RfwSe9JJBs/HoDjqEqmbMz4KABRpLAMBXw4WUCiV8GSVh0j8Gxke
 IHxJqy/3j4Lg==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 01 Jun 2020 19:41:17 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/4] nvme: code cleanup and type fixes
Date: Mon,  1 Jun 2020 19:41:10 -0700
Message-Id: <20200602024114.5153-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_194120_074407_AFDE5E97 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kbusch@kernel.org, hch@lst.de,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This is a small patch series which fixes few type mismatch issues
and clears up the code.

Please consider this for nvme-5.8.

Regards,
Chaitanya

Chaitanya Kulkarni (4):
  nvme-core: use u16 type for direcives
  nvme-core: use u16 type for ctrl->sqsize
  nvme-pci: use unsigned for io queue depth
  nvme-pci: code cleanup for nvme_alloc_host_mem()

 drivers/nvme/host/core.c |  4 ++--
 drivers/nvme/host/pci.c  | 27 ++++++++++++++-------------
 2 files changed, 16 insertions(+), 15 deletions(-)

-- 
2.22.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
