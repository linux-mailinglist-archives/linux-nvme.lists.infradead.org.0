Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9EC10A26C
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 17:48:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+Hwm6WtL8ek6D8grEoX5AJAuYl2axHhkZXD+z9LoO8=; b=uJgHMyuvFaklqe
	UaXrzb0Ij5/8ieZJL12Wn+yg9EGBVYXbdSgXah0dLmfMLTAYHFIbuY/KJh0+e5FHtcEKhCNoFj7GP
	tP4xyDEEZisyj2+pGG4RyfrFO67uf3WQ3URneKO1Bsj6sz175U0AdYCJz2CZ5QIs5BGPEU1tkij6I
	kC9E172qpBG06FlYIbFrC6L17RJwkIQKpe3S3TCe+fJPUNygNx0ZsQ7jK3ISJ1Krr/1gW/P+MN1kW
	Gftq8czmclNiWs+nrGaRS5FhZU4yLFxpTIAqa6vbyfrUxzlHwEKJReCwh+Yw3XdfcmOqH6kyRC12n
	bnLpy5rUT27RvGYE5McQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZe0X-00035k-Ck; Tue, 26 Nov 2019 16:48:09 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iZe0R-00035G-IS; Tue, 26 Nov 2019 16:48:03 +0000
Date: Tue, 26 Nov 2019 08:48:03 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Edmund Nadolski <edmund.nadolski@intel.com>
Subject: Re: [PATCH 2/2] nvme: else following return is not needed
Message-ID: <20191126164803.GB10487@infradead.org>
References: <20191125160612.3542-1-edmund.nadolski@intel.com>
 <20191125160612.3542-3-edmund.nadolski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125160612.3542-3-edmund.nadolski@intel.com>
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
Cc: kbusch@kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 09:06:12AM -0700, Edmund Nadolski wrote:
> Remove unnecessary keyword in nvme_create_queue().
> 
> Signed-off-by: Edmund Nadolski <edmund.nadolski@intel.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
