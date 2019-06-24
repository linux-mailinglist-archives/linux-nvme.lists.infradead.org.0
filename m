Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A67050205
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 08:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/K6GHJ1mvcl4UYiTfG+QImRxXK5e9dyYyqrcVHT2Fk=; b=my/PE1Dd1Y/BM7
	hVY5kL5RaBRaFxbV+csRkd9c3wmqOQZXo0J6eKJEpL54oppfdknaUJ2yLoWznP4WXXl0/D+sInO1D
	00VcDTOmF7kLxERq5FlJjORLbGg2haE3sZsV2GA0Xm8/Z8sJPYsyDYX+ULcdRfNDEeBl2tyLwr27P
	mZvnhUjG8ks1CaAj0ebgQBQvv9T28Q/bIqV0sfIUMWb77zbtgggbGB4kS5N8uaFgB5/8A1KP/4Ued
	hTNkykQL8n9eAjujMgISvRf0EmZ18CWy2nHmejYiHldy9gJ/rVdsnYZd64i2F+uw9H2igX/MINo5D
	JkP9pPVsqYx1dL0DaJtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfIHo-00015k-Ga; Mon, 24 Jun 2019 06:17:04 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfIHf-00013x-2G
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 06:16:56 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id A185E68AFE; Mon, 24 Jun 2019 08:16:17 +0200 (CEST)
Date: Mon, 24 Jun 2019 08:16:17 +0200
From: Christoph Hellwig <hch@lst.de>
To: Daniel Drake <drake@endlessm.com>
Subject: Re: [PATCH v2 2/5] nvme: rename "pci" operations to "mmio"
Message-ID: <20190624061617.GA2848@lst.de>
References: <20190620051333.2235-1-drake@endlessm.com>
 <20190620051333.2235-3-drake@endlessm.com> <20190620061038.GA20564@lst.de>
 <CAD8Lp45ua=L+ixO+du=Njhy+dxjWobWA+V1i+Y2p6faeyt1FBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD8Lp45ua=L+ixO+du=Njhy+dxjWobWA+V1i+Y2p6faeyt1FBQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_231655_264349_E3B9C59F 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

On Thu, Jun 20, 2019 at 04:11:26PM +0800, Daniel Drake wrote:
> On Thu, Jun 20, 2019 at 2:11 PM Christoph Hellwig <hch@lst.de> wrote:
> > The Linux NVMe driver will deal with NVMe as specified plus whatever
> > minor tweaks we'll need for small bugs.  Hiding it behind an AHCI
> > device is completely out of scope and will not be accepted.
> 
> Do you have any new suggestions for alternative ways we can implement
> support for this storage configuration?

IFF we want to support it it has to be done at the PCIe layer.  But
even that will require actual documentation and support from Intel.

If Intel still believes this scheme is their magic secret to control
the NVMe market and give themselves and unfair advantage over their
competitors there is not much we can do.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
