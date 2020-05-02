Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6AE1C23DF
	for <lists+linux-nvme@lfdr.de>; Sat,  2 May 2020 09:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZHPnZOb7AScxE6HtcJ7aSCdnelsFh1tE2KczCYbk50=; b=linMX+tGsIew2E
	RIDa9aXdqVJm2Ona/jBuq6iTxO1JV27zQ63JwkPBPn8kQVg0fTkJYy7qTgzZrQNRfsXWgmlcsP3px
	NWc4bbsEuX9R9TOaq1c/Obdib71c8Sr9ONFEnj1m6G4soOcCD5AhCsc9nfczhZ0vOzDxRkcHQPTQI
	ypS5P17JkJ0UYjlRBRAtFWkCcblqOHgzUOPp5df/VcIJc/HnU3LILp+UCv5nz6tUOOVAGr/0Pw1r/
	HwldEWRzv9uN3bd3Ljt40SFgWx2xKJSBFDT6fJT8/t+du0D0xZe/HuIpnqPhMxOXDyaprsGcEbHds
	GQqHlx9/PqJB4ULxgz5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUmgI-0003YW-Vo; Sat, 02 May 2020 07:35:27 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jUmgF-0003XB-Di; Sat, 02 May 2020 07:35:23 +0000
Date: Sat, 2 May 2020 00:35:23 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Weiping Zhang <zhangweiping@didiglobal.com>
Subject: Re: [PATCH v4] nvme: align io queue count with allocted nvme_queue
 in nvme_probe
Message-ID: <20200502073523.GB8477@infradead.org>
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
Cc: hch@infradead.org, axboe@kernel.dk, linux-nvme@lists.infradead.org,
 sagi@grimberg.me, kbusch@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, this looks good to me.  I'll wait a bit for other to comment
before applying it.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
