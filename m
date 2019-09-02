Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0F0A5B33
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Sep 2019 18:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2+ISCa4jd07W11NOfy3LrXPPuGoYjLefD5mwHElehc=; b=uVcCrhwE38Cw6X
	3jlr7w9UURY3LY9p9NlScy7gyMe6vngTn0d/oqOasl5NoBt9xuyzLjyOKISfLue2XIC1SRf93pbsU
	HyiNODEgL1eiCD0hF0ww/uyKe3d2OJmjkMY6H7sw0o8IAp8Jo70RObqCBZgR1YeABQhWyY76if40P
	8/pRk1qkqeTySiXwVNi8ELJo2IILPSEEcyYDE+l/3qG9zhzGytRqNNBdeHQKBQ19gJmq/2td/srHg
	m+CnQ3PrL37AvqM6Z0Evilw/dADxIorTV1fpbMyzHT8utR7FgmQIkRm4ppC4GXSJXuSBqWUPIe4Iy
	SjdD7DxjBfuR94y7Eh2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4oxR-0000Ou-6Y; Mon, 02 Sep 2019 16:13:33 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4oxK-0000OK-Nb; Mon, 02 Sep 2019 16:13:26 +0000
Date: Mon, 2 Sep 2019 09:13:26 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvme-core: cleanup work queue flags
Message-ID: <20190902161326.GB27231@infradead.org>
References: <20190831000235.7400-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190831000235.7400-1-chaitanya.kulkarni@wdc.com>
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

s/-core// in the subject, please.

On Fri, Aug 30, 2019 at 05:02:35PM -0700, Chaitanya Kulkarni wrote:
> Over the period of time there are three workqueues been added to the
> nvme-core which all share same flags :-
> 
> nvme-wq :-
> commit 9a6327d2f25b ("nvme: Move transports to use nvme-core workqueue")
> 
> nvme-reset-wq :-
> nvme-delete-wq :-
> commit b227c59b9b5b
> ("nvme: host delete_work and reset_work on separate workqueues")
> 
> This is a pure cleanup patch which defines a new macro for common
> workqueue flags used to initialize for nvme-wq, nvme-reset-wq,
> nvme-delete-wq and avoids the repetition of the flags in 
> nvme_core_init().

There is nothing inheritly nvme about the workqueue flags, so I don't
think this define is a good idea.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
