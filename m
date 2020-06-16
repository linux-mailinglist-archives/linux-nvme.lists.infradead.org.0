Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B461FB7EB
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 17:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	References:Message-ID:From:Subject:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ib24/SzHEU2/QI/LKc7DIwo0Y6GxSM70XBsgrKi0EFo=; b=awBegnAoRlrgpe
	LjInpDDNREyWzKimLHTSOdno0fVupwYLWdcRHlenu77UlCjXZWLmRsR4I9/vzdaYEonUTGf5ZO+ya
	nDg1U4n9smQ+ZAIq6BhSE1tGi0oT5wqXm8CyieNjjQZbbiCVRbAbMIQGxtF8Yl0TGOWyOgLs5563L
	9BWxhC8LgXmItPSzPQTAl9Onw2m+aup/Y5qL98/o4DKe2A2B8NO336knHNuQXPw5u9e8EA13US7JV
	tXd7ZxF5MGM47VXAeLCwiXNAdjadsKWaPxVqUOt9PiBRsGRZeqa3N4xSNye9Y4vAV44d8JhucG0cD
	3vAe2bu0WeoCAX16qwtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDrZ-00062s-Fa; Tue, 16 Jun 2020 15:51:01 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDrU-00062O-D8
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 15:50:58 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05GFlQoi096494;
 Tue, 16 Jun 2020 15:50:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : message-id : references : date : in-reply-to : mime-version :
 content-type; s=corp-2020-01-29;
 bh=N5l4wDbmgac4f88EhtC4WEsFQL7EXPzsJ8qMW8Jz1rI=;
 b=WSk06hWgcB7AGlPiRM8Bk1AhUtInrPuc+VrA7M6BozNZThnya2z61OhKztVIGH0IlB07
 FSt/Ijp+fq7TkCMqNkxVzu3HmT2IKfuJF6hAGBQbDG3zKR4ifSsYtDT+jCn0SH83s7t0
 LTRfdJIwdC6XgojyXjb2HJN26JnqK5wJmrIcmvQHi1R7m/pm6kEKApBdPfcKWDrgAYIH
 5Lkx/gOoLRyXUU2y0wz3lotgdUVXgJEjlxvOgFnIsmIMCfEHSveIqzIk4KRyFmBGQq7W
 EyJ06gD3NdYQ+sai3XdadIZrhjP0TsVWygive9CJY6hBKvbMZZ5ocV6PPtNWWF0oyT/U 3w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 31p6e5ymjm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jun 2020 15:50:50 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05GFlVgE080301;
 Tue, 16 Jun 2020 15:48:50 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 31p6ddd7bc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jun 2020 15:48:50 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05GFmnLt001574;
 Tue, 16 Jun 2020 15:48:49 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jun 2020 08:48:48 -0700
To: Keith Busch <keith.busch@wdc.com>
Subject: Re: [PATCH 2/5] null_blk: introduce zone capacity for zoned device
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1mu53m2zb.fsf@ca-mkp.ca.oracle.com>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-3-keith.busch@wdc.com>
Date: Tue, 16 Jun 2020 11:48:46 -0400
In-Reply-To: <20200615233424.13458-3-keith.busch@wdc.com> (Keith Busch's
 message of "Tue, 16 Jun 2020 08:34:21 +0900")
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 suspectscore=1
 mlxlogscore=999 mlxscore=0 phishscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006160111
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 clxscore=1011
 suspectscore=1 spamscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006160111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085056_582841_E13A2574 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <damien.lemoal@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Aravind Ramesh <aravind.ramesh@wdc.com>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Matias =?utf-8?Q?Bj=C3=B8rling?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Keith,

> diff --git a/drivers/block/null_blk_zoned.c b/drivers/block/null_blk_zoned.c
> index 624aac09b005..b05832eb21b2 100644
> --- a/drivers/block/null_blk_zoned.c
> +++ b/drivers/block/null_blk_zoned.c
> @@ -28,7 +28,17 @@ int null_init_zoned_dev(struct nullb_device *dev, struct request_queue *q)
>  		return -EINVAL;
>  	}
>  
> +	if (!dev->zone_capacity)
> +		dev->zone_capacity = dev->zone_size;
> +
> +	if (dev->zone_capacity > dev->zone_size) {
> +		pr_err("null_blk: zone capacity %lu more than its size %lu\n",
> +					dev->zone_capacity, dev->zone_size);
> +		return -EINVAL;
> +	}

Minor nit. I found the the error message hard to grok. Maybe something
like:

"null_blk: zone capacity (%lu MB) larger than zone size (%lu MB)\n"

Otherwise this looks fine.

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
