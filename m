Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9DE196468
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Mar 2020 09:26:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVn/PfF0HkoRtJHnGyjgWVCYk5hy9UryCVBIS+AjSqc=; b=H/gPN7pFtE43rI
	ijb62LDnHLDHI5E8cUia9CeSk2WAmn/cdOf1wCwd31tPjGyf/jint5vX+Z94fjQfJw/2/JSozXy9P
	W+gSvqfogSN+vp/4NVQDEOkCHohG+19IthOfdqmvsQ8FEocmFZaF8g/Te1QrYwVO/LkMC5yETkmgA
	+uJohTKxyQ8Cj8did6l5ewE4RrCqfvNsDtLgZLBcHQ4BOTsxqunmt2waFAwAaCJNoj6IYxAgjUpyl
	MBg3Ko2TwVsWQTth3CFC8+RjyaZBFi/WDEg+sK+d/Obw+7KjeTM4QOQMEsmfnIZBdKv9AdE+62uDx
	M+OQj6Jt/XmKqbAePKZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI6nn-0003yb-9W; Sat, 28 Mar 2020 08:26:47 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jI6nj-0003xm-Bp; Sat, 28 Mar 2020 08:26:43 +0000
Date: Sat, 28 Mar 2020 01:26:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Nick Bowler <nbowler@draconx.ca>
Subject: Re: [PATCH v2 2/2] nvme: Fix compat address handling in several ioctls
Message-ID: <20200328082643.GB7658@infradead.org>
References: <20200328050909.30639-1-nbowler@draconx.ca>
 <20200328050909.30639-3-nbowler@draconx.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328050909.30639-3-nbowler@draconx.ca>
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

Looks good, and I really like the new nvme_to_user_ptr helper!

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
