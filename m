Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B021E7D2C
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 14:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9e0WP3XCjCFN6nEMbROgxdvFogV23nHNc49OGuYvfgA=; b=VR/7mRh9t0yuBm
	E2LILFIgpsJbVIBaLSvQ20mmSpkaRL67lmGds3I8ix6m9d7UlLX30UmPGDrK7ukyOvI2o8SFXNAFB
	aeFtXIEo5tqY6ttMq0Zo/eP53vbyJFbOZSRdoEOyhaHhSUFzmdCuH+QqgmEIrpwS5HQ9E7COUgWIv
	Ub/QFILT54ZMnDdzAr4GMB5/+TyF86upnx3q+iR8gjD9DW1rJKxt5Sduk1daVQ1v8GX5ib06TeVJp
	smj4acQ/nABRI6Pw1FfhNmtC6IMPzTA6V2JVYUyRQirAO452bZ+pWF6aAo7qes2FpB39eqiW3if1k
	w4Ntz/bz3L8KI0NBCCKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jee76-00025h-TX; Fri, 29 May 2020 12:27:52 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jee72-000258-Fo
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 12:27:49 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 92FFF68B02; Fri, 29 May 2020 14:27:46 +0200 (CEST)
Date: Fri, 29 May 2020 14:27:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: Re: [PATCHv3 1/2] blk-mq: export __blk_mq_complete_request
Message-ID: <20200529122746.GB28107@lst.de>
References: <20200528153441.3501777-1-kbusch@kernel.org>
 <d9376cc4-16a2-2458-7010-d18b780c7069@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d9376cc4-16a2-2458-7010-d18b780c7069@kernel.dk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_052748_668909_390523AC 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Keith Busch <kbusch@kernel.org>, linux-block@vger.kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 09:36:23AM -0600, Jens Axboe wrote:
> On 5/28/20 9:34 AM, Keith Busch wrote:
> > For when drivers have a need to bypass error injection.
> 
> Acked-by: Jens Axboe <axboe@kernel.dk
> 
> Assuming this goes in through the NVMe tree.

Given that other drivers will need this as well, and the nvme queue for
5.8 is empty at the moment I think you should pick up the next version
once it has better naming and documentation.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
