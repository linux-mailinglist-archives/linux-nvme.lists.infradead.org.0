Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D194E21818
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 14:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XU5zUOGmYupn4bcr35aFKja/Tjzd4mPpm8YblBR8T8A=; b=GpjbKqK+AfGmU3C9YP/yYbOS9
	6ZVZnBRKCGiY5bl2HIie1iUQeiTTMSd4uKmmI1IFuy+YKuhFv+d8VhETVwQ6W/VwBLa/dIrG8d7hL
	QEEbfaWr/NQ3OAvMoWiwu37/dRgOYjBlMdeLVt3IYcvU36KnBCLFn7AVRfca2fqlOtH0V7OXX9nr2
	e7SPpSI69gOzKyh3+euXNkMIerxaiyzURd9Z7Aw0YkGBaRMxKJVJHaYAq4mzEBjiQ0HSXYpieG6O4
	NEb5r2Q0a4+V+3TkJ479vRhtiUjk8whI2zCT+qdsAE1VMDr2pAsGY5yr+Af73u88xkHN3BhtrZK4f
	OmnqCd6eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRbt9-0004ti-37; Fri, 17 May 2019 12:23:03 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbt4-0004tO-DY
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 12:22:59 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6526C88309;
 Fri, 17 May 2019 12:22:57 +0000 (UTC)
Received: from [10.10.125.97] (ovpn-125-97.rdu2.redhat.com [10.10.125.97])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0768F10027B8;
 Fri, 17 May 2019 12:22:54 +0000 (UTC)
Subject: Re: [PATCH v2] nvme: fix memory leak for power latency tolerance req
To: Yufen Yu <yuyufen@huawei.com>, hch@lst.de, sagi@grimberg.me,
 keith.busch@intel.com, linux-nvme@lists.infradead.org
References: <20190517023007.140656-1-yuyufen@huawei.com>
From: David Milburn <dmilburn@redhat.com>
Message-ID: <0becf386-c4f5-b0f9-2d5f-84da0e58226c@redhat.com>
Date: Fri, 17 May 2019 07:22:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190517023007.140656-1-yuyufen@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 17 May 2019 12:22:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_052258_478319_0242C0C6 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: luto@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

On 05/16/2019 09:30 PM, Yufen Yu wrote:
> nvme_init_ctrl() initialize latency tolerance controls and
> kzalloc structdev_pm_qos_request 'req' in nvme_init_ctrl().
> The only way to free the 'req' is nvme_init_identify(), when
> apst is disable and prev_apst is enable.
> 
> But, prev_apst is disable when device probe, and we will
> miss to free it when the device does't support APST.
> 
> To fix the problem, we need to hide latency tolerance and
> free 'req' in nvme_uninit_ctrl().
> 
> Fixes: c5552fde102fc("nvme: Enable autonomous power state transitions")
> Suggested-by: Keith Busch <keith.busch@intel.com>
> Signed-off-by: Yufen Yu <yuyufen@huawei.com>
> ---
>   drivers/nvme/host/core.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 15d114787d6a..e13670dcf590 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3687,6 +3687,7 @@ EXPORT_SYMBOL_GPL(nvme_start_ctrl);
>   
>   void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
>   {
> +	dev_pm_qos_hide_latency_tolerance(ctrl->device);
>   	cdev_device_del(&ctrl->cdev, ctrl->device);
>   }
>   EXPORT_SYMBOL_GPL(nvme_uninit_ctrl);
> 

This one works too. Thanks

Tested-by: David Milburn <dmilburn@redhat.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
