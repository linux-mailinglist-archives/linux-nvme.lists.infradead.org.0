Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3982DF3EBD
	for <lists+linux-nvme@lfdr.de>; Fri,  8 Nov 2019 05:13:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcZfrbJDY533iZbpDkphDSR0JkbWcth0N6vA4fbKkWg=; b=lQoGJiGXZ3RVE9
	CNcPnyXFULt2Z4uDRFZCP22T59aR6gZbTt2TB5SLMWKPIPlHgq1izjU+4/zKeSZg+erhy0tcuSqrH
	83aSl8yx+g2v57WxuZhxybc+nyD1Kf4UZunApLv2ixwgpzPLrE20Ur9Paxe1038LM99oSxcBYMUXX
	nDyFR3ingagPjkqzzuFHDzfFW0Qj5SLFZcjQHX4lCcWVrAB0B92fAiIllesCraCTgr/Z5K9o2w0yN
	bwnfLdn3Y3HmNJsQqXx43TCuLvoi80jIdQxxdknyRHRvDDywsZHsleBtaVxIXOCxA9I15L6fQs+Mf
	NT0g9vnL1lD3bgERM2Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSvdw-0002eR-B2; Fri, 08 Nov 2019 04:13:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSvdr-0002e0-29
 for linux-nvme@lists.infradead.org; Fri, 08 Nov 2019 04:13:00 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A68C2166E;
 Fri,  8 Nov 2019 04:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573186378;
 bh=Lx4Htpx3ec89XXjrmdKCN+/oWOmGeEMpob4iH3bxjYs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tDczIt/H+Qq5grq+w6qWgaJaLlu3EACHMoornA7xbbMmOEgi3sR0pQj1KV2hRKQ4Y
 VAP8S5w5vBzIeRNZvLNrJAa1ky4rZhaCJQ+OjiQ8+p2iWNhVrkxwLfPxragkzo3RE1
 loqW/LPhWWJJ6Lr5Xjgi3tlylhXF5xrkD/duMeso=
Date: Fri, 8 Nov 2019 13:12:51 +0900
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 1/2] nvme-pci: move sq/cq_poll lock initialization into
 nvme_init_queue
Message-ID: <20191108041251.GA2775@redsun51.ssa.fujisawa.hgst.com>
References: <20191108035508.26395-1-ming.lei@redhat.com>
 <20191108035508.26395-2-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108035508.26395-2-ming.lei@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_201259_122451_967C2B2B 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Long Li <longli@microsoft.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 11:55:07AM +0800, Ming Lei wrote:
> Prepare for adding new cq lock for improving IO performance in case
> of multi-mapping queue, and the new added cq_lock can share space with
> cq_poll_lock.
> 
> Move sq/cq_poll lock initialization into nvme_init_queue so that
> we may initialize the added cq_lock correctly and lockdep warning
> can be avoided.
> 
> This way is safe because no IO can be started until nvme_init_queue
> is returned.

Yes, but we call nvme_init_queue() on every reset. I think it looks it's
okay to reinit a lock as long as it's not held, but it really shouldn't
be necessary, right?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
