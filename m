Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B71A1DBAD1
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 19:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/eZRytsBSykgD6TcO02n8UwaPrFDuVIdOQG8cNa2+I=; b=hwDCUPFZu3X0n6
	9IZX0xRFpujRm5zqCXXfMUu1O/rHn4l++XwHZMAZZpefaX4++k0pJBfEY38kdcLcUtxPleLXFNpuG
	AgvwG6WXpo2sN3gpgKcizXvL1fNF8mLGK3x02+G5bRze9otYYsfy1B/31IAmfRzGFN+cpYfdIdiCN
	CP4Erbo4Fms//OWRljpqyMAUMsdqVVnUIXHCW/BIoiqhJJwkVaOk4RVThsKi2cfae0MrZ1WjTV8Jr
	r6HZx7TQgVF1WpBVScWOlwy8ZbsvEcO59pXjOdQdQqqXg5xchS1Nobg0iGdO9/qBmhzIKhAOM7EPj
	JDizSeqTf5dTcGxcNL8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSGD-0007Nf-Ma; Wed, 20 May 2020 17:12:05 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSG8-0007Ag-Sz
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 17:12:02 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KH7xe3033671;
 Wed, 20 May 2020 17:10:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=441KUsS5znB+BeHNlW1GEywHSKEiEYo07aCjPvH8Z2E=;
 b=wgOJa4rLoYavZgjXOiM5LSnNLl2pbPyz+Cal4iZrwZi1+fT6LwLS2q1+4sLcFxfKXxdD
 F2q4H+/MR5EOSYHNNMLuFOzgOTZm48raHnXlAaiua9qx7WvJTjOmC5foSVErhPfsd5bN
 rt7DsgGOfqfZ6mU/w5OfyJ3+n1ga0o4f9xHhx4wjs1A/8gLCkQIs/WXotSIuOn1nSZs6
 RolldPezRQDE4WPnxdfHLb/R8HTKSU8Xpqyk9KSE7OFk3c/0+IrC2ksM9a9YiE/zqzhI
 LbAGHgWlGBzDWzDNTPHKfuVc56+o3GoPo555WPsAptVtYYG39ZyEGajUVbQQ7Sxxu+0I Yw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 31284m4b7p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 17:10:52 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KH8R8G027160;
 Wed, 20 May 2020 17:10:51 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 314gm7dpwc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 May 2020 17:10:51 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04KHAnQA011835;
 Wed, 20 May 2020 17:10:49 GMT
Received: from [10.159.242.116] (/10.159.242.116)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 20 May 2020 10:10:49 -0700
Subject: Re: [PATCH 3/3] nvme-pci: make nvme reset more reliable
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
References: <20200520115655.729705-1-ming.lei@redhat.com>
 <20200520115655.729705-4-ming.lei@redhat.com>
From: Dongli Zhang <dongli.zhang@oracle.com>
Message-ID: <af81f03c-cee9-f1cf-5002-48df43e824db@oracle.com>
Date: Wed, 20 May 2020 10:10:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200520115655.729705-4-ming.lei@redhat.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9627
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 adultscore=0 phishscore=0 mlxscore=0 spamscore=0 suspectscore=2
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005200138
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9627
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 mlxscore=0
 cotscore=-2147483648 impostorscore=0 malwarescore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005200138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_101201_020548_6C6967EB 
X-CRM114-Status: GOOD (  27.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Alan Adamson <alan.adamson@oracle.com>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/20/20 4:56 AM, Ming Lei wrote:
> During waiting for in-flight IO completion in reset handler, timeout
> or controller failure still may happen, then the controller is deleted
> and all inflight IOs are failed. This way is too violent.
> 
> Improve the reset handling by replacing nvme_wait_freeze with query
> & check controller. If all ns queues are frozen, the controller is reset
> successfully, otherwise check and see if the controller has been disabled.
> If yes, break from the current recovery and schedule a fresh new reset.
> 
> This way avoids to failing IO & removing controller unnecessarily.
> 
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Max Gurtovoy <maxg@mellanox.com>
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> ---
>  drivers/nvme/host/pci.c | 37 ++++++++++++++++++++++++++++++-------
>  1 file changed, 30 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index ce0d1e79467a..b5aeed33a634 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -24,6 +24,7 @@
>  #include <linux/io-64-nonatomic-lo-hi.h>
>  #include <linux/sed-opal.h>
>  #include <linux/pci-p2pdma.h>
> +#include <linux/delay.h>
>  
>  #include "trace.h"
>  #include "nvme.h"
> @@ -1235,9 +1236,6 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
>  	 * shutdown, so we return BLK_EH_DONE.
>  	 */
>  	switch (dev->ctrl.state) {
> -	case NVME_CTRL_CONNECTING:
> -		nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
> -		/* fall through */
>  	case NVME_CTRL_DELETING:
>  		dev_warn_ratelimited(dev->ctrl.device,
>  			 "I/O %d QID %d timeout, disable controller\n",
> @@ -2393,7 +2391,8 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
>  		u32 csts = readl(dev->bar + NVME_REG_CSTS);
>  
>  		if (dev->ctrl.state == NVME_CTRL_LIVE ||
> -		    dev->ctrl.state == NVME_CTRL_RESETTING) {
> +		    dev->ctrl.state == NVME_CTRL_RESETTING ||
> +		    dev->ctrl.state == NVME_CTRL_CONNECTING) {
>  			freeze = true;
>  			nvme_start_freeze(&dev->ctrl);
>  		}
> @@ -2504,12 +2503,29 @@ static void nvme_remove_dead_ctrl(struct nvme_dev *dev)
>  		nvme_put_ctrl(&dev->ctrl);
>  }
>  
> +static bool nvme_wait_freeze_and_check(struct nvme_dev *dev)
> +{
> +	bool frozen;
> +
> +	while (true) {
> +		frozen = nvme_frozen(&dev->ctrl);
> +		if (frozen)
> +			break;
> +		if (!dev->online_queues)
> +			break;
> +		msleep(5);
> +	}
> +
> +	return frozen;
> +}
> +
>  static void nvme_reset_work(struct work_struct *work)
>  {
>  	struct nvme_dev *dev =
>  		container_of(work, struct nvme_dev, ctrl.reset_work);
>  	bool was_suspend = !!(dev->ctrl.ctrl_config & NVME_CC_SHN_NORMAL);
>  	int result;
> +	bool reset_done = true;
>  
>  	if (WARN_ON(dev->ctrl.state != NVME_CTRL_RESETTING)) {
>  		result = -ENODEV;
> @@ -2606,8 +2622,9 @@ static void nvme_reset_work(struct work_struct *work)
>  		nvme_free_tagset(dev);
>  	} else {
>  		nvme_start_queues(&dev->ctrl);
> -		nvme_wait_freeze(&dev->ctrl);
> -		nvme_dev_add(dev);
> +		reset_done = nvme_wait_freeze_and_check(dev);

Once we arrive at here, it indicates "dev->online_queues >= 2".

2601         if (dev->online_queues < 2) {
2602                 dev_warn(dev->ctrl.device, "IO queues not created\n");
2603                 nvme_kill_queues(&dev->ctrl);
2604                 nvme_remove_namespaces(&dev->ctrl);
2605                 nvme_free_tagset(dev);
2606         } else {
2607                 nvme_start_queues(&dev->ctrl);
2608                 nvme_wait_freeze(&dev->ctrl);
2609                 nvme_dev_add(dev);
2610                 nvme_unfreeze(&dev->ctrl);
2611         }

Is there any reason to check "if (!dev->online_queues)" in
nvme_wait_freeze_and_check()?

Thank you very much!

Dongli Zhang




> +		if (reset_done)
> +			nvme_dev_add(dev);
>  		nvme_unfreeze(&dev->ctrl);
>  	}
>  
> @@ -2622,7 +2639,13 @@ static void nvme_reset_work(struct work_struct *work)
>  		goto out;
>  	}
>  
> -	nvme_start_ctrl(&dev->ctrl);
> +	/* New error happens during reset, so schedule a new reset */
> +	if (!reset_done) {
> +		dev_warn(dev->ctrl.device, "new error during reset\n");
> +		nvme_reset_ctrl(&dev->ctrl);
> +	} else {
> +		nvme_start_ctrl(&dev->ctrl);
> +	}
>  	return;
>  
>   out_unlock:
> 

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
