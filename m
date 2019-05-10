Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFA019F97
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 16:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DurxwCmWAEYHgDYektgl3at7pED2sDWUKJZtuyw6Tyo=; b=i90Muv6IWJvgx361j/gxx1GIL
	Qq1r9vZ6RgN70GZEj5IkwwW3ikYcsxOXj7qLYmQTVxTDAXfkxy+iaM89RsxVflE1tD3BQDVgD/s1J
	xGsMHfhphUCQl5RT5K2vwAFt1QyT+KRWMdNqNAiCOLJkpHcGHH9fS6sFNn/WjRmJYxaNCGiGxaa+J
	Ati7V4ikRORRN35sY7UTdvxuGGJocJfVqExugJKvTyQlQmEzLL+mbU+obszjeVaRFmygC+oRu00et
	cMXr5pyPLH4hM7MzRRgYk9BnNVhh/H0sv9n8sCabMUspH/szCjZVosn6gC7y3dBK2fy/0gzLTXXUg
	A0K2wOvFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP6sN-0002lX-PO; Fri, 10 May 2019 14:51:55 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP6sI-0002ke-Hw
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 14:51:52 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4AEiKST155669
 for <linux-nvme@lists.infradead.org>; Fri, 10 May 2019 14:51:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=DZRrOzb9KAP0F3XceDgIlunieonKEroOemtKsirDpDo=;
 b=BCEUZWzj1cOB4U/guucqqMZX35SPYt3bY1iY98GODN4V3bElWpKVwCqVLjLyIiTJvWoB
 NrdnTBC5ea/M6xCtI/jke+pMVtxm4RRDlGrSvHb0wV50GsXgwPOEiR7xnZW0WwZWG++N
 157Txg97I9zEnXDeXT36yiMhEnl8HvCK9ITjfoN6hVsw6tnKPbBgMkEn2/Srvy4pylB7
 28rv0RKCZ6fCB0HnvNZDvVda7Nb6HVxoOG/OD9Bs2+Df8i+/WDPVifpyCOmfv98taYpq
 XNyp9C/ZfzOSXMotf0ZJGhVbmmAPQ+miyENlOHMOfQKdaRBttVoBvjCXX5V8SbFAs+qn Ug== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2s94b6hnhv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Fri, 10 May 2019 14:51:40 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4AEp998178756
 for <linux-nvme@lists.infradead.org>; Fri, 10 May 2019 14:51:40 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2schw0far5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Fri, 10 May 2019 14:51:40 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4AEpdc3028427
 for <linux-nvme@lists.infradead.org>; Fri, 10 May 2019 14:51:39 GMT
Received: from [192.168.1.140] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 10 May 2019 07:51:39 -0700
Subject: Re: [PATCHv3 2/2] nvme: validate cntlid during controller
 initialisation
To: linux-nvme@lists.infradead.org
References: <20190503133736.111201-1-hare@suse.de>
 <20190503133736.111201-3-hare@suse.de>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <6e3b55d1-abfa-a67b-f2d4-fe083f3ce37c@Oracle.com>
Date: Fri, 10 May 2019 09:51:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503133736.111201-3-hare@suse.de>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9252
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905100102
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9252
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_075150_726197_AE5C4C0B 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/3/19 8:37 AM, Hannes Reinecke wrote:
> From: Hannes Reinecke <hare@suse.com>
> 
> The CNTLID value is required to be unique, and we do rely on this
> for correct operation. So reject any controller for which a non-unique
> CNTLID has been detected.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>   drivers/nvme/host/core.c | 32 ++++++++++++++++++++++++++++++--
>   1 file changed, 30 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index cd16d98d1f1a..dc74f7ba6f4a 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2358,6 +2358,23 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
>   	return count;
>   }
>   
> +static bool nvme_duplicate_cntlid(struct nvme_subsystem *subsys,
> +				  struct nvme_ctrl *ctrl)
> +{
> +	struct nvme_ctrl *tmp;
> +	bool ret = false;
> +
> +	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
> +		if (tmp == ctrl)
> +			continue;
> +		if (tmp->cntlid == ctrl->cntlid) {
> +			ret = true;
> +			break;
> +		}
> +	}
> +	return ret;
> +}
> +
>   static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   {
>   	struct nvme_subsystem *subsys, *found;
> @@ -2411,6 +2428,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   
>   		__nvme_release_subsystem(subsys);
>   		subsys = found;
> +		ret = 0;
>   	} else {
>   		ret = device_add(&subsys->dev);
>   		if (ret) {
> @@ -2434,10 +2452,20 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   	}
>   
>   	mutex_lock(&subsys->lock);
> -	list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
> +	if (!nvme_duplicate_cntlid(subsys, ctrl))
> +		list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
> +	else {
> +		dev_err(ctrl->device,
> +			"Duplicate cntlid %u, rejecting\n",
> +			ctrl->cntlid);
> +		ctrl->subsys = NULL;
> +		sysfs_remove_link(&subsys->dev.kobj, dev_name(ctrl->device));
> +		nvme_put_subsystem(subsys);
> +		ret = -EINVAL;
> +	}
>   	mutex_unlock(&subsys->lock);
>   
> -	return 0;
> +	return ret;
>   
>   out_unlock:
>   	mutex_unlock(&nvme_subsystems_lock);
> 

Hello,

I am interested in testing this series when they are finalized. I 
believe I have a test scenario for it that was discovered using the 
recent nvme-cli.1.8.1 release.

-- 
Thank You,
John

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
