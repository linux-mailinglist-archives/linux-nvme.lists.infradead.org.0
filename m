Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82579FA719
	for <lists+linux-nvme@lfdr.de>; Wed, 13 Nov 2019 04:17:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2p70OzttPYasURC2C6vdNybTN12vzLj9GRKgEwTgC8=; b=OeXJ0JpgkOpaTv
	HP30BlFY/MxM/z1q6tErfZCh3hxuOpuwjnUOiJJUa+dir1WFzqHe2/tlwhn+EZV/f5zPQo5DxJMbv
	koW/FHYhG+R3Fi3GsJS1EMOdhNkvm10TxzXLpJKOyiaBYw1dBNJK5b5aYY/nHw+FS0OoknXcxhUb8
	dla+YVQXHbxM199ZuO4oV9EcvnYgAyDnMnKshuw+aO6VaTBNCJ+canKRAfsNnGrBOty74nvpJZloO
	9IxPKEc+46md0svZrcDn8R17xxUo8KqqC1bLasydMn41IX5eb1M7Hm5KhpjMXllmTOojDM6TwueKu
	qMyy35lyqzMnXdoGx1Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUj9i-0002wY-I6; Wed, 13 Nov 2019 03:17:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUj9d-0002wE-ID
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 03:17:14 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A191A222C2;
 Wed, 13 Nov 2019 03:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573615030;
 bh=uHvtNuhudWInBNglzR2Ch8Kpe7/M+liPClmU7l3pi1g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PvWJSQO+JLfNlGWW0ARsHxRzr9C8w467PgnrYrstOJaNsNgta34gHvfcPyhFQcdam
 mgy6vlBfKZSGhUx3IFy521x1PL55+4AsPUdfGOvuWUBQRsZdHmXWAQEpyb+DoOsxCg
 sPSD/feB9jD3ow8JYVlRKcZ8znp8wN85tZ9+V0Ik=
Date: Wed, 13 Nov 2019 12:17:02 +0900
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 2/2] nvme-pci: poll IO after batch submission for
 multi-mapping queue
Message-ID: <20191113031702.GA25906@redsun51.ssa.fujisawa.hgst.com>
References: <20191108035508.26395-1-ming.lei@redhat.com>
 <20191108035508.26395-3-ming.lei@redhat.com>
 <20191111204446.GA26028@lst.de>
 <CY4PR21MB0741004E62F9C50B8EF7DA9ECE770@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20191112023920.GD15079@ming.t460p>
 <8198fd99-6b47-7594-ba1c-4a15ffe25269@suse.de>
 <20191112164947.GB29135@redsun51.ssa.fujisawa.hgst.com>
 <f69d4e4c-3d6e-74c0-ed97-cac3c6b230c2@suse.de>
 <20191113030520.GC28701@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113030520.GC28701@ming.t460p>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_191713_624253_978E300F 
X-CRM114-Status: UNSURE (   8.59  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 11:05:20AM +0800, Ming Lei wrote:
> Threaded irq can't help Azure's performance, because Azure's nvme implementation
> applies aggressive interrupt coalescing.

This sounds like QD1 latency is really awful if it's coalescing this way.

Let me restate to ensure I understand how this patch addresses the
high-depth case: by polling during submission, a multi-threaded high
depth workload gets to carve up the number of CQEs handled by spreading
across more CPUs. Real hardware should see fewer completions per
interrupt, but we should be able to recreate this issue by enabling
interrupt coalescing on a real NVMe.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
