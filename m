Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD0E1FF9F2
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jun 2020 19:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIuBqPk9kNcfOpoA4oYc3eaaFwEwlo17WECnnd3DYgE=; b=d/1E1XBIUa0T/o
	GJ4qf2TjNULA2qyfuYn+dlYig4FQVIyNSajRzzGUhOHguMqf+m2RaNisyvKTs1DJ5ur+nqz+PDPI7
	Tkfiv/FXzcMYW9mUfhLMWFKGGOr6+vhCYKfix2itIEUBBKOoCg3+1GIGS6uiHik+tvfb3Zt4ncSOM
	Qu1KxRz53yNcB80goKCr5FngmYnIatCygSq/yMKxMrIeg0Iumj6jTkwDa9Zw1uC9sjx5htxeuq2XQ
	S5/TKqnWfgv3XdI2BGw5qkZpy6EKOH6gJMvmTBPcYxuhz5tNAsvNSaPtAUx7JAPoWLLrZiLelEjC5
	hnvH3rjSmfQkltrDYKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jly4g-0002FI-2j; Thu, 18 Jun 2020 17:11:38 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jly4b-0002E6-Q2
 for linux-nvme@lists.infradead.org; Thu, 18 Jun 2020 17:11:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E99FBAFA7;
 Thu, 18 Jun 2020 17:11:25 +0000 (UTC)
Date: Thu, 18 Jun 2020 19:11:24 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Niklas Cassel <niklas.cassel@wdc.com>
Subject: Re: [PATCH 1/2] nvme: remove workarounds for gcc bug wrt unnamed
 fields in initializers
Message-ID: <20200618171124.tfowb2ejv3bnvxr4@beryllium.lan>
References: <20200618143241.1056800-1-niklas.cassel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618143241.1056800-1-niklas.cassel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_101133_987648_6FD312EE 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 18, 2020 at 04:32:40PM +0200, Niklas Cassel wrote:
> If, for some reason, we want to allow builds with gcc < 4.6.0
> even though the minimum gcc version is now 4.8.0,

Just one thing to watch out: the stable trees are still using
older version of gcc. Note sure how relevant this is though.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
