Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2D36A014
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 02:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=404SIxgCBLVxmUvz0nlFEr8vDw1ixtu+RiCNg0GGe8c=; b=kKTBssQgvvnTkS
	Dbuooa4UGbg8T3UzptK6+jD57uWFOTyKLRx1+7KXUyNjE6pmeVMjzAQJeHTamM7wNeSMx4QEAbh9o
	LZMlZBnqID183lSom+OwuvLDvPbfLXjcW2ecQdCuKQyBF0Pi1PAa8B0u6LbZ3Nc0UE7us9lrCsqYy
	JT2lei1kAtlZGLa19YI4PI8RwSzKgmITk8r0p7eH8MXDTxAHm5NrgLJG+f1YS3nE3/SJcKNjERO3W
	zRG5YHnLyCF+wP7oIxCYYoJp896LT0O9VdN8A7Yj5SW7juuA25B1dP1j7mSyqsqGcTjqnFZpKuC/O
	TXzLALKSVgFeUOSUncjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnBes-0001DX-6t; Tue, 16 Jul 2019 00:49:30 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnBej-0001DE-Jh
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 00:49:22 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6G0nDbQ001859;
 Mon, 15 Jul 2019 19:49:14 -0500
Message-ID: <b4dbc5d430ee9e4975c1ec26ea964e3f09796e97.camel@kernel.crashing.org>
Subject: Re: [PATCH 1/3] nvme: Pass the queue to SQ_SIZE/CQ_SIZE macros
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme@lists.infradead.org
Date: Tue, 16 Jul 2019 10:49:13 +1000
In-Reply-To: <20190716004649.17799-1-benh@kernel.crashing.org>
References: <20190716004649.17799-1-benh@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_174921_799812_42E94978 
X-CRM114-Status: UNSURE (   4.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-07-16 at 10:46 +1000, Benjamin Herrenschmidt wrote:
> # Conflicts:
> #       drivers/nvme/host/pci.c
> ---

Oops :-) You can strip that or should I resend ? I'll wait for
comments/reviews regardless.

Cheers,
Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
