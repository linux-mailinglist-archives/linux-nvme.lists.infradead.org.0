Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C460A59491
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 09:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIGnwQ4/AaMwQdaoFeuJFiTPTdKW6xIQuVXIkkoKS1o=; b=ciX3jj/naaU/Ez
	S8pBh6JWyqy7EHD6GgwiZLCHXAVL2WnZ6KECrL9EhEJOkiQGiP9ZqvpNptn7gvITa5moKLjAHHcdP
	WWAX1v1IY4M2xLCELlg27vkMy1hDrIHyyYKje7KsTnTke86RyoN9CBht25WLuW4w7iO3oEe5s8FfQ
	EmZuux/uJyZOG3n8EdV4Otv8+apJQEMBfgHGIRl9Ba4j3mt4D5i3l7mbx7AigC9gCZpI4SDtH0L97
	5WdEj86CjLf/EESyDI4IjygoSjIIv6gda1nH33U/Ee4uOiz74Rp06OwLZ4sardFsxPCtnY0imBLBP
	AInMrQAbMTFjJ6RDb6lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkyY-0001MI-D4; Fri, 28 Jun 2019 07:07:14 +0000
Received: from [213.95.11.210] (helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkyL-0001Ly-0D
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 07:07:02 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id E229868CFE; Fri, 28 Jun 2019 09:06:57 +0200 (CEST)
Date: Fri, 28 Jun 2019 09:06:57 +0200
From: Christoph Hellwig <hch@lst.de>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH v4 3/3] nvme: Set physical block size and optimal I/O
 size according to NVMe 1.4
Message-ID: <20190628070657.GC28268@lst.de>
References: <20190627143215.27443-1-bvanassche@acm.org>
 <20190627143215.27443-4-bvanassche@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627143215.27443-4-bvanassche@acm.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_000701_194300_16881E79 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Bart,

> +	/*
> +	 * Bit 1 indicates whether NAWUPF is defined for this namespace
> +	 * and whether it should be used instead of AWUPF. If NAWUPF == 0
> +	 * then AWUPF must be used instead.
> +	 */
> +	if (id->nsfeat & (1 << 1) && id->nawupf)
> +		atomic_bs = (1 + id->nawupf) * bs;

I think we also need to take the NABO value into account here.  Probably
just in that we only set a physical sector size = LBA size, as dealing
with the offsets would be a royal pain (and I've never actually seen
an NVMe device setting the offset either).

Otherwise this looks great to me.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
