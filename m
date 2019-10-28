Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D388E6DD4
	for <lists+linux-nvme@lfdr.de>; Mon, 28 Oct 2019 09:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuyCULUrMQjpPA7qwPZE+h3XwMx7XVgStbG+PQelTtY=; b=m2t8Zd6qbEg7g2
	R9orFHFVHavWZaX3AVObOQzket/BNFdMil+eyh1cV0nHomayGXmPGN09pHxl7KvFjTl8P0OYMb2BV
	/EMgW01ZlnrApOIz0K8j8FUegOCA5nN5Z+1B5iKTQe3rj4dDk8hWeUogWZ9GfRoaAmJewAnYG6Rtz
	O1cykukycrAivdNvg9FLARP6X5IRUXFDq/svLPyOwQp8uMWdmQXW4RRrDU5EosG4bHjo5zis3Y0i+
	nELZFNQaVnogBVF5X6nuyMwNsfCjcCA1Lu1ZenOu9scO14PD+opuYw8GVXkoxF2LjzrqxL78fJpUL
	llIiGRxVQl+LPGbj7u3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP05L-0001on-Ed; Mon, 28 Oct 2019 08:09:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP05G-0001oQ-Fw
 for linux-nvme@lists.infradead.org; Mon, 28 Oct 2019 08:09:03 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8E6420862;
 Mon, 28 Oct 2019 08:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572250142;
 bh=LlIrMK4H2FX/ElMC68HUSkCIrf+CSFBsfV3lLy7IFU0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Av5WlIuLfRNpYN3ggTKCRP4vYawnYNrgiql5lhXdg1WySpujaEZZLe9BpOfSo77At
 GPrn1l9cU48yGmVXsDDvJDiTTLZw7QCJB2pMVK76phI2d4o8hKTSDJQ8+MnxJht0BE
 rUTHrMIrZGxTCfo5USWWJoUNSp4t7LKXdoIdkXIc=
Date: Mon, 28 Oct 2019 17:08:58 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme: Add hardware monitoring support
Message-ID: <20191028080858.GB1718@redsun51.ssa.fujisawa.hgst.com>
References: <20191028024156.23964-1-linux@roeck-us.net>
 <20191028073953.GA20443@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028073953.GA20443@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_010902_552876_3C698DB7 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Chris Healy <Chris.Healy@zii.aero>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 08:39:53AM +0100, Christoph Hellwig wrote:
> On Sun, Oct 27, 2019 at 07:41:56PM -0700, Guenter Roeck wrote:
> > nvme devices report temperature information in the controller information
> > (for limits) and in the smart log. Currently, the only means to retrieve
> > this information is the nvme command line interface, which requires
> > super-user privileges.
> > 
> > At the same time, it would be desirable to use NVME temperature information
> > for thermal control.
> > 
> > This patch adds support to read NVME temperatures from the kernel using the
> > hwmon API and adds temperature zones for NVME drives. The thermal subsystem
> > can use this information to set thermal policies, and userspace can access
> > it using libsensors and/or the "sensors" command.
> 
> So these reported values seem to generate some interest.  Adding Akinobu
> Mita who also planned to wire them up to the thermal framework.  I don't
> really know either upper layer so I'm not sure which is the right one,
> but with this just like with the previous series I am quite worried that
> we add a lot of kernel boilerplate code for information people can
> trivially get using nvme-cli.

I think it's nvme-cli requires root, where this conveniently doesn't
need those elevated rights.

I'm not familiar with either upper level framework either; my only review
comment for this patch is to use devm_kfree() for the error cases.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
