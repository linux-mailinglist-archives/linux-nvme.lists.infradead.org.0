Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D5D1D34B9
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 17:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhBeTG5W0GKh1rR54EE1xToXd6aEyrJaADNEgn9U9eA=; b=t+EWmlJEy5Yw6D
	AwMpKsWYYT6cfELS6SAwkVduflhJ26NtsXkDZX/qb+Vs1wcy9BmAA9X9gaLbXcu6+zvbkLGRlJX0m
	nfVGbeaQNKsTBTmSoHIAlfxIfMqh0IGj0ad3pUcwc9VfJkHeU1b5F/zGWiVe5koQFIvPzkxET3+MK
	GyNLDda2M8bB7ZfmnyrD9zH4zMW3FfaGlfK20uaYiOpvshPVIx7c63bCuSZqPoZ24zSGTOjWo6zkV
	YoBBemJtQh96oEeueLp+qbaKKuZ06qH5zQFaNOS5GbBYpooTFhg2ouOJiGIHPMa4QOXgLB4ljdnUe
	Nc0wFONeWZ7KzY5zBOqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFYi-0000MS-Nq; Thu, 14 May 2020 15:14:04 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jZFYd-0000MF-Vm; Thu, 14 May 2020 15:13:59 +0000
Date: Thu, 14 May 2020 08:13:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH] lightnvm: Replace zero-length array with flexible-array
Message-ID: <20200514151359.GA1145@infradead.org>
References: <20200507190452.GA15449@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507190452.GA15449@embeddedor>
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme.h has nothing to do with lightnvm.  I'll merge this with the next
one into a single nvme zero-length array patch.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
