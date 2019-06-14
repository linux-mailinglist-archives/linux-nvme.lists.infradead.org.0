Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62E346896
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Jun 2019 22:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkH6/2vMXNGXdL9y45DEpxtpw4v8Z6PqLCW9tvWVCDM=; b=HqD7aM5WBUVNyT
	1mhMhiq77Nv2s3ZqddoxFmelZrsHRZF5EB3WvxWZyrxZitN5nha02pSMVCiZzXGt/6Ch2cGpfMh68
	J/sua+GiaAH/PgU66RxbRqWy+NaMOz4mpvym2lpk0hHS1aBuVq/lK+yod6xtUB61sLP3bRSTnCSSf
	zPj5qmOfN7LneQatndp9Z8XSrG29U7Rb9nG+p0x4iGobirAdZQAe/25uFUqCNH/4r3Vdf3LEeBP3F
	pQBEVi1cTJTaNqqbcpXIm2SZ/H/Aea2O/LQhuLmPTRnZQ1atX5OzOaGu8eo/1zIPp1X5MjoHhgLG6
	txuSTzthHHVROMWtyv5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsSc-0006De-Nu; Fri, 14 Jun 2019 20:06:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsSX-0006Cq-Kf
 for linux-nvme@lists.infradead.org; Fri, 14 Jun 2019 20:06:02 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DE252173C;
 Fri, 14 Jun 2019 20:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560542761;
 bh=6AW++I2KeuWsGHSu6JA6vMiNYLcuVsi2K4GLEIO/3+s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G7iDYR2wO+22rp7C4sRG3HKb8Yvppfd8jh3xhLjUwkILhQmDU7qp3vOaNq41vX2Cp
 4HVkTcnrDTNvvKawNN0V8EVYyXUqmMlx69rFLzuFgXyt1UMU8XGAezwPv22BvU1/0F
 cISsK9vDvwkmVLoQUzYeqmJDwceOSnNJu0aIb5j0=
Date: Fri, 14 Jun 2019 15:05:57 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Keith Busch <keith.busch@gmail.com>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
Message-ID: <20190614200557.GS13533@google.com>
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
 <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
 <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
 <20190613085402.GC13442@lst.de>
 <CAD8Lp47Vu=w+Lj77_vL05JYV1WMog9WX3FHGE+TseFrhcLoTuA@mail.gmail.com>
 <CAOSXXT4Ba_6xRUyaQBxpq+zdG9_itXDhFJ5EFZPv3CQuJZKHzg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSXXT4Ba_6xRUyaQBxpq+zdG9_itXDhFJ5EFZPv3CQuJZKHzg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_130601_699443_25E406A1 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Linux PCI <linux-pci@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Daniel Drake <drake@endlessm.com>,
 linux-ide@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Linux Upstreaming Team <linux@endlessm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 01:36:07PM -0600, Keith Busch wrote:

> Even if you wish to forgo the standard features and management
> capabilities, you're still having to deal with legacy IRQ, which has
> IOPs at a fraction of the hardware's true capabilities when using MSI.

> ... your best option is still to set to AHCI mode for Linux
> for this reason alone, and vendors should be providing this option in
> BIOS.

Ugh.  Are you saying the installation instructions for Linux will say
"change the BIOS setting to AHCI"?  That's an unpleasant user
experience, especially if the installation fails if the user hasn't
read the instructions.

Bjorn

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
