Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 717371C6956
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 08:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmlY+LLwY6qR7xTR34zZmTZnzuHm/8qIGfvKY43U0zE=; b=VLqlB+ZmiXP3mB
	rtSzr97k8QtrFVQPP0F2TggKdN0P5yMtMc1I7ehHjOzM0WJlCBf1VxfMRhysMQfjPLx4ByVa9zPVg
	rLxNnX5VFrubInPmFqXasB1KX9kX400hRW+LBckcctMMNGLmBn/i1I25Yk+ZDm6Buy53Owgu1Qlhw
	yDbL7U2YWcptowhEdY8Snkpv0ffRpXuRww8CYy0aPIlfCPh3UUQ53CXRy99jJMGz4v8MFyhgaumuv
	lU94WWqyDPOq2rIHqksfahUueZuoW9o6sLz8o6KTILDQKN1qBEHZXqZk3TPkdS2W+gBNGGjc2cgda
	rwKNO8xmh25J3P7DJvHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDqx-0000aB-0j; Wed, 06 May 2020 06:48:23 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jWDqt-0000Zz-SD; Wed, 06 May 2020 06:48:19 +0000
Date: Tue, 5 May 2020 23:48:19 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Weiping Zhang <zhangweiping@didiglobal.com>
Subject: Re: [PATCH v4] nvme: align io queue count with allocted nvme_queue
 in nvme_probe
Message-ID: <20200506064819.GA2094@infradead.org>
References: <20200502072937.GA12656@192.168.3.9>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502072937.GA12656@192.168.3.9>
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
Cc: axboe@kernel.dk, kbusch@kernel.org, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.8 with minor tweaks.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
