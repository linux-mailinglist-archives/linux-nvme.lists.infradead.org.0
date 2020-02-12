Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C08B15AED6
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Feb 2020 18:37:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8YJvtIH+O2c2wMGK3weynFOyt/Xxz+CtVqWWMwolOk=; b=Jk86IvW9ExzLgH
	wk193e0Ol9h2+xS9vMM7scWGh68z/vp3L2YHi5fivuUNrptOr3ofvW6wYjHZ9/jy8ZpAbwihwR6B5
	++GAvT4R0STh6ER9honQdEe04GghUrAn2XVpduqgDdZ992wH5HB0CEHBeCuZ+qHVRcb/mlBRHZb/u
	KDNxIw76hFeKRQ83AImnOibUbxPGPActlOBMnXdqKRZ3ViH4ulid+TzZ7+HfSBrN155pJMmRC2x0/
	rx/l9sbDxe6jG6gLuQkk8Fd5x1JR54G9lxEJMftDsLGyMHi62Ebql8SIBmod10oCdLmD/LB1N0RmB
	Cqa8iG5OeBLBbUARyW/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vwq-0005lD-Uh; Wed, 12 Feb 2020 17:37:16 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vwl-0005kc-VD
 for linux-nvme@lists.infradead.org; Wed, 12 Feb 2020 17:37:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7256B68BFE; Wed, 12 Feb 2020 18:37:09 +0100 (CET)
Date: Wed, 12 Feb 2020 18:37:09 +0100
From: Christoph Hellwig <hch@lst.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1 1/2] nvme-pci: Use single IRQ vector for old Apple
 models
Message-ID: <20200212173709.GA5708@lst.de>
References: <20200212103220.80680-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212103220.80680-1-andriy.shevchenko@linux.intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_093712_150248_15FCDA5E 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Leif Liddy <leif.liddy@gmail.com>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 12:32:18PM +0200, Andy Shevchenko wrote:
> People reported that old Apple machines are not working properly
> if the non-first IRQ vector is in use.
> 
> Set quirk for that models to limit IRQ to use first vector only.
> 
> Based on original patch by GitHub user npx001.

Shouldn't that be a reported by?  And do we have a real name / email
address?

The patch itself looks fine.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
