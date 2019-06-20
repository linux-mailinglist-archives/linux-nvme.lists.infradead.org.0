Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9663A4C780
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 08:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4q3k2GhwI7mVOnaL+0hMKCxBuKO1lmWv7B6OoOrlcE=; b=jA+oE7GGZBpREg
	MmuUudH1WfoLGq50C2PlO4W0DwZ9DgProfnP0qPdMcVUfq2lnJLfwIftaBU8AziM6mezr1+Nqd2S1
	uWNjbpjfLE4V/uW7pOhUtHvuo4IRkpZlGVPrp0bJFo8cLs5xX2/1QW0Vt/gRJuD4mpDc/xQDjLc8u
	hjSyEsyQzYq7CeyY0sUMh8wpjfDn/HRy06sH8/btB0E6YVyqXwnid2s8z8XT4GpNx5VQ/SYOXGoCc
	7oTKZxm6zbqgXJiXtO8jKyCWbuzkzLZUZwpn7GyIOGyCYRxk0LwqJ2uiB9u8CGVrHhALJyzRiHXTT
	g1bjQ5zmTgH70Eke4YNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqa2-0001y2-Ob; Thu, 20 Jun 2019 06:29:54 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqZt-0001xJ-CK
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 06:29:48 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 03CFC68B20; Thu, 20 Jun 2019 08:29:14 +0200 (CEST)
Date: Thu, 20 Jun 2019 08:29:14 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvmet-rdma: move port tsas initialization to rdma code
Message-ID: <20190620062914.GD20765@lst.de>
References: <20190619230006.15715-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619230006.15715-1-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_232945_564933_7968F61A 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 04:00:06PM -0700, Sagi Grimberg wrote:
> Also, look at the device transport capability to send
> the correct trtype (ib/roce/rocev2/iwarp). Note that if
> we are listening on addr_any we still return "not specified"
> trtype and the same goes for referrals.

I very much disagree with sending the type.  That whole concept
has been a horrible layering violation in the spec that we should
not support.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
