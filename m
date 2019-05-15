Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D661F747
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 17:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bCtzmkG4onb+l5I78WjhDdsaQVU3n0yCjGJgpPEmX78=; b=E4U
	G4H4DXztGhzNOp7ByCTBPSxO3tIXRdTRqFD+FmHaMAPACCLfHJ6YbXqbZiagCahx5gOH7McXVpd21
	xyxXGNGpNr8mfiZd31wOOtyuq9yjQ1al8o3GMD1ivZPeM/dEazOU0HSrlMgoqPp314zcAFCgIM1nq
	YiFUotFcW01YpAuGmb3GOpxCiPPyGv91i2GAxzM4ZQN/9DV3V/eMhqFDzHsxRwI58KTpUVi8jT7aB
	QqkfccrsEO1TDWT3oLNRbWlN5auiIoo//I+FOJWRZ+OpiGnyA1WQM5sDzvInR32sYRUJCQlNDIn3C
	FdU5Zwp7QYrbyppKuyrQSVPGl6eK+Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvfI-0001EQ-PQ; Wed, 15 May 2019 15:17:56 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvfD-0001Dw-Bl
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 15:17:52 +0000
Received: by mail-pf1-x436.google.com with SMTP id s11so122344pfm.12
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 08:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tJrsEwTh6VOB02i4tRZ48loA1l+OFahBfphYUwfCgro=;
 b=tPsgOk71tnB8xagO6PUFhXjz3i9qZNiAXfBCL5MYt0mXGBkMALJe1RzJ4Hd2j8irsy
 mTz+a3Y4ADvFdd3+h7Gnl34SabrZUgv+j0TJkvZW8kq0hN5ISlqTFCJ+l3dVZ/tBOhwg
 RGx4ThGXFosH52Uk4NGvRcty0i6ZITB0N6ZTGHb1vpPj5lNTeCDyqRGTpVQWPzrsHSo/
 XOfUcGxRTxSULZWzCa1y6RQ+5JgWaGs4ZzAGquPzCeXTtYwA5eNVkQJrGMLtCV7fSMdA
 AbVJOHZ87SjTEXMP3VXN++xAcTkGW1JTM1dgolZaEsrpx5jG7NmHk/AVJF2OVcZ6ehuL
 MdNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tJrsEwTh6VOB02i4tRZ48loA1l+OFahBfphYUwfCgro=;
 b=qJ7Y5dRnSEBiRstgPbwl29e71F3OfzI/PVynQrG3V4MGRmxiMKx6Y34wyUgVzqdWZe
 0vX40zMgFUvRia8HPSvwyi50gzhrkDPvIvlvBY19/tDn6T+8FnHo7YdKVP935Aao5y3z
 GOxtsQtv4kbaIoCYaPDW7430+UDPlOGncy0Gqg2dOKUvSwRT6xjQzdTMjcbaYcN9d9bj
 RtLvYim5wsAy9/2AbTdN2vU0GamZ5SZdFgp1VqGhW3nDgzRRR7i9Zqw2AtQAF8U5+NdU
 rzNLdIIYCXModJjtiCkaKhLZ6Gj+JE2OUNG/O+GPQx0IzupXZvwiaqlgHzB+bGiW3D86
 tP8g==
X-Gm-Message-State: APjAAAWJa/2MnUwhW0metvk/jUywWAX6Py+CJfHXESAXBpruScPyJvPE
 fDtSyT4Xzk/F0y8DshtZZLLCCy9N
X-Google-Smtp-Source: APXvYqxRbyYBXB4Zw73wrOyVJ2+L9aw93QKTrYM++mNstEXwa3i3xJ4zz4BRtr7zUTmCFkzui03Jrw==
X-Received: by 2002:a62:38cc:: with SMTP id f195mr48138547pfa.15.1557933469671; 
 Wed, 15 May 2019 08:17:49 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:b16d:d4:d5a2:4dca])
 by smtp.gmail.com with ESMTPSA id 85sm5544888pgb.52.2019.05.15.08.17.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 May 2019 08:17:48 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 0/2] nvme: add thermal zone devices
Date: Thu, 16 May 2019 00:17:15 +0900
Message-Id: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_081751_423408_212DAD98 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Jens Axboe <axboe@fb.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Eduardo Valentin <edubezval@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The NVMe controller reports up to nine temperature values in the SMART /
Health log page (the composite temperature and temperature sensor 1 through
temperature sensor 8).
The temperature threshold feature (Feature Identifier 04h) configures the
asynchronous event request command to complete when the temperature is
crossed its correspoinding temperature threshold.

This provide these temperatures and thresholds via thermal zone devices.

Akinobu Mita (2):
  nvme: add thermal zone infrastructure
  nvme-pci: support thermal zone

 drivers/nvme/host/core.c | 368 ++++++++++++++++++++++++++++++++++++++++++++++-
 drivers/nvme/host/nvme.h |  24 ++++
 drivers/nvme/host/pci.c  |   5 +
 include/linux/nvme.h     |   4 +
 4 files changed, 397 insertions(+), 4 deletions(-)

Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Eduardo Valentin <edubezval@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
