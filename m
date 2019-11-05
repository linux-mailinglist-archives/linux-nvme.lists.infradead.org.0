Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 285B5F045A
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 18:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11IoBnh88OhoxvdDiuYmPnuo4rbO3yYs2rXwbszSzME=; b=IrtXmwOT24IziE
	pnjGouGRqAIkf2s4lqe90DElxm9CH3QwDLtLiDQZCaL0S6Px4oStID67OkzbKlJt8SIrh/VKQv5iM
	k7kK48oyh7dzkTBGKfdrFLlVPdjsbHcbpJNdMEYV//sYG/JfskSn6NQ0Y3lpPPsQ8m6atZjDhCzKY
	TBvXet3rXA7h6Xi466SZbCQnOk7FL5l8o7ItvIbTRdf0bZ5jbthRqFA2423QPisiqPytF08b7pINd
	tHSuY07Y/+4h4f6ePflLb9eIV1qjf88qaRjeTPOf63l7FaeqRE1rewurX1Yc43LKPiLMcyOiZun+U
	U7KuA5HhOskSIWqktukQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2y5-0002Pc-DC; Tue, 05 Nov 2019 17:50:13 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2xp-0002P6-C9
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 17:49:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6308268AFE; Tue,  5 Nov 2019 18:49:55 +0100 (CET)
Date: Tue, 5 Nov 2019 18:49:55 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 03/15] nvme: Introduce max_integrity_segments ctrl
 attribute
Message-ID: <20191105174955.GB18972@lst.de>
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-5-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105162026.183901-5-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_094957_557231_9B29C047 
X-CRM114-Status: UNSURE (   6.81  )
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
Cc: sagi@grimberg.me, vladimirk@mellanox.com, idanb@mellanox.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org, shlomin@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +	/*
> +	 * NVMe PCI driver doesn't support Extended LBA format so using 1
> +	 * integrity segment should be enough for a separate contiguous
> +	 * buffer of metadata.
> +	 */
> +	dev->ctrl.max_integrity_segments = 1;

Not just should, but as-is we simply can't support anything but a single
segment.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
