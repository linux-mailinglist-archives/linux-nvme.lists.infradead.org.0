Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242484CA00
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 10:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=kRSZTqLRmJ1yXn
	X8detfScd69ti28tLOSTP0z3OBVDTYSkMR7hi6SysEKFGWYFdUM9NKWSIYirQnKPYyoZC3gA7qgt0
	Hh/8eiYVPndMEmih3iPYeUNbPedQgOq2Z0yQ+SnCm5Olu1rv5Gpe/PXYvWtzPYIRHEAW4DavQ7Mii
	da3LiY730PbggUR3UBWhR3hm9wNZPZqY+XmMsFz+dCUvk6Lcr0vY4Q6ifZKwCSxMI0uvbGnMoW7XD
	yZwn2yVZoxd8HUIFBPi3AYYdpa54ne2ZZO6xzygHJeIqjANz/6LndWo3qck/L6j1m8KSUvmTDaaMO
	pUcHOLBTTy2wlpbVUXuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsqi-00008d-FU; Thu, 20 Jun 2019 08:55:16 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hdsqa-0008Km-LE; Thu, 20 Jun 2019 08:55:08 +0000
Date: Thu, 20 Jun 2019 01:55:08 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvme-pci: set the errno on ctrl state change error
Message-ID: <20190620085508.GA24540@infradead.org>
References: <20190608200102.7281-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608200102.7281-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
