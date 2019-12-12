Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D2F11C9CE
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 10:46:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSqptJ+x9p7lqgNaQCkel1R4i84R9+eLzH9AnPdphjw=; b=AsMm04jN2RJBjE
	8h7kL3tJ09W0OvryuJQmfzQESN5jMPJn3O0f7+iTG46LF4MDNY33wcfMCR6NSlYrXznEBmIV0RbYU
	6QmKRn7Q4BE1A12v6UbdVft8Qb2I5d0CdZfae0bFxRpwfai7WAs1UqCGh+RD5JgMRHqA9HAEnmXt0
	hM6ahd6nD0oMX0IuL7FiZKYHgm2iyyq+7X2o+KGSvHLzHhSktcpPzMFJkk3E7afwtbfjm283+INem
	XcIqdXFnN8IlGsMOindzAkjEr9AU2AyjAB9lPV8fpcEsGK5MRjSyDqkuB7nvAkUNBbF7W9fNQ0SLS
	esqXHg2MtZULDSYP/u5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifL3T-0004F8-25; Thu, 12 Dec 2019 09:46:43 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifL3O-0004Eg-4P
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 09:46:39 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3BE2668B05; Thu, 12 Dec 2019 10:46:36 +0100 (CET)
Date: Thu, 12 Dec 2019 10:46:36 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V4 2/3] nvmet: make ctrl model configurable
Message-ID: <20191212094636.GA3681@lst.de>
References: <20191127094034.12334-1-chaitanya.kulkarni@wdc.com>
 <20191127094034.12334-3-chaitanya.kulkarni@wdc.com>
 <20191212092842.GI2399@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212092842.GI2399@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_014638_320571_8D906282 
X-CRM114-Status: UNSURE (   6.07  )
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
Cc: Mark Ruijter <MRuijter@onestopsystems.com>, hch@lst.de,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 10:28:42AM +0100, Christoph Hellwig wrote:
> Without using something like RCU this means all users of ->model
> now need to take nvmet_config_sem.  I guess using RCU here is simple
> enough - just use rcu_swap_protected and kfree_rcu here.

Actually, this should be rcu_replace_pointer instead of
rcu_swap_protected, which has been removed in for-next.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
