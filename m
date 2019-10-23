Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC2FE0F9D
	for <lists+linux-nvme@lfdr.de>; Wed, 23 Oct 2019 03:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oh99xhCa8wRxA+ZSuWzVNS1maFCfNELGJbPTDMRpi3k=; b=Iq+BlYyWkFxXey
	BxGSczfYLCaSkd5MR5OsMSOBR2g6xPosXcj04HIstbPx/zyBj9LO5cRZqeEp57oQOZVQmpNVJmcZC
	5qySA+YtAfEuA9VUr1ZEJWFjdDgzVg0CrKocBM6IYjCxkJIhTRRpqr/wvn3TzIh2/UI9nbyKTo/ce
	Tqd1frFlthf7Fy4plssxN6c2nay/72Bhuog3qFFt88YbkmvI7Ykvyc3uKFekRDQnwXsgl1i2+vsqU
	hF+D88YnQAcGWfSjxEmBa5WdwHZKoOoteRyFbPgdCrcMu9smPIdNsY/ud/8zFw7GawpCnQxvYzW8i
	8WGJl6lmqfZSA5frqnYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN5IB-0004ZX-CK; Wed, 23 Oct 2019 01:18:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN5I6-0004Z7-Dd
 for linux-nvme@lists.infradead.org; Wed, 23 Oct 2019 01:18:23 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7659A20679;
 Wed, 23 Oct 2019 01:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571793501;
 bh=Bw0/TnI87+PCX28Mqjm+a+pamH85slRig8ez/oJLqHk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tUoKG6JLiMBpyUThnswyrzp0gZGqrvxX7LZdeyGM21roJzlZDzqEQ+4QSf8ujbRvS
 lZGpsmb5Ui07UVje0TZI9DV4+xSVqckZh+KtnP4mcAn8JDjol/xgx0okFyJMF4UjEv
 fMHwNPJduk/+cJg+wPZRYUIwNM5ldH58W84hBZIs=
Date: Wed, 23 Oct 2019 10:18:14 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 1/2] nvme-multipath: fix possible io hang after ctrl
 reconnect
Message-ID: <20191023011814.GA15012@redsun51.ssa.fujisawa.hgst.com>
References: <20191018091016.GA25478@lst.de>
 <20191018183251.501-1-anton@lightbitslabs.com>
 <7180cfee-d1d0-6dda-1bae-53235dc49a05@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7180cfee-d1d0-6dda-1bae-53235dc49a05@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_181822_485435_F7DCC622 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: keith.busch@intel.com, Anton Eidelman <anton@lightbitslabs.com>, hch@lst.de,
 linux-nvme@lists.infradead.org, hare@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 12:48:35PM -0700, Sagi Grimberg wrote:
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> 
> Keith can you apply these to nvme-5.4-rc?

Yep, applied to nvme-5.4. Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
