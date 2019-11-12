Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE32F9C61
	for <lists+linux-nvme@lfdr.de>; Tue, 12 Nov 2019 22:37:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Olw00Kkr1vPff1SwvZWILQcppBmuvqqBt24OwIqoZvk=; b=TKSXd/wCe++Psj
	VAqJ2bNNz5lzv5UJPdlovbzxlK+PWWSRTQXrMgYREdieRWogomQ7focqp9orOxWzEQvXjDtoHaAqW
	qZa1Beh9sVjf+cfcz348qdTKHgJ134RdgJD+0mzlPx2yf01raMyxcKx5WftaJ2P6xv4+/9IKOUll+
	cBvnTHo9ok1M1zjon3fZ7XJiOHanG5L14ImnbOU573oNPdXBsLwZdAkPv4oZQEz7AC0tpxeKCMwE4
	k84q2krf+FdQccngZNkeIP/dJUIN+I9oQsA01Ce/pXuPHyWHiQoQ0wyfDlWQoVJNwBJeevSl0B28M
	zkJjhYhVaKSblC27yrIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUdqN-000796-KC; Tue, 12 Nov 2019 21:36:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUdqI-00078g-Dd
 for linux-nvme@lists.infradead.org; Tue, 12 Nov 2019 21:36:55 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F99B20674;
 Tue, 12 Nov 2019 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573594613;
 bh=KT2GjEt3BEczXBeaCO4w7FFghD60f6gHZa3tcZVioL4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nYuSmGGFUaa3cYvTQ9FUyYs149ix8UO8LpOWE0oEtD/E5wkiNIckGQ1EQR3nqg3lE
 4/F/vhPtHcCwjXeTn+Mcn+7UUTNmmz/bRNNyf//HsKgm/LUnXylYs8Q4t5pBP48Fur
 DXVV4MYso9rOhEnJJlHJOJNdpuM+ajrX51ytvRm4=
Date: Wed, 13 Nov 2019 06:36:46 +0900
From: Keith Busch <kbusch@kernel.org>
To: Long Li <longli@microsoft.com>
Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
 multi-mapping queue
Message-ID: <20191112213646.GA1964@redsun51.ssa.fujisawa.hgst.com>
References: <20191108035508.26395-1-ming.lei@redhat.com>
 <20191108035508.26395-3-ming.lei@redhat.com>
 <20191111204446.GA26028@lst.de>
 <CY4PR21MB0741004E62F9C50B8EF7DA9ECE770@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20191112023920.GD15079@ming.t460p>
 <CY4PR21MB0741BB1F48C64613BF6E45F6CE770@CY4PR21MB0741.namprd21.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR21MB0741BB1F48C64613BF6E45F6CE770@CY4PR21MB0741.namprd21.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_133654_481584_7516E924 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 09:20:27PM +0000, Long Li wrote:
> >Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for multi-
> >mapping queue
> >
> >On Tue, Nov 12, 2019 at 12:33:50AM +0000, Long Li wrote:
> >> >From: Christoph Hellwig <hch@lst.de>
> >> >Sent: Monday, November 11, 2019 12:45 PM
> >> >To: Ming Lei <ming.lei@redhat.com>
> >> >Cc: linux-nvme@lists.infradead.org; Keith Busch <kbusch@kernel.org>;
> >> >Jens Axboe <axboe@fb.com>; Christoph Hellwig <hch@lst.de>; Sagi
> >> >Grimberg <sagi@grimberg.me>; Long Li <longli@microsoft.com>
> >> >Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
> >> >multi- mapping queue
> >> >
> >> >On Fri, Nov 08, 2019 at 11:55:08AM +0800, Ming Lei wrote:
> >> >> f9dde187fa92("nvme-pci: remove cq check after submission") removes
> >> >> cq check after submission, this change actually causes performance
> >> >> regression on some NVMe drive in which single nvmeq handles
> >> >> requests originated from more than one blk-mq sw queues(call it
> >> >> multi-mapping queue).
> >> >
> >> >> Follows test result done on Azure L80sv2 guest with NVMe drive(
> >> >> Microsoft Corporation Device b111). This guest has 80 CPUs and 10
> >> >> numa nodes, and each NVMe drive supports 8 hw queues.
> >> >
> >> >Have you actually seen this on a real nvme drive as well?
> >> >
> >> >Note that it is kinda silly to limit queues like that in VMs, so I
> >> >really don't think we should optimize the driver for this particular case.
> >>
> >> I tested on an Azure L80s_v2 VM with newer Samsung P983 NVMe SSD
> >(with 32 hardware queues). Tests also showed soft lockup when 32 queues
> >are shared by 80 CPUs.
> >>
> >
> >BTW, do you see if this simple change makes a difference?
> 
> Yes, I can confirm the patch fixed lockup on this VM configuration.  There is also no performance regression.

What if you just use threaded interrupts with the path that scheduels
the bottom-half on any CPU in the mask? Does that resolve lockup?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
