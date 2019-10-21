Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F1DDE2A8
	for <lists+linux-nvme@lfdr.de>; Mon, 21 Oct 2019 05:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yqx3HObCwu9arQIQI9aBKZxhJfrnQ9G9a3Hy7qhmSts=; b=GS0oHEUYWvlm/g
	yDFKQU4DnFD0GN2QLx3cQpjII+cnIXe2qAZrP3fDDyjDXCu8Hkjw/xrIvFoTOOedOvPaaW3Q9VYK5
	frXSVNkLjaK88yUQyeXsV6bw1vs9QJmSH7/uNIN98IPBozLlN1Cltmf4qPuNKWsSyKfjktw2FSqUc
	r+2t4KbbOBLnVvIkxK5tLM3hXwhGzLjNfPyxrwW8oqmS94CEmOjlxjj8sPILoSwEsfu1CG7qvwRnP
	NidPYsAM1X2y4I9MYvCPns8PqLW3AO71yTnh7o+4zstUxNNWFK59SxOI9UeJ4HQJ3/3FNxxb2ZuO2
	WXglhFWNd/QATOD77x7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMOYg-0005cP-EJ; Mon, 21 Oct 2019 03:40:38 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMOYb-0005bF-To
 for linux-nvme@lists.infradead.org; Mon, 21 Oct 2019 03:40:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571629235; x=1603165235;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WJEGpd+ywZaD46TzXGOA/TeCfi7lQNbKZqAysZjGAAc=;
 b=YEc+U7cFLOm1OC0Gr+H2HMcSGxoPjpDcw1MImR8B+iCr7StYUZ2+LJnT
 I8V/amGn467x/sOHdE+pbl7zixYxztwAy5wd1nQN859ENOy6aYjKZDgKa
 1/GjV1wJtUJKwkX4jVnpoQJXd2kVhR9LvK2cndqgdLcGHf0EqfQeGDsIh
 2Q9NZ/FTPWmWe7lz0rdtidfSZKouINRTQ4FjGWXnRCC8IHIAwcoy1owTe
 6C2VZZFJXPqSmV5q0BHeqiOH3Y1+azkMQXuJTHYMAJCgJ5zIxvS7NACby
 FjUPNqE2yUJZcCf3XWF3iMhMkWqVFBHnU2kdX0hK92PYTlsV2Budq6DMO g==;
IronPort-SDR: RPusGSOnXDpq9cc4aMMa8sCPNu/xqS1BrLoJeg7oZdh6w3hCqPnavDBcM6xQJSRkvy5O746j5l
 NiCdddkzuTUrluTqaK4/HvYghJUvklXACH5hy+3PY1jcDV0LM8I+4tr4uiGAFf/uHwKBMpBbDI
 h0BVlqyokmLd2mWVlwuAc3n47zFGoHkK+04p5uZVP8td5qbGcbNAtsf+6/B/KNikzy/Jvr39EA
 e2WuUKt6sw6reledaNlwrHggG8sMAzWT2joT9Pnu8UWEFW1mqCFj0stMxM9RL5NymMj3upswRE
 e5M=
X-IronPort-AV: E=Sophos;i="5.67,322,1566835200"; d="scan'208";a="121721803"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 21 Oct 2019 11:40:07 +0800
IronPort-SDR: x8nt7Gzg7nIhc4BzflqDQ0sNNiAHaEDe9rEkGMohlK3WEZpQO1IT3fuYqexFD5BV7U55/rUmCH
 hbZ8f9jgnciXoP8X32MjuNWUeVRTzYVF/a4EjCjcsFXTE26oESMF8D9wbVWdr9Y5HnZkj3xjFR
 iTsKobqWqrvI/0MWAh4x0Io0BVwyOCOHEk57MW07Spjyh41EN0anFiSG0CRztmeRtNddMJPtNS
 jNBD9HacRTD8/Lfuw6GAqBgC6G1sSnLsGeHHHgJYWjsx4m5H5b3wuqnfToOCxFg5WDrpaZHgK6
 jglAInQkkKvOyE18esSXoHn4
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2019 20:35:46 -0700
IronPort-SDR: EkYjvAzY0e43/0OUx2fAj15cX+vIhJs6cTL8yMDaY3WJqgYyghyPvh+mgN1GGAjRYy0b2GNq5Q
 xFxoaUAUXrg/iERWdA6IUSARg4u1RVxL+z0s1bHP6RAba251BSdoKjYk4mI9gt3joQ6wp4Dxmx
 UZRjPtSnln1R0i7gTW+Gu8+vK4x069o1hPsyi+Z6jxR2hzNMuThUqBeVfUVC6r25GCLNu832aV
 v9zm6gZvcCXFB1eGXyuD7pP1IxJzc4UB/OZYlltu3bgc0Tcl1S20jz9OKkZ352A3oGr9/GkII/
 Oss=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip01.wdc.com with ESMTP; 20 Oct 2019 20:40:05 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-block@vger.kernel.org, Jens Axboe <axboe@kernel.dk>
Subject: [PATCH 0/2 v2] Small cleanups
Date: Mon, 21 Oct 2019 12:40:02 +0900
Message-Id: <20191021034004.11063-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_204033_966139_C3441D80 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is series is a couple of cleanup patches. The first one cleans up
the helper function nvme_block_nr() using SECTOR_SHIFT instead of the
hard coded value 9 and clarifies the helper role by renaming it to
nvme_sect_to_lba(). The second patch introduces the nvme_lba_to_sect()
helper to convert a device logical block number into a 512B sector
value.

Please consider this series for kernel 5.5.

Damien Le Moal (2):
  nvme: Cleanup and rename nvme_block_nr()
  nvme: Introduce nvme_lba_to_sect()

 drivers/nvme/host/core.c | 20 ++++++++++----------
 drivers/nvme/host/nvme.h | 15 +++++++++++++--
 2 files changed, 23 insertions(+), 12 deletions(-)

Changes from v1:
* Renamed the helpers to a clearer function name.

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
