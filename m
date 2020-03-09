Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F0017EC40
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Mar 2020 23:47:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kunW1xFqQTn+2mN9KEEXEXLPh/H7p0Wi4Gn7aMqIkNs=; b=dDpNELpFoKQsjn
	WExDYViXOKY1fBRVjs/5ELpuK5OasBwbwqnEWmG+ev7I9NFKkGTRLmkksTK7oLiaAbDhpwI1Z+pnt
	vvwn7ya7oAKKcihK1KjcQr4P5ITmL1fvkceqytM00JvVhACz7dOxWlVq8tb/yOFwiwPShO5Oz0QHu
	vx8J6y0py2CvlB0TqM4FwpJYIxXKPxUyQJ+bIM50jlUo1M1IEzzfMJNxmvDB3r7SI9poOkWYT90fb
	CNtI3Md7QCdbK/AfIyo9wkgGgsRRg8eCXsCrEDy8dc/YGfRaTOgDpK3s9IZZipnbydRGN0MfLrL4p
	pO5v1/yyYOOwQF6Od67g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBRBZ-0007ef-OM; Mon, 09 Mar 2020 22:47:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBRBV-0007dy-AB
 for linux-nvme@lists.infradead.org; Mon, 09 Mar 2020 22:47:42 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E11CF2253D;
 Mon,  9 Mar 2020 22:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583794060;
 bh=SvsAGjNrMt59HZKZwYTJbI6BFHNnRlH51P7BxtYmZ3M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z8C7VKCQieDunJUdX2ah84ZZwFzZ3tAcR7sK8DhVq0HkMz/373rv7R8RcECcfMDBf
 OBPDhFTiH+BmKulO9RL8LJ4KyRSIV29f3TnoBh+Uj5o42c2MgNf8ijeaFEhj3ta3BH
 G/NzEIjSMhZgYuhiGydwYzeU74vgs+LQSV/w04CI=
Date: Tue, 10 Mar 2020 07:47:37 +0900
From: Keith Busch <kbusch@kernel.org>
To: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
Subject: Re: I/O performance with block sizes > 128k
Message-ID: <20200309224737.GA15411@redsun51.ssa.fujisawa.hgst.com>
References: <321f0a4b-8a75-8cae-2d77-34ad712225d3@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <321f0a4b-8a75-8cae-2d77-34ad712225d3@oracle.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_154741_373979_5817E30D 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 02:49:10PM -0700, Bijan Mottahedeh wrote:
> I'm seeing a sizeable drop in perf with polled fio tests for block sizes >
> 128k:
> =

> filename=3D/dev/nvme0n1
> rw=3Drandread
> direct=3D1
> time_based=3D1
> randrepeat=3D1
> gtod_reduce=3D1
> =

> fio --readonly --ioengine=3Dio_uring --iodepth 1024 --fixedbufs --hipri
> --numjob
> =

> The problem seems to be related to switching from prp_small_pool to
> prp_page_pool; the former is optimized for I/O between 4k and 128k.
> =

> Expanding the small pool size to cover up to 256k increases the
> performance.=A0 I'm not sure however if this is the proper and general fi=
x.=A0
> For one thing, expanding the pool size bumps the numbers for a short burst
> test (10 sec) but the numbers drop again significantly during a longer
> test.=A0 The behavior is not unique to io_uring either.=A0 Included below=
 are a
> couple of 256k fio pvsync2 tests as well.

I am surprised you're seeing such a drop just from the prp pool used.

What CPU architecture are you using? Reason I ask: the driver allocates
PAGE_SIZE for the large prp pool, but we really want ctrl->page_size
(always 4k). If your CPU architecture has a PAGE_SIZE larger than 4k,
could you try the following?

---
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index da392b50f73e..6ed07164d1e7 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2458,7 +2458,7 @@ static int nvme_disable_prepare_reset(struct nvme_dev=
 *dev, bool shutdown)
 static int nvme_setup_prp_pools(struct nvme_dev *dev)
 {
 	dev->prp_page_pool =3D dma_pool_create("prp list page", dev->dev,
-						PAGE_SIZE, PAGE_SIZE, 0);
+						4096, 4096, 0);
 	if (!dev->prp_page_pool)
 		return -ENOMEM;
 =

--
 =

> A related question, is it required for dma pool allocations to use
> GFP_ATOMIC?=A0 Looks they can only be called from nvme_queue_rq().Just as=
 a
> test, I changed the flag to GFP_NOWAIT, and that seems to be ok.

Yes, the atomic alloc is left over from a time when this happened under
a spinlock. NOWAIT should be fine here.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
