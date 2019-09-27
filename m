Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD6BC0D4D
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Sep 2019 23:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sroT4khnohrfN34TaavAzkYVPrF53zw36GXhmDLjTw0=; b=NTykzoZtw7HYGH
	qsdBxk7ttN6rhZBGr7j1zEC6tNEjlGKLsG2XvMl1N1Xpxvb0Rd+3aYuFH6tp4d3GjWmnaYvZumAyt
	Vt3MJIvUseHZycJ1dkNF8El7qiDPdEzjm/VmMO6cbXeKHmpwW55525aLuFinf8AJqV/gga+T2nSWj
	ZtOBMrPZSX+hP7x4EJz3vitGUs/kMlf2O0FGvrdjtZPfhHcAAjdOZYPHSLdVj+sRZJiZWW/Hpxrt6
	qppZE5YeuI+2GqGcaufZ8YmGyyLi0SkQ8PB7dhukJxdybKQ1/RnGUx2NAfhET3moruqoIQ+ACMyaa
	OSYMfYOm1Z6QUm2S8JkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDxsP-0000ve-Eq; Fri, 27 Sep 2019 21:34:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDxsJ-0000vL-CZ
 for linux-nvme@lists.infradead.org; Fri, 27 Sep 2019 21:34:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id F2BEF68B05; Fri, 27 Sep 2019 23:33:59 +0200 (CEST)
Date: Fri, 27 Sep 2019 23:33:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: kbusch@kernel.org
Subject: Re: [PATCHv2 1/6] nvme-pci: Free tagset if no IO queues
Message-ID: <20190927213359.GG16819@lst.de>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-2-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919213431.7864-2-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_143403_573601_FF212074 
X-CRM114-Status: UNSURE (   7.97  )
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
Cc: James Smart <james.smart@broadcom.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 06:34:26AM +0900, kbusch@kernel.org wrote:
> From: Keith Busch <kbusch@kernel.org>
> 
> If a controller becomes degraded after a reset, we will not be able to
> perform any IO. We currently teardown previously created request
> queues and namespaces, but we had kept the unusable tagset. Free
> it after all queues using it have been released.
> 
> Reviewed-by: James Smart <james.smart@broadcom.com>
> Signed-off-by: Keith Busch <kbusch@kernel.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
