Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D9B26948
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 19:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/c2rfrbuHbiqfJCDNQhS8ioSwi6gbR598R4YM6AHfWs=; b=CvX8JyKAYOamlt
	jnyzgUfHld3nOt6tq9MYnPw/6fa7RatHl44+JRSDXaidTAmpgW75TgwPX83+sa2iWFjAF0H7GoZhZ
	m2OrXXCmg0n8Q6/MkK25VUwbhlKOaZCaxGMvF1WNsSBmk05cXyRMTokPGJXq6MI8BEHIkRI0cxyrw
	U+WJI9Yq6Lxq/JUgjejP5dA3V8i2pJjGnZA+BHc6a7Z8T5bi+lP7jCQO20YhXILQ4GdkUyL9aVldl
	0FPBHMMPC8bWvHo4Hu5uUTJdLrRKXgVfKgpYgOuUZU66zuhxhYXbTCL07IUe2boHkFZfNGBFDUrW1
	jm0TVZ6XruGcTGIWeMdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVHJ-0006jD-Ln; Wed, 22 May 2019 17:43:49 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVHE-0006io-5c
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 17:43:46 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4MHZvPJ023697; Wed, 22 May 2019 10:43:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=AKHjs38QEU3csSEUL0idOZRjXXd2mmikGxH05VCStZo=;
 b=Apw+VoGtooJM2ZkJ8KRD1WJNAMZxyOe78uCv/nXOiwClQIqIfoYWXBNslBl1fRy+UqvQ
 Xr/PyEBhgZhXBt1x+HUSGdlQVGNo3bomS6LEGlVenCIIDUDF47CTnS6BNdjT551Ra3g9
 mywAlN15rtMktmz0LzF/SYAjCawM3mAZASgwlUvsztFPgCbZLZWk31/zSbE4aMcTdBWS
 0ALtIPJuGzzFk/BUnTbyRvwWAMdPtT2igX34R014xf2BvzA+2znasZBL0xRJeFZ5ibIr
 4vTSZCNnvUBm8Et1F+Py17nsY5iUBF8MjvMNNjf1b/Sq9f4p9fQBSCetxlUvbFlyVXAJ Pg== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2smnwjwnv0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 22 May 2019 10:43:28 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 22 May
 2019 10:43:26 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Wed, 22 May 2019 10:43:26 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id 9F9443F703F;
 Wed, 22 May 2019 10:43:26 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x4MHhP7G031266;
 Wed, 22 May 2019 10:43:25 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Wed, 22 May 2019 10:43:25 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 3/4] nvme-fc: fail reconnect if state change fails
In-Reply-To: <20190520063624.50338-4-hare@suse.de>
Message-ID: <alpine.LRH.2.21.9999.1905221035410.9636@mvluser05.qlc.com>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-4-hare@suse.de>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-22_09:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_104344_339353_79B21EFB 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, 19 May 2019, 11:36pm, Hannes Reinecke wrote:

> If the final state change to LIVE in nvme_fc_create_association()
> fails the controller is not operational as no I/O is possible.
> So we should be returning an error here to reschedule reconnect.
> Additionally it should only be called while in CONNECTING state, so
> add a check for this, too.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>  drivers/nvme/host/fc.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index e5c81ba2b7a1..71b22139e78b 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -2624,6 +2624,14 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>  
>  	++ctrl->ctrl.nr_reconnects;
>  
> +	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING) {

Question: There is a path in nvme_fc_resume_controller() that schedules 
connect_work when controller state is NVME_CTRL_NEW. I am not quite sure 
when this is exercised; but if it does, it conflicts with this 
expectation.

Otherwise changes look good.

Regards,
-Arun

> +		dev_info(ctrl->ctrl.device,
> +			 "NVME-FC{%d}: state %s cancelled new "
> +			 "association attempt\n",
> +			 ctrl->cnum, nvme_ctrl_state_name(&ctrl->ctrl));
> +		return -ENODEV;
> +	}
> +
>  	if (ctrl->rport->remoteport.port_state != FC_OBJSTATE_ONLINE)
>  		return -ENODEV;
>  
> @@ -2726,6 +2734,14 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>  	}
>  
>  	changed = nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE);
> +	if (!changed && ctrl->ctrl.state != NVME_CTRL_DELETING) {
> +		dev_err(ctrl->ctrl.device,
> +			"NVME-FC{%d}: error_recovery: Couldn't change "
> +			"state from %s to LIVE\n", ctrl->cnum,
> +			nvme_ctrl_state_name(&ctrl->ctrl));
> +		ret = -EAGAIN;
> +		goto out_destroy_queues;
> +	}
>  
>  	ctrl->ctrl.nr_reconnects = 0;
>  
> @@ -2734,6 +2750,9 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>  
>  	return 0;	/* Success */
>  
> +out_destroy_queues:
> +	nvme_fc_delete_hw_io_queues(ctrl);
> +	nvme_fc_free_io_queues(ctrl);
>  out_term_aen_ops:
>  	nvme_fc_term_aen_ops(ctrl);
>  out_disconnect_admin_queue:
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
