Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560AF13C81
	for <lists+linux-nvme@lfdr.de>; Sun,  5 May 2019 03:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/EnBlMXrjQWDGSi/nHruJxJi1o2mNIX7O1W6pkq7Oeg=; b=gX0FIDFiYcL7DV
	WDXSguMabxC5RgVeSEphWzm+QJQigmasYuWkics7PSOGPXnXrJN8hYKepMvKutvEfL6rHk+lyE8xp
	CLnG62AMIS0nSbZw7hgY8f6/w1MYHkPrsglTUvesjDF8QHwYovRSqFUEx/mHEL0U6vrhlCq4qWaY1
	idJfHPDW9SfshyZeebhbCNL7yEcLd6vG04nsdh970dALlAW0zoynl5RtzUYhdr2crIPcwiuwJC3bP
	gAyaSbvZ0BQ3XZvU1uLyUKhHLF+sGN3tPuoGoaFX6hnNf6MXSaySKpnAR50oZfeN150EaPD/Yt3UJ
	b5oOTdXIUfvpIWiv7ukQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN5g3-0005yJ-Oy; Sun, 05 May 2019 01:10:51 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN5fl-0005xW-Ql
 for linux-nvme@lists.infradead.org; Sun, 05 May 2019 01:10:36 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3A231CA1F5;
 Sun,  5 May 2019 01:10:32 +0000 (UTC)
Received: from ming.t460p (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B03C60C18;
 Sun,  5 May 2019 01:10:23 +0000 (UTC)
Date: Sun, 5 May 2019 09:10:18 +0800
From: Ming Lei <ming.lei@redhat.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
 linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH V4 0/3] scsi: core: avoid big pre-allocation for sg list
Message-ID: <20190505011017.GD655@ming.t460p>
References: <20190428073932.9898-1-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428073932.9898-1-ming.lei@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Sun, 05 May 2019 01:10:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_181033_888267_C2379F41 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 netdev@vger.kernel.org, "Ewan D . Milne" <emilne@redhat.com>,
 linux-block@vger.kernel.org, Chuck Lever <chuck.lever@oracle.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 03:39:29PM +0800, Ming Lei wrote:
> Hi,
> 
> Since supporting to blk-mq, big pre-allocation for sg list is introduced,
> this way is very unfriendly wrt. memory consumption.
> 
> There were Red Hat internal reports that some scsi_debug based tests
> can't be run any more because of too big pre-allocation.
> 
> Also lpfc users commplained that 1GB+ ram is pre-allocatd for single
> HBA.
> 
> sg_alloc_table_chained() is improved to support variant size of 1st
> pre-allocated SGL in the 1st patch as suggested by Christoph.
> 
> The other two patches try to address this issue by allocating sg list runtime,
> meantime pre-allocating one or two inline sg entries for small IO. This
> ways follows NVMe's approach wrt. sg list allocation.
> 
> V4:
> 	- add parameter to sg_alloc_table_chained()/sg_free_table_chained()
> 	directly, and update current callers
> 
> V3:
> 	- improve sg_alloc_table_chained() to accept variant size of
> 	the 1st pre-allocated SGL
> 	- applies the improved sg API to address the big pre-allocation
> 	issue
> 
> V2:
> 	- move inline sg table initializetion into one helper
> 	- introduce new helper for getting inline sg
> 	- comment log fix
> 
> 
> Ming Lei (3):
>   lib/sg_pool.c: improve APIs for allocating sg pool
>   scsi: core: avoid to pre-allocate big chunk for protection meta data
>   scsi: core: avoid to pre-allocate big chunk for sg list
> 
>  drivers/nvme/host/fc.c            |  7 ++++---
>  drivers/nvme/host/rdma.c          |  7 ++++---
>  drivers/nvme/target/loop.c        |  4 ++--
>  drivers/scsi/scsi_lib.c           | 31 ++++++++++++++++++++++---------
>  include/linux/scatterlist.h       | 11 +++++++----
>  lib/scatterlist.c                 | 36 +++++++++++++++++++++++-------------
>  lib/sg_pool.c                     | 37 +++++++++++++++++++++++++++----------
>  net/sunrpc/xprtrdma/svc_rdma_rw.c |  5 +++--
>  8 files changed, 92 insertions(+), 46 deletions(-)
> 
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Bart Van Assche <bvanassche@acm.org>
> Cc: Ewan D. Milne <emilne@redhat.com>
> Cc: Hannes Reinecke <hare@suse.com>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Chuck Lever <chuck.lever@oracle.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-nvme@lists.infradead.org

Hi Martin,

Could you consider to merge this patchset to 5.2 if you are fine?


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
