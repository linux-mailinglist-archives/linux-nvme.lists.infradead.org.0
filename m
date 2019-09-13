Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261D5B1C0D
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Sep 2019 13:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=34rw0seR+wfiJbdUHAKfnxTrpeMzI51yRreFbiL4qPU=; b=muE
	sqlUwWE+7ShX8wSD/kS5pM7h91gcGFLIKKWbV9j/138heYMzOr7/yXFHoY2lnSEEbcdOnbjUfmBDy
	Fc0aRy564raLT9owms4tp1H2HeA2WF5yA5OQgvlUmfSGsbvwm3cIYM9d5b5fFXL5Y/nDzUjaYI6hx
	S5VVc6lu38Y7reX7VngP8rMRbS1E660H5aclihYavrc1ridJhmomLPTB+/xZJ/hHB03feaA55pEWN
	BsX/tHEQuFUzlYCZvihdw80l7GfxU+wIdT3LJQjzrDISOJbtQkWEyNGS7GhmBHSenEdeQbtZHbVyc
	97HPIhuQw8Cj8RXz4LEO8RC6blSbVAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8jZ9-0005Q0-EK; Fri, 13 Sep 2019 11:16:40 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8jYp-0005OB-7X
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 11:16:20 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 04:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="336865384"
Received: from rbaldyga-mobl2.ger.corp.intel.com (HELO vm.ger.corp.intel.com)
 ([10.249.130.185])
 by orsmga004.jf.intel.com with ESMTP; 13 Sep 2019 04:16:13 -0700
From: Robert Baldyga <robert.baldyga@intel.com>
To: kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] nvme: Add kernel API for admin command
Date: Fri, 13 Sep 2019 13:16:08 +0200
Message-Id: <20190913111610.9958-1-robert.baldyga@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_041619_319793_CA110EBD 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: michal.rakowski@intel.com, Robert Baldyga <robert.baldyga@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello,

This patchset adds two functions providing kernel to kernel API
for submiting NVMe admin commands. This is for use of NVMe-aware
block device drivers stacking on top of NVMe drives. An example of
such driver is Open CAS Linux [1] which uses NVMe extended LBA
formats and thus needs to issue commands like nvme_admin_identify.

[1] https://github.com/Open-CAS/open-cas-linux

Best regards,
Robert Baldyga

Michal Rakowski (1):
  nvme: add API for sending admin commands by bdev

Robert Baldyga (1):
  nvme: add API for getting nsid by bdev

 drivers/nvme/host/core.c | 37 +++++++++++++++++++++++++++++++++++++
 include/linux/nvme.h     |  5 +++++
 2 files changed, 42 insertions(+)

-- 
2.17.1

--------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek
przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by
others is strictly prohibited.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
