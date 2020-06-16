Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5EA1FB8F7
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 18:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	References:Message-ID:From:Subject:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GcoHpq6O9+xddvid4aOaXROfibLKjBMPl/dRNlTIO7U=; b=N+WLcFeCVe4F8b
	IE8Mp6+873ajrej5gID/hvtU+zpb7//kvEPHulZxAqX/d/cN0P3PCw9WzWgjdoHdHADfZIpyP8jkY
	j97YZbqCWrO+nXbHd1CS4PajZsmR5JpoKKqgjb24UuannuFUfCYY76uW7CH6AzY8sCmfAo/AtA+Xh
	MMk8tP22ZpLb3inzZ6mYigq9Ig6Eirl4PmkbzPRGPtJbQQ9kVQHwesMLQhVRYgbz2eTAThUhUU+UA
	5z3pHkB6Zs/pzjAh3PwnqMuOF7756pdqF3exu3TTDueclzid4gQF7hIClkxZJpdu9s0FQ9EeCMPqU
	A5bDbm1MPIXl05Eibu+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlE0T-0004i3-9b; Tue, 16 Jun 2020 16:00:13 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDzQ-0003zQ-Bd
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 15:59:10 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05GFpOlF114954;
 Tue, 16 Jun 2020 15:59:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : message-id : references : date : in-reply-to : mime-version :
 content-type; s=corp-2020-01-29;
 bh=GAmgeSG8/BtZuwbDR2PlP3ksAuRRmqymC2N1cO2MVn8=;
 b=PC/PqDNoCmpY/GhYBuwjnPAXyzPdsvP8Sgd4X2a5jUZ33zz/qH4yARx+tVP7QnkEGK39
 8YjFrnEx34d+WvkdlJ4vw7O5U189HI8D2c4kB38BS+K4F8zSCi5IEaBbicDVo9NhfTXN
 kK7hq4uur3hafIkwv5rCqMa1aVsLhbWv45W6F2GpXvugmMYu637SANCkLzz5IiBQexRO
 MlRe4AprZVeKQQNf2ZrfXJhy9n0xUj3UzflggWFBDys0O5iqHbQoKl8wv5monOzzrL9p
 +PSco9smmsFbFWfbXy/iWt8c/juKqK3uSZs/yP6Vf/GsH3VsoV4FEQNA7r99yFG+hGuZ /g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 31p6e5yp6d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jun 2020 15:59:04 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05GFr4PH019972;
 Tue, 16 Jun 2020 15:59:03 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 31p6dh00pv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jun 2020 15:59:03 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05GFx1AT030995;
 Tue, 16 Jun 2020 15:59:02 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jun 2020 08:59:01 -0700
To: Keith Busch <keith.busch@wdc.com>
Subject: Re: [PATCH 3/5] nvme: implement I/O Command Sets Command Set support
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle
Message-ID: <yq1ftavm29u.fsf@ca-mkp.ca.oracle.com>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-4-keith.busch@wdc.com>
Date: Tue, 16 Jun 2020 11:58:59 -0400
In-Reply-To: <20200615233424.13458-4-keith.busch@wdc.com> (Keith Busch's
 message of "Tue, 16 Jun 2020 08:34:22 +0900")
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 adultscore=0 bulkscore=0
 phishscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006160112
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 clxscore=1011
 suspectscore=1 spamscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006160112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085908_490174_350BADE9 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <niklas.cassel@wdc.com>,
 Damien Le Moal <damien.lemoal@wdc.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>,
 Matias =?utf-8?Q?Bj=C3=B8rling?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Keith,

> @@ -1113,8 +1126,9 @@ static int nvme_identify_ns_descs(struct nvme_ctrl *ctrl, unsigned nsid,
>  	status = nvme_submit_sync_cmd(ctrl->admin_q, &c, data,
>  				      NVME_IDENTIFY_DATA_SIZE);
>  	if (status) {
> -		dev_warn(ctrl->device,
> -			"Identify Descriptors failed (%d)\n", status);
> +		if (ctrl->vs >= NVME_VS(1, 3, 0))
> +			dev_warn(ctrl->device,
> +				"Identify Descriptors failed (%d)\n", status);

Not a biggie but maybe this should be a separate patch?

> @@ -1808,7 +1828,8 @@ static bool nvme_ns_ids_equal(struct nvme_ns_ids *a, struct nvme_ns_ids *b)
>  {
>  	return uuid_equal(&a->uuid, &b->uuid) &&
>  		memcmp(&a->nguid, &b->nguid, sizeof(a->nguid)) == 0 &&
> -		memcmp(&a->eui64, &b->eui64, sizeof(a->eui64)) == 0;
> +		memcmp(&a->eui64, &b->eui64, sizeof(a->eui64)) == 0 &&
> +		a->csi == b->csi;
>  }

No objection to defensive programming. But wouldn't this be a broken
device?

Otherwise LGTM.

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
