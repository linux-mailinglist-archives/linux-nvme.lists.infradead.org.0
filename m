Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4521E861E
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 20:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qS59FaAMpJ4dOIR+R5IdI1/7R+ritrzq+MNpqnEbSsc=; b=uX26VKbze0Sf7LmazqjlPsG82
	5hl7kISGtXtNfiRQxGW/885seAG0Yv/XVmSUAaZon9flwyhKRsgxRbZoupzFPRuD8h8YfZSOPv9iB
	zBUH/A9a5htAg000vbLVx5QCQOWmw2CJINPKJvIanG0SGCfJkb5Zr+72cLKHfF07nVjfCupWvOzBc
	6tZeAFb1T++kZVWjwYMOSwtc5etZfXmjvkq5D4HmOaflY5j5ZtljNP8e3APC9pTU2HDnLfK0SlTjy
	W85e65lZuApA0ArFJh+Qh+yfwmYjHIlWACOA31uIl4kJ9RaXCd53xka55P1OOFr1+5Vv8h13yJhad
	t11kUp5xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jejIT-0003xE-Sd; Fri, 29 May 2020 17:59:57 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jejIP-0003wk-Vm
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 17:59:55 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04THvi85021525;
 Fri, 29 May 2020 17:59:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=ke1Tb2lZ6TNxiMEsMMfWeYd0ze4tzPMfe1UIQngC7+s=;
 b=Sh7ESs4h9DY3Tu5OY8XFWCjwpo7qKRx5F4suhiBaJepLGaJ7CyeAoZ690DaTkzKWIWjw
 nTOGXHUMWFcj9ad/gBiFXx9/k0CDioZZFkIVG22cXrzljPngpJw8PKKXN4nIicqOKYbc
 qOBhypLVu9Z9SRkS0vNWMK+lfCiqrpEJRxUsLflrmSEuht9Mw9xYSS70xBNbTtCWard2
 +16M6ziakSwtY3u69Eqd97Ky2QWRG5uz0nug8hl9Bk5kYvgZJZWET8GqrW1jIlCWz/e7
 xfJ0X5SfHFhpTl64ig8lEFXDc1QoLyBDRS6LCliL9RA16VDAFor7t7A8nzPBrCTlT9IE 9w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 316u8rbr10-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 29 May 2020 17:59:50 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04THrgmK031430;
 Fri, 29 May 2020 17:59:49 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 317j6024pj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 29 May 2020 17:59:49 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04THxlaI014216;
 Fri, 29 May 2020 17:59:47 GMT
Received: from dhcp-10-76-241-128.usdhcp.oraclecorp.com (/10.76.241.128)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 29 May 2020 10:59:47 -0700
Subject: Re: [PATCHv4 1/2] blk-mq: blk-mq: provide forced completion method
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, linux-block@vger.kernel.org, axboe@kernel.dk
References: <20200529145200.3545747-1-kbusch@kernel.org>
From: Alan Adamson <alan.adamson@oracle.com>
Message-ID: <30209979-9b8b-d558-09e1-4d2da227e10d@oracle.com>
Date: Fri, 29 May 2020 11:02:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529145200.3545747-1-kbusch@kernel.org>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9636
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 suspectscore=3
 mlxlogscore=999 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005290135
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9636
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 priorityscore=1501 spamscore=0 cotscore=-2147483648 suspectscore=3
 phishscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005290135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_105954_152132_605B0C7E 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Passes my tests, thanks.

Reviewed-by: Alan Adamson <alan.adamson@oracle.com>

On 5/29/20 7:51 AM, Keith Busch wrote:
> Drivers may need to bypass error injection for error recovery. Rename
> __blk_mq_complete_request() to blk_mq_force_complete_rq() and export
> that function so drivers may skip potential fake timeouts after they've
> reclaimed lost requests.
>
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>   block/blk-mq.c         | 15 +++++++++++++--
>   include/linux/blk-mq.h |  1 +
>   2 files changed, 14 insertions(+), 2 deletions(-)
>
> diff --git a/block/blk-mq.c b/block/blk-mq.c
> index cac11945f602..560a114a82f8 100644
> --- a/block/blk-mq.c
> +++ b/block/blk-mq.c
> @@ -556,7 +556,17 @@ static void __blk_mq_complete_request_remote(void *data)
>   	q->mq_ops->complete(rq);
>   }
>   
> -static void __blk_mq_complete_request(struct request *rq)
> +/**
> + * blk_mq_force_complete_rq() - Force complete the request, bypassing any error
> + * 				injection that could drop the completion.
> + * @rq: Request to be force completed
> + *
> + * Drivers should use blk_mq_complete_request() to complete requests in their
> + * normal IO path. For timeout error recovery, drivers may call this forced
> + * completion routine after they've reclaimed timed out requests to bypass
> + * potentially subsequent fake timeouts.
> + */
> +void blk_mq_force_complete_rq(struct request *rq)
>   {
>   	struct blk_mq_ctx *ctx = rq->mq_ctx;
>   	struct request_queue *q = rq->q;
> @@ -602,6 +612,7 @@ static void __blk_mq_complete_request(struct request *rq)
>   	}
>   	put_cpu();
>   }
> +EXPORT_SYMBOL_GPL(blk_mq_force_complete_rq);
>   
>   static void hctx_unlock(struct blk_mq_hw_ctx *hctx, int srcu_idx)
>   	__releases(hctx->srcu)
> @@ -635,7 +646,7 @@ bool blk_mq_complete_request(struct request *rq)
>   {
>   	if (unlikely(blk_should_fake_timeout(rq->q)))
>   		return false;
> -	__blk_mq_complete_request(rq);
> +	blk_mq_force_complete_rq(rq);
>   	return true;
>   }
>   EXPORT_SYMBOL(blk_mq_complete_request);
> diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
> index d7307795439a..856bb10993cf 100644
> --- a/include/linux/blk-mq.h
> +++ b/include/linux/blk-mq.h
> @@ -494,6 +494,7 @@ void blk_mq_requeue_request(struct request *rq, bool kick_requeue_list);
>   void blk_mq_kick_requeue_list(struct request_queue *q);
>   void blk_mq_delay_kick_requeue_list(struct request_queue *q, unsigned long msecs);
>   bool blk_mq_complete_request(struct request *rq);
> +void blk_mq_force_complete_rq(struct request *rq);
>   bool blk_mq_bio_list_merge(struct request_queue *q, struct list_head *list,
>   			   struct bio *bio, unsigned int nr_segs);
>   bool blk_mq_queue_stopped(struct request_queue *q);

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
