Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC1E194410
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Mar 2020 17:11:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WZNtxN6VefOLjuAsWpEvnVAB4YGy1OQ1Nxd8/zrRB8I=; b=Vy69ezQrDuyEOoHojpNn/0Cbg
	EkEYpZ43U2dMGbKfUKdfFUkkNb4dY9DE/P7+Wi09XumB5um4MvhYdC2vtS1KkxVvlKTa6w9ybQddE
	6UhIO5R1H7QBx68CjREdVvSpNRG7I0Pv8OSj3xcQ/9i64dkNE7ou1DyLocfP5yye5XLHvmRIXeIi2
	qE80nPD2f5M+/ZbCW/EZvIWtPcqoIIk/+oMRhoMtZoEDdMZnZn+MoHoFVin/tUy742svv2c3YLMoK
	Mz8XCcfNcku9mpfLd1vyHsQu0MvIIP3kuCwRh+otPibN0EnPDRRAzJThxa6idRAS3r82vSBuKiZOn
	GJ7yFTdzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHV5t-0000Di-5d; Thu, 26 Mar 2020 16:10:57 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHV5m-0000Ci-Km
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 16:10:51 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02QGASYC190905;
 Thu, 26 Mar 2020 16:10:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=XjZCkVgVl8I2V00PX9MRannbwTfEzgKhd3+1AqWoLao=;
 b=DYbNZsU7zMaxMhHyb3JlbUbY3kALRDPk9GhHmFBWuKRYGgGIsJvyAPwYHh3eYDggi5+2
 zLEwrcVdbklNj35jN5XuWORm8nVbYOXeWwqxfQ1jI2Tbfz6XIG6fnSS9T/8MfyasYF5/
 hmgs28DbnmvAXqazshfWEQxglBAJ+o0SUY2Z6oJXP4Wc+JeG3zFNtRsmsbzVK9Zsfd4K
 kNavTo32SRoE3eixGss5UeOmnOhnpltutOdVxZCzkUivSV95bBeK7tgV5SvNQyiU1DwX
 j1MgzDWEaF+O1cq4Qrjr9jATbq5XIRv4on5MFXlo1al4Nf7I51jr6Eey6jtNABBeCWTl wg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 300urk1g1h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 26 Mar 2020 16:10:48 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02QG7j18115024;
 Thu, 26 Mar 2020 16:10:48 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 3003gm4cf7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 26 Mar 2020 16:10:48 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02QGAl3O005593;
 Thu, 26 Mar 2020 16:10:47 GMT
Received: from [10.154.135.52] (/10.154.135.52)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 26 Mar 2020 09:10:47 -0700
Subject: Re: [PATCH 02/29] nvmet-fc: fix typo in comment
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200205183753.25959-1-jsmart2021@gmail.com>
 <20200205183753.25959-3-jsmart2021@gmail.com>
From: Himanshu Madhani <himanshu.madhani@oracle.com>
Organization: Oracle Corporation
Message-ID: <9a2b7852-71be-9984-cd9a-1fbf7a5eb563@oracle.com>
Date: Thu, 26 Mar 2020 11:10:45 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200205183753.25959-3-jsmart2021@gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9572
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 bulkscore=0
 phishscore=0 adultscore=0 spamscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003260125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9572
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 mlxlogscore=999 clxscore=1015 lowpriorityscore=0 mlxscore=0 phishscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003260124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_091050_808932_C768355A 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2/5/2020 12:37 PM, James Smart wrote:
> Fix typo in comment: about should be abort
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> ---
>   drivers/nvme/target/fc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/target/fc.c b/drivers/nvme/target/fc.c
> index a0db6371b43e..a8ceb7721640 100644
> --- a/drivers/nvme/target/fc.c
> +++ b/drivers/nvme/target/fc.c
> @@ -684,7 +684,7 @@ nvmet_fc_delete_target_queue(struct nvmet_fc_tgt_queue *queue)
>   	disconnect = atomic_xchg(&queue->connected, 0);
>   
>   	spin_lock_irqsave(&queue->qlock, flags);
> -	/* about outstanding io's */
> +	/* abort outstanding io's */
>   	for (i = 0; i < queue->sqsize; fod++, i++) {
>   		if (fod->active) {
>   			spin_lock(&fod->flock);
> 

Looks Good.

Reviewed-by: Himanshu Madhani <himanshu.madhani@oracle.com>

-- 
- Himanshu

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
