Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6682F27A3A
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 12:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NL38BZTTAc1iDHgCO4vTFbfCdKgrfSPm2j2bEG0dK4=; b=UUEdH2azMx4CSI
	Z8HkjfSkdFCsoPrtBsGkzJdjfvrPTVHLq9+FzHY3rm9SQXRqB+0oum6LkxRI7qrGc6il9VZ2E+smH
	ZIdC3xOpdfmzcpj+742qWyEuKbpOsC/TlgJBJVdzGbDqCDv8lFa7brUBX3op7k/6ik/6bCVh9Qr5r
	Dhk9+cwls0o332cnLAZ2wTLFIrPppThfX+sQy12ele9gtDW0mKFvfLzcRRM+KRsic5WUqM6jpNHIL
	S4brYzAfVn89KlWcdwk1rVddt/Ndy0r7VugPJG8lXuaqDqMnBCDwhSxYf/JOJQaAjpIej5J5R5fmP
	K+TudGl7rwbKG4y/txUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkpW-0000k4-TP; Thu, 23 May 2019 10:20:10 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkpQ-0008NA-Ib
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 10:20:06 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id ACF8830A6986;
 Thu, 23 May 2019 10:20:02 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0443319C4F;
 Thu, 23 May 2019 10:19:58 +0000 (UTC)
Date: Thu, 23 May 2019 18:19:54 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 2/2] nvme: reset request timeouts during fw activation
Message-ID: <20190523101953.GA18805@ming.t460p>
References: <20190522174812.5597-1-keith.busch@intel.com>
 <20190522174812.5597-3-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522174812.5597-3-keith.busch@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 23 May 2019 10:20:02 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_032004_642666_9DD597B2 
X-CRM114-Status: GOOD (  20.49  )
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 11:48:12AM -0600, Keith Busch wrote:
> The nvme controller may pause command processing during firmware
> activation. The driver will quiesce queues during this time, but commands
> dispatched prior to the notification will not be processed until the
> hardware completes this activation.
> 
> We do not want those requests to time out while the hardware is in
> this paused state as we don't expect those commands to complete during
> this time, and that handling will interfere with the firmware activation
> process.
> 
> In addition to quiescing the queues, halt timeout detection during the
> paused state and reset the dispatched request deadlines when the hardware
> exists that state. This action applies to IO and admin queues.
> 
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
>  drivers/nvme/host/core.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 1b7c2afd84cb..37a9a66ada22 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -89,6 +89,7 @@ static dev_t nvme_chr_devt;
>  static struct class *nvme_class;
>  static struct class *nvme_subsys_class;
>  
> +static void nvme_reset_queues(struct nvme_ctrl *ctrl);
>  static int nvme_revalidate_disk(struct gendisk *disk);
>  static void nvme_put_subsystem(struct nvme_subsystem *subsys);
>  static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
> @@ -3605,6 +3606,11 @@ static void nvme_fw_act_work(struct work_struct *work)
>  				msecs_to_jiffies(admin_timeout * 1000);
>  
>  	nvme_stop_queues(ctrl);
> +	nvme_sync_queues(ctrl);
> +
> +	blk_mq_quiesce_queue(ctrl->admin_q);
> +	blk_sync_queue(ctrl->admin_q);

blk_sync_queue() may not halt timeout detection completely since the
timeout work may reset timer again.

Also reset still may come during activating FW, is that a problem?


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
