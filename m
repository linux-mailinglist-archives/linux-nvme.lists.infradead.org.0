Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4A4220E1
	for <lists+linux-nvme@lfdr.de>; Sat, 18 May 2019 02:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hZm+yPNcwNGDi3lEn0NqTug+ZZAxeQxK6EMbTplCL4=; b=Cq1Q68UjGyHp8Q
	6WyLFSFx5uOB68wzBCH9Knu3W33G69RsOY4HZPn9ADjaEkN0qk7sv67yw8Ufgv9BnbcfSZHRbYAw/
	Ntp33yvnu2u5cBvtLMj4ik9uPxt5ldQ2Xp3k9n4QGhAhqY8o+QTFwj6XOL0eDb0r5XdiNHIHyc5nW
	2Nx2H85KZCM4dKYHsh3SfQm+vZlBMR6Kx7uXc4KknXfj6CWqDBXr/MlQQmJT+TkVQMr3+4QFbXFfI
	o2GvRqHO96QYKtIR428IcXrU5wBVpMGHmrFD/CpreGyhYrUjXhUm0BpgesjKfe37AXTl326WM4jtd
	JP7ePLQ+Mw1wLxSthDvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRn4D-0007Np-AP; Sat, 18 May 2019 00:19:13 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRn47-0007NS-NW
 for linux-nvme@lists.infradead.org; Sat, 18 May 2019 00:19:09 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4I05hUq029520; Fri, 17 May 2019 17:18:13 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=uVtorhDuK2buSYTIJeYUtz6b2BRAALM3NYeQUoSlZYs=;
 b=j92vSjG23Q4BSNw/+MHcoPYtM1Q5ODIAFG9dw8myCBaWspMghA6Hfo7JVyi2cSAKpY4B
 DxG3wLOd3YOVmpE4HgqvuytAnNKJv4XOFDEWmRUvm/tuhvfZFymjE+Ju8bmPzra+jU7v
 /YnPJQCV9G8h+GKlhOIUEsYdnDC9QnwnLHqGz103dNRq4od4HFJr5LI1U700KhiN8Pyv
 O+SRMddq87CKMY1hqGcx+7qcdJw0KqIn7/ZNAkl44RG/a9pKg/XNfseAOo2vQJzwrbx+
 BBTJWKvvMkysOz/JMLt+e6c1udhmjEiW8XDLPLuNmuDI6Q7aIN/KsKojxfKNLdQfQ+g7 fw== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2shu8ukcf7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 17 May 2019 17:18:13 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 17 May
 2019 17:18:12 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Fri, 17 May 2019 17:18:12 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id E5C353F703F;
 Fri, 17 May 2019 17:18:12 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x4I0IBJd014932;
 Fri, 17 May 2019 17:18:11 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Fri, 17 May 2019 17:18:11 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 3/3] nvme-fc: fail reconnect if state change fails
In-Reply-To: <20190516083740.95894-4-hare@suse.de>
Message-ID: <alpine.LRH.2.21.9999.1905171715520.19585@mvluser05.qlc.com>
References: <20190516083740.95894-1-hare@suse.de>
 <20190516083740.95894-4-hare@suse.de>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-17_15:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_171907_876012_01FB106A 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 16 May 2019, 1:37am, Hannes Reinecke wrote:

> If the final state change to LIVE in nvme_fc_create_association()
> fails the controller is not operational as no I/O is possible.
> So we should be returning an error here to reschedule reconnect.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>  drivers/nvme/host/fc.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index e5c81ba2b7a1..9f9300cbdb62 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -2620,7 +2620,6 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>  {
>  	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
>  	int ret;
> -	bool changed;
>  
>  	++ctrl->ctrl.nr_reconnects;
>  
> @@ -2725,12 +2724,19 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>  			goto out_term_aen_ops;
>  	}
>  
> -	changed = nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE);
> +	if (nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE)) {

Should not this be !nvme_change_ctrl_state()?

Regards,
-Arun
> +		if (ctrl->ctrl.state != NVME_CTRL_DELETING) {
> +			dev_err(ctrl->ctrl.device,
> +				"NVME-FC{%d}: error_recovery: Couldn't change "
> +				"state from %s to LIVE\n", ctrl->cnum,
> +				nvme_ctrl_state_name(&ctrl->ctrl));
> +			return -EAGAIN;
> +		}
> +	}
>  
>  	ctrl->ctrl.nr_reconnects = 0;
>  
> -	if (changed)
> -		nvme_start_ctrl(&ctrl->ctrl);
> +	nvme_start_ctrl(&ctrl->ctrl);
>  
>  	return 0;	/* Success */
>  
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
