Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B777DF0828
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 22:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaTfq3GNWSNQpUMN6Np599oWCzEAEsq6mJOJu37GiaA=; b=Fwp2CGxN1AKBXA
	Xj4PDVbr76dmnPfGsAkwttoiokzLQwhLshR8k/1csK761XmpRoX2z2005TBpIkmmSa2qxZaz7M2NW
	iiIWCt3UNuqz04X/Jj4ksvn/LruSwyJIK7lubcs2X4n66WkbUAiyKxSQTd0LAmCRaZDhUisk0JAj1
	9aCv16IY5fkIJHNMcndml7cZ8iIrUvyQiM7sHGl0Z4i7p3p7PXvOfZmk5BVz8LuSAUc47RBXcfKcT
	ER5k+yPXEboCPFWBryUPOPWtujlpSDQzgbimUqf9Bg1mceXMUEOw1fZQp0rgPwNM7K54NRYUhQsHr
	dkFo2G7UiNub+CdCBihQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6H8-0005DQ-Sg; Tue, 05 Nov 2019 21:22:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6H3-0005D1-LS
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 21:22:02 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D83C2084D;
 Tue,  5 Nov 2019 21:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572988921;
 bh=0kkkMfA630BywA1Wx1CXNtFvrebEU8gznAn98t3tvt4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S86IXm5gYkYw9cMyKvFhdX6L+ZTBrdSQ+m9Tn/2v3u6zJ69MIZAPLRd/Gf+cGsG6F
 aKpxJJ8/vyGCHUXDphUTymlLYQ6+EhUZfMUoCwlLwrkZuRzlNlQwb6n0Dv7cN2tI1e
 2n+qRsza7NNO0P1LGA3W/mQQ66l8QVrLmwvJsBbU=
Date: Wed, 6 Nov 2019 06:21:55 +0900
From: Keith Busch <kbusch@kernel.org>
To: Charles Machalow <csm10495@gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64 to explicitly mark rsvd
Message-ID: <20191105212155.GA645@redsun51.ssa.fujisawa.hgst.com>
References: <20191105061510.22233-1-csm10495@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105061510.22233-1-csm10495@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_132201_721561_7B79F080 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 marta.rybczynska@kalray.eu, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, applied for the next 5.4-rc pull with an updated changelog to
indicate the "Fixes" commit since not having the padding does indeed
break the compat ioctl.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
