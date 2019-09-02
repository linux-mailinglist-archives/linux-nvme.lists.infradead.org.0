Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A9EA5B31
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Sep 2019 18:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1K/ABcRneOLf5oCwsWecorh80v6MzjHNaVG9wGhmLI=; b=V0DDFQ4fpj82b+
	1S9wDInJpLyrGMVRUZRckrJkDI6lPyglZioq7o9I8Et4ddaGDydNvwSsIg11qLSAkJipymCdn7wsG
	MZ/pI6NCryXNXGgDRF8ExWKo6Rxjey8++8YJlp53Uk6Xy66XU3LiU/PE+XxKIM1Mx1+g8OJRiNO8L
	j3o0udCvYAgAaNvC+sEuoWhphCMASXhX0C332tlZ7CSHTQtsFgqqLGdAFB8M7QKZYHsYK/Ya2gN8d
	q7/BrPg/QOeBSfZtbufhQQcIGn0HkHdEx5Cw45j+69AO2PbIWdeZEIzM0X99uML7o5fsBe6uEgdrF
	7vOAMFvjV/FBN3nQknqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4owQ-0008Px-HZ; Mon, 02 Sep 2019 16:12:30 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4owN-0008Po-Aq; Mon, 02 Sep 2019 16:12:27 +0000
Date: Mon, 2 Sep 2019 09:12:27 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme: Treat discovery subsystems as unique subsystems
Message-ID: <20190902161227.GA27231@infradead.org>
References: <20190830201145.6729-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830201145.6729-1-jsmart2021@gmail.com>
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

On Fri, Aug 30, 2019 at 01:11:45PM -0700, James Smart wrote:
> @@ -2358,6 +2358,9 @@ static struct nvme_subsystem *__nvme_find_get_subsystem(const char *subsysnqn)
>  
>  	lockdep_assert_held(&nvme_subsystems_lock);
>  
> +	if (!strcmp(subsysnqn, NVME_DISC_SUBSYS_NAME))
> +		return NULL;
> +

Can you throw in a comment here?

Otherwise this looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
