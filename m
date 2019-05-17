Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FE0215F3
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 11:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+6NupcQssgUQ+wthk9fA3ACcGdu4YDESXp6R7WbEtU=; b=Uw9zd0iQRBbNRn
	ZbQexd50nIBdjTd5hKFw2o/6PNeSREBYhXp2n+N1Chclh27cGDJmAk7nCPqObIJ+UDxRhZPhfKlAT
	IP+zuaYyrtGMHhfUBC5Ysrc0o/vb3HvtRi3nn9PowYTNxuVMRM8VwdTXI3BPsTxrDGD2SsF3NQXsa
	PPifBUQONGoyOboiyO4iJSS/8nOWFtwiIiN7fc13i4p2LTyq4m5zNs02/WaH36a4kGJ6xdnTXFPMi
	jK545wnbK/X5OP/cDmy+Le71libBFXes0uxXyI0odHoFjWN/T8m1C24N1/gjlvlsm07p8P1Fen2kW
	btzegGE94qblFMhJbftg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYr3-0001DW-M4; Fri, 17 May 2019 09:08:41 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYqy-0001Cx-Qh
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 09:08:38 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 33DC668B02; Fri, 17 May 2019 11:08:15 +0200 (CEST)
Date: Fri, 17 May 2019 11:08:14 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190517090814.GB15509@lst.de>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <20190516062528.GA29930@lst.de>
 <20190516142411.GC23333@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516142411.GC23333@localhost.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_020837_010508_4E943D21 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Rafael Wysocki <rafael@kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Kai Heng Feng <kai.heng.feng@canonical.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 08:24:11AM -0600, Keith Busch wrote:
> > I've still not heard an explanation of anyone why we need to disable
> > the HMB here. Even if there are states where we have to disable it
> > we need to restrict it to just those system power states where we have
> > to, as reclaiming and recreating the HMB is very costly for the device.
> 
> We're not really reclaiming the HMB here. We're just telling the
> controller to stop using it for a moment,

Well, at that point the device can't use it and has to reclaim that
memory internally, depending on how it is used.

> and we return it back to the
> device in the same condition it left it via NVME_HOST_MEM_RETURN. That
> should minimize bringup latency.

Assuming it can just suspend that usage, which might not always be true.

Because of that we should only disable the HMB if we have to.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
