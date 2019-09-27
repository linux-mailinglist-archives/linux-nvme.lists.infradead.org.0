Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D579AC0DE4
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Sep 2019 00:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgVXsRM8nyq8ICljSRkYNbIhlxVgL9zei0pShmBmFlY=; b=D9GhVufPgmaBWx
	EjcWzgOY8Gt7Tc3zOsOF/C5TjAHpVuDnOG7g2K2vd/RvmM2Fskry+E7DoALPuADlPvYMzR91klnDU
	SvSHZ1cDZYGMbgDcWrve+yYLemj6dtteBdwEzUcCO+cb3ztjg3X3n3oKqrgaLFFSWwGT9Ma5kAgAx
	HApLKc5XITFD+D2q7+33bX4j6r3ogJFbirBBfM4RZURJ3y7OG+6EXrLlQHnoNUud3a2LKFI4a+g5d
	i3uzKGyRw0u38mRz9JBotVDUto1V/bJ6QTfd/dgAI5aGOFQZ3Otn9mwAyXyUBTIgGmzmPuBIHa8Dk
	mfPEVvjxnEXGVjUKyImA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDyY6-0000za-29; Fri, 27 Sep 2019 22:17:14 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iDyY1-0000zR-Do; Fri, 27 Sep 2019 22:17:09 +0000
Date: Fri, 27 Sep 2019 15:17:09 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme-rdma: fix possible use-after-free in connect timeout
Message-ID: <20190927221709.GA29996@infradead.org>
References: <20190927172537.9555-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927172537.9555-1-sagi@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
