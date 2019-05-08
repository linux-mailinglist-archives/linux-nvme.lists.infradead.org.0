Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EF617273
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 09:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUFdyjLs3NxlZ3OF4PX4ndKU0y9V7grXzocUDKSyzNw=; b=dIYTB9M0M7QRFV
	7TxhLvqY+JR+GiWY1B59TYk70IkgBOXYg+cM9IuoZFjduqv5UXumwVUgoA66LO6w1jgRp+n3Uu5O+
	1skDgjT/gUgqsEg29BtAsxcl5SC28rshpduC7bsWt2roc9tH8L35rlYQEHQYjloW89DrXtdGJn/A3
	XfXhSiZu7IoXl/d/I58AU+JsTILMtbVrLy+N9hAbcQzq55Cvzpe5UGP6nKwbGaya6NkHsFhIqLrwv
	jOfqBu3RQ8Y0VtYQxkuLOlNCQS+tfNWDoO2UtiBkHwhwKu8sfBoLWhBqpJXvlj6CrRroqq6mO8D9S
	nxvZzloQPJzAbKdDMUMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGqd-0004gO-Dk; Wed, 08 May 2019 07:18:39 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGqT-0004e2-3A
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 07:18:35 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 518E468BFE; Wed,  8 May 2019 09:18:10 +0200 (CEST)
Date: Wed, 8 May 2019 09:18:10 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] nvme-pci: mark expected switch fall-through
Message-ID: <20190508071810.GC21775@lst.de>
References: <20190507142300.GA25717@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507142300.GA25717@embeddedor>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_001829_283611_9213DF54 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.2.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
