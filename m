Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3ACE36C96
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 08:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiwNOCweDFfslKxP+RsCFaP4L/1TVPM6zqUFD9oytVk=; b=GWW8XJlMuQ/x+D
	6U/O+G71GXte/iBawWv5IWyzfa+a/DF31ztySa4XCNxFUCrmpr40zl+B2jgI+Nd3gKSrkxYGzuGeh
	CZSUQqQGufvE8OFI9V9z5WD5V+7QNDFmdLkIvr8kx5MqXBnSX0/IsmYZ8bCobYo09OxglzBAF4vQF
	AfWOzxyGmwC+YQEEKU/4up39gN12uP4Xrry1rzfd/3ALgnun2r1SySBGlFEmBiaRhX5JiTKdVc4im
	L6jB9FEG0wAqLvjw8TtNG/xPQi++F4TuXmEy82QOmlG8MGb/TTEq8poTQLxHEx/ux229r/7ocVDup
	ScV49ZrNnCfZkknXIyyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYmG8-0000uF-Gu; Thu, 06 Jun 2019 06:52:24 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYmG4-0000tp-5I
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 06:52:21 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id A864D68B05; Thu,  6 Jun 2019 08:51:53 +0200 (CEST)
Date: Thu, 6 Jun 2019 08:51:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [RFC PATCH V6 3/3] nvmet: introduce target-side trace
Message-ID: <20190606065153.GH27033@lst.de>
References: <20190606063229.17258-1-minwoo.im.dev@gmail.com>
 <20190606063229.17258-4-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606063229.17258-4-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_235220_358143_46362C24 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +#define nvme_admin_opcode_name(opcode)	{ opcode, #opcode }
> +#define show_admin_opcode_name(val)					\

All these bits can probably just move to nvme.h, next to the actual
definitions.

> +		__assign_disk_name(__entry->disk, req->ns ?
> +					req->ns->bdev->bd_disk : NULL);

Tis looks it will crash badly when using the file backend.  I think we
need to put a neutral identifier in, e.g. the uuid or something.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
