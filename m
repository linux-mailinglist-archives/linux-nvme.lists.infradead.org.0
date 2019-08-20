Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E6395B1A
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 11:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2zmuX+XFkImRZCIUnZjZ+YvZETMpG+GJaMUQGpebA4=; b=fQByhupbi6p++T
	w8JgQwNT/haGju/CXgo9EmdHHKxTZipe4UAYhlT4g2Cj94/tf4scgv7gQSDHYTSpFnhOKTz1fQZrx
	7NLqqEdAfCgZmxaXp4BoCNZAr2mXAC6uUNHJSzD07lGX5zNF3HWtk85HGzeKuXaL+sU+NKE9c3nSi
	pbW1YTZlRwx3c5rWhbuHBwh63G6ouF8TFa7QAVLKIVpulK6VlyF8qjhtvbR9+HBOvjoMPxs07M0Ae
	MfooY0vKNJXGDUgQBrLz89Ef8QwMiGvWYmZoFAoh10H+iNOrDGvamBsGbH5DbvDfYMp2RmRvppSvw
	9hZjVi0Zn3yMgGx988Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00bp-0006Uc-FC; Tue, 20 Aug 2019 09:39:21 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i00bf-0006U2-Is
 for linux-nvme@bombadil.infradead.org; Tue, 20 Aug 2019 09:39:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C87H0XKexdsL+UWE1aJ+2v1FBCvDZI+oD03Bgb6sB1g=; b=vc/J2w7/Zao+JUHDIHCUlQgWC
 /MUBJQsP63C2BIxsbEOyobu5zs8bSjJu7u1PSLlYC4CpD5bKc2kvUhGqAWawVtv1QCp92gmCNGNnT
 5ZBAkBeYAH1l7ctbmjHe90+AHIthekpURhPv2odHoLl67X19ZLHOrLWQJs12E3684UzTZOB0skukk
 J0YvA9wuducCpGzBW2ubBX3LiRIU17hJNetnuDILBGbBGzoUOLaQbyssp9z3iqOAz67v2acf6pjkN
 yr0IhYbXZsF/vHjRGdbuFaWOvTDuA6yxShpHjMNzJcbh3oYP2Ia2jySEcIOtvzMlx9BBRCOxT3OBf
 CJbWUN3FQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i00bd-0005x7-OE; Tue, 20 Aug 2019 09:39:09 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id BC07330768C;
 Tue, 20 Aug 2019 11:38:36 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id ED96420CE7743; Tue, 20 Aug 2019 11:39:07 +0200 (CEST)
Date: Tue, 20 Aug 2019 11:39:07 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: longli@linuxonhyperv.com
Subject: Re: [PATCH 1/3] sched: define a function to report the number of
 context switches on a CPU
Message-ID: <20190820093907.GG2332@hirez.programming.kicks-ass.net>
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

> +u64 get_cpu_rq_switches(int cpu)
> +{
> +	return cpu_rq(cpu)->nr_switches;
> +}
> +EXPORT_SYMBOL_GPL(get_cpu_rq_switches);

Also, that is broken on 32bit.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
