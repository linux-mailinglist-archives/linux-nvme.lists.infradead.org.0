Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C1ED29F3
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 14:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1poYAFsCxgEnw90jhXatY3FcuJvxj79frjZpwAXh8e0=; b=XPlt5ov/WA+45r
	d8xWS/KuQ4EW6eztm1KLJxCIx3HldcjArtvglYJFYFq2rZCVNWJtsz23QUrOfm0BjdF8VgULHMW1q
	9EEwKHQK3k3F0SuSonIZIaFF/FhM2gpJtbzhPTZ4gRmADHilqFvUZpnR0ff+d97b3p7VwSBgq8IoM
	vj1lU6fmGN1cj5+cfEDI8Uz0uKxD3riFv97PUjEovSn86ylHN/qjLRgR/rB+ozPAKtCVxLGmjhXLI
	nkvl5a7ldQsxEScokg+JpDNlTCYUVJ2zUSZdPd7PWTM5hl1t50z9hztmMTjWEJgoAVZfORMRgxkvE
	fmghzPI1luO1Kj94P7Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIXrN-00058O-Uh; Thu, 10 Oct 2019 12:48:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIXrH-00057x-C3
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 12:47:56 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAE852067B;
 Thu, 10 Oct 2019 12:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570711675;
 bh=xH5hUmNUB5+dgxk0q2lFYYcSuqGDN9IgEL40mmPPtqs=;
 h=From:To:Cc:Subject:Date:From;
 b=p8FpxpMXf6WpshIuSefbjbBq2Je8uZRrp5b1fsP8Pr3WVWcNX4PMBPGtol4L3yG0j
 vzN5AdlKAi96Fv6ceLNiRMIS27shKnLFPnsJZ18T2IbPvoF99dQDkKhFU85xdRvVx3
 snkhwNUYMk4t1i3o7TEAFHU+nspOkJvgG0+0iOAQ=
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Subject: [PATCH 0/1] PCI/ASPM: Remove locking
Date: Thu, 10 Oct 2019 07:47:45 -0500
Message-Id: <20191010124746.2882-1-helgaas@kernel.org>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_054755_431859_5F36D519 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Bjorn Helgaas <bhelgaas@google.com>

In reference to this thread:
  https://lore.kernel.org/r/20191007223428.GA72605@google.com

This removes locking from pcie_aspm_enabled() because the reference count
held by the driver should provide all the locking we need.

Bjorn Helgaas (1):
  PCI/ASPM: Remove pcie_aspm_enabled() unnecessary locking

 drivers/pci/pcie/aspm.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

-- 
2.23.0.581.g78d2f28ef7-goog


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
