Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A27AA5B3A
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Sep 2019 18:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zF+jc74oTGSpMn+LCaKGOoA5nhwuZTDZULA6a0jzD/s=; b=Da8rjqOa2hN0Sz
	6SB3vy+XQuCinix4qxoU38jp9H2VcoRlTIQVbJSIv6vK6obYRZjkLSWohrbDDAazzT/cUk/l8aUy5
	buS+u8mHR+Sh65AqIC34u/guH3VqYsWRiHFogLGgf6cjSlp9KgE5IemEwPAb5QoEbqXtxxd43HZA3
	dH9dlKi2FhXiO8C10FAX11GAUdFGZIT1rkBIeCVzgnW4NWTMHIr70vfBG+d9xZUwZUghSWzmcBM8z
	z+EJui7mfE4rQ3RXarG5JrxVHqHCQbBrUKEgiXg9HOeO0SdUT6vS701+K+Zrlg3P++Uetfg7ayK6/
	Bv6UWQQTxjygNkEDPgNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4oyV-0000gy-7V; Mon, 02 Sep 2019 16:14:39 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4oyP-0000gl-1F; Mon, 02 Sep 2019 16:14:33 +0000
Date: Mon, 2 Sep 2019 09:14:33 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvme-core: get rid of the unused variable
Message-ID: <20190902161433.GC27231@infradead.org>
References: <20190831001013.8581-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190831001013.8581-1-chaitanya.kulkarni@wdc.com>
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

On Fri, Aug 30, 2019 at 05:10:13PM -0700, Chaitanya Kulkarni wrote:
>  void nvme_complete_rq(struct request *req)
>  {
>  	blk_status_t status = nvme_error_status(req);
> -	struct nvme_ns *ns = req->q->queuedata;
>  
>  	trace_nvme_complete_rq(req);

I don't actually see this variable in Linus' tree or the nvme-5.4
branch, what tree is this against?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
