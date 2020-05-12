Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CEE1CFA5D
	for <lists+linux-nvme@lfdr.de>; Tue, 12 May 2020 18:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JOX/7tTnA01dsgc9qqveYmqObR8V5jJMMt9lb1b6ig=; b=AqQ6UT6LWpzwMY
	ipQh5W2hOqhVg9o6nUZMzZgoRZqX9b7rbD+ZH7y5lLN+KKRp4g0DeKpN8SvEquJRvcEoCR91cPXRE
	1t3seMx4ZtOW6IjrdkefWmwvRQMbzC64Inpp4bLG1JBZWBxxILBXCvNSXl5QzVx9DUGEweEYPaj65
	1KXQJ3Ptdd9q5PuWb5FlcYSm7NCMjQCTthAVBczOcxFaKS3OHaY+n1B6SXUDR04O2OIufZSwuQmSb
	EfEzswobK2u4uL4dN4dmfXN99ab03qyEsoH35Vf3zelXHm04l9n0UhuKT/BswgQy49wCbCAyyD7wq
	a6Om5vDiWzOTEEiPJeEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXbN-0002cH-5b; Tue, 12 May 2020 16:17:53 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jYXbJ-0002bx-8n; Tue, 12 May 2020 16:17:49 +0000
Date: Tue, 12 May 2020 09:17:49 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Weiping Zhang <zhangweiping@didiglobal.com>
Subject: Re: [PATCH] nvme: make sure write/poll_queues less or equal then cpu
 count
Message-ID: <20200512161749.GA16555@infradead.org>
References: <20200509062203.GA19802@192.168.3.9>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509062203.GA19802@192.168.3.9>
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
Cc: hch@infradead.org, axboe@kernel.dk, linux-nvme@lists.infradead.org,
 sagi@grimberg.me, kbusch@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.8 with a small tweak to avoid the forward declaration.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
