Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D576F7241
	for <lists+linux-nvme@lfdr.de>; Mon, 11 Nov 2019 11:35:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FSRcZL0GRodm28j3p0Txw94nLMlK05MFOkoXfICC5g=; b=YCmaHUkN5jg9o8
	z49EhA7793QO5BxT9PevX5NJ9wEqHgEnsxRmKKybuilYBzON0yQAHRBOphzrhwTTr0uTnKbqAuFzY
	udV2RPqQ0J5/gGQF00ca+IeqFD6GdMHRvtYk86C2zVXSM+AJIdsr/Hx50fl8gr9zfoBCGI1GpBeDn
	wZoYIiikzoX98zxDQtYFtjbn6cV2s3n2MqvJUGwh8uH3gcPWJvabP9lsFvZ0eHpgUsxkS/ptl77Xy
	SVmIJdUGyVG5SpWeT1mZXGPCfe/sW5AtHkrCzDENz/98BDQXNoYjqw1+litgE98Y7fjH51CuX3SMZ
	f2wcOZRmAW3PoiT1uu6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU72s-0006sp-7c; Mon, 11 Nov 2019 10:35:42 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iU71a-0005tE-2F; Mon, 11 Nov 2019 10:34:22 +0000
Date: Mon, 11 Nov 2019 02:34:21 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: make ctrl model configurable
Message-ID: <20191111103421.GB6127@infradead.org>
References: <20191101080855.17970-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101080855.17970-1-chaitanya.kulkarni@wdc.com>
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +	const char *model = ctrl->subsys->model;

Can we have a little nvme_controller_mode() helper that uses
subsystem->model if it is set, and otherwise the default?  That saves
memory by not duplicating the default name for every subsystem.

> +	kfree(subsys->model);
> +	subsys->model = kstrndup(page, len, GFP_KERNEL);
> +	if (!subsys->model)
> +		ret = -ENOMEM;

I don't think we should free the old model until the new one
is allocated.

Otherwise this looks good to me, but can someone also prepare a
nvmetcli patch as well?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
