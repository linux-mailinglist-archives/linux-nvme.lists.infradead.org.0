Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB69D1C1FFF
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 23:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R+uxyQllVZzyw8P+fsj3ewKY9Ae1dan7FQ/5TXuu+pU=; b=J1oZH5skTz5acfWgDffd3yFv5
	HvOLtn1ZC8xfFBHLHsC4Il3u0m+s/KTyHSOjbMzJlZGj7TSTZymBSwxof9KKTj3xrkiW+izRG+ATk
	VSOtZUAR9oIyqocLqa6lyn2FzICCMHyl0ovY1eiWtRK1oX9GRxx/mFCpeC2qcccVw0gmu4swFTAHq
	g93i8FgSadjbv4WS/26fQj8+eEokXlWPBTDsfALQnMVbNk2fU7mwgYmoU7x4DzeOGCU6RhIPYZVMQ
	WTlSb690EvCgcD6mvJQaDy1RHFYMjhJ0mdadWHHYWOmL1l53he0fDtA4Nj5quos/kXpyRtKZQ12Dr
	BkDmuLOJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUdYn-0003V2-L2; Fri, 01 May 2020 21:51:05 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUdYj-0003Ss-AJ
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 21:51:02 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 041Llajp192025;
 Fri, 1 May 2020 21:50:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=DU/NR0VKveFhosmzq98AFXn37D4X+xPiShCeYfWZaBI=;
 b=IGQ5fhooijqWo2ti9EuOzhKMtstnfIj3oCSnAVyBdLAWZ/Crimp+2nRKjqzs8XHHT98W
 38RnWW7Vkl+EVhixxvVErI4Ol7dbERji0sihDIdv9F3dSHrvC2ZY9y33H2+0lX+iMwub
 X+zCwvcj3Sn7UZgSf/bH7OXD/baUn2cipSTk1p96w9ljC2t48VkOxtwA8YyOFK9kFg/s
 muU0ERhPezYi7hNnDLmJv6l/uczKxFM50FdDC/s917zNYVqgGx91XR8RNAw6QjKvfn3M
 832PU8g3ShqiZsPi1hzZCWI5hqr0cvVWEZWmS/1Y6+CA3QIQ3XDCtKZswUp6THW+MAxN sg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30r7f5v5dx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 May 2020 21:50:55 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 041LcIxi004512;
 Fri, 1 May 2020 21:50:55 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 30rbr6aju7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 01 May 2020 21:50:55 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 041LosHA010892;
 Fri, 1 May 2020 21:50:54 GMT
Received: from [10.154.150.221] (/10.154.150.221)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 01 May 2020 14:50:54 -0700
Subject: Re: [PATCH] nvme-fc: change default devloss_tmo to 30s
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200501214549.95949-1-jsmart2021@gmail.com>
From: himanshu.madhani@oracle.com
Organization: Oracle Corporation
Message-ID: <a799b07b-6fe9-b8a8-bf59-0c5d7e42ee50@oracle.com>
Date: Fri, 1 May 2020 16:50:53 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200501214549.95949-1-jsmart2021@gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9608
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005010153
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9608
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005010153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_145101_487760_27CA846F 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arun Easi <aeasi@marvell.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/1/20 4:45 PM, James Smart wrote:
> Transport default devloss_tmo is 60s. However, both lldd's use a
> driver default devloss_tmo of 30s.  Rather having an inconsistency if
> the transport value is used, set the transport default to 30s.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> CC: Himanshu Madhani <himanshu.madhani@oracle.com>
> CC: Arun Easi <aeasi@marvell.com>
> ---
>   drivers/nvme/host/fc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index 1921d2195541..0aa3767cbb1c 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -25,7 +25,7 @@ enum nvme_fc_queue_flags {
>   	NVME_FC_Q_LIVE,
>   };
>   
> -#define NVME_FC_DEFAULT_DEV_LOSS_TMO	60	/* seconds */
> +#define NVME_FC_DEFAULT_DEV_LOSS_TMO	30	/* seconds */
>   
>   struct nvme_fc_queue {
>   	struct nvme_fc_ctrl	*ctrl;
> 

Thanks for making it consistent.

Reviewed-by: Himanshu Madhani <himanshu.madhani@oracle.com>

-- 
Himanshu Madhani
Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
