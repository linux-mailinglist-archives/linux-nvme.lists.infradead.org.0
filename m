Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E601C2394
	for <lists+linux-nvme@lfdr.de>; Sat,  2 May 2020 08:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1hh4vguJQbIWbNPt7eh8xbTOMe/6aY1OhAEHAuttQc=; b=rREgBSh43ztXtZ
	QnLsAQABSu+mpf8may+Qh/V78kIzbXNvq/YxrelcbRduGoMP40rYFzk1S3HmMdWE//AMvbXGoM3EX
	uEKvpTjVNT6s2KzqAB5pk23lt+t4TIZQAIzdvq0EJLm/S4i/PafWK41/Da6DaW6LP/yWlqgD1nH48
	rNOoQ06KWscg6BSG/kxRZW5vbBrw4G2aLlm5q6TJXP1P5PBkzI/CsZigGbXTLxKJgGWuUgXI0FzC5
	K9nH9rgM+sYMQ0DeDuiGZHZvzAJa5XrT/gCoiiIvSuLOjyLe35xXwqWL+jHhXy6XPKXupjGAkSzve
	c82C2MBxMS+4zJ2kojlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUlnb-0007hc-TE; Sat, 02 May 2020 06:38:55 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jUlnZ-0007hJ-6j; Sat, 02 May 2020 06:38:53 +0000
Date: Fri, 1 May 2020 23:38:53 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme-fc: change default devloss_tmo to 30s
Message-ID: <20200502063853.GA28925@infradead.org>
References: <20200501214549.95949-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501214549.95949-1-jsmart2021@gmail.com>
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
Cc: Himanshu Madhani <himanshu.madhani@oracle.com>,
 Arun Easi <aeasi@marvell.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 02:45:49PM -0700, James Smart wrote:
> Transport default devloss_tmo is 60s. However, both lldd's use a
> driver default devloss_tmo of 30s.  Rather having an inconsistency if
> the transport value is used, set the transport default to 30s.

Can we just have an interface that queries the LLDD instead of
relying on the drivers and the transport having the same value?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
