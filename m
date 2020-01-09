Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463401351EA
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Jan 2020 04:25:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzBGceJfQhUu21yXzEPG+GwblTgnh55WJqCMdc6+ZJ4=; b=OGQ9HcSoRC5iWW
	gX0/HbgG9RYMwMjQam563HeypRF6btZGXV4q4Ro6LhXBmChgBjpph47PSQo33Z9tSNGAQ6KWkN2LH
	Zqo6EZIPpagoD2fGum97B2obFcQcqAS+PfIG0KuQCdZgwwcd7fYwxO+Ki4iPBGu1sCcl1DlS/eymz
	nQEmzshebU64YS9cQIS+L1YQSC3wqB+3cO5UGkovsriJYeyv5bx+8h/c05Yr6iOTCIhwtP+ejNA0X
	6udhQbZYA6cOCuyBBYVky63/bKBQgzF46jRmaPMty4/QQ+l+JO/R4LwYIboG3v86MaxpqOfmjBoIH
	2idQ3DVzACq7+pLTFvXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipORb-0007TX-K8; Thu, 09 Jan 2020 03:25:12 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipORM-0007T1-D0
 for linux-nvme@lists.infradead.org; Thu, 09 Jan 2020 03:24:57 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0093NKL7180582;
 Thu, 9 Jan 2020 03:24:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=eqD+qPA5hgOgf/JKXUXdG1yT7z5hJlXbfHnIMbAK/ZU=;
 b=rI+IRs/X7M1El9fBCLMJzLn8a0sVYbDRBsqLCEHKXVeJQAIhKqC1HAGbDFwTMPMxvFw6
 2UCRSTy9cQh6p0TtK20rCDMlEFicgL9glmzYR3JEvbDyDmIq80ow4cWLy0FJhKG3q6Dd
 H2IEArSu1txNIBM0toLfQUZPjEbFP3lWWJpm9lKxhYB9C6KBvAoKvy3mPUjV7g8R+wJu
 m8GOQcxoHUNaCaOCvwNQ+W9nJflprB0j99ZTgp4XgFrBJoj56ZI0zSPTGoKO8VeCxkwf
 uJZeCd3qN80ROV/jpHGHd582GF9CfAAn/Yd/4PDZ7tLAGgCHKITwqBqoD+VEuhW/g0b1 UA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2xaj4u84vk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Jan 2020 03:24:53 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0093NbRm135019;
 Thu, 9 Jan 2020 03:24:52 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2xdrx73yn0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Jan 2020 03:24:52 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0093Onud014606;
 Thu, 9 Jan 2020 03:24:49 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 08 Jan 2020 19:24:49 -0800
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 13/15] nvmet: Add metadata/T10-PI support
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200106133736.123038-1-maxg@mellanox.com>
 <20200106133736.123038-15-maxg@mellanox.com>
Date: Wed, 08 Jan 2020 22:24:46 -0500
In-Reply-To: <20200106133736.123038-15-maxg@mellanox.com> (Max Gurtovoy's
 message of "Mon, 6 Jan 2020 15:37:34 +0200")
Message-ID: <yq1sgkpxqf5.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9494
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001090031
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9494
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001090031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_192456_529322_A5D26D3F 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: axboe@kernel.dk, sagi@grimberg.me, martin.petersen@oracle.com,
 shlomin@mellanox.com, israelr@mellanox.com, vladimirk@mellanox.com,
 linux-nvme@lists.infradead.org, idanb@mellanox.com, oren@mellanox.com,
 kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Max,

> -	/* no limit on data transfer sizes for now */
> -	id->mdts = 0;
> +	/* Limit MDTS for metadata capable controllers (assume mpsmin is 4k) */
> +	id->mdts = ctrl->pi_support ? ilog2(NVMET_T10_PI_MAX_KB_SZ >> 2) : 0;

[...]

> +#define NVMET_T10_PI_MAX_KB_SZ 128

Where does this limit come from?

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
