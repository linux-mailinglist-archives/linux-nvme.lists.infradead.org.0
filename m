Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF801A70C
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 09:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyMuwE797nIJvf1/j4TC6ZILFxYayn5FpGW81ext4ho=; b=K4FDGtrT3jNmBH
	bZkl6nBAM1XRPqSlCKFccw3NF2ReWr7JLxWQWKKgtF5JgP+LW0A9Gzaa/gfiqPSwc43h0KOM6mBzu
	PdauzG8hyxbS+/gzJXlGH5KpRhatLd/+EEmkyUGtPhYm2eoa6sRzUUkCud/4EtI+V0120ZRclSEe3
	cnxV3cr4HCFN5i8HWU/JYIwt+OHGaLIZZcbUfOJm0RrsoUK10YvNlk92EApU7+28p9AJIL/KRScDa
	EIddGXYfp0z0IojX2jy8CQwrKAEAazRr1Sov1fhibXSTlZeBHFYQWt37yKwB2jCEqir1kb81kqzWE
	57s/QnZq4kdDerXJiGpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPMHS-0001Jr-TT; Sat, 11 May 2019 07:18:50 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPMHO-0001JZ-4X
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 07:18:47 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 2646668AFE; Sat, 11 May 2019 09:18:23 +0200 (CEST)
Date: Sat, 11 May 2019 09:18:22 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kenneth Heitke <kenneth.heitke@intel.com>
Subject: Re: [PATCH] nvme: add support for Verify command opcode
Message-ID: <20190511071822.GA14764@lst.de>
References: <20190511000406.5458-1-kenneth.heitke@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190511000406.5458-1-kenneth.heitke@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_001846_328904_B3CF8EC6 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: keith.busch@intel.com, axboe@fb.com, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 06:04:06PM -0600, Kenneth Heitke wrote:
> This allows the Verify command to be sent using the
> NVME_IOCTL_SUBMIT_IO ioctl.
> 
> Signed-off-by: Kenneth Heitke <kenneth.heitke@intel.com>

I think we've decided that NVME_IOCTL_SUBMIT_IO is deprecated and
everyone should be using NVME_IOCTL_IO_CMD instead.

Maybe we need to add an official deprecating warnings (probably
just a printk_once, maybe per process name?)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
