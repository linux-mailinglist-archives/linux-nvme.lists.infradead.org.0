Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921A498878
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L87qKsyYdzgjdPAgzlOkkUorCF+gwr9M1nqEbIMMqR4=; b=dfJxx6PMvq+J2l
	BetiJEcVpez+lIokvkdrWlNvu2EnZMw0HicpYCZgbcZHywQiVQuzTEimHxr74vFtIZ06bJ9+g7Fcn
	txbw/8D3+k1TuR8AbVfedP6QzGTIAYr+rNLiibpEmxzkEng4SONo58sLKF82sQLEecWksf9s0CHpC
	7FyOk5lP5jODsUzqsFPR5PRzCcNlz+PJd4p38Y9Nj9lm3C62AuQMPjEJsfZ0FjDxQh/scq8RBjAdq
	CLUaIjHHGuCXkqUd5yDdqB8VOmdDRemkmZBSedcLxNSMSEPSXWyjC/Lc75Gl1pTxAIoSd2jEXH3Gr
	oOQFmowXbJCr/0Wv2oeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0axn-0001dC-Sz; Thu, 22 Aug 2019 00:28:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0axi-0001cs-O4
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:28:23 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 149D468BFE; Thu, 22 Aug 2019 02:28:18 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:28:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v4 2/4] nvme-pci: Add support for variable IO SQ
 element size
Message-ID: <20190822002818.GA10391@lst.de>
References: <20190807075122.6247-1-benh@kernel.crashing.org>
 <20190807075122.6247-3-benh@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807075122.6247-3-benh@kernel.crashing.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_172822_939786_6D1D7E7C 
X-CRM114-Status: UNSURE (   8.37  )
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Paul Pawlowski <paul@mrarm.io>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 05:51:20PM +1000, Benjamin Herrenschmidt wrote:
> +#define NVME_NVM_ADMSQES	6
>  #define NVME_NVM_IOSQES		6
>  #define NVME_NVM_IOCQES		4

The NVM in the two defines here stands for the NVM command set,
so this should just be named NVME_ADM_SQES or so.  But except for this
the patch looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

So maybe Sagi can just fix this up in the tree.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
