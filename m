Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D98361EBE6A
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 16:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=il3wcfLvGCv2PAaFE/hpNVN+48rh0nifyPadDQ2Aft4=; b=mrphwGdPWFPQliRWWrk8ESCCz
	3hnYOxhDliphg+epoKaBCA3I9I08vffK6WFZpWD9DK4yQwnQomFQxEaiOalywPrgijU3BZ1f0tfPY
	CRko1+A/oCPjZIS1Z5kgEtwugMKJfEktNwLWopSnexFgs5d+EVnh+c6P+gJLAiphcnnWs8qrUGKiz
	QQCb31FJ6Z6NtECJYFvCp8k5eN9ZInXt4N286xUmf3eOgSjzgbyT29gwfpCviQDGgKrg9YhqfNXMf
	C7c7ghMe7CtpOqDga2AWmqqOmkO960qPggMJmO4wKCwtpTBU0cXddr73LAwQeSLp+zr1ya/WIxe45
	qrqcSgt7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg8Br-0007Ec-So; Tue, 02 Jun 2020 14:46:55 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg8Bn-0007EE-7X
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 14:46:52 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052EgRvV016341;
 Tue, 2 Jun 2020 14:46:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=c6C8Mii+lEgDemiMU6XvMhYMIMgKQwvCeguskHV1J58=;
 b=nrRXo/9Ix/tuzlgBKOGDKUBr0EYFB8FGH728/i8ZZT/q4L8NeiX89j/xIzxo7KMhFf8v
 z539YewzHSZfADMSZwG6PpwQGz67mmPl0ldgvq6z0LP6yXdEEPUj3N5kme0jxDI1Zv0L
 G2lbzrHfIQJil+/01R8r8aMSmIWoi59BYBFgqy0khbMLIHyhpXWjlZke852t+xQKcobN
 XonK78sqVVk2T7knW0II8YGFsSKhxr8ovCDE+jJLffzsTOlwTnFN3Du9HUSroHjJ2LbJ
 E1vqE+NJD/x+cUMvX02pPiBHKwsDg5k5sl0BRaA3kxKWczgw/hTeTaajupLL5A0JHsOF mQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31bfem4d45-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 02 Jun 2020 14:46:46 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052Ei0EO053072;
 Tue, 2 Jun 2020 14:44:46 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 31dju1k8xh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jun 2020 14:44:45 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 052EiioN027763;
 Tue, 2 Jun 2020 14:44:44 GMT
Received: from [10.154.114.83] (/10.154.114.83)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 07:44:44 -0700
Subject: Re: [PATCH 2/5] nvme: use nvme_ana_type_to_name to get state string
To: Max Gurtovoy <maxg@mellanox.com>, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 james.smart@broadcom.com, chaitanya.kulkarni@wdc.com
References: <20200602131546.51903-1-maxg@mellanox.com>
 <20200602131546.51903-3-maxg@mellanox.com>
From: Himanshu Madhani <himanshu.madhani@oracle.com>
Organization: Oracle Corporation
Message-ID: <a3368253-e1e7-2dd2-2b4d-1f8e0cb73368@oracle.com>
Date: Tue, 2 Jun 2020 09:44:43 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200602131546.51903-3-maxg@mellanox.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020105
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1015
 impostorscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_074651_362477_643F1278 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
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
Cc: israelr@mellanox.com, nitzanc@mellanox.com, oren@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 6/2/20 8:15 AM, Max Gurtovoy wrote:
> Remove code duplication from nvme-core.ko and use common function to
> translate enum to ANA state string.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> Reviewed-by: Israel Rukshin <israelr@mellanox.com>
> ---
>   drivers/nvme/host/multipath.c | 16 +++-------------
>   drivers/nvme/host/nvme.h      |  1 +
>   2 files changed, 4 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
> index da78e49..37cb9df 100644
> --- a/drivers/nvme/host/multipath.c
> +++ b/drivers/nvme/host/multipath.c
> @@ -124,15 +124,6 @@ void nvme_kick_requeue_lists(struct nvme_ctrl *ctrl)
>   	up_read(&ctrl->namespaces_rwsem);
>   }
>   
> -static const char *nvme_ana_state_names[] = {
> -	[0]				= "invalid state",
> -	[NVME_ANA_OPTIMIZED]		= "optimized",
> -	[NVME_ANA_NONOPTIMIZED]		= "non-optimized",
> -	[NVME_ANA_INACCESSIBLE]		= "inaccessible",
> -	[NVME_ANA_PERSISTENT_LOSS]	= "persistent-loss",
> -	[NVME_ANA_CHANGE]		= "change",
> -};
> -
>   bool nvme_mpath_clear_current_path(struct nvme_ns *ns)
>   {
>   	struct nvme_ns_head *head = ns->head;
> @@ -500,9 +491,8 @@ static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
>   	unsigned *nr_change_groups = data;
>   	struct nvme_ns *ns;
>   
> -	dev_dbg(ctrl->device, "ANA group %d: %s.\n",
> -			le32_to_cpu(desc->grpid),
> -			nvme_ana_state_names[desc->state]);
> +	dev_dbg(ctrl->device, "ANA group %d: %s.\n", le32_to_cpu(desc->grpid),
> +		nvme_ana_type_to_name(desc->state));
>   
>   	if (desc->state == NVME_ANA_CHANGE)
>   		(*nr_change_groups)++;
> @@ -636,7 +626,7 @@ static ssize_t ana_state_show(struct device *dev, struct device_attribute *attr,
>   {
>   	struct nvme_ns *ns = nvme_get_ns_from_dev(dev);
>   
> -	return sprintf(buf, "%s\n", nvme_ana_state_names[ns->ana_state]);
> +	return sprintf(buf, "%s\n", nvme_ana_type_to_name(ns->ana_state));
>   }
>   DEVICE_ATTR_RO(ana_state);
>   
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index fa5c755..eef0e88 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -7,6 +7,7 @@
>   #define _NVME_H
>   
>   #include <linux/nvme.h>
> +#include <linux/nvme-types.h>
>   #include <linux/cdev.h>
>   #include <linux/pci.h>
>   #include <linux/kref.h>
> 

Looks Good.

Reviewed-by: Himanshu Madhani <himanshu.madhani@oracle.com>

-- 
Himanshu Madhani                     Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
