Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E08594A7
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 09:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcyHFPuixL4Kn9FWn6oAUXL7Wwo0Spg6a3DfLTEP2ms=; b=hnspNAXokvmxKM
	MUFiHlxCO4Q9o7x4DxTjCDFJ0U04FEXooV8Q5lCIl1xBOJCa3VeAiZlZSEbgVrS2qkez9tAWeJXL2
	aD3WzzlOeugXAqqiMPTadQ5cADMUSQ832xc9MF7plCqMrjpWdMcXotfOgaSLr7qt6jwjG8yRIF86c
	Vn899a7sxNxZLneYAKUZqj2uNHM4e+NelWKBKp1LDeF+ZC3uTwDC+H9h9vtqYihPDggMoY2BVIUu7
	gqWwB+HeRjUIu2WKyVNf6+9qX/6LdMVWlSNnJRINjF4DKl5DAorYLa6A2tHyRnvC3GR0m1SJ5hKUf
	DKvV7E93Yeq8SR8fnU6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgl7i-00060R-Nb; Fri, 28 Jun 2019 07:16:43 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hgl7a-00060E-SI; Fri, 28 Jun 2019 07:16:34 +0000
Date: Fri, 28 Jun 2019 00:16:34 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme-fc: fix module unloads while lports still pending
Message-ID: <20190628071634.GA16108@infradead.org>
References: <20190625160604.3905-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625160604.3905-1-jsmart2021@gmail.com>
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

On Tue, Jun 25, 2019 at 09:06:04AM -0700, James Smart wrote:
> Current code allows the module to be unloaded even if there are
> pending data structures, such as localports and controllers on
> the localports, that have yet to hit their reference counting
> to remove them.
> 
> Fix by taking a reference out on the module upon the first localport
> registered, and which is cleared when the last localport is removed.

This looks broken.  Module unload needs to take everything down
properly, and if needed wait on reference counts to be dropped.  We
don't do that by incrementing the refcount in the module, as that
actually prevents removals.

> +	if (list_empty(&nvme_fc_lport_list) && !try_module_get(THIS_MODULE)) {
> +		spin_unlock_irqrestore(&nvme_fc_lock, flags);
> +		ret = -ENODEV;
> +		goto out_dev_put;
> +	}

And try_module_get(THIS_MODULE) is a classic anti-pattern.  If you know
you already have a reference you must use __module_get().  If you don't
know if there is another held reference using try_module_get on
THIS_MODULE also is unsafe - there is a reason why we always call it
from another module, usually on a struct module in an ops vector.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
