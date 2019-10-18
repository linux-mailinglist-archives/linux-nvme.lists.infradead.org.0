Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 275C2DBDDC
	for <lists+linux-nvme@lfdr.de>; Fri, 18 Oct 2019 08:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgVXsRM8nyq8ICljSRkYNbIhlxVgL9zei0pShmBmFlY=; b=Ug9TzuypiiLjs6
	ZGLZ7C2OvXlzk4e7441liwbBxF+IPmhwJa7b4GrzNJ0h8YFO/GtyhcrF2yPJ4+moWfTmMShA/3I4v
	/Z4ErkBbIVCP/2Jk4AEGy25wC95wr8dt3lUQ2v9kqaUleOSIINh9ztsyunVyX9B+RLYWw1G1RjcCS
	XsNvI9ygNG0qllxWXI+nv13FWUW7RdK3SY3efwyNhB+OLJM1p6kUiH41FL6QoDHbpxcuyN64N+NY0
	0nZig/F6/oRQcP/gxf+gSOlaefcPcpGTKF7t2CtEqhJeUQDRK3MxzdjVj5yuCvBCWu56sLPxbOQGg
	ndPFG6Uc1zmwKsjdACXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLM3i-0002xE-32; Fri, 18 Oct 2019 06:48:22 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLM3d-0002wV-8V
 for linux-nvme@lists.infradead.org; Fri, 18 Oct 2019 06:48:19 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D746268BE1; Fri, 18 Oct 2019 08:48:12 +0200 (CEST)
Date: Fri, 18 Oct 2019 08:48:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kevin Hao <haokexin@gmail.com>
Subject: Re: [PATCH v2] nvme-pci: Set the prp2 correctly when using more
 than 4k page
Message-ID: <20191018064812.GA23002@lst.de>
References: <20191018005926.GN27363@pek-khao-d2.corp.ad.wrs.com>
 <20191018025314.39229-1-haokexin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018025314.39229-1-haokexin@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_234817_449694_00B459D7 
X-CRM114-Status: UNSURE (   5.90  )
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
