Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC7486B09
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eJRub+j45YWsFbAVZNQdaJimC1BPODvSN960sRRlb0=; b=QD8iLT9mvbr/00
	IB2eYz3749c6EDipgkMJ+NEiMXV6pGmxUMbOjdnD1dH9x5fz/kdzrRoKSEpzjRo82/Khh8l+Rddvj
	3OIfuHGOrD8LKUjJ2Z1nKowEyPYvdUREUVho91Q11GSC2aPAmfLXLqc95j91JJ/FAAtFqRaU2RRfz
	DNSHmiDe7ZcXnWkVHwMO2hbUC5qEGEACCVwLu5xXFH03AO+7B4bXBNqBNAcBlKJw4tSzUsg4+5+u4
	fNVNEnTKpXlCZq02taOMlgoOoe+vzr3sELQjd7etj4OXD/tW7fN3pAI13eQ8HCffVwsYie2cQOPcL
	UQbE8fvaUqxDLJfaR6TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvodk-0000WX-V3; Thu, 08 Aug 2019 20:04:00 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvodf-0000Vn-Ed
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 20:03:56 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 13:03:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="165801725"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 08 Aug 2019 13:03:53 -0700
Date: Thu, 8 Aug 2019 14:01:28 -0600
From: Keith Busch <kbusch@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v2 2/2] nvme-pci: Allow PCI bus-level PM to be used if
 ASPM is disabled
Message-ID: <20190808200128.GC27077@localhost.localdomain>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain>
 <1921165.pTveHRX1Co@kreacher> <1870928.r7tBYyfqdz@kreacher>
 <20190808134356.GF151852@google.com>
 <CAJZ5v0h=nz8yXwOOGBUB9m1GtJPOqBwtNK7zXPNMJjzPhMWd9w@mail.gmail.com>
 <20190808183954.GG151852@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808183954.GG151852@google.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_130355_534442_44ACF7F0 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PCI <linux-pci@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 01:39:54PM -0500, Bjorn Helgaas wrote:
> On Thu, Aug 08, 2019 at 04:47:45PM +0200, Rafael J. Wysocki wrote:
> > On Thu, Aug 8, 2019 at 3:43 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > 
> > > IIUC the NVMe device will go to the desired package idle state if
> > > the link is in L0s or L1, but not if the link is in L0.  I don't
> > > understand that connection; AFAIK that would be something outside
> > > the scope of the PCIe spec.
> > 
> > Yes, it is outside of the PCIe spec.
> > 
> > No, this is not about the NVMe device, it is about the Intel SoC
> > (System-on-a-Chip) the platform is based on.
> 
> Ah.  So this problem could occur with any device, not just NVMe?  If
> so, how do you address that?  Obviously you don't want to patch all
> drivers this way.

We discovered this when using an NVMe protocol specific power setting, so
that part is driver specific. We just have to ensure device generic
dependencies are met in order to achieve the our power target. So in
that sense, I think you would need to patch all drivers if they're also
using protocol specific settings incorrectly.

Granted, the NVMe specification doesn't detail what PCIe settings may
prevent NVMe power management from hitting the objective, but I think
ASPM enabled makes sense.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
