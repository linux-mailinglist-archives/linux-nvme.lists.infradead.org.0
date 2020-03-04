Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D798179556
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Mar 2020 17:32:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGpmcT5veagO6kbVphzOmsyBe965vY6x7/99keMalJE=; b=rok3in1H0IoU04
	8dDVAcTFuYxFF+v1eNnpEYTFm82BhbH4SUVuT/UotVoTjjSJFD7KK5MrHVPFbPhmhtjEwLW3YvmBW
	+J0lqs2FXykvym4IyYiWb2noMFUj1wHirTnlfw/qe4qTWGnEXc3MVlGV+kvJZ3Wf9kyV3JSe0ml/g
	7H4SksZX7Pz/1M4ZznQi7jjOphOcx/kLQ6X9iuKtvUDhpZPQonHOJE+kOHbcKUkGGilbaSLes4mcM
	RJJOcUIVa1sV/U1Ylvr8Iz5RED3X/dtdpPrvHS0pf8AXW+LU1j93iiTPoW1xiS2GZWP9BEaJPx2Ic
	0DuQIzZOT4+sFhO/7vHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9WwO-0000T9-3H; Wed, 04 Mar 2020 16:32:12 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Ww7-0000J0-Q8
 for linux-nvme@lists.infradead.org; Wed, 04 Mar 2020 16:31:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C38E068B20; Wed,  4 Mar 2020 17:31:53 +0100 (CET)
Date: Wed, 4 Mar 2020 17:31:53 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/3] nvmet: Add mdts setting op for controllers
Message-ID: <20200304163153.GA11846@lst.de>
References: <20200304153935.101063-1-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304153935.101063-1-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_083156_023892_C0A9A50A 
X-CRM114-Status: UNSURE (   8.19  )
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

On Wed, Mar 04, 2020 at 05:39:33PM +0200, Max Gurtovoy wrote:
> Some transports, such as RDMA, would like to set the Maximum Data
> Transfer Size (MDTS) according to device/port/ctrl characteristics.
> This will enable the transport to set the optimal MDTS according to
> controller needs and device capabilities. Add a new nvmet transport
> op that is called during ctrl identification. This will not effect
> transports that don't set this option.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
