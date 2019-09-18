Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C492EB5991
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Sep 2019 04:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NXa4qEM613EFIHzibVDQfJggMW/5cYmr8M1ZYuU7A4=; b=FDkq1GOkVH9kO+
	QIhkUJ1tGjUipJ81asughzXbJsHGFOHQdyc/2ejHH8ZrONHLA5CwvLhyfTeqAtpWPPXFYH7VFKk0l
	wSqh1XIOcVLGVpgUsV04tRdNrPkB/BVIEW1Xb0rZq7xcA7qMh7B08srPfAQD30AbNjp14xzRCZhtr
	lqPryuiq3YRcr36RjSm6ySElpSKGWfs71Muq4RDHZ9Eh6GX7GJOolPLBwuy7/pZW9YF+DUkyjn13w
	MZkgdl2uvN9xYa3MTDN6OrtzwwhcxpuJA9rrEnWveijGbclC0Qsxqwj4u5DFow0Hvnq6QkcvXwCHs
	NB442q/2I86Y+KpXdEXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAPVa-0005pq-Cj; Wed, 18 Sep 2019 02:15:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAPVR-0005oU-Hv
 for linux-nvme@lists.infradead.org; Wed, 18 Sep 2019 02:15:46 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C76B5214AF;
 Wed, 18 Sep 2019 02:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568772943;
 bh=Zz3l/EfVQ6u0ouFqV5ZU/f3gPYSJg8m+QpxfTAe/muc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xCFCihNa7mv+XXuWHlcVmoNLQeRUhUdIfPhmNPpJ75KrYXTxSwcoHnOufhLFQ5AQF
 JqHxQFfcGss0soW/LNBdpTymruPLxzsezeT2iZTbda/2Ll3Mcc32y/NmwgvEPY/L/N
 ep5xpqTguTFJMA1vpjWYos7SAvx1Bb0nGUM+3Ry8=
Date: Tue, 17 Sep 2019 20:15:41 -0600
From: Keith Busch <kbusch@kernel.org>
To: Balbir Singh <sblbir@amzn.com>
Subject: Re: [PATCH v4] nvme/host/pci: Fix a race in controller removal
Message-ID: <20190918021541.GA45690@C02WT3WMHTD6>
References: <20190918002720.18330-1-sblbir@amzn.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918002720.18330-1-sblbir@amzn.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_191545_617053_A8CF11AE 
X-CRM114-Status: UNSURE (   8.89  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 12:27:20AM +0000, Balbir Singh wrote:
> User space programs like udevd may try to read to partitions at the
> same time the driver detects a namespace is unusable, and may deadlock
> if revalidate_disk() is called while such a process is waiting to
> enter the frozen queue. On detecting a dead namespace, move the disk
> revalidate after unblocking dispatchers that may be holding bd_butex.

Patch looks fine.

Reviewed-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
