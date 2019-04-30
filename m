Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E926FF9B6
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 15:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WVSEA0MnVX+4gfO2Bqbow1zOz6wk7rc4kCOeJVY5G78=; b=DVfhkPFMpJDZfM6ijqpAXfS+b
	Dkl+pYR3D1x9AW2puzp3lZwSvschAzF9GRZqj1uMwAI9bmh7IKcGkGdpyeabRQdJ9iIX10shys9sX
	0Ln2PSFjSyy/ajP1wd4y1UyisrM9co+Z+WndO5ZauSG/gOaRXoOH+PM+NV7LaYVq3onAiEHN4U5+T
	k4avHA9gZcF4OyEyBPHCAIf7nxWzOwOLTOqjsdx9uKbAGWZJ1sygFSQD54O8svRhoRv+iiitO7bjm
	psXDmoBmaQeJKK+tgVyBre50jVvZZ5Oisg8bf7eWygJ7xmzWdt/GH+jnsunJiRCTEavrCbAIXBlQl
	WjeZsGFTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSbw-00067k-Ft; Tue, 30 Apr 2019 13:15:52 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSay-0003kF-C0
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 13:14:56 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0F5F288D077F75618AF0;
 Tue, 30 Apr 2019 21:14:43 +0800 (CST)
Received: from [127.0.0.1] (10.177.219.49) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 30 Apr 2019
 21:14:40 +0800
Subject: Re: [PATCH RFC] nvme: fix race condition between remove and scan_work
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <kbusch@kernel.org>
References: <20190411133227.28435-1-yuyufen@huawei.com>
 <a9d6bf42-e01a-4e56-acc7-5d87ac9179f9@grimberg.me>
 <20190424162659.GA15412@localhost.localdomain>
 <55a37c3e-5732-5162-37ff-80151363cbc4@grimberg.me>
From: yuyufen <yuyufen@huawei.com>
Message-ID: <b11cc221-d400-8a23-4f26-5e69381fa173@huawei.com>
Date: Tue, 30 Apr 2019 21:14:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <55a37c3e-5732-5162-37ff-80151363cbc4@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.177.219.49]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_061452_845906_25066B32 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: axboe@kernel.dk, bvanassche@acm.org, james.smart@broadcom.com,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 2019/4/25 0:42, Sagi Grimberg wrote:
>
>>> Is it just DELETING state that is acceptable here? or can we meet other
>>> states that fail transition to RESETTING (CONNECTING/DEAD)?
>>
>> It could be connecting or already scheduled resetting, in which case we
>> wouldn't want to unquiesce.
>>
>> When we do want to unquiesce, though, we also want to do that to the
>> IO queues, not just the admin queue. Untested below, but this might be
>> in the right direction:
>
> This looks good Keith, Yufen, does that address your race?

Thanks a lot for your response and suggestion.
The follow patch can address our problem.:-)

Yufen
thanks

>
>>
>> ---
>> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
>> index a90cf5d63aac..acfb34c945b2 100644
>> --- a/drivers/nvme/host/pci.c
>> +++ b/drivers/nvme/host/pci.c
>> @@ -1315,6 +1315,10 @@ static enum blk_eh_timer_return 
>> nvme_timeout(struct request *req, bool reserved)
>>           nvme_dev_disable(dev, false);
>>           nvme_req(req)->flags |= NVME_REQ_CANCELLED;
>>           return BLK_EH_DONE;
>> +    case NVME_CTRL_DELETING:
>> +        nvme_dev_disable(dev, true);
>> +        nvme_req(req)->flags |= NVME_REQ_CANCELLED;
>> +        return BLK_EH_DONE;
>>       default:
>>           break;
>>       }
>> @@ -2438,8 +2442,11 @@ static void nvme_dev_disable(struct nvme_dev 
>> *dev, bool shutdown)
>>        * must flush all entered requests to their failed completion 
>> to avoid
>>        * deadlocking blk-mq hot-cpu notifier.
>>        */
>> -    if (shutdown)
>> +    if (shutdown) {
>>           nvme_start_queues(&dev->ctrl);
>> +        if (dev->ctrl.admin_q)
>> +            blk_mq_unquiesce_queue(dev->ctrl.admin_q);
>> +    }
>>       mutex_unlock(&dev->shutdown_lock);
>>   }
>>   --
>>
>> _______________________________________________
>> Linux-nvme mailing list
>> Linux-nvme@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-nvme
>>
>
> .
>



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
