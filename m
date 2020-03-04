Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D567179557
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Mar 2020 17:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLPzPV+c3AIW5UL6ugNvyY0xZ9B8imkd3tQjRhsfml0=; b=CgOACo/lxw1xgz
	/fW1GxVUhHzB1lMX3y5/Znt9xhDxHEcL9btoKX8bvdAGnTE38rFDiYcGlIypYhglwN5ZopWB2UD21
	433aU5LK1EwP3f+Q3vayb7DiI7c+p3M2fG6wv4jF4XpduKxEVduWxC0iGLihXH3VTsIvJ5OWKRsu/
	VxEJh3uJtV4t6LLQ4tH/njauM2Qa2+BluLOXEW9bHd1e0ZGhfy33szvPFNfwURKolY8iauw+9v5yY
	wwk2+TYnrQmzrREmJ98eXUVopjKKDtXdlNQ9OofhrvgWTIDDU0jQZqwaeL2wVk856cH0czDnyzFZD
	+Y/1kqjD+P/SIZcsdGug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Wwc-0000d1-Ds; Wed, 04 Mar 2020 16:32:26 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9WwJ-0000VC-Jx
 for linux-nvme@lists.infradead.org; Wed, 04 Mar 2020 16:32:09 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9870D68B20; Wed,  4 Mar 2020 17:32:05 +0100 (CET)
Date: Wed, 4 Mar 2020 17:32:05 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 2/3] nvmet-rdma: Implement set_mdts controller op
Message-ID: <20200304163205.GB11846@lst.de>
References: <20200304153935.101063-1-maxg@mellanox.com>
 <20200304153935.101063-2-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304153935.101063-2-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_083207_825912_54C9C554 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, Chaitanya.Kulkarni@wdc.com, bharat@chelsio.com,
 nirranjan@chelsio.com, linux-nvme@lists.infradead.org, krishna2@chelsio.com,
 jgg@mellanox.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 04, 2020 at 05:39:34PM +0200, Max Gurtovoy wrote:
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
