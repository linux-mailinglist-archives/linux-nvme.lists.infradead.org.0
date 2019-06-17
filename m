Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D3548868
	for <lists+linux-nvme@lfdr.de>; Mon, 17 Jun 2019 18:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XB6XTsXRiozJTNwZ9XvnpmiTRmkx996HDCOdj9rK27o=; b=eOv9yiI2Sm8Am2
	HZQW0yhtifBnEuVXajn2eJnmmG1CCiUGRQNllkxr4cnoS1/oM548egn0xM5+2ViwxP+t5U1G8KCKX
	i6jGNbH2GUbCwCCTInsurJvWvOeqEA+hryVpvZRY5ZegUHjAe9Biup2QMirLb5MH7btkBdt77w+JZ
	ZAoqTIvqA2Bw2jM0aCOPxObInQC8ltm/uFitcOljLJX3F024uhfpP5p+w84opWggyO5byFXEQFo4F
	/1ULgpZZMzRH5lNabwaN+YhztCKucCVHr7ZJFsci7TnCGeEmAxKu6EwLbwz0Pp2hu/Ft/4qy/j7ld
	eYiqkHQpsYeJsNPnPpfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuFN-0001xC-It; Mon, 17 Jun 2019 16:12:41 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuFC-0001wU-4f
 for linux-nvme@lists.infradead.org; Mon, 17 Jun 2019 16:12:31 +0000
Received: by mail-pg1-f194.google.com with SMTP id f21so6092908pgi.3
 for <linux-nvme@lists.infradead.org>; Mon, 17 Jun 2019 09:12:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zy8KTGg2siys/De7QYroeEPBZbAH+1xj1xTfHDGKZkc=;
 b=NOKyxoXojqZrVKbl5GxCD2qkOIRG2gpuel5CUNetWe8AyXRJBYoJseLbl8Wa/QYeOg
 6LgX///GZhX4KkukolhvwpmTU+MF0BvNXEaiL+1Lqindx6pkeF+Y9op2d0r6UoBeECIu
 JmMfAub9YGxFKLBp4J5AqfG+T0TxHNgEcjxk98xfx+kexiRYqS15Pq3EpohyFrQK3GnA
 iYXvLgKhOdML8LtxtVXUhqVy24XiCeu1IA8eGL9zBQRiKjXAn+XnS5jL6m91sZqhnuyy
 Ve+K8RESV3DXOwOkVGx+HhX2cGEnV6RiOnxFGgOZp3Wsztcjkz5RmpO17zhU52qGosI4
 sMEQ==
X-Gm-Message-State: APjAAAUF//jXE7HQfQnCJjbqT1+jduPLg9GWsFc0ZNL79L3Hr1vIiE9T
 1Z4cYikk+RFXaBPnX4ZRjzw=
X-Google-Smtp-Source: APXvYqw5bdj7Vwlt1SNrkemzNLPkLOzmW67vw5z+nOLsI0fQvx1YY44qzOu6zgBTX+2lxDIVqjaGXw==
X-Received: by 2002:a17:90a:8a15:: with SMTP id
 w21mr27040116pjn.134.1560787948657; 
 Mon, 17 Jun 2019 09:12:28 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id y19sm11416069pfe.150.2019.06.17.09.12.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 09:12:27 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v3 0/3] NVMe 1.4 Identify Namespace Support
Date: Mon, 17 Jun 2019 09:12:19 -0700
Message-Id: <20190617161222.253849-1-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_091230_179667_2630EE34 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Christoph,

This patch series adds support for several of the new parameters introduced
in the NVMe 1.4 Identify Namespace command. Please consider these patches
for kernel version 5.3.

Thanks,

Bart.

Changes compared to v2:
- In the initiator, use AWUPF instead NAWUPF if NAWUPF == 0.

Changes compared to v1:
- Added a patch for the NVMe target code that exports these parameters.
- Limited the physical block size to the value of AWUPF/NAWUPF as appropriate.

Bart Van Assche (3):
  nvme: Introduce NVMe 1.4 Identify Namespace fields in struct
    nvme_id_ns
  nvmet: Export NVMe namespace attributes
  nvme: Set physical block size and optimal I/O size according to NVMe
    1.4

 drivers/nvme/host/core.c          | 30 +++++++++++++++++++--
 drivers/nvme/host/nvme.h          |  1 +
 drivers/nvme/target/admin-cmd.c   |  5 ++++
 drivers/nvme/target/io-cmd-bdev.c | 45 +++++++++++++++++++++++++++++++
 drivers/nvme/target/io-cmd-file.c | 37 +++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h       |  2 ++
 include/linux/nvme.h              | 12 ++++++---
 7 files changed, 127 insertions(+), 5 deletions(-)

-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
