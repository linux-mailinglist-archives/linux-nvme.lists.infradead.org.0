Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C91E594C1
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 09:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDEvtjIJVOtE/Mr3k3/3zpzNXP2fg34N5+6XoAYP3/I=; b=CZm1lJA2jOMoYU
	C1nkeU6AK8orLtYFloEA0EKANw0PXxeXskA2ExkhJWhLpNTZ76w6aeWVpF+PD34BbKInISG7wHIfE
	UVyKWzEA6I5I4/D+gsfBEr+3nakDL7eyoIzrvN556OrIuBD2XsQtQLD28SjwNLvSTPFf/RvxNWbXw
	6ecWpok1DBUuePGdFsWYrdeCC5DjzRPo4H2kEm+Q2ktJBb0L4L5HIM7XO2MQx3s9w/ITl/l1UDr6N
	stXCkQWftaOGQzTtPpml2VuNTnej3n5XApKjomwBXLZZRTo9JSUbLZhfG9x5FwdSg9yKkCnK8Cxko
	wIvmRpnwhcYDrl4013Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglEF-0008GT-EY; Fri, 28 Jun 2019 07:23:27 +0000
Received: from [213.95.11.210] (helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglE2-0008Fs-MJ
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 07:23:15 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id A014E68CFE; Fri, 28 Jun 2019 09:23:10 +0200 (CEST)
Date: Fri, 28 Jun 2019 09:23:10 +0200
From: Christoph Hellwig <hch@lst.de>
To: Daniel Drake <drake@endlessm.com>
Subject: Re: [PATCH v2 2/5] nvme: rename "pci" operations to "mmio"
Message-ID: <20190628072310.GA28896@lst.de>
References: <20190620051333.2235-1-drake@endlessm.com>
 <20190620051333.2235-3-drake@endlessm.com> <20190620061038.GA20564@lst.de>
 <CAD8Lp45ua=L+ixO+du=Njhy+dxjWobWA+V1i+Y2p6faeyt1FBQ@mail.gmail.com>
 <20190624061617.GA2848@lst.de>
 <CAD8Lp464B0dOd+ayF_AK4DRzHEpiaSbUOXjVJ5bq5zMXq=BBKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD8Lp464B0dOd+ayF_AK4DRzHEpiaSbUOXjVJ5bq5zMXq=BBKQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_002314_895495_F6911443 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-ide@vger.kernel.org, Linux PCI <linux-pci@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Alex Williamson <alex.williamson@redhat.com>, Hannes Reinecke <hare@suse.de>,
 Keith Busch <kbusch@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Linux Upstreaming Team <linux@endlessm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:51:28AM +0800, Daniel Drake wrote:
> Bearing in mind that we've already been told that the NVMe device
> config space is inaccessible, and the new docs show exactly how the
> BIOS enforces such inaccessibility during early boot, the remaining
> points you mentioned recently were:

If we can't access the config space we unfortunately can't support
this scheme at all, as it invalidates all our quirks handling.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
