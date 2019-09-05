Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FAEAA807
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 18:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6hik8XgSdU1G/8p1l8e0nMK2eSiHUpR4ufpAfaGJdo=; b=TbJvjwfRk85gt6
	c3Ds4jdxed6TpdPt2/NY5GQ/oXUP1lvnSwQMlT1fPcuR7EBKTgFRV3V9v8064ax7Z/ijy79ydP7ir
	/4hY7gKW9ylurQIioQJsgluAfPQojP/TcHH6sQrUzaIuCcrcN1bdN0ZiF8udJyPUptL312QDwmYpO
	pSXoZkEy1v5AQR5urBkvNKOl1yIo9ePmRcLkaEJ1oDZQoLmm/aEBeTpaInU74KPZW0f/RcrKfLDSC
	EbYpGHHCn9Tw37jDfHhQEIEmLqF034N9fCCCYdb+3CLfHsV1eH4luhPjD+27RTKZIzV7v3Yo5Cy4S
	1pBtqIdus/IDFHzckDbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5uMM-0007KA-7p; Thu, 05 Sep 2019 16:11:46 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5uMG-0007JV-K6
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 16:11:41 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0B01668B05; Thu,  5 Sep 2019 18:11:35 +0200 (CEST)
Date: Thu, 5 Sep 2019 18:11:34 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme: Restore device naming sanity
Message-ID: <20190905161134.GA22363@lst.de>
References: <20190904173159.22921-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904173159.22921-1-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_091140_811814_2DB426EB 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 11:31:59AM -0600, Keith Busch wrote:
> The namespace names must be unique for the lifetime of the subsystem.
> This was accomplished by using their parent subsystems' instances which
> was independent of the controllers connected to that subsystem.
> 
> The consequence of that naming scheme meant that name prefixes given to
> namespaces may match a controller from an unrelated subsystem. This has
> understandbly invited confusion when examining device nodes.
> 
> Ensure the namespace's subsystem instance never clashes with a
> controller instance of another subsystem by transferring the instance
> ownership to parent subsystem from the first controller discovered in
> that subsystem.

Sanitity sounds a little exaggerated.  The nvme naming isn't really
that different except that the block devices uses number where say
scsi uses letters.  So maybe tone down that claim a bit, but otherwise
the patch looks fine.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
