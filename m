Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A881D1BB0D
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 18:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpJA1OmxNG/tMJtBWXdqowzMb4yrsJaPRDbr9mmKgn8=; b=tnDw+xoo/oVKdC
	LvCa7S5Fv4bbCD7dF63JOLlCW9O7LHM6dQzw6+B80BNopI0WfjP6Llr43ilvLKN8xNfIGMrWTJg7F
	ZwF8E1wyXlr0amzQ46MZl7rH7hseXSbE7Iw2QfMtl8Rd06AVyPjtnHtnUFdtSKn2u/jjLiPxXlIbP
	cQhJH+2QeEN6lAoUVG2NMDXH4BVnTM1X8Lyqj8iAvRr0rYgf1DYSjxpMxtAL3WexC2oKf79tlQ0v1
	cKQqsLBdHRX1khxZXQOrkZTGBPnRaa8sHvQ8UxMQNj1KYHNfESwCljRJNNup+jPDs4bPEqNTqxeCP
	JTWI3LqZpuv0LMJ4aEHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDvF-00019K-2D; Mon, 13 May 2019 16:35:29 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hQDvB-00018f-0m; Mon, 13 May 2019 16:35:25 +0000
Date: Mon, 13 May 2019 09:35:24 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH] nvme-core: trace discovery log change AEN
Message-ID: <20190513163524.GA32058@infradead.org>
References: <20190506193320.30884-1-chaitanya.kulkarni@wdc.com>
 <20190513132401.GA2661@infradead.org>
 <SN6PR04MB452729CE574409342C30978F860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB452729CE574409342C30978F860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: Christoph Hellwig <hch@infradead.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 04:32:01PM +0000, Chaitanya Kulkarni wrote:
> > What about just moving the trace_nvme_async_event call before the
> > switch statement?
> >
> 
> That is something I avoided since for default case we don't want to 
> trace but dev_warn.
> 
> But seems like we are okay with trace and dev_warn I'll send a V2.

Doing both sounds fine and even desirable, so that we see the
invalid case in the traces as well as in the dmesg log.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
