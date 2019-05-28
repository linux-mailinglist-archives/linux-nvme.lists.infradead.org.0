Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1B12D277
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 01:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ocegAFLfrSqP7e5mjF3fB29HJ5dsBMLo2ObNU3Aaq2o=; b=JMLw/0wD7WRxR6
	5cwBCF1tG+Ik6Ao0AHo+1m4nSZMFbBlut4hCPumJkx8+3zPwKDxr5o1txTxB7/LPD+ROkR8/amvMo
	vibz4hfHO8P95kyLIj9Fq1Ae5pv9qS12y01WDmzPSfBwPTic4k3Oe5RLxu8N8L9L79Fv3fdA6kB8O
	3f+ivCdviomQlEIQljxWzkRIy4lSQlyRpsCII2+se4I8lZClg+ItV5i+mM+CJQiWW9kRPl5O2tEs4
	KRuKbsM72Ba6t2dvL5KjKchzFiqKKQr80T13g3hbwXgHWbSw5WwDwdVdtN/ZUmbOXHNbbtKqDpvz9
	sNv6STlo6UpO8dfs/0JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVlfS-00044S-6W; Tue, 28 May 2019 23:38:06 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVlfN-00043w-6C
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 23:38:02 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4SNZqm5001047; Tue, 28 May 2019 16:37:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=upmdA8iCCdZ5kyiO0JYTSDhCqcl4K3cnMnb5lh3/xcE=;
 b=GH5/SXJ9jmLbBhADz6eYVirrgHbTt2t/U/ls0/OgffvZJWY5koDK+uypD7QBfvyMeK55
 9KPL1zvghRXMun93oOaKNr8lryRAZJyunk8xmb0xm039Cfhyx6MfysYrQ3jEPZEj+WX5
 D25BU99K9QtsGMQxVFtwSISqoE3Dgi/FATdUSuG5MhOZAYCG/E/J+qVfEnNCjgeFeEtx
 mokhFee7XuB7F7D625bCj7yQQo373GQ8rYlBOEYZPn2VG0mzBB1TWJBcSXuYXCtL8t26
 yDo4f/QOhoPD7dBZR3aafGLUAhffjSJzxvZqAxECTJ16pQphmIiNnY4hW1Zb2vnfXVo+ 7A== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ss270k9pk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 28 May 2019 16:37:58 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 28 May
 2019 16:37:56 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Tue, 28 May 2019 16:37:56 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id DBBD93F703F;
 Tue, 28 May 2019 16:37:56 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x4SNbpQB010415;
 Tue, 28 May 2019 16:37:52 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Tue, 28 May 2019 16:37:51 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme-fc: Add message when creating new controller
In-Reply-To: <20190528182404.3463-1-jsmart2021@gmail.com>
Message-ID: <alpine.LRH.2.21.9999.1905281624470.9636@mvluser05.qlc.com>
References: <20190528182404.3463-1-jsmart2021@gmail.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-28_11:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_163801_359839_875394D5 
X-CRM114-Status: GOOD (  16.05  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, 28 May 2019, 11:24am, James Smart wrote:

> When looking at console messages to troubleshoot, there are one
> maybe two messages before creation of the controller is complete.
> However, a lot of io takes place to reach that point. It's unclear
> when things have started.
> 
> Add a message when the controller is first attempting to be
> connecting to. Thus we know what controller and its NQN is being
> put into place for any subsequent success or failure messages.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> ---
>  drivers/nvme/host/fc.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index c17c887f2148..5c9b69ee2c1f 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -3129,6 +3129,10 @@ nvme_fc_init_ctrl(struct device *dev, struct nvmf_ctrl_options *opts,
>  
>  	nvme_get_ctrl(&ctrl->ctrl);
>  
> +	dev_info(ctrl->ctrl.device,
> +		"NVME-FC{%d}: creating new ctrl: NQN \"%s\"\n",
> +		ctrl->cnum, ctrl->ctrl.opts->subsysnqn);
> +

Adding rport+lport information would be helpful. It would be good to have 
for all messages, but at least one message establishing the relationship 
would make it easier when looking at logs.

Just wondering if there is any reason why no FC rport/lport info
was logged with any of the messages in fc.c?

Regards,
-Arun

>  	if (!queue_delayed_work(nvme_wq, &ctrl->connect_work, 0)) {
>  		nvme_put_ctrl(&ctrl->ctrl);
>  		dev_err(ctrl->ctrl.device,
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
