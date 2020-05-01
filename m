Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9E61C12AD
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 15:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBt0zzKFt5C1uk7AdTiH91xRSoxz1aglIr64lkEH3/k=; b=St3Gu9LzzSo3Pk
	tlqV3HwqNZwCx4ti53SQKdTPia1cYlCc41AcIYUGefkqv/Hs72m7ug/K8U1Eb2Mz48VcpdpUzN+04
	+A8xDrjIm2plWRgRmH//aVe3kH+jDgR6yl1IKsMSUX6PDS4VTwsiOsLXXUC6VPr1uHqTgDDj5OZqN
	13aTP/T5Ac2hb8tKYYkWAGWM6DvKL87X7cGVIjcM80NPFNjuwZUjLIXVWQ4I2OqQG4H2j+bFu+G7K
	kqsqnGCHx4RqEOMiVoN68T7YqPnBoex6Bo/MWwHXZy/KSpCEzvyLF5Kbtz4luaN+4E/x9huCptJri
	ZB/VflVJVgWPKLDLYF0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVTZ-0001xB-2i; Fri, 01 May 2020 13:13:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVTS-0001wO-U3
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 13:13:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E2AC168BFE; Fri,  1 May 2020 15:12:59 +0200 (CEST)
Date: Fri, 1 May 2020 15:12:59 +0200
From: "hch@lst.de" <hch@lst.de>
To: "David E. Box" <david.e.box@linux.intel.com>
Subject: Re: [PATCH 0/2] Add support for StorageD3Enable _DSD property
Message-ID: <20200501131259.GB6600@lst.de>
References: <20200428003214.3764-1-david.e.box@linux.intel.com>
 <20200428051312.GB17146@lst.de>
 <de052d30cc881ac67f9410b50b0760ee5bf9a623.camel@linux.intel.com>
 <20200428142247.GB5439@lst.de>
 <de2d78556fcb10f97364201256ac8f342a58eb75.camel@linux.intel.com>
 <296064bbcf702744bf603932c9d849307db2e5b7.camel@intel.com>
 <537edbfaa088a655eb22e7eba05075aa61d941be.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <537edbfaa088a655eb22e7eba05075aa61d941be.camel@linux.intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_061303_116929_916F8F55 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "Williams,
 Dan J" <dan.j.williams@intel.com>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "hch@lst.de" <hch@lst.de>, "lenb@kernel.org" <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 09:11:13AM -0700, David E. Box wrote:
> Not drop completely. This patch copied the code used to read _DSD
> properties under PCI root ports. But I agree that such properties
> should apply to all devices on those ports and unfortuntely that's not
> the case here. BIOS got it wrong. My thought in dropping this patch is
> to rewrite it to read the property directly from the nvme driver. Not
> the way it's typically done either but it would avoid a global change
> in the pci core while allowing us to deal with the firmware we have.

I'd be happy to heave less of this crap in nvme actually.  But I'm really
pissed this shit got out in the wild.  It wasn't clear from the mail
that this is something already out there because the idiots coming up
with it just went ahead with it.  Please just update the commit logs
and implementation to clearly mark it as a workaround for buggys
systems, which just happen to at least be nice enough to tell us that
they are buggy as f^$k.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
