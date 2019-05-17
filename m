Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EABA211EF
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 04:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zIyz0/46Umah/6rHVjf9Z4NHPyMwI00DjJwWIb34Cns=; b=oOP2U1Qf4ioeqXemi1f44849F
	fkmnRXOhIfh1NR5u+6kXQ3tPdW/3uKO+nei3ZZucxcynkubHFdhfnEpXhVXd7IQTEwSN+AevN8C5l
	T4RnYBA7Mv98XVTjZgVD8a58JgmMuCvMkWg7D9EJzvCNi5Y23FIoHYIU2ppCdJCxxdn8mrKZYSWgq
	KvY6FKFlcfhDJv0VREz9a+kEM9rnuIoWU4Dgg5GvVoZC25PIKXB9FKGAK320BxS+Xbq87VuY2VnOQ
	138h8RKAIev2dc3utodehg34KazV43FBvTwoCR3j3MlZVOPFyKDoGfM16/XoqzIDvZUZb8Aabg2gh
	xhxjWSkuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRSJ8-0008H8-R6; Fri, 17 May 2019 02:09:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRSJ4-0008Gj-FU
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 02:09:12 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 30075427EE028C51CD02;
 Fri, 17 May 2019 10:09:05 +0800 (CST)
Received: from [127.0.0.1] (10.177.219.49) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Fri, 17 May 2019
 10:09:04 +0800
Subject: Re: [PATCH] nvme: fix memory leak for power latency tolerance req
To: Keith Busch <keith.busch@intel.com>
References: <20190516030521.40374-1-yuyufen@huawei.com>
 <20190516211326.GB23955@localhost.localdomain>
From: yuyufen <yuyufen@huawei.com>
Message-ID: <92a282ec-ddfc-5632-b584-06723ea410aa@huawei.com>
Date: Fri, 17 May 2019 10:09:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190516211326.GB23955@localhost.localdomain>
Content-Language: en-US
X-Originating-IP: [10.177.219.49]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_190910_741167_A2E51938 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "luto@kernel.org" <luto@kernel.org>, "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019/5/17 5:13, Keith Busch wrote:
> It's perfectly safe to call dev_pm_qos_hide_latency_tolerance even if we
> never exposed it, so I think you're making this more complicated than
> necessary. Would the following one-liner work for you instead?
>
> ---
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index f2411d50e764..0899dc5645a9 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3697,6 +3697,7 @@ EXPORT_SYMBOL_GPL(nvme_start_ctrl);
>   
>   void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
>   {
> +	dev_pm_qos_hide_latency_tolerance(ctrl->device);
>   	cdev_device_del(&ctrl->cdev, ctrl->device);
>   }

Yes, you are right.
I have worried that it will create a new 'req' if it has been free and 
set 'NULL'.
Thus, I try to hide it based on device->power.set_latency_tolerance.

Actually, I ignore the fact that dev_pm_qos_hide_latency_tolerance() 
will pass '-1' to
dev_pm_qos_update_user_latency_tolerance(). It will not create a new 'req'.

I will send patch v2 with the suggestion.

Yufen
Thanks a lot

>   EXPORT_SYMBOL_GPL(nvme_uninit_ctrl);
> --
>
> .
>




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
