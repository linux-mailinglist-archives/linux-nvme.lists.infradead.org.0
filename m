Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D2BD5C17
	for <lists+linux-nvme@lfdr.de>; Mon, 14 Oct 2019 09:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yew6rny8W3k+DdLwRgAyVTT8sYhIRZbdnaENqYzFXN8=; b=o4ufQ5FOoHpSpY
	pYdyyEzoy0YrY80S3lfsHCGe8+Ri2wawT4lBN6yaj9/8yKgAhj3ufSZ7dejndlElvT9Qc7m6D0YDV
	MXNCX5xzlNnXNyqZqcTkRhJOYvf62VLpV9eb8ZM+CRU0kc6mcE7y0eqTpmbkhF111h1TRBRTqSyt6
	Tgmb7LYMRKVUVwyrqpAosyftx35rLlV7Cmp08mHBsGflDy3NMjQrRuJZ8umbfrCnceffug0A28F4Z
	MEk+5gCPh5UWEjuXWVrgtSxI6jiU+tBJq2UdwawFu9Trdeegz4l5Vp7uiNmgopaAiLDIc/NW7uTQo
	G0+o7h0n3YKfOMpUuhOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuaX-00011T-C9; Mon, 14 Oct 2019 07:16:17 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuZw-0000Qe-Ma
 for linux-nvme@lists.infradead.org; Mon, 14 Oct 2019 07:15:42 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id CE05068CF0; Mon, 14 Oct 2019 09:15:36 +0200 (CEST)
Date: Mon, 14 Oct 2019 09:15:36 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv4 0/5] nvme: double reset prevention
Message-ID: <20191014071536.GB10081@lst.de>
References: <20191010165736.12081-1-kbusch@kernel.org>
 <12fd3758-ff71-c02d-1545-5ce8189c2c59@intel.com>
 <20191011162714.GB75437@C02WT3WMHTD6.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011162714.GB75437@C02WT3WMHTD6.wdl.wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_001540_900559_B2A3F5B4 
X-CRM114-Status: UNSURE (   8.38  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, "Nadolski, Edmund" <edmund.nadolski@intel.com>,
 Judy Brock <judy.brock@samsung.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 10:27:14AM -0600, Keith Busch wrote:
> Christoph, any remaining concerns on this? If no, do you prefer I push
> this to 5.5 or 5.4? This fixings reported bugs, but it ended up a bit
> larger and later than I originally hoped, so I'm okay either way.

We're still relatively in the 5.4 cycle, so I think we should aim
for that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
