Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DB311CB30
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 11:43:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVOsHPL/saQrzkFhDsIIpJKgE7OsCqhOTGDOYBU+ugI=; b=sQGPHoeEh6kMDa
	Fems9X3ZbVmVCfSIcIe60GVHrH/89e+xT2JlwVCqaUMwnPp65NmYQQIxNLbq4fLc+xnUlbxtabivX
	f1tBu9AMX7dvp4yCIJxD5vA6VLC6Z+1YS499OIq72QG+FegiOjYjGN2cd0i9vUP52dGur8M7w7R0P
	lm9k4TzB55jC1MuvIYNXCrcxkeF5F6wExLEiTqrc/T8kg+hXMAK5SuCqJCG7s4OW/XQZhkMoklCsw
	ByCp3ArwrWdKB/xq6lNBeUc9VCE7bIh9kYQF+XJJt3iaAYOKQM3fPNN9HqaKW4idaJoJyNBhsiiPQ
	miilNdjxAoovOC+jdEMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLwM-0005NI-OE; Thu, 12 Dec 2019 10:43:26 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1ifLwI-0005Mv-GN; Thu, 12 Dec 2019 10:43:22 +0000
Date: Thu, 12 Dec 2019 02:43:22 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Talker Alex <alextalker@yandex.ru>
Subject: Re: [PATCH] nvmet: fix null-pointer when removing a referral
Message-ID: <20191212104322.GA19996@infradead.org>
References: <34086421575664793@iva7-8a22bc446c12.qloud-c.yandex.net>
 <20191212093341.GA20683@infradead.org>
 <3861821576146988@sas8-ed615920eca2.qloud-c.yandex.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3861821576146988@sas8-ed615920eca2.qloud-c.yandex.net>
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
Cc: Christoph Hellwig <hch@infradead.org>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 01:36:28PM +0300, Talker Alex wrote:
> nvmet_referral_release() was called when item->ci_parent
> or item->ci_group were already set to NULL by configfs internals.
> 
> Signed-off-by: Aleksandr Diadiushkin <alextalker@ya.ru>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
