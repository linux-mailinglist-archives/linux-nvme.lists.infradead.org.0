Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69B49029B
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 15:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+eEKz2JUNJfoiWgSHnwDOeNoCSSon/MZaLxMMN71WKM=; b=tbOn6sxnU0ZK2d
	Y0IuYLnr2mU0jyTdVi3PoMJ8m/spNyUS8Va4rStbDkqdVLXSn7e3aAuTPyFl6m4Qrtby/rZBCQHWF
	JC8f/DvV9oLDNnZHMJHs0lzcz/bHNatxKO+UNLc7Wv4DMuzj39NA0aV4teznjbIibHwgVfBwb4WwR
	Qw9dVYC9TNyTt7BT+bRavD0CuGEUcNXxwmd00D1qRYbzAbzW9fED5nTNZFMoR9AecJYId9RQoIKim
	FnMlcSy2/T8KXaNir2g4qGaSskBATXz6fJl6kM0lp4QfWbTULZG4aiNkKRzq9mxgpy9ASiCg9t8B/
	7G5J0ktajgNPjq3GtCyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyc1E-00054o-0V; Fri, 16 Aug 2019 13:11:48 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyc16-00054B-OI
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 13:11:41 +0000
Received: by mail-ot1-f66.google.com with SMTP id j7so9517468ota.9
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 06:11:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=lWcyAmV1Uxrxcs0AfEFdOQKYxj1U/I3IYlhoxoBaFv4=;
 b=ns+t28JRIZm6N9rFbfYPiKT+6pBrZkDviMJ+SdCBcm1+i695PteW+dRdEDJkqaIZHT
 NmPctcfFmfPfkMc6mjBe1CWWMY7SYwvWo7UZA/6t4caOoka0C2jYcESrPwRMszDUt8jl
 WTnGLAAiCu9PN6hEIIsdVtdPKm8zm9QvsuEP09yoJ7qL2M5RYKZZXeryiZoaRfEDnNlJ
 jmPow3k2jSYco2jfIP3rVCAG0zUy1NWxlLiVn94yJhQU2H0Ti6fKqbDj2YQScqeQ3NaW
 uZ90ZsyeyAn1Ml2RaTOQtaCvGOeGCFJ53/yf0o9QXRQ7NJmGEvgvd3Zya0fVnInUS4Zi
 VLbg==
X-Gm-Message-State: APjAAAXuuroVAF8l6+4ofgrRHINJi/hK2ct/qEFCr6Db8rgucGfgJl1X
 HkA9+tMeKp6O/TgitIKbgO1klW/IIkOZCDpYKULNgTFv
X-Google-Smtp-Source: APXvYqxP4hYrPfDsQFlbREk8hpApTYfpZUfHTFRUvPveFErL5wlerojyl24HOL2KJd1oY7iD0OgXXobaKRQhNdUEC84=
X-Received: by 2002:a9d:674c:: with SMTP id w12mr4311320otm.118.1565961098308; 
 Fri, 16 Aug 2019 06:11:38 -0700 (PDT)
MIME-Version: 1.0
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 16 Aug 2019 15:11:27 +0200
Message-ID: <CAJZ5v0j4ezEuK1dk0J3wwjSuudzjhKWTXzJL=EkE1QG39HKRiw@mail.gmail.com>
Subject: [GIT PULL] Power management fixes for v5.3-rc5
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_061140_790761_F86BEA80 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.0 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Linux PCI <linux-pci@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Linux PM <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Linus,

Please pull from the tag

 git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git \
 pm-5.3-rc5

with top-most commit a3ee2477c45f73184a64d9c6cf97855a52732dc6

 Merge branch 'pm-cpufreq'

on top of commit d45331b00ddb179e291766617259261c112db872

 Linux 5.3-rc4

to receive power management fixes for 5.3-rc5.

These add a check to avoid recent suspend-to-idle power regression on
systems with NVMe drives where the PCIe ASPM policy is "performance"
(or when the kernel is built without ASPM support), fix an issue
related to frequency limits in the schedutil cpufreq governor and fix a
mistake related to the PM QoS usage in the cpufreq core introduced
recently.

Specifics:

 - Disable NVMe power optimization related to suspend-to-idle added
   recently on systems where PCIe ASPM is not able to put PCIe links
   into low-power states to prevent excess power from being drawn by
   the system while suspended (Rafael Wysocki).

 - Make the schedutil cpufreq governor handle frequency limits changes
   properly in all cases (Viresh Kumar).

 - Prevent the cpufreq core from treating positive values returned
   by dev_pm_qos_update_request() as errors (Viresh Kumar).

Thanks!


---------------

Rafael J. Wysocki (2):
      PCI/ASPM: Add pcie_aspm_enabled()
      nvme-pci: Allow PCI bus-level PM to be used if ASPM is disabled

Viresh Kumar (2):
      cpufreq: dev_pm_qos_update_request() can return 1 on success
      cpufreq: schedutil: Don't skip freq update when limits change

---------------

 drivers/cpufreq/cpufreq.c        |  2 +-
 drivers/nvme/host/pci.c          | 13 ++++++++++---
 drivers/pci/pcie/aspm.c          | 20 ++++++++++++++++++++
 include/linux/pci.h              |  2 ++
 kernel/sched/cpufreq_schedutil.c | 14 ++++++++++----
 5 files changed, 43 insertions(+), 8 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
