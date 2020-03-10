Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF451803F0
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 17:50:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34N3dlYc/9ZWArh8Dya7VQEXuQ0Gclzl6XLVYrc2CMg=; b=TMo74ln8Llgw3W
	C+Ip1OFq8ZE/EBivzkXSXmFpdN3TCwaDisG8G3spMNDJEh79DNfxrCw/Wc7nI5qg4jYZDivj25gMn
	IX2FxW6dPz0H+BgmsEwSguYhQHeQicAsz/macStDFfbmoUP1YngUQ6WQcchGFGUfg5iDoGXjRWCAt
	2dWWGhKcq3157UWDKVS6hmTMhfBoONuwbh1FcjOFJL4mYyJyEi8j/CXqZqy0ARmBzD8LECZ1NueIW
	tSGUI2m4VGPieoZow+OpN66AjuxQr2XHfh7ntXF8UOJFz9Xx6ADUHrpcz2uffEERQ4J7WurGv05Lg
	PfeFcwxJcBVSqM05j6bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBi58-0008DN-Fi; Tue, 10 Mar 2020 16:50:14 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBi53-0007fz-1c
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 16:50:11 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 35F2768BE1; Tue, 10 Mar 2020 17:50:04 +0100 (CET)
Date: Tue, 10 Mar 2020 17:50:03 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH V3 1/3] nvmet: Add get_mdts op for controllers
Message-ID: <20200310165003.GA6986@lst.de>
References: <20200308105505.14305-1-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308105505.14305-1-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_095009_241049_A77A86C4 
X-CRM114-Status: UNSURE (   9.17  )
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

On Sun, Mar 08, 2020 at 12:55:03PM +0200, Max Gurtovoy wrote:
> Some transports, such as RDMA, would like to set the Maximum Data
> Transfer Size (MDTS) according to device/port/ctrl characteristics.
> This will enable the transport to set the optimal MDTS according to
> controller needs and device capabilities. Add a new nvmet transport
> op that is called during ctrl identification. This will not effect
> transports that don't implement this option. The return value of the new
> op is according to the NVMe spec definition for MDTS.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
