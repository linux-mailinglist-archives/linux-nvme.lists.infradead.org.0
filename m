Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA3614E0CE
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Jan 2020 19:29:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L9BgdagYxhqoSR1SfCCz0NyXIbkmEuJJlf08EYeurBw=; b=XRlwm+28CMeTD7
	8KjpAf+EvvDspopnv4kKGkGDZwrLjPy68glIlHQIo8X2qrXjfdrWaCIY3WuIexJH7/0usqljF7cVg
	DsAdCYrInSR8U+zH6B2oiY4qz5nt0wxXhJ0wH387tlEoXzwk+CKIORwd1thRLEKmJAT2/L6/wjRjN
	dSPatCBKZvg9bdtYDzT3VwLlg1Q5F2S5fwZcx8uwu+WYmsfE/q3wvVI72vmSWugcaeVX5/dIKZFHv
	DOQ5QEeRz/ixHh25pMfCR+0Ku2X0LcMwCmJw183ofjTREfXuW0gn/PWVj/dOb7aLKE1P1Fpm70RoW
	rqWCkL0AN4Qgx5Hd162g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixEZY-0004wf-Ld; Thu, 30 Jan 2020 18:29:48 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixEZS-0004w2-5L
 for linux-nvme@lists.infradead.org; Thu, 30 Jan 2020 18:29:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580408981; x=1611944981;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=snPR+Ukse6AywtwPfngO90lgKS486nb39Uuz9XWNxYY=;
 b=e6EgY6leM3x1FOFeTcbbAnFLgCXc+/OsonTy3z7AvA+LlvFWYGbQ/mD6
 KKVrI65r/glMWb+eqGzVyf3yLzcnmQbgF25s+JSvSI3rz6Cg0POH30VGp
 XGUyLo0KvXTXtTxAtPrBCILtypRCMgy4Pnh4f+C/Ih1nlALSnkbVjhsJt
 fjQ690eBIwUYwjICaJ++DAL6ZctPJjSr7WqwsqqQUAGv+ewAJLH7VkyOc
 YbyBbr3WmolygiL2+bVnIwcQgZf0WqDVMuMrDsbNcJfEJTxtNAa1I6mrU
 3T4izyyqtxtS/cZOyaYyCmN71AFpI4Ck5QaXMckKOo5NZAEJJz6dXWyVa Q==;
IronPort-SDR: 6oc9sYbArHOeQKELfHZyP7yG7SbBE3sNyJLnpQtPUBoTPL5ARirvpgfIZb8hGOdK/9hKHZZd1R
 hOhIaJR+qAdCBXRsv7XRrr50j2siMQHvepbYxrzpP6RBQdTidQNxZHlwyFEYBCoap6K80p/8aE
 hi0t5AS7ZT4sffnzfEe2J6lSyxXFY8HtVCBMiGlLOBEZ98p2Svg4dcMODBB7w3VTcjUeXO5Yk5
 ztSsajumaltIj9NDDWMqOK+EmzJzAQb2S6puYhLr1aJ2cVOqN93qhvkTamuFtrrNjleNHFMiuk
 Rzc=
X-IronPort-AV: E=Sophos;i="5.70,382,1574092800"; d="scan'208";a="236698371"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 Jan 2020 02:29:36 +0800
IronPort-SDR: q4YBQZw4oG3fO2qIJpjiDq3E0Iod3PCl3ZNpqVHje0g7IbSHvICuUoIPFbwyBclA7Pk5s3Ss2A
 fHeXPzZd12FEk83VHMaRslRNs4fmibj2jPR8i9Ud9J759vCngGp00vuF5AlsFYBw1Wl3kuqpys
 Gqq0bC7RUgDvHLglsF2Od7mtjecrmp992w1yo13SS35lGJSLAV/1Sk573wsEBmTDNNoKdEPi/h
 rGYfUpCryIYsSzNvQrNsPjv8x2akubctmcC/hw3XmbeUbyFVLY6badz5Pnj4LG4Zea1YMa5XsV
 hNfTh7zeox8yBitU/TESuVFh
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 10:22:47 -0800
IronPort-SDR: 7Y/Rw2yXAHkDVWuUF3hFO3xL1YkQ8GwaodRABCv50F4ZJ1COl5dTWXja2+CZxiNFkSOoIec1pI
 AirpMidCq7tzpUFwO7ZcoRHHak27HqzI34cOy8E0leyPE5liRy+3BWUx2K423sC8w8laY3FEQj
 phHga1djjT2WjJH5cqE3/4q6gzUS1NSShWwNMIMubGwS4q5Uaqu1mzIuCrBf2uCRGLM6BWZaGX
 1dO59wCWDDni63GEGZSLtKjl/9GsaxgGE64rvpruDVrPXfvfcrkdZ9qHQq9L3YCTgffstDLdC8
 rTk=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 Jan 2020 10:29:36 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/4] nvmet: misc model, ctrl-id and AEN fixes
Date: Thu, 30 Jan 2020 10:29:30 -0800
Message-Id: <20200130182934.6109-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_102942_224621_42F93137 
X-CRM114-Status: UNSURE (   8.38  )
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
Cc: hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 sagi@grimberg.me
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
