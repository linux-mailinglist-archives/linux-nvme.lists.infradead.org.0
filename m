Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFAF20F83
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 22:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h/WMEzunIIloWmMdH8O6xSK5iVj3pZEdkUWka6o7W3Q=; b=ZjyQiAGMHycxkQJR3++m28RGc
	0FxklxcASahoqvczG6UFtrW//Fsc6YFeQuXyr8vGqQnEwpUsugPyMjkHJbXnK0YoEsoAHf1ikF22C
	6RvWLUFTyB9lA+JDTdEOzP2DKhWck1IGDlE956skegLPh8IkBTwJgYVqeGm39T5RLZwLRlX9Fbkzk
	aDBFSiRy2xsdgn7gx0oISUT3he35iBsXO4zw6jknNme1FlJmrodcrjKgajeHtKosjPne92giLkKGX
	idFupjPXISTBI6ZzMNQQsKIYYECnTjdXBUcu+KhBx0s8NdX3ExesjCftiuNlHT+i/5PTeJksrKxgk
	3eoYNDnbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRMjk-0004HY-TQ; Thu, 16 May 2019 20:12:20 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRMjf-0004H8-KF
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 20:12:17 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DF6F28666E;
 Thu, 16 May 2019 20:12:02 +0000 (UTC)
Received: from [10.10.125.97] (ovpn-125-97.rdu2.redhat.com [10.10.125.97])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9F78B5D9DC;
 Thu, 16 May 2019 20:11:59 +0000 (UTC)
Subject: Re: [PATCH] nvme: fix memory leak for power latency tolerance req
To: Yufen Yu <yuyufen@huawei.com>, hch@lst.de, sagi@grimberg.me,
 keith.busch@intel.com, linux-nvme@lists.infradead.org
References: <20190516030521.40374-1-yuyufen@huawei.com>
From: David Milburn <dmilburn@redhat.com>
Message-ID: <aa1f1fcc-9bd6-220a-b731-416a3da8d6a1@redhat.com>
Date: Thu, 16 May 2019 15:11:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190516030521.40374-1-yuyufen@huawei.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 16 May 2019 20:12:04 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_131215_704563_A61F10FB 
X-CRM114-Status: GOOD (  25.64  )
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

On 05/15/2019 10:05 PM, Yufen Yu wrote:
> nvme_init_ctrl() initialize latency tolerance controls and
> kzalloc structdev_pm_qos_request 'req' in nvme_init_ctrl().
> The only way to free the 'req' is nvme_init_identify(), when
> apst is disable and prev_apst is enable.
> 
> But, prev_apst is disable when device probe, and we will
> miss to free it when the device does't support APST.
> 
> To fix the problem, we call dev_pm_qos_update_user_latency_tolerance()
> to nvme_init_identify() only when the device actually supports APST.
> And it needs to be hidden when remove nvme ctrl.
> 
> Fixes: c5552fde102fc("nvme: Enable autonomous power state transitions")
> 
> Signed-off-by: Yufen Yu <yuyufen@huawei.com>
> ---
>   drivers/nvme/host/core.c | 34 ++++++++++++++++++++++++----------
>   1 file changed, 24 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 15d114787d6a..e10756b7c13f 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2485,6 +2485,21 @@ static int nvme_get_effects_log(struct nvme_ctrl *ctrl)
>   	return ret;
>   }
>   
> +static void nvme_expose_latency_tolerance(struct nvme_ctrl *ctrl)
> +{
> +	ctrl->device->power.set_latency_tolerance = nvme_set_latency_tolerance;
> +	dev_pm_qos_update_user_latency_tolerance(ctrl->device,
> +		min(default_ps_max_latency_us, (unsigned long)S32_MAX));
> +
> +	dev_pm_qos_expose_latency_tolerance(ctrl->device);
> +}
> +
> +static void nvme_hide_latency_tolerance(struct nvme_ctrl *ctrl)
> +{
> +	ctrl->device->power.set_latency_tolerance = NULL;
> +	dev_pm_qos_hide_latency_tolerance(ctrl->device);
> +}
> +
>   /*
>    * Initialize the cached copies of the Identify data and various controller
>    * register in our nvme_ctrl structure.  This should be called as soon as
> @@ -2643,9 +2658,9 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
>   		return ret;
>   
>   	if (ctrl->apst_enabled && !prev_apst_enabled)
> -		dev_pm_qos_expose_latency_tolerance(ctrl->device);
> +		nvme_expose_latency_tolerance(ctrl);
>   	else if (!ctrl->apst_enabled && prev_apst_enabled)
> -		dev_pm_qos_hide_latency_tolerance(ctrl->device);
> +		nvme_hide_latency_tolerance(ctrl);
>   
>   	ret = nvme_configure_apst(ctrl);
>   	if (ret < 0)
> @@ -3687,6 +3702,13 @@ EXPORT_SYMBOL_GPL(nvme_start_ctrl);
>   
>   void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
>   {
> +	/*
> +	 * If userspace latency tolerance have been exposed,
> +	 * we need to hide it.
> +	 */
> +	if (ctrl->device->power.set_latency_tolerance)
> +		nvme_hide_latency_tolerance(ctrl);
> +
>   	cdev_device_del(&ctrl->cdev, ctrl->device);
>   }
>   EXPORT_SYMBOL_GPL(nvme_uninit_ctrl);
> @@ -3773,14 +3795,6 @@ int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
>   	if (ret)
>   		goto out_free_name;
>   
> -	/*
> -	 * Initialize latency tolerance controls.  The sysfs files won't
> -	 * be visible to userspace unless the device actually supports APST.
> -	 */
> -	ctrl->device->power.set_latency_tolerance = nvme_set_latency_tolerance;
> -	dev_pm_qos_update_user_latency_tolerance(ctrl->device,
> -		min(default_ps_max_latency_us, (unsigned long)S32_MAX));
> -
>   	return 0;
>   out_free_name:
>   	kfree_const(ctrl->device->kobj.name);
> 

Tested-by: David Milburn <dmilburn@redhat.com>

Before patch running v5.1

$ cat /sys/kernel/debug/kmemleak
unreferenced object 0xffff924143eebfc0 (size 64):
   comm "kworker/1:2", pid 418, jiffies 4294679082 (age 275.968s)
   hex dump (first 32 bytes):
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
     00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<000000001db7845a>] dev_pm_qos_update_user_latency_tolerance+0x63/0xe0
     [<000000008e36e7c0>] nvme_init_ctrl+0x2ec/0x310 [nvme_core]
     [<000000000177edcb>] nvme_probe+0x224/0x3e0 [nvme]
     [<00000000d2397746>] local_pci_probe+0x42/0x80
     [<0000000068201d8c>] work_for_cpu_fn+0x16/0x20
     [<00000000ccf116ec>] process_one_work+0x1a1/0x3a0
     [<000000007b61fbe2>] worker_thread+0x1c9/0x380
     [<0000000073ebfed5>] kthread+0x10c/0x130
     [<000000007f82e90d>] ret_from_fork+0x35/0x40

After patch no more memory leak as indicated above.

Thanks,
David



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
