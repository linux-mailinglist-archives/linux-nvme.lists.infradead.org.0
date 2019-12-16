Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0C11210C6
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Dec 2019 18:07:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiR7bROIAznT0waWtgPeVz+eubPJYejaQ/edhnPkd/o=; b=e03rRlfdMlmUi/
	7d/Nb5ufZIIMmyZU41smcnKbt4Jlx4qyUVkWwLWt7oqNatYG6DMkYCeWaA1HfvXNgq2nmFzSi27nP
	VF3JFfl3CobSNueGCsgWxyPmvNd//d0YnccG4N5EsvZvKbSECGettFe4t6xCtGqAjRC8FGvakfVqI
	vSj///8gfsh7JU3O5RTUZJ/Nnf965JWwH6XWfIK3O9bYMzP0kbN4SiNy8EoH4sw7lA+iwUbUW2Qtq
	ZXExLXeXIVvgWPGLfQQiU1VNck4jiBN4/7Ny9TszR91zrzOEj30CcMgmEP+FxST68Uifw/vUv1yFK
	gWYpl4Sms4w0wNXT/sgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtpm-0003nv-0M; Mon, 16 Dec 2019 17:07:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtpg-0003n9-46
 for linux-nvme@lists.infradead.org; Mon, 16 Dec 2019 17:06:57 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4DE7206D3;
 Mon, 16 Dec 2019 17:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576516015;
 bh=Ojo/Jdlw08TzcO2Y4ThH8Sp2rhy987S3nmAQFp9/TrQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P+r1ft6x/I0hUuZc+unvCcDn4JR4f0eowbuIkX5+2Z30f/h9O9bKFXdc0cev/UxDk
 PSz/bFeeeYmp3ccK+YlLLlJJvZM5xOVHsTw9vbQSeRpnov2hTVVSMmwDAlnFwpzgnE
 gKZC5Pf6/Ke3+lfdhiMd5jGdhyYC5Qsfytn9mcuk=
Date: Tue, 17 Dec 2019 02:06:48 +0900
From: Keith Busch <kbusch@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: NVMe WARN with DEBUG_TEST_DRIVER_REMOVE
Message-ID: <20191216170648.GA12239@redsun51.ssa.fujisawa.hgst.com>
References: <9731baa8-e814-f7f7-7bb9-1e90d8df5d07@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9731baa8-e814-f7f7-7bb9-1e90d8df5d07@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_090656_186132_295377A7 
X-CRM114-Status: UNSURE (   9.56  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 04:53:28PM +0000, John Garry wrote:
> Hi guys,
> 
> JFYI, enabling CONFIG_DEBUG_TEST_DRIVER_REMOVE causes this WARN:
> 
> [   42.031103] nvme 0000:04:00.0: Adding to iommu group 2
> [   42.059408] nvme nvme0: pci function 0000:04:00.0
> [   42.180257] nvme nvme0: failed to mark controller CONNECTING
> [   42.185936] nvme nvme0: Removing after probe failure status: -16
> [   42.195654] nvme nvme1: pci function 0000:04:00.0
> [   42.201573] nvme 0000:81:00.0: Adding to iommu group 3
> [   42.230948] nvme nvme2: pci function 0000:81:00.0
> [   42.236165] ------------[ cut here ]------------
> [   42.240797] WARNING: CPU: 66 PID: 255 at drivers/nvme/host/pci.c:2539 nvme_reset_work+0x5f0/0x1e80

I think we can safely remove the WARN. The CONFIG option unbinds the
driver possibly before the driver's controller reset is invoked. This
is allowed to happen, so we shouldn't warn when it happens.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
