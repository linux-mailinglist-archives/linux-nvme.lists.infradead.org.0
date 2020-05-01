Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F404B1C1A25
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 17:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZHQzekCDx7hh7GJn+Z2Vmm/+9KO99T9RUTYJb9d7uqU=; b=uICnEiijP6hUN+
	iftoJScPzPiEr6b+jpEYZlepRzxdexFDKlNhAZe8r8lf/ibc4NqBbOHkm6jwFLYXAl+IF7n4h7CyJ
	Rbqea3XcvKviSasxagc22ED4DD1kT9Awi4RHlDneLOhE1rLWyZQNVWhz0RkJRMMB5RkTNy/lsi7VF
	mn921hYfO1/a1pS5l0XuJP8jHchcvU7Rc+5ip0ut1V/xX96DJ2ehKQDfqaHCxSWrwrivx5q9rkB2/
	pWhvXjt8FEFeb3vVKJzrKRBpLYQ9WFemg7X9VNWQMuDSReFOe1ldfkR3o0+BMwlm8uvEYpRCZ2mMj
	bMNXG0rMjoY8A+WZK0zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXzt-00023W-5L; Fri, 01 May 2020 15:54:41 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXzp-00022N-4K
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 15:54:38 +0000
IronPort-SDR: ZjhM3aS1/VdSBFbKCPUtP6M78cHcDtBun+SiS7v6/KBZZtNqGoRzF2BZOrW7nyIYoU9AxwbUGL
 TBPdg4AzjuDQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 08:54:35 -0700
IronPort-SDR: ey3oKxUh7DvV+cxKGq9JyUiYKFbCwpaYL95UuuRXFcJoBwhE9hBZEEDPGjeC0qBXP9iw/hIUVT
 8/cIZhRGK3TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="248577903"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga007.fm.intel.com with ESMTP; 01 May 2020 08:54:34 -0700
Received: from debox1-desk1.jf.intel.com (debox1-desk1.jf.intel.com
 [10.7.201.137])
 by linux.intel.com (Postfix) with ESMTP id 7BC2958062D;
 Fri,  1 May 2020 08:54:34 -0700 (PDT)
Message-ID: <4ef802c221ba879d87bc202487f0ac5f6b01e9f1.camel@linux.intel.com>
Subject: Re: [PATCH 0/2] Add support for StorageD3Enable _DSD property
From: "David E. Box" <david.e.box@linux.intel.com>
To: "hch@lst.de" <hch@lst.de>
Date: Fri, 01 May 2020 08:54:34 -0700
In-Reply-To: <20200501131259.GB6600@lst.de>
References: <20200428003214.3764-1-david.e.box@linux.intel.com>
 <20200428051312.GB17146@lst.de>
 <de052d30cc881ac67f9410b50b0760ee5bf9a623.camel@linux.intel.com>
 <20200428142247.GB5439@lst.de>
 <de2d78556fcb10f97364201256ac8f342a58eb75.camel@linux.intel.com>
 <296064bbcf702744bf603932c9d849307db2e5b7.camel@intel.com>
 <537edbfaa088a655eb22e7eba05075aa61d941be.camel@linux.intel.com>
 <20200501131259.GB6600@lst.de>
Organization: David E. Box
User-Agent: Evolution 3.34.3 (3.34.3-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_085437_220341_4925C466 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "Williams,
 Dan J" <dan.j.williams@intel.com>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 2020-05-01 at 15:12 +0200, hch@lst.de wrote:
> On Wed, Apr 29, 2020 at 09:11:13AM -0700, David E. Box wrote:
> > Not drop completely. This patch copied the code used to read _DSD
> > properties under PCI root ports. But I agree that such properties
> > should apply to all devices on those ports and unfortuntely that's
> > not
> > the case here. BIOS got it wrong. My thought in dropping this patch
> > is
> > to rewrite it to read the property directly from the nvme driver.
> > Not
> > the way it's typically done either but it would avoid a global
> > change
> > in the pci core while allowing us to deal with the firmware we
> > have.
> 
> I'd be happy to heave less of this crap in nvme actually.  But I'm
> really
> pissed this shit got out in the wild.  It wasn't clear from the mail
> that this is something already out there because the idiots coming up
> with it just went ahead with it.  Please just update the commit logs
> and implementation to clearly mark it as a workaround for buggys
> systems, which just happen to at least be nice enough to tell us that
> they are buggy as f^$k.

Sure.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
