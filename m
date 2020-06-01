Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B52E1EB1E9
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 00:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wCekc9Cd0Wn1Js+M/pzACRnYRmXb2Ma+2YVJIZB9v1g=; b=rubY7Nr5Yh86WWmToKbAbgKSe
	as/GaTnPmCd29xmserqwQ9O/h+9uKfO7nUWLrVJjBtGopR1pt1GNQ7Qowuh02h1ORPZ45ih70sItN
	nF0z/wNl2gc3zL7Xap8wQik+wTgy6troCakDqXqZMTRvgcCV2R90frz7cK7KZJq9ck948uVOKNf5r
	zzEiCrplosdXp/HE0M4bAs3IaKJZk8ZOp4kUnf7YzCM8fyhgjGZiIQU4PAXkQSCzK6vKJc9s5w2Ad
	zJ1EwTZnaYAobkXOZuoIEy6stqNonzu06hxxHfdK0tBm4DxIUebGOZE9i0Fdta5rNqcsERvCTSg7E
	WtygycnXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jftIb-0008MQ-Fm; Mon, 01 Jun 2020 22:52:53 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jftIX-0008Ky-9n
 for linux-nvme@lists.infradead.org; Mon, 01 Jun 2020 22:52:50 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 051Mqc5T020497;
 Mon, 1 Jun 2020 22:52:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=cG01KjCHoruyrTWCeH3r9wvIWXSt8QItImJM6fEY3Kw=;
 b=DddNEbUEINsYoehiSUskq3S05k126oXhke7iDUoCI76/aHTYDz1ZLlNFPj1plBMSV4kL
 SZsno3qaQ7G7TV5U6Bvh1dkfLD1/4CsuuAIL6dgJDBolqjnSYOt/JeNfi3n9Bui3dbio
 l7+uWBbnweBMYsD304m3lCSrbSR7Jyx1vqIpgCxDdXl+fa8IQgKkGnr9SV/NHz465MQ+
 R3b1V19JmLlAesvX4lFijidOrDsZFqcDuuGdjDad+bwSXyd34OqoNE3UBJPmGXIaooHd
 mS8zUhEZzgqZAXXRy1FT634Ou0YFRILQNOkLSOKJfQDp2eTWI/RD449g2/8OBkddPOyW Rw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 31d5qr1a9w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 01 Jun 2020 22:52:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 051Mhumq140596;
 Mon, 1 Jun 2020 22:50:37 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 31c18s6emm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Jun 2020 22:50:37 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 051MoYPb028631;
 Mon, 1 Jun 2020 22:50:34 GMT
Received: from [192.168.1.35] (/70.114.128.235)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 01 Jun 2020 15:50:34 -0700
Subject: Re: [PATCH 1/1] nvmet-tcp: constify static struct nvmet_fabrics_ops
To: Max Gurtovoy <maxg@mellanox.com>, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de
References: <20200601170520.15207-1-maxg@mellanox.com>
From: Himanshu Madhani <himanshu.madhani@oracle.com>
Organization: Oracle Corporation
Message-ID: <49141203-3a56-f61c-bab2-7dd0dab9dedb@oracle.com>
Date: Mon, 1 Jun 2020 17:50:33 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200601170520.15207-1-maxg@mellanox.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 mlxscore=0
 adultscore=0 mlxlogscore=999 suspectscore=2 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006010165
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9639
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 cotscore=-2147483648
 mlxscore=0 lowpriorityscore=0 suspectscore=2 spamscore=0 adultscore=0
 clxscore=1011 impostorscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006010166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_155249_472487_2BB3DDA3 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: israelr@mellanox.com, nitzanc@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 6/1/20 12:05 PM, Max Gurtovoy wrote:
> nvmet_tcp_ops is never modified and can be made const to allow the
> compiler to put it in read-only memory, as done in other transports.
> 
> Before:
>     text    data     bss     dec     hex filename
>    16164     160      12   16336    3fd0 drivers/nvme/target/tcp.o
> 
> After:
>     text    data     bss     dec     hex filename
>    16277      64      12   16353    3fe1 drivers/nvme/target/tcp.o
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> Reviewed-by: Israel Rukshin <israelr@mellanox.com>
> ---
>   drivers/nvme/target/tcp.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
> index 6f557db..9e4cb90 100644
> --- a/drivers/nvme/target/tcp.c
> +++ b/drivers/nvme/target/tcp.c
> @@ -153,7 +153,7 @@ struct nvmet_tcp_port {
>   static DEFINE_MUTEX(nvmet_tcp_queue_mutex);
>   
>   static struct workqueue_struct *nvmet_tcp_wq;
> -static struct nvmet_fabrics_ops nvmet_tcp_ops;
> +static const struct nvmet_fabrics_ops nvmet_tcp_ops;
>   static void nvmet_tcp_free_cmd(struct nvmet_tcp_cmd *c);
>   static void nvmet_tcp_finish_cmd(struct nvmet_tcp_cmd *cmd);
>   
> @@ -1747,7 +1747,7 @@ static void nvmet_tcp_disc_port_addr(struct nvmet_req *req,
>   	}
>   }
>   
> -static struct nvmet_fabrics_ops nvmet_tcp_ops = {
> +static const struct nvmet_fabrics_ops nvmet_tcp_ops = {
>   	.owner			= THIS_MODULE,
>   	.type			= NVMF_TRTYPE_TCP,
>   	.msdbd			= 1,
> 
Reviewed-by: Himanshu Madhani <himanshu.madhani@oracle.com>

-- 
Himanshu Madhani                     Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
