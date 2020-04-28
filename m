Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0F01BC0BA
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 16:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YG28P1rr6lC3DgOUF13IN3d9qNsbTZQiNrecxawP04=; b=CllUXUCnuQ0G7k
	umbiV5mNg9eAVLG6wwzEa55zoVDxkvu+waRWS5m44/BtuGAK/8yVQ/XUBwdWbu63QBM8SkvgXYuhT
	XELeKBT8MrTMW8iqfs1WC9Hn31yiJkUfo+O6kygGtRcy7Vc+B2v8jveqx4nlDf/ZOqvy4MK08CtTe
	6hb8QH/FNLLFTKYNRYT8EghLhAzd/v80Pl/PyBfXYtgKO0BeHA1JWhqlcRm74x10pKTN6lTYbmEKA
	qenUoY7NVc2OiEmmmTu8FPRCfWnw7hmVYwpykmCDOuQ05o9//S4bxjkKxhHjHgqk3X9N2JjFI2smC
	0LoRDRSDR0EYSclxwxBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQw6-0002j5-GH; Tue, 28 Apr 2020 14:10:10 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQvx-0002Nv-1H
 for linux-nvme@lists.infradead.org; Tue, 28 Apr 2020 14:10:02 +0000
IronPort-SDR: 2JjBMR1PHMW41JcSvVAAbmrDR+aAIur0MF4qeQQzNwsVOK16o9pPmQdm35hvJLJhELZyahOgAp
 MrgN9Wc7AEFg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 07:10:00 -0700
IronPort-SDR: Mm9J+5XFNoyA68jB0F0HKKpD1YU7fQMOY9LqQIoJEGkYRAY5YaN7vXK//ElU6ngpEs2/VLIDk9
 vVCiz+6MyA+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="247720032"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga007.fm.intel.com with ESMTP; 28 Apr 2020 07:09:59 -0700
Received: from debox1-desk1.jf.intel.com (debox1-desk1.jf.intel.com
 [10.7.201.137])
 by linux.intel.com (Postfix) with ESMTP id 0B6675802C8;
 Tue, 28 Apr 2020 07:10:00 -0700 (PDT)
Message-ID: <de052d30cc881ac67f9410b50b0760ee5bf9a623.camel@linux.intel.com>
Subject: Re: [PATCH 0/2] Add support for StorageD3Enable _DSD property
From: "David E. Box" <david.e.box@linux.intel.com>
To: Christoph Hellwig <hch@lst.de>
Date: Tue, 28 Apr 2020 07:09:59 -0700
In-Reply-To: <20200428051312.GB17146@lst.de>
References: <20200428003214.3764-1-david.e.box@linux.intel.com>
 <20200428051312.GB17146@lst.de>
Organization: David E. Box
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_071001_125717_CB9E8CB5 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Reply-To: david.e.box@linux.intel.com
Cc: sagi@grimberg.me, linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org,
 bhelgaas@google.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2020-04-28 at 07:13 +0200, Christoph Hellwig wrote:
> On Mon, Apr 27, 2020 at 05:32:12PM -0700, David E. Box wrote:
> > NVMe storage power management during suspend-to-idle, particularly
> > on
> > laptops, has been inconsistent with some devices working with D3
> > while
> > others must rely on NVMe APST in order for power savings to be
> > realized.
> > Currently the default is to use APST unless quirked to do
> > otherwise.
> > However newer platforms, like Intel Comet Lake systems, may require
> > NVMe
> > drives to use D3 in order for the PCIe ports to be properly power
> > managed.
> > To make it easier for drivers to choose, these platforms may supply
> > a
> > special "StorageD3Enable" _DSD property under the root port that
> > the device
> > is attached to. If supplied, the driver must use D3 in order for
> > the
> > platform to realize the deepest power savings in suspend-to-idle.
> >     
> > The first patch adds the new _DSD GUID and fowards the property
> > through the
> > pci/acpi layer to the pci device.
> > 
> > The second patch adds support for the property to the nvme driver.
> 
> I'm not sure who came up with the idea to put this into ACPI, but it
> belongs into NVMe.  Please talk to the NVMe technical working group
> instead of trying to overrules them in an unrelated group that
> doesn't
> apply to all of PCIe.

Agreed that this is not ideal since it does not apply to all of PCIe.
But as the property already exists on shipping systems, we need to be
able to read it in the NVMe driver and the patch is consitent with the
way properties under PCI ports are read.

David


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
