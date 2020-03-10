Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5FC1803F5
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 17:50:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8O1Qp740ubO3gQTZHZQCj1toMBmSdtEMaqw71+hKnPQ=; b=YC8V61IfgyV94t
	2NR3BTb32+KwduXqIeehdF1l6ybErhX0tRSymaQ4Fj+wrkf3NLZnFEQ6iXLnTEstrga7JlGwbOee6
	cn06Ajnvw7Zo8AXIXTsb5igAbNhXDt7oj856svpXBuPEL0gvUDvhZwCQKs7iZnYr66sKGC23P69VM
	tiqyNgUlDSYC5mj7WhQyTXsl4yP0Y1JxYSgt+2LSEHx2nPRcgpkTgPq5lhseWPqdXznEWMvN7DQK9
	SVCxb1f0HciRXVCA0n687M9jGXEfdV+eJsqgu6+rc7wMt8LKtQ8iZfm89q6GRrGX4FPjdBuqlze6w
	5zqg61TkfylUFZSqpqDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBi5U-0008Oo-D4; Tue, 10 Mar 2020 16:50:36 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBi5O-0008Nz-HG
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 16:50:32 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A580868BE1; Tue, 10 Mar 2020 17:50:28 +0100 (CET)
Date: Tue, 10 Mar 2020 17:50:28 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH V3 2/3] nvmet-rdma: Implement get_mdts controller op
Message-ID: <20200310165028.GB6986@lst.de>
References: <20200308105505.14305-1-maxg@mellanox.com>
 <20200308105505.14305-2-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308105505.14305-2-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_095030_737882_A21EF24F 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, vladimirk@mellanox.com, bharat@chelsio.com,
 nirranjan@chelsio.com, linux-nvme@lists.infradead.org, shlomin@mellanox.com,
 jgg@mellanox.com, krishna2@chelsio.com, kbusch@kernel.org, hch@lst.de,
 bvanassche@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Mar 08, 2020 at 12:55:04PM +0200, Max Gurtovoy wrote:
> Set the maximal data transfer size to be 1MB (currently mdts is
> unlimited). This will allow calculating the amount of MR's that
> one ctrl should allocate to fulfill it's capabilities.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
