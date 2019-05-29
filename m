Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02ECA2E877
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGNxzJ1jilvWtmX3UHPaSFTvNwUVPL1XstCaMlecI4M=; b=EaZw5r0LO8ky9V
	N3JYD4s0FQGeyNg9qzcR3huvxw000wi725LBEMVHXZ2bxry8rLnaBdn7Dc8IxWriHnQpVB4aX74Pw
	AYQfYht+XUt1d+ZmFF052ID9vK0DmXKn0l+7AAXZmZ79SxERhqVhT9H+uXOTkeo6uLlDBeIORBbzG
	Qa8paE9SHqxh63HN1u4tjmmZ9U1k8/KuYo9njLRsu34KEzIWiZRaCn1e3sormcDm2EL3xKT+gP5nr
	MDq00/an3dFywB9JoWekQMG8/2A9WbmN3XGUreJY5bqJn052liGCqLQ9SeZ0oM4V1ZyGCTElu6/zK
	wVfAEyFruEOY3XGMaLHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7N6-00082s-In; Wed, 29 May 2019 22:48:36 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7N1-000825-6V
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:48:32 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4TMjDG4024222; Wed, 29 May 2019 15:48:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=GJ5drswvMXd9CB69p9t/zQG4WFm5b0jn7iUjUhsleEc=;
 b=k/pfM3Z1qgALcBaaMm1XFmL4yWPioSumdh1fO1bBjag11djs2PrEc4gdLwTusVmY/2Yl
 /qm48m84EPnLynuj1+fA0eeOgr2Y9yUxV8+V5Ifze1KB/fgDrslG+6S3f9cgFENgh6F8
 SI7bcBTsW4IQgc4Q2bUYcMclGhM/1fEi0Ojb5F9HNdNz8L+SfDp+lDQNvTrbxMrPtwYr
 mLOBIygrOHdb/AMoobKqYrfFtNLcSWjTv94fLmQUJIpUUatRgYAHG5/4TOU3fA9V1O24
 X5zW7mtabm8kUe7qMOUuDrVayR3EwYXw2y0vArlT6SspjsOcWQ4s5P0UGPGrLGdMElcW GQ== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 2sskp8bxdx-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 29 May 2019 15:48:29 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 29 May
 2019 15:48:19 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Wed, 29 May 2019 15:48:19 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id 1C8F73F703F;
 Wed, 29 May 2019 15:48:19 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x4TMmHNP022557;
 Wed, 29 May 2019 15:48:19 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Wed, 29 May 2019 15:48:17 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH v2] nvme-fc: Add message when creating new association
In-Reply-To: <20190529222526.3672-1-jsmart2021@gmail.com>
Message-ID: <alpine.LRH.2.21.9999.1905291546340.9636@mvluser05.qlc.com>
References: <20190529222526.3672-1-jsmart2021@gmail.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-29_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_154831_363039_271372D3 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 29 May 2019, 3:25pm, James Smart wrote:

> When looking at console messages to troubleshoot, there are one
> maybe two messages before creation of the controller is complete.
> However, a lot of io takes place to reach that point. It's unclear
> when things have started.
> 
> Add a message when the controller is attempting to create a new
> association. Thus we know what controller, between what host and
> remote port, and what NQN is being put into place for any
> subsequent success or failure messages.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> 
> --
> v2:
>  Moved message to create association so displayed at initial
>   creation as well as at each reconnect
>  Changed message to additionally print host port wwpn and target port
>   wwpn.
> ---
>  drivers/nvme/host/fc.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index c17c887f2148..bd1be8aa2d65 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -2607,6 +2607,12 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>  	if (nvme_fc_ctlr_active_on_rport(ctrl))
>  		return -ENOTUNIQ;
>  
> +	dev_info(ctrl->ctrl.device,
> +		"NVME-FC{%d}: create association : host wwpn 0x%016llx "
> +		" rport wwpn 0x%016llx: NQN \"%s\"\n",
> +		ctrl->cnum, ctrl->lport->localport.port_name,
> +		ctrl->rport->remoteport.port_name, ctrl->ctrl.opts->subsysnqn);
> +
>  	/*
>  	 * Create the admin queue
>  	 */
> 

Looks good. Thanks!

-- arun


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
