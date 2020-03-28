Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5A0196466
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Mar 2020 09:26:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ur7hPksQE6qwTwmdjZH/9vYRtn9iywulJvKFdeGeqIk=; b=LReWyjZsAGNFk3
	wmWMzPoP+hXz8DWw0HYqZA6DMI+fTswWrZ7pzb6pZ6Bm44abX7ES1x9RbuPIhziCdSSnfckrGsYML
	5fKSMIPpdgQ0bePCei48uOb2DO0miNLsb66U2etq1rbRBvz5oqRQIctYB6khU0Op5l4xL7Q/cVHvD
	IjSDpkGf5lWU8MSiNgvA6J8+GgwSnK2R/KTT2h7OOSOlQczykmA6U0rRVqE5iVsac4pdCVbL1c9fJ
	XtnDxcBE4PY+xld7ZqG4Uu4/a0EhoNHXtkpCESkaCCkCK3v3oAEHu8YbdJg4YhC8ueHcmQIWpFyB7
	yKyYh/mLjYoaJ+QZAvWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI6n6-0003VH-Kd; Sat, 28 Mar 2020 08:26:04 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jI6n3-0003Uu-8G; Sat, 28 Mar 2020 08:26:01 +0000
Date: Sat, 28 Mar 2020 01:26:01 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Nick Bowler <nbowler@draconx.ca>
Subject: Re: [PATCH v2 1/2] nvme: Fix compat NVME_IOCTL_SUBMIT_IO numbering
Message-ID: <20200328082601.GA7658@infradead.org>
References: <20200328050909.30639-1-nbowler@draconx.ca>
 <20200328050909.30639-2-nbowler@draconx.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328050909.30639-2-nbowler@draconx.ca>
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
Cc: Christoph Hellwig <hch@infradead.org>, Keith Busch <kbusch@kernel.org>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 01:09:08AM -0400, Nick Bowler wrote:
> When __u64 has 64-bit alignment, the nvme_user_io structure has trailing
> padding.  This causes problems in the compat case with 32-bit userspace
> that has less strict alignment because the size of the structure differs.
> 
> Since the NVME_IOCTL_SUBMIT_IO macro encodes the structure size itself,
> the result is that this ioctl does not work at all in such a scenario:
> 
>   # nvme read /dev/nvme0n1 -z 512
>   submit-io: Inappropriate ioctl for device
> 
> But by the same token, this makes it easy to handle both cases and
> since the structures differ only in unused trailing padding bytes
> we can simply not read those bytes.
> 
> Signed-off-by: Nick Bowler <nbowler@draconx.ca>

I think we already have a similar patch titled
"nvme: Add compat_ioctl handler for NVME_IOCTL_SUBMIT_IO" in
linux-next, with the difference of actually implementing the
.compat_ioctl entry point.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
