Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E901845B4
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Mar 2020 12:11:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmFXZA/LaNZLG/WtwoYJyqPaSiH3SHwaPKoidKIIvQ8=; b=b4+Ul5vm8+Dd+c
	tY+1Kh7vCMzukevfcHl5mffYhHuNw2cZ1VALAUONiX6SQoXiBMJya3MYGHDYpWx5YZRLaAPaVDHUi
	9BOwiwtPFxHtUKrhP8ArSIdyKoQG+C5gMArYUYb/BPQ1ZaUFTXVpVqXCgZmeHM175liVsrHph7133
	Rp8s+LB61O2OQp4cXk878pkZpCulPxFdDI1laQ0q2D70rV8DYpGNyUGlxUTCqOSZw3zpI0roZsDXT
	b4OccGLk3WXx/rAmrhPho7DhmHgWkQmwRErLs3f0ur3tRCuaclnYd4GpZbGzrBki3KHwxaaHTJwgW
	eFThbDpgfNNRFakriuIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCiDu-0006zE-Qh; Fri, 13 Mar 2020 11:11:26 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCiDk-0006wR-Qd
 for linux-nvme@lists.infradead.org; Fri, 13 Mar 2020 11:11:21 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E0D5A68C4E; Fri, 13 Mar 2020 12:11:14 +0100 (CET)
Date: Fri, 13 Mar 2020 12:11:14 +0100
From: Christoph Hellwig <hch@lst.de>
To: Balbir Singh <sblbir@amazon.com>
Subject: Re: [PATCH v3 5/5] scsi: Convert to use
 set_capacity_revalidate_and_notify
Message-ID: <20200313111114.GE8264@lst.de>
References: <20200313053009.19866-1-sblbir@amazon.com>
 <20200313053009.19866-6-sblbir@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313053009.19866-6-sblbir@amazon.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_041117_024722_FAD568DF 
X-CRM114-Status: UNSURE (   6.73  )
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
Cc: axboe@kernel.dk, Chaitanya.Kulkarni@wdc.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 05:30:09AM +0000, Balbir Singh wrote:
> block/genhd provides set_capacity_revalidate_and_notify() for sending RESIZE
> notifications via uevents. This notification is newly added to scsi sd.
> 
> Signed-off-by: Balbir Singh <sblbir@amazon.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
