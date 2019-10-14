Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7E8D65DA
	for <lists+linux-nvme@lfdr.de>; Mon, 14 Oct 2019 17:05:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDdSUVii+xIxsp/AeuZtEbFJtDa2QbAjg+MbvgpFMgU=; b=lACwmkymT9IzTk
	uSRWT6UKTXSJ/7QIu5Hi3PufoynZWKMryW4zNFm6A5mCL9nzvGBa7LZASOECeVB2odjnpXWUjp58X
	hQLFaTLvt/BLAS+7hHG/w6gIZd7Cz8mYrQMhAMj6bLZo/f450pgMXP/diOOyMLKMAUxzmJEChyNeU
	1VZmVb6d4wCwCGhH3LbWdOaxaOUNICAA1Tjc+/VV4cSk3EO7IZi+VDytOhXJmq/0FeD6dFVY/ejn1
	0tdXNopxmG+yCuPJedrAL50W8NyE4drvauQWPHl3dsfJvwMAz0Uol5pctToprX3fZiTSmMOZnnR+T
	rl/aEe2czjHzYVNKpX7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1uu-0008Ff-5y; Mon, 14 Oct 2019 15:05:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1up-0008FM-9x
 for linux-nvme@lists.infradead.org; Mon, 14 Oct 2019 15:05:44 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 457662133F;
 Mon, 14 Oct 2019 15:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571065542;
 bh=nxOC5dvsMTgD0ttkPf8iBduFG+tDMaGm4cPAM8KUjlg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JnSlCbWpQKHg6C+QnSHIFhfWV8xnErNshBy2n1DGTgWcU48DmQCgFmY8RSxaEBgTO
 ZoJ5vgIwhWG4iLFxqvbf3onefKwbRYx3yevTHPyZUs/Yp6n+5zB0g81aAAzKV+dmMg
 StOaAqkYCEJya2CFFuuhuDg0kGwgypJT7QnRo4ps=
Date: Tue, 15 Oct 2019 00:05:33 +0900
From: Keith Busch <kbusch@kernel.org>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH v2 0/8] small NVMe cleanups/fixes
Message-ID: <20191014150533.GA6142@redsun51.ssa.fujisawa.hgst.com>
References: <1570985858-26805-1-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570985858-26805-1-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_080543_361941_9AB388B1 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me, israelr@mellanox.com, james.smart@broadcom.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Oct 13, 2019 at 07:57:30PM +0300, Max Gurtovoy wrote:
> Hi Sagi/Christoph/Keith,
> This series include few fast-path and code readability improvements from
> IsraelR and also few memleak fixes and new status code introduction from
> myself.
> 
> This series applies cleanly on top of nvme-5.4 branch, commit 3a8ecc935efab
> ("nvme: retain split access workaround for capability reads")

Thanks, Max, applied to nvme-5.5.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
