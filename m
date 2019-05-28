Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732212CDF1
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 19:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kgho/i7DCXqJjxBAuK7/ZX9o+W/CfJ9fz+wmdn4JOyY=; b=KzifODuTRxoPVz1zkc85nQzbT
	Tnt82KXvKQZi8KaWB5oeFxFHZdBawH51LILoSyOvGpk0T1zqMN5jMY9/YTS2zdm6dJkuQRYIC+n6n
	zmE7bHH7pMx8cI3HKwv05ZPTwWV2oTiOe//TaUYew/OfWOWZhuTReLSUES6PYwDzM3fOiIfslG11u
	qrf8fb4hSUXmnFZwITV6Hw6NaxGjPBZE3vSKNKGEYCYgvtnVPL/oc6f7y7Fn60iGFJSihdFZ3BA9j
	v7Aev8Nqtgooc7kZBAU0jDPD4tSo1FrnoaGhpGmxYOTiM/nh5Aa5cyr6bUiMJEBu4NxENUbu4lL0e
	GRxC0L/mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVgCW-0003oL-9Y; Tue, 28 May 2019 17:47:52 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVgCN-0003nu-2W
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 17:47:47 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4SHhoSf045064;
 Tue, 28 May 2019 17:47:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=RyenEw5Dpsd9qM3OeJmbLUeXe7pkemqywCzNRQuReB4=;
 b=Q2KuKwmzfQ+twuR/Ww7Gm9xK1EZfGpY9HbpsuEs4TAQj1NV9mVdfgYunMBqIfjMZAfes
 f+t/2Yd/FGcOmfH+a57kZ4oc26QUITo+der5B9HvRv4TLOcK82BElvXwdm8+mHTD0jVq
 qmFVLkNO8PgozPF0D6BKVJXqFeF338d+K4t6bl8Wzqg7oTn8oynJ341aNry1XvZvsmSK
 HBpR3l1GFA1b9Hwd7IBoCYuOvRPnp8vMrgb2SlttR1Ff319Y95fkgd/TNIw6kJmDuTwD
 TvHsng5Ly8L0I0bKMexHRMv4cdL739oVO0W/Do8LtvPz9LMRCG+uH3qDEV2QzVN0fiz3 1w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2spxbq4s6r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 May 2019 17:47:19 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4SHkL1l159025;
 Tue, 28 May 2019 17:47:19 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2sqh738csy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 28 May 2019 17:47:18 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4SHlGDM001606;
 Tue, 28 May 2019 17:47:16 GMT
Received: from [10.39.254.121] (/10.39.254.121)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 May 2019 10:47:15 -0700
Subject: Re: [PATCH 0/2] nvme: enable to inject errors into admin commands
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org
References: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
From: Thomas Tai <thomas.tai@oracle.com>
Organization: Oracle Corporation
Message-ID: <8cb23080-b7ab-f773-2d25-e39b36501e3d@oracle.com>
Date: Tue, 28 May 2019 13:47:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905280112
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905280112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_104743_206840_7B327C57 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/28/19 1:03 PM, Akinobu Mita wrote:
> Currenlty fault injection support for nvme only enables to inject errors
> into the commands submitted to I/O queues.
> 
> This enables to inject errors into the commands submitted to the admin
> queue.
>      
> It is useful to test error handling in the controller initialization.
> 
> 	# echo 100 > /sys/kernel/debug/nvme0/fault_inject/probability
> 	# echo 1 > /sys/kernel/debug/nvme0/fault_inject/times
> 	# echo 10 > /sys/kernel/debug/nvme0/fault_inject/space
> 	# nvme reset /dev/nvme0
> 	# dmesg

Hi Akinobu,
That sounds like a good idea. would you kindly update the document in 
Documentation/fault-injection/nvme-fault-injection.txt with your example?

Thank you,
Thomas

> 	...
> 	nvme nvme0: Could not set queue count (16385)
> 	nvme nvme0: IO queues not created
> 
> Akinobu Mita (2):
>    nvme: prepare for fault injection into admin commands
>    nvme: enable to inject errors into admin commands
> 
>   drivers/nvme/host/core.c         |  7 +++++--
>   drivers/nvme/host/fault_inject.c | 33 +++++++++++++++++----------------
>   drivers/nvme/host/nvme.h         | 36 +++++++++++++++++++++---------------
>   3 files changed, 43 insertions(+), 33 deletions(-)
> 
> Cc: Thomas Tai <thomas.tai@oracle.com>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
