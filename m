Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18F7110638
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 22:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pr/lBdpsaQDMMTqRgSmie8IJpsSzPsd9TMdrr7Pzn8M=; b=Z1qbFx4XDS+kbx
	OOjt8YkgrFHVA93hcu8XmVBp4g3UrVPOe5610F7Y9vpYAGNApg/yzBoHRkWPQf9jhpsTU6b+Jr7gG
	8xpaD7n9odTsE78GD1HHU0l629NB7QLmEHz5zk3Zg2YBEdpn/bJlFj3SGThH/sBpO9ViQ1IbHnCQU
	XMolN6eWmPjqH/u7SXzfctjClYfolorqMsNHeD2D3gmU86FLOWp+DOYQ10Pt4HhlzvHdLiPgfONYl
	97kbHV+HbfiRV6LfkcihvzER8VfcgA/DLrGzyI+LFpN7bY+jzQOx65+l8zuj6U/5o7rIYfiCalUW8
	d37LCgC6WaYhIm1CzUSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icFHV-000244-6L; Tue, 03 Dec 2019 21:00:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icFHP-00023k-V7
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 21:00:21 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4948820661;
 Tue,  3 Dec 2019 21:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575406819;
 bh=gUysKusgzrFNmv+/8bGhsRzSuomY46abKCaaMeiovoo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HFZAGB273MaQvRnX9KzBLfl6Bydel/BD5QAwWyH+xkDVzLB/D443T0bLL3rhGXBpK
 ENbr7tNsMiwdo0PDs/ukfATW6Ucg6yKSNXYk3GSeTjpJPe8pl9HtLW4SPiH2MySWvG
 DTcy4q5SGQd+KnEGOUCWOXLnf4imb8r5fVJl0a+g=
Date: Wed, 4 Dec 2019 06:00:15 +0900
From: Keith Busch <kbusch@kernel.org>
To: "Meneghini, John" <John.Meneghini@netapp.com>
Subject: Re: [PATCH V2] nvme: Add support for ACRE Command Interrupted status
Message-ID: <20191203210015.GA2691@redsun51.ssa.fujisawa.hgst.com>
References: <8D7B5AD6-F195-4E80-8F24-9B42DE68F664@netapp.com>
 <24E2530B-B88E-43E7-AFA2-4FDA417B6C1E@netapp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24E2530B-B88E-43E7-AFA2-4FDA417B6C1E@netapp.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_130020_028014_1BDBA774 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jen Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, "Knight,
 Frederick" <Frederick.Knight@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 05:38:04PM +0000, Meneghini, John wrote:
> This is an update to say that I've tested this patch and it works as expected. 
> 
> When the controller returns a Command Interrupted status the request is avoids nvme_failover_req()
> and goes down the nvme_retry_req() path where the CRD is implemented and the command is 
> retried after a delay.
> 
> If the controllers returns Command Interrupted too many times, and nvme_req(req)->retries
> runs down, this results in a device resource error returned to the block layer.  But I think we'll
> have this problem with any error.  

Why is the controller returning the same error so many times? Are we
not waiting the requested delay timed? If so, the controller told us
retrying should be successful.

It is possible we kick the requeue list early if one command error
has a valid CRD, but a subsequent retryable command does not. Is that
what's happening?

I'm just concerned because if we just skip counting the retry, a broken
device could have the driver retry the same command indefinitely, which
often leaves a task in an uninterruptible sleep state forever.

>     diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>     index 9696404a6182..24dc9ed1a11b 100644
>     --- a/drivers/nvme/host/core.c
>     +++ b/drivers/nvme/host/core.c
>     @@ -230,6 +230,8 @@ static blk_status_t nvme_error_status(u16 status)
>                     return BLK_STS_NEXUS;
>             case NVME_SC_HOST_PATH_ERROR:
>                     return BLK_STS_TRANSPORT;
>     +       case NVME_SC_CMD_INTERRUPTED:
>     +               return BLK_STS_DEV_RESOURCE;

Just for the sake of keeping this change isloted to nvme, perhaps use an
existing blk_status_t value that already maps to not path error, like
BLK_STS_TARGET.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
