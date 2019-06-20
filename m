Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21284C6A8
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 07:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JpDZ/9+xmQAQHYlUWk9nZ7BcNnj4kRr53tx6OnIRcv8=; b=pRC8Gvn99v6f7V
	3UgupE9DfYPseliOIc9h5e+VJAdL8DhpzNAnFMewR7A0Q80+p85BhQHBjKCpSSWYjqzYtvQslnNw2
	d+pIphzyTpQh5jiVUcxbxRZiK3eX8HgOwFECNXZE7S6LmthKvPhJ1X6xA7kX2rrU38F7eJCzQx9N4
	OsE4PRGZga0nfDV3hJqpmZ7wOB/aQnPnUcV4qN5pvLlOWdydSAc+1yaNOnJRI88tPuhUAX9zpF7IT
	B9EP2MouB2RD/RLkXH71Uv5H7/5jA7SggHAINdZanNLstl6npB8mkaqfyV0Efd7IhdpOY7IWrQLz7
	5KwsnkZ/CAqCNx69w3AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdpOY-00014U-Cq; Thu, 20 Jun 2019 05:13:58 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdpOQ-00012f-23
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 05:13:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so961255pfp.7
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 22:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x1MMOnOq8RstNP2fbCqAXnUxGL8fsmmbBQmO9ouhYxU=;
 b=qqfZQy2CGsb+E8k+hNToCHi7yQ6EQT1ztzughkC4rZ7JZeS8tJxFUZHT3ESXaIYf13
 UgniZjFtJNzZzllYugZzh2J0jll+rA/UjsUDGIDBFBz1XOYdoNPZfDjGQ6ccVzACDhlQ
 fAgBwhr8ldmbQvxUiJ/rrucTy42SRYxvy1n88EHFjG+wsN2W22D5ydbGO4g9DGcZ77fL
 tjqLQZNiZYsxR6kCib/BqTVZDnEjWI/2GpCXzNLuUp0Rmmhp7P3nomG3qPiQ6UFFeWv3
 YIyCm6kvWIk9Yg/jt59IFnyxW6lTaGdJMA86sTL0qHAu5oVfqFIktUWro/775sloGPW5
 X71A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x1MMOnOq8RstNP2fbCqAXnUxGL8fsmmbBQmO9ouhYxU=;
 b=dJA9lHrfC80UOXTrfSKXJzBAppEnY6i7oZHUb0giP+Z1z6kbs5K8arc8Ui30hPwMRR
 xFdon1EZFFfQB3eNFOM6SocvamCJuwN3iUqXVf5M+vVbzLOopHiV9oyi0cKIR61E1pfv
 WnVppxNIJiyS0zPYTfF5W/N5rPotp0N2KMCwxDvfQzPaW05M/dymRC+U+4vSQj7EdyRu
 smn0WkVD7xO+jz0BKSA8PgXdDViFUqBeYqMBii9EfaMmhmsKDuw23WEs7ePHFBxN/Eaf
 0Yi5Tjjj+/wTm7NbWtkyCyLHzdv4ZXfGjMWBw5tC6uGhxbRn8bQh1lj+dlk21kdYpeip
 mObw==
X-Gm-Message-State: APjAAAUMb/FSDPaX1j2miovW2GpZtRZuFtj7KEEgQEH9biJHvbDqLclT
 f/rtqliRzFw1nHPhaozEubFZvg==
X-Google-Smtp-Source: APXvYqwG59rjA9LYxKGaWy2LiC6hk6P16QRV4jC29nrowDYTzI56hJhNq74kFL956eFcU6GzoYReIw==
X-Received: by 2002:a17:90a:216f:: with SMTP id
 a102mr1118147pje.29.1561007625289; 
 Wed, 19 Jun 2019 22:13:45 -0700 (PDT)
Received: from limbo.local (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.gmail.com with ESMTPSA id j2sm26383423pfn.135.2019.06.19.22.13.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 22:13:44 -0700 (PDT)
From: Daniel Drake <drake@endlessm.com>
To: axboe@kernel.dk,
	kbusch@kernel.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH v2 0/5] Support Intel AHCI remapped NVMe devices
Date: Thu, 20 Jun 2019 13:13:28 +0800
Message-Id: <20190620051333.2235-1-drake@endlessm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_221350_105852_E6173443 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-ide@vger.kernel.org,
 alex.williamson@redhat.com, hare@suse.de, bhelgaas@google.com,
 dan.j.williams@intel.com, linux@endlessm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Intel SATA AHCI controllers support a strange mode where NVMe devices
disappear from the PCI bus, and instead are remapped into AHCI PCI memory
space.

Many current and upcoming consumer products ship with the AHCI controller
in this "RAID" or "Intel RST Premium with Intel Optane System Acceleration"
mode by default. Without Linux support for this remapped mode,
the default out-of-the-box experience is that the NVMe storage device
is inaccessible (which in many cases is the only internal storage device).

In most cases, the SATA configuration can be changed in the BIOS menu to
"AHCI", resulting in the AHCI & NVMe devices appearing as separate
devices as you would ordinarily expect. Changing this configuration
is the recommendation for power users because there are several limitations
of the remapped mode (now documented in Kconfig help text).

However, it's also important to support the remapped mode given that
it is an increasingly common product default. We cannot expect ordinary
users of consumer PCs to find out about this situation and then
confidently go into the BIOS menu to change options.

This patch set implements support for the remapped mode.

v1 of these patches was originally posted by Dan Williams in 2016.
https://marc.info/?l=linux-ide&m=147709610621480&w=2
Since then:

 - Intel stopped developing these patches & hasn't been responding to
   my emails on this topic.

 - More register documentation appeared in
   https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/300-series-chipset-pch-datasheet-vol-2.pdf

 - I tried Christoph's suggestion of exposing the devices on a fake PCI bus,
   hence not requiring NVMe driver changes, but Bjorn Helgaas does not think
   it's the right approach and instead recommends the approach taken here.
   https://marc.info/?l=linux-pci&m=156034736822205&w=2

 - More consumer devices have appeared with this setting as the default,
   and with the decreasing cost of NVMe storage, it appears that a whole
   bunch more consumer PC products currently in development are going to
   ship in RAID/remapped mode, with only a single NVMe disk, which Linux
   will otherwise be unable to access by default.

 - We heard from hardware vendors that this Linux incompatibility is
   causing them to consider discontinuing Linux support on affected
   products. Changing the BIOS setting is too much of a logistics
   challenge.

 - I updated Dan's patches for current kernels. I added docs and references
   and incorporated the new register info. I incorporated feedback to push
   the recommendation that the user goes back to AHCI mode via the BIOS
   setting (in kernel logs and Kconfig help). And made some misc minor
   changes that I think are sensible.

 - I investigated MSI-X support. Can't quite get it working, but I'm hopeful
   that we can figure it out and add it later. With these patches shared
   I'll follow up with more details about that. With the focus on
   compatibility with default configuration of common consumer products,
   I'm hoping we could land an initial version without MSI support before
   tending to those complications.

Dan Williams (2):
  nvme: rename "pci" operations to "mmio"
  nvme: move common definitions to pci.h

Daniel Drake (3):
  ahci: Discover Intel remapped NVMe devices
  nvme: introduce nvme_dev_ops
  nvme: Intel AHCI remap support

 drivers/ata/Kconfig                  |  33 ++
 drivers/ata/ahci.c                   | 173 ++++++++--
 drivers/ata/ahci.h                   |  14 +
 drivers/nvme/host/Kconfig            |   3 +
 drivers/nvme/host/Makefile           |   3 +
 drivers/nvme/host/intel-ahci-remap.c | 185 ++++++++++
 drivers/nvme/host/pci.c              | 490 ++++++++++++++-------------
 drivers/nvme/host/pci.h              | 145 ++++++++
 include/linux/ahci-remap.h           | 140 +++++++-
 9 files changed, 922 insertions(+), 264 deletions(-)
 create mode 100644 drivers/nvme/host/intel-ahci-remap.c
 create mode 100644 drivers/nvme/host/pci.h

-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
