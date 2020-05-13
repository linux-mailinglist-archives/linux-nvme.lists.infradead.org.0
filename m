Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858A81D1D50
	for <lists+linux-nvme@lfdr.de>; Wed, 13 May 2020 20:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYLlvkjh+ux/8xScoLZxj3FofsWgVJtDSkwOBMnAFZ4=; b=RmcayqT/mhyPA6
	4nNdC7vC6KKOolSBiAL14Bp5Nx61EV68Ayr031tJepk86IRqyXE0WmwiUb+taVA+XIJCQW9a8KBzN
	7TQRL2zT9qOj0Qo3pXzBUTKs6wJeI/QK6I1L/IJo+rcVQykEdeC72q+Rz43ryZxHQjUEj9Whd0Iy2
	puY4CyNoZs4rt1Nsbv6igZHkisvh5QLz4HIP+GAt8YH4UmBMipaHHiM0VE76rVEsXTEE1HeonwHQU
	tPQXVA1rxr8eYedTfRrkdC5zoKKS7N7UrRDqL3Cp9rR1FV1mxviKLNjAABH1jPbDacpEqhrbh0SI0
	08JGIRNH+53ImthXNfIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvyJ-0006hD-Ke; Wed, 13 May 2020 18:19:11 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYvyE-0006gi-6q
 for linux-nvme@lists.infradead.org; Wed, 13 May 2020 18:19:07 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5FEFF68B05; Wed, 13 May 2020 20:19:00 +0200 (CEST)
Date: Wed, 13 May 2020 20:18:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: James Smart <james.smart@broadcom.com>
Subject: Re: [PATCH 03/16] nvme: introduce NVME_NS_METADATA_SUPPORTED flag
Message-ID: <20200513181859.GA29596@lst.de>
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-4-maxg@mellanox.com>
 <e21354ca-a7bb-cf2d-d427-c8410c797a49@broadcom.com>
 <71c7458e-81cd-7200-2e1b-3563cdddd5ad@mellanox.com>
 <62322680-afeb-142e-c10b-b4f2d4c419a3@broadcom.com>
 <1b03c314-2e57-5135-6875-a2d37ecf5e20@mellanox.com>
 <cca0ab45-7dde-c461-b20f-d44f58a8a117@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cca0ab45-7dde-c461-b20f-d44f58a8a117@broadcom.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_111906_400245_961B01E0 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, idanb@mellanox.com, israelr@mellanox.com,
 vladimirk@mellanox.com, linux-nvme@lists.infradead.org, shlomin@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 nitzanc@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 04:50:09PM -0700, James Smart wrote:
> Lets move on. I've been a little short of time. I should review the meatier 
> patch, patch 6, tomorrow sometime.

Can you get to it?  I'd like to pick this series up in the next days.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
