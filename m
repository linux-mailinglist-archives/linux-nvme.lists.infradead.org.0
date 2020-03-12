Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D07182FDC
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Mar 2020 13:06:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Ynln4S7q2eJ3rgtqAAeTNLOISb97J8dd7CMDjnkxmA=; b=qRO9Cpolq+P1yZ
	gfzG2xjPaplUX59nwp8oO5+IsX0kkgeIieFZrGaZ/moasX1+Uh+WUQJQjzmxqkT1tHwdWyi9OWXdb
	EtLvBrQjmo1/Nc5k0uQ1ARCmugQaZCGvmAFh9Y4zGOey+n3EdxqATgwL7B1W5WMwr4An/1nFSfIr+
	nvMAlaKU20Gr9ilmIpIriZHbeV1XcsS1ERcsxs/YqTJ1Rs7S3ax/XS/7XIZNZGlfDFnkuG5o7zKax
	2SXt8vzg/uSAnAhDkWAU7ZseuAdu1xEoSOKJDvwifHCIvrJrUjQge01oX6bEc1sNGAouT1YewzUH6
	Cz6B/yvkTCHamoTVRmfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCMbL-0006vo-FL; Thu, 12 Mar 2020 12:06:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMbG-0006v5-D6
 for linux-nvme@lists.infradead.org; Thu, 12 Mar 2020 12:06:07 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A0E7B206E7;
 Thu, 12 Mar 2020 12:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584014766;
 bh=y6Uol7v9TnlizNaNwTm5w9ARGHzQUkg/KMuRdqYvVWA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F65gGMYTun0gi5WQ6vw3ONma6WiZkRvas4h/BRGxndNjnDwJ8on9wim/+w36u1P1/
 Xm9TCcdquWWx8oTIcQ7xlcA37KAAewzf1f24M281/z/guA/YvqoR0nsGsaIaZUUMBC
 tLFMBAZm0RJhzelO466ogAOqiwgXQdvm4qMQuXto=
Date: Thu, 12 Mar 2020 13:06:03 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1] asm-generic: Provide generic
 {get,put}_unaligned_{l,b}e24()
Message-ID: <20200312120603.GA257875@kroah.com>
References: <20200312113941.81162-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312113941.81162-1-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_050606_461320_6CC083EF 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Felipe Balbi <balbi@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, linux-usb@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Arnd Bergmann <arnd@arndb.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Keith Busch <kbusch@kernel.org>, linux-scsi@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 01:39:41PM +0200, Andy Shevchenko wrote:
> There are users in kernel that duplicate {get,put}_unaligned_{l,b}e24()
> implementation. Provide generic helpers once for all.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/nvme/host/rdma.c                     |  8 -------
>  drivers/nvme/target/rdma.c                   |  6 -----
>  drivers/usb/gadget/function/storage_common.h |  5 ----

For usb:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
