Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2B2EA473
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 20:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=68kpZzV+C+JVd+f2BdJB8VEqZG6Yaj0OUKFgzb/fZjs=; b=hgMOUG72USLsvu
	KzwJy+jQyiSpXOdCbadZVCKXOdVHb58HXDs4vbtf6JfZP5oa1Mx64s9zqEnaW/4bRPYmEQTPfUjyb
	gPDgsJxPGL5ZrDFle/SREaCFMajqn5HhfnIMFdm296gZzcGoz4reVXlHhkMctVwOkN+Jb3+AygTji
	OZRH5AD75CMpUpP+4s7eaxWyHAYc1UtdTWlkoZ2pwNm1jF2xsGACyzN7BJ9LurMbESPFucinlTMvb
	ikdF6Z2+EykvpFwcmqwrVqe1avs7r29sXxvfRuf5L7y81SJ/lY0qWX1w13W+YhyVKkRANNF/zoxbP
	vpugABrAOipBeGXxlwTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPu1p-0001hK-6S; Wed, 30 Oct 2019 19:53:13 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPu1h-0001fc-GW
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 19:53:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1572465185; x=1604001185;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Va5jOXAJBP1rkKKyfUvPSCnF3pFNNi4CWgupH3MhljE=;
 b=AjwBR4JU+2YokEXEgMwS9rM/lyACzu2w0M6PhfgpYMtiU3ZLN0VHNnzY
 iZRHvGxzwzZOdUX/Bl0Z7q57UyQE6PH8N6b1KH7k+Ukl6PcbkG1JuClLd
 EoqvA2xDRC9usIPHmcta+mqG01FhLKvAdlyeDm8+hY89MndBVQ4nFM5Ux
 am9McB8YixJPWNLS3Jgyd10drxk/yjU1ofG5YhmCEa4L6pa6wkNWngcYC
 3rt/JqWYHjDelLPoWBVtvEDKbG/20w+Wh0OD+cwywPle1OW4R84cnddIj
 /GMsp/iSw4i2Zlvf4iN/eTeru6QvppnuEAtCT36MUO7fqDOJ6BWMCp2IT Q==;
IronPort-SDR: LpVfohhGTdekYEMukvseHZd3YPhE/m57AxVppEmfQ72r92pXpJAkXa4N9xPQmT9GrUDL/u9/K3
 nIpmOtWTBXZADT0OG6YiuKZujHBdRNZZ5qlRzbIjpU+bV/p4Ap1fAfAR0+9VOBRU63/kmh0DWY
 KjG2mVahEdTE4NlZRjCwQfhLW/5tlutRplQxN3hXsL/qToxKYCAJTZ/PaY2THgCp6i6z9JEbpQ
 lp3TEJ6wMDIDgumwP0Rg9sCIg33BitRfeaBP3bdbQ89C6wPm2j80S0Wvy+qS/aHLLnlxK/NhK3
 7uA=
X-IronPort-AV: E=Sophos;i="5.68,248,1569254400"; d="scan'208";a="121731708"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 Oct 2019 03:53:03 +0800
IronPort-SDR: nXs4eVIiws7VpUh8qj7cq8+XoliNOTrKguAuxJ0NcIGb+zi/bw/+SdIae7idok7GchK/7V1Cf4
 4rl1Gqddzgu/FoyNk6GDBSvWH4zH1GxbEbBU9Ak1T1qqHPuPvdcdkX2YUUUsRBgnPi/Ho87xKc
 UBDL5Gm2GHIDX1/RaZtxR+EbJyrMGk833anPvMKLEt8ufNmR+nu+3wfUVXlkvrkb7xhtRncdxB
 qV2CZajdSL9UdQ8TF3Nba4t5wn+liH7ZST262Pc06K+A+X7ipD36Vb7y8C1bnSCjPuDxP+8Olo
 zTpLhUNfFFioRMmRTZfudGKt
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 12:48:26 -0700
IronPort-SDR: FTsDvfV0omZxmIGXKLmqj9dF9xc5inSnD7beIjXkkfN6N46sehqblow+0YnPOb7/XgClKP6pqm
 eQTyGVQBVmhr5fYGs8iNASYJWUq36UeeU8EEX7TjxbxiLQkHlsH5dn2o6m0oysWjWhD0TXyeE4
 h+YmwFgClAJIN1ArQPVsGzynVQR20ZYp938xWlhddG0Vzc6NUWssBTM4mYCabgw05kCWss7twi
 EVje+eIbfRLMivPUxBx777UdTtEb8DnazUu4RlAXAvDTzIaM4ykjsMq1zT8idgN+T30U+GLtcG
 t1s=
WDCIronportException: Internal
Received: from cvenusqemu.hgst.com ([10.202.66.73])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Oct 2019 12:53:04 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org
Subject: [blktests PATCH 0/2] nvme: add a new test to check model attr
Date: Wed, 30 Oct 2019 12:52:56 -0700
Message-Id: <20191030195258.31108-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_125305_589754_3C5429FB 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

This is a small patch series which adds a test to verify dynamically
configured subsystem model attribute.

Regards,
Chaitanya

Chaitanya Kulkarni (2):
  nvme: handle model attr in subsys create helper
  nvme: add new test to check model attribute

 tests/nvme/033     | 61 ++++++++++++++++++++++++++++++++++++++++++++++
 tests/nvme/033.out |  3 +++
 tests/nvme/rc      |  4 +++
 3 files changed, 68 insertions(+)
 create mode 100755 tests/nvme/033
 create mode 100644 tests/nvme/033.out

-- 
2.22.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
