Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEB01DBB71
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 19:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qIQW5Jnq4hZOcl7vTUism9vs1Li/JwJagbps0RdwsY=; b=N1tw+5w60ydMhJ
	jahxuFVe9CsmwKwhgL2f0JHWD6U1qm8K4CqoWUjNMq0SNylLj2ZzVKGuO8nqfKp1JRlT1qWOCL042
	O7vL+rfaZ0xGHV82p+ed/lS1etxy6X8CA/nrL7WmE8F+M7vfB1oO5lKZDdYjXIT33bLTfZmGU7oVJ
	1oNxCUxP3EfTHN+3Ty4E6t8mCgtSBx1Y3UNUnXRpaWpE3Eq2fX4/TTxTvZeSuNPOH/axz3jkamtBJ
	lhE7bGaD3kxkEhZj6Or9k0/DEqYzTULH4noPNqKlKF3x5lEEa8Tf/JbkqntZK6i4Y0VJZP3Tz0pBU
	U8J/zTZPehtpRzG2eaSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSVq-0005Co-3t; Wed, 20 May 2020 17:28:14 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSVW-00053L-DQ
 for linux-nvme@lists.infradead.org; Wed, 20 May 2020 17:27:57 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KHRVe6119681;
 Wed, 20 May 2020 17:27:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : from : to :
 cc : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=UaEFdLPOpFnj6nqeVayQqNO5+6MX8UXlai2RVXf9C2w=;
 b=IXLlWMN9Pz25zOzErAAQTSZPnF0kCsamznDmCAvHn8LD/dlTfE37gCE6e7zOShXhN4w2
 q3S1biPmfJM9NGIjFAhmZjDd0LfWKErrCOf1l+q1U+zyOjDST7SFzR9BRBOl/24Qpv5B
 DD4vyEeSdyVk48rGTiRdPjAjtebfXP2U1krbRKvHB/AcuBXlIXqDItOsWWK3FIAJaq4H
 Xi8+ELyNx+jrgyQJs7cHDG+aYdU8d8/2Mny2fNmAm1uwfprz5f07mfc6UyIPcZS856BP
 vNsJ8MAGjYtETK5mu1Hm5gjSPViSCmjoctaDkSC2s8pRP8WhLC9X1i+0/YcRmCwzI5cu QQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 31501raxx4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 20 May 2020 17:27:49 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04KHNAts180302;
 Wed, 20 May 2020 17:27:49 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 312t387u4p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 20 May 2020 17:27:48 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04KHRjPK015355;
 Wed, 20 May 2020 17:27:46 GMT
Received: from [10.159.242.116] (/10.159.242.116)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 20 May 2020 10:27:45 -0700
Subject: Re: [PATCH 3/3] nvme-pci: make nvme reset more reliable
From: Dongli Zhang <dongli.zhang@oracle.com>
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
References: <20200520115655.729705-1-ming.lei@redhat.com>
 <20200520115655.729705-4-ming.lei@redhat.com>
 <af81f03c-cee9-f1cf-5002-48df43e824db@oracle.com>
Message-ID: <5fa0b217-36eb-8fc3-06f5-9ffa681d687c@oracle.com>
Date: Wed, 20 May 2020 10:27:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <af81f03c-cee9-f1cf-5002-48df43e824db@oracle.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9627
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 mlxlogscore=999
 phishscore=0 mlxscore=0 malwarescore=0 suspectscore=2 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005200140
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9627
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 spamscore=0
 mlxlogscore=999 clxscore=1015 priorityscore=1501 cotscore=-2147483648
 impostorscore=0 bulkscore=0 adultscore=0 malwarescore=0 phishscore=0
 mlxscore=0 suspectscore=2 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005200141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_102754_639295_AC3D7FA8 
X-CRM114-Status: GOOD (  24.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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



On 5/20/20 10:10 AM, Dongli Zhang wrote:
> 
> 
> On 5/20/20 4:56 AM, Ming Lei wrote:
>> During waiting for in-flight IO completion in reset handler, timeout
>> or controller failure still may happen, then the controller is deleted
>> and all inflight IOs are failed. This way is too violent.
>>
>> Improve the reset handling by replacing nvme_wait_freeze with query
>> & check controller. If all ns queues are frozen, the controller is reset
>> successfully, otherwise check and see if the controller has been disabled.
>> If yes, break from the current recovery and schedule a fresh new reset.
>>
>> This way avoids to failing IO & removing controller unnecessarily.
>>
>> Cc: Christoph Hellwig <hch@lst.de>
>> Cc: Sagi Grimberg <sagi@grimberg.me>
>> Cc: Keith Busch <kbusch@kernel.org>
>> Cc: Max Gurtovoy <maxg@mellanox.com>
>> Signed-off-by: Ming Lei <ming.lei@redhat.com>
>> ---
>>  drivers/nvme/host/pci.c | 37 ++++++++++++++++++++++++++++++-------
>>  1 file changed, 30 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
>> index ce0d1e79467a..b5aeed33a634 100644
>> --- a/drivers/nvme/host/pci.c
>> +++ b/drivers/nvme/host/pci.c
>> @@ -24,6 +24,7 @@
>>  #include <linux/io-64-nonatomic-lo-hi.h>
>>  #include <linux/sed-opal.h>
>>  #include <linux/pci-p2pdma.h>
>> +#include <linux/delay.h>
>>  
>>  #include "trace.h"
>>  #include "nvme.h"
>> @@ -1235,9 +1236,6 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
>>  	 * shutdown, so we return BLK_EH_DONE.
>>  	 */
>>  	switch (dev->ctrl.state) {
>> -	case NVME_CTRL_CONNECTING:
>> -		nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
>> -		/* fall through */
>>  	case NVME_CTRL_DELETING:
>>  		dev_warn_ratelimited(dev->ctrl.device,
>>  			 "I/O %d QID %d timeout, disable controller\n",
>> @@ -2393,7 +2391,8 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
>>  		u32 csts = readl(dev->bar + NVME_REG_CSTS);
>>  
>>  		if (dev->ctrl.state == NVME_CTRL_LIVE ||
>> -		    dev->ctrl.state == NVME_CTRL_RESETTING) {
>> +		    dev->ctrl.state == NVME_CTRL_RESETTING ||
>> +		    dev->ctrl.state == NVME_CTRL_CONNECTING) {
>>  			freeze = true;
>>  			nvme_start_freeze(&dev->ctrl);
>>  		}
>> @@ -2504,12 +2503,29 @@ static void nvme_remove_dead_ctrl(struct nvme_dev *dev)
>>  		nvme_put_ctrl(&dev->ctrl);
>>  }
>>  
>> +static bool nvme_wait_freeze_and_check(struct nvme_dev *dev)
>> +{
>> +	bool frozen;
>> +
>> +	while (true) {
>> +		frozen = nvme_frozen(&dev->ctrl);
>> +		if (frozen)
>> +			break;
>> +		if (!dev->online_queues)
>> +			break;
>> +		msleep(5);
>> +	}
>> +
>> +	return frozen;
>> +}
>> +
>>  static void nvme_reset_work(struct work_struct *work)
>>  {
>>  	struct nvme_dev *dev =
>>  		container_of(work, struct nvme_dev, ctrl.reset_work);
>>  	bool was_suspend = !!(dev->ctrl.ctrl_config & NVME_CC_SHN_NORMAL);
>>  	int result;
>> +	bool reset_done = true;
>>  
>>  	if (WARN_ON(dev->ctrl.state != NVME_CTRL_RESETTING)) {
>>  		result = -ENODEV;
>> @@ -2606,8 +2622,9 @@ static void nvme_reset_work(struct work_struct *work)
>>  		nvme_free_tagset(dev);
>>  	} else {
>>  		nvme_start_queues(&dev->ctrl);
>> -		nvme_wait_freeze(&dev->ctrl);
>> -		nvme_dev_add(dev);
>> +		reset_done = nvme_wait_freeze_and_check(dev);
> 
> Once we arrive at here, it indicates "dev->online_queues >= 2".
> 
> 2601         if (dev->online_queues < 2) {
> 2602                 dev_warn(dev->ctrl.device, "IO queues not created\n");
> 2603                 nvme_kill_queues(&dev->ctrl);
> 2604                 nvme_remove_namespaces(&dev->ctrl);
> 2605                 nvme_free_tagset(dev);
> 2606         } else {
> 2607                 nvme_start_queues(&dev->ctrl);
> 2608                 nvme_wait_freeze(&dev->ctrl);
> 2609                 nvme_dev_add(dev);
> 2610                 nvme_unfreeze(&dev->ctrl);
> 2611         }
> 
> Is there any reason to check "if (!dev->online_queues)" in
> nvme_wait_freeze_and_check()?
> 

I think you meant another nvme_dev_disable() during reset?

Sorry for the misunderstanding in previous email.

Dongli Zhang

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
