Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDE2B2853
	for <lists+linux-nvme@lfdr.de>; Sat, 14 Sep 2019 00:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdtRWgiE0GgvEk7uck7KaIDW/Lq7INxsl+DYZ7aZEvM=; b=TRIH0XlK1asCDJ
	VFZeC8W15Wy4g7ZeZrl/QGelaDpBguRL2uH+6hb3Dt9T8IXyRt8U5uR1bewdK/iKm2L10ZRl0dwqX
	oGFK+xTr8SJqiYGqXCktOJBeD/Ebpsn/3XxzrJ9FLsvlH7tZ1qdpCy7jd3ZbPrVtvjcmfBdXwSTjA
	d4KvqfpGHXmryU+lGT2e/4mUH7Ye22pJNqWx+utXDNoYKhHyDbKGzB5mnlNWYE5WxUbzjMSHjfofr
	3qXSjtXg9kY9x3RaGK4fLFJ5uAsekYX4pLDv2WhIyvfyoh+LbCfDvqU/u5dHC46oDPtW/DZ91DL4f
	v5twg8WK7PBaFsUVIcOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8u1V-0000gp-Eg; Fri, 13 Sep 2019 22:26:37 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8u1N-0000gS-0K
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 22:26:30 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8DMNsWp160207;
 Fri, 13 Sep 2019 22:26:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=OZnRhPBFkRNdQEDSDNufHHb1pX04L97xZA72gxBrre8=;
 b=nN6VaWvATXow0wgKJZr7b/vAlW05otgsmT3jGRaluSdvMiH4MxlL/Wcz7/eLyuGvdMXO
 YCTmiDs/tb/tguJLwkmQtgQl6SJEWC+xv+tsrtg1FyzhjTXF4JcismyeUQVcFVyaxUvw
 YVHIpgYfDFdyPvIqdainaXNzFP/EWETXRRFGUVRgmOG8fVCHU9JiQhVKPWNlnxEQRKWy
 UDH7EZdzhQZ2osDEIbGnqSqAyXPjhDnWLsIN3rdkIn4eGTmQIzQ0oWQdDxIIz5CGOwQg
 VeYH97+u3Rv8hRKxyztDVy2SwsfTH0NLp6Ms56fIlq8C2i2WyOJZcmrqaiM0Niu1nGZr uA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2uytd37act-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Sep 2019 22:26:13 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8DMNMLV049347;
 Fri, 13 Sep 2019 22:26:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2uytdjutm5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Sep 2019 22:26:12 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8DMQB9D030409;
 Fri, 13 Sep 2019 22:26:11 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 13 Sep 2019 15:26:10 -0700
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH v5 2/2] block: centralize PI remapping logic to the block
 layer
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1568215397-15496-1-git-send-email-maxg@mellanox.com>
 <1568215397-15496-2-git-send-email-maxg@mellanox.com>
Date: Fri, 13 Sep 2019 18:26:07 -0400
In-Reply-To: <1568215397-15496-2-git-send-email-maxg@mellanox.com> (Max
 Gurtovoy's message of "Wed, 11 Sep 2019 18:23:17 +0300")
Message-ID: <yq1d0g3de9s.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9379
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=673
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909130219
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9379
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=743 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909130219
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_152629_138926_C00A0C3C 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: axboe@kernel.dk, keith.busch@intel.com, sagi@grimberg.me,
 martin.petersen@oracle.com, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 shlomin@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Max,

> Currently t10_pi_prepare/t10_pi_complete functions are called during
> the NVMe and SCSi layers command preparetion/completion, but their
> actual place should be the block layer since T10-PI is a general data
> integrity feature that is used by block storage protocols. Introduce
> .prepare_fn and .complete_fn callbacks within the integrity profile
> that each type can implement according to its needs.

LGTM.

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
