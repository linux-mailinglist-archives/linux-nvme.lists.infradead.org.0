Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C679BFCF2
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 17:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAHBKQw1TwFKUL1Qa6STG2Z5TxkbRTVXOPUTzbpa8CY=; b=ojmzbzc9vzcNay
	zJ4+fgdptQNr8lVZRnZmtEwLVawFJDTp/gZ5NGKgCnWhILIUNcv4q5FU7eej7weNhsQqrh1FM6lIp
	IH3o+rCw3I6fYNgkzC/4Ju7rfC4QnsBco5eNp0Kjhfu/El9+fQsnr1BalwPm6xttOdfIlnuxnt8W5
	HzxQo+CPgI4/PPCxc2S7Q7zSgC7K0uwz1dOeDj6FyZdZt2Pp/ueMOQD9ypRw57Cmso37UjPhFefYk
	LkktxbwzZfRGpuDpkAkav1MKfSugp/SxRNza7nr7xbv2KBB8pkGesjVX3YBPvcllpT12RNpIFxpkn
	wQhCNfrAshyK5f90e/vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUlV-0007c1-Kb; Tue, 30 Apr 2019 15:33:53 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hLUlR-0007bp-PR; Tue, 30 Apr 2019 15:33:49 +0000
Date: Tue, 30 Apr 2019 08:33:49 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V2 3/3] nvme-multipath: improve logging
Message-ID: <20190430153349.GC26879@infradead.org>
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
 <20190429032442.5923-4-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429032442.5923-4-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: hare@suse.com, hch@lst.de, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +		dev_info(ns->ctrl->device,
> +				"nvme-mp: status 0x%04x, resetting controller\n",
> +				status);

This message still looks a little gibberish to me.

Why not:

	"resetting path due to unhandled error (0x%04x")"

> -	dev_info(ctrl->device, "ANA group %d: %s.\n",
> +	dev_dbg(ctrl->device, "ANA group %d: %s.\n",
>  			le32_to_cpu(desc->grpid),
>  			nvme_ana_state_names[desc->state]);

I've applied this hunk to nvme-5.2, thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
