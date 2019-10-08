Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8554CF374
	for <lists+linux-nvme@lfdr.de>; Tue,  8 Oct 2019 09:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRVRRNhPSrv7q9fwK646xskgxnWYJvJ6yQ7BBmDPKvM=; b=uPeSp3qSbNX8dq
	5lPD0+5xFER24b9owOPoqTJyubY2YvOHTtvwaLfDn1JhFWBw7fwoGjfHQnXAT6EFzYiaWnoG3VDm9
	/x1oNaFQz3JcrLC+q0JChGCEsvpnEOMGYpHs121JlOds5DMi/5FkKCi8//RhTskUP4rYxFcWRnt3S
	7Ljt80yPQqJsBIVlxTNvZETQEoRsRiEvoClWDkKqPjvnqd7obBGcUaING3GHnjLuw6BRFgvCJ87Uj
	NOq8GLYkGqMrn9NcplF5MHZJMz50ePboRCq6Kl7FvWGZzAjlEhiwKqRVqhoah253d990Y7/a1QD+a
	ctki+DvG5pqtGs78dfTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHjjp-0006PJ-Vq; Tue, 08 Oct 2019 07:16:53 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iHjjm-0006PB-Ua; Tue, 08 Oct 2019 07:16:50 +0000
Date: Tue, 8 Oct 2019 00:16:50 -0700
From: Christoph Hellwig <hch@infradead.org>
To: m.malygin@yadro.com
Subject: Re: [PATCH v4] nvmet: add revalidate ns sysfs attribute to handle
 device resize
Message-ID: <20191008071650.GA8174@infradead.org>
References: <20190926231940.7494-1-m.malygin@yadro.com>
 <20191007195709.6227-1-m.malygin@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007195709.6227-1-m.malygin@yadro.com>
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 10:57:09PM +0300, m.malygin@yadro.com wrote:
> From: Mikhail Malygin <m.malygin@yadro.com>
> 
> Currently device size is cached in ns->size field on namespace enable, so
> any device size change after that can't bee seen by initiator.
> This patch adds revalidate namespace attribute. Once it is written,
> target refreshes ns->size property and calls nvmet_ns_changed
> so initator may perform namespace rescan
> 
> Signed-off-by: Mikhail Malygin <m.malygin@yadro.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
