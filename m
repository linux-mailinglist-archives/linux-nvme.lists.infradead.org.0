Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E930A1F8F11
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jun 2020 09:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0F7PDd1HNXpzCsAWVkA+gX2igGN8975oUk01LzJ7tAA=; b=arM8EtOhuEsnnu
	W0sey5g6X0gzlOuIx1TiWKU9URoWfCzkqYEeGvoft1DNCklutTjIb8DOnTHzSib/kUg5a65/0BnYn
	raOR7PIItCLzKovZerdzub20RdlXgDP+PzldOEM3k5ryd/keiWmC8FFR1X+J0c/W7h/Sinqzk45wV
	OxxlxyoUe6xP3kwECj/VwNprFIuRH2UE6IlFBBJUEZeW4sOkNhapg8S0nobaUiZJil20M8dwutBPN
	osENk6xLKvS4W8VHp/DLC6ErnkZfqFWB8wPXmdon4dClXn/Q0mca8bDFDyJc0LG2yTHyQqVAmPb1X
	CRzTp/RVw6zfvU7jX3Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjI2-0003gB-Rc; Mon, 15 Jun 2020 07:12:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjHx-0003fM-B7
 for linux-nvme@lists.infradead.org; Mon, 15 Jun 2020 07:12:15 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E3CAA68AFE; Mon, 15 Jun 2020 09:12:04 +0200 (CEST)
Date: Mon, 15 Jun 2020 09:12:04 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 2/2] nvme-pci: override the value of the controller's
 numa node
Message-ID: <20200615071204.GA21856@lst.de>
References: <20200614151556.88558-1-maxg@mellanox.com>
 <20200614151556.88558-2-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200614151556.88558-2-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_001213_529552_22D7DF85 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, israelr@mellanox.com, james.smart@broadcom.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, kbusch@kernel.org,
 hch@lst.de, "alexanderka@mellanox.com"@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Jun 14, 2020 at 06:15:56PM +0300, Max Gurtovoy wrote:
> Set the node value according to the PCI device numa node.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>

It doesn't seem like we use ctrl->numa_node for much, though.
For RDMA which initially added this set->numa_node is initialized
based on the ctrl one.  Maybe you want to add a patch to at least
use it for the set initialization everywhere as well?

What is the motivation behind the patch set?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
