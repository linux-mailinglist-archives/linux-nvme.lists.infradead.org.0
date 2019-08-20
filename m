Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F35995B19
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 11:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEGocm5qnR+QGcvNX6Vyloilfy1WjnhQC3Cib1wOwk4=; b=UPVr2vcuqtzMw8
	NImpzOEIRlic3PndQvMx7dUxegHhE5SD2j+tSV1vRMehm5V3J2z3zLV1n0cJRWnt5gPwDZpoP/4n7
	ffItXJKOdVCxP5pEd/25F3YncaPP/y+sWwPtZLpoLr8tVpBWum1KZYqTwwWkfMqmn4HqbklIlwxsX
	lnB7SM7npfYZdrHvvGgYKtZjmHWvvVYgt0aVM9xZvPtjk2fB/5ik/nK2rIgS6Q4aYCqQPj4Oh4yS9
	a+lCBQwJ0F9VLEFs6PXjRdYCtgeYsQjXfgPAZj8ToqCVC62w7ZvrLjpKyAZJ3QBTOWFBeI/enP6AJ
	wC3O1YmVWBfAu5ka3RSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00bS-0006JI-Gf; Tue, 20 Aug 2019 09:38:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i00bE-0006JC-3j
 for linux-nvme@bombadil.infradead.org; Tue, 20 Aug 2019 09:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aP7YVXFpDNQcxH+rVOzu1yptj8ZkIgU2FgwQQZibl+g=; b=hgKdt0P1DD3mZ+BKU2LYDAoWF
 786hK7vhHqfPFXT13TPQoAUO0gj6XJ5HKdH3ATpIQuCrBtTQAlLK3BB+Mwqa6l+0VASGsSWfqlPWi
 uAxGMo3t2sNV9tVYrrVXM94gadC6ROFX9Uvevyr8ViFv8L9i9lPtKJtp8ACTapJC6JQyDtXBKPtIh
 +lENen5l42kkNVFSmXunJRpJ3UHwxw2bV7Ojo6XEYHdwnM7M+nYGZRE800V44QfV1yFwT4MGukJQB
 Wx4NlUTTjq7u0D9ytpUospPZIp4StFs0kQhIlcWTyQT/WUwEj9RRMLWWIyy615d/hV8u7gcW69kJ4
 qzRiaUu4g==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i00b1-0005wW-9B; Tue, 20 Aug 2019 09:38:35 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 9CE3B307603;
 Tue, 20 Aug 2019 11:37:56 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id B047020CE7741; Tue, 20 Aug 2019 11:38:27 +0200 (CEST)
Date: Tue, 20 Aug 2019 11:38:27 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: longli@linuxonhyperv.com
Subject: Re: [PATCH 1/3] sched: define a function to report the number of
 context switches on a CPU
Message-ID: <20190820093827.GF2332@hirez.programming.kicks-ass.net>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <1566281669-48212-2-git-send-email-longli@linuxonhyperv.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566281669-48212-2-git-send-email-longli@linuxonhyperv.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Long Li <longli@microsoft.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 11:14:27PM -0700, longli@linuxonhyperv.com wrote:
> From: Long Li <longli@microsoft.com>
> 
> The number of context switches on a CPU is useful to determine how busy this
> CPU is on processing IRQs. Export this information so it can be used by device
> drivers.

Please do explain that; because I'm not seeing how number of switches
relates to processing IRQs _at_all_!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
