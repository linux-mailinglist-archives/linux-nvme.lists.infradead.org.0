Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D95071CA0
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 18:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhloNRqOnHjsDqOt9szRRJQeoQD5RwdOaTMn+I8l8hs=; b=g/wEiXvDA6goO0
	e1wuTvxgc9hHDdpLwnWJJE067LpCS1vOrTqTm29I2j58l5USxj5roY7yd/Nn76EKEjhlWdYeE5hsj
	SzEVVexHHKp6Be3fNxaQu+GcNi9JCVY1EAFxv738SZ3XprCl5aQAHb3Ixf8WFnPH3my4TvdeS3xwA
	3sTzhHZSKU1tmDcGMMixO90xH45Zy2EW7HVkOuucAz5ePSSz/x/9HuONG3Ho1dNqf52Y8PiuLWODS
	mvlNCu4y+aiuNRxF4lKIqHpWN1trO63H+2hBhR7VQbOSstaa03IpHqFVem2a26ydoOpk2RSA8TcPM
	uyGnwoYOsIyAHR1DgPVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxRl-0001L2-8i; Tue, 23 Jul 2019 16:15:25 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxRZ-0001KN-Dc
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 16:15:14 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6NGEJ8v162874;
 Tue, 23 Jul 2019 16:15:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : cc : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=f64VnAYgd1dGJHWV5EaECwDib0DmMVcorF4HAdPH0xI=;
 b=EEVB23qDpdgmQcM1DMPra1HjHR7TNDeu7/OwvMTY+VWkzjJG0iSuf3lWk+VPTGpjX4ZS
 yKVN50i6qHECbbyP4ZwtFMR3jr8r3ZCZvlt1kozPFpNayI7IzfA6vKZnigP8XDtCT2lD
 bHG6desDvmWA+kIqfmh9oUUNK6Osn73uoO5+UP3Jpis9t3FcYDkeFcjrLE+6VXUuLkAU
 JFCaqdsCw4BiT3lzSplyAzFzHEamuW4SyMYpYnAvXabKpCjIY3hmf/Dt0l3hm3n/T4Rj
 oiv/Bg1Tc5Dx6jvGI60HOHedQXM0XPlTEKkK2zgZg2vc6wMs4+QodbPF0BWfU5hW2aDf 1g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2tutcth8ng-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 Jul 2019 16:15:01 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6NGD6rX058594;
 Tue, 23 Jul 2019 16:15:00 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2tur2uganw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 23 Jul 2019 16:15:00 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6NGEviR011454;
 Tue, 23 Jul 2019 16:14:58 GMT
Received: from [192.168.2.8] (/106.39.150.203)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 23 Jul 2019 09:14:57 -0700
Subject: Re: [PATCH 4/5] nvme: wait until all completed request's complete fn
 is called
To: Ming Lei <ming.lei@redhat.com>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-5-ming.lei@redhat.com>
From: Dongli Zhang <dongli.zhang@oracle.com>
Message-ID: <8d6268ac-42cb-d14a-d4c3-c8c285fca6b5@oracle.com>
Date: Wed, 24 Jul 2019 00:14:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190722053954.25423-5-ming.lei@redhat.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9327
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907230163
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9327
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907230163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_091513_588368_1B257B67 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Ming,

On 07/22/2019 01:39 PM, Ming Lei wrote:
> When aborting in-flight request for recoverying controller, we have

recovering

> maken sure that queue's complete function is called on completed
> request before moving one. For example, the warning of
> WARN_ON_ONCE(qp->mrs_used > 0) in ib_destroy_qp_user() may be triggered.
> 
> Fix this issue by using blk_mq_tagset_drain_completed_request.
> 

Should be blk_mq_tagset_wait_completed_request but not
blk_mq_tagset_drain_completed_request?

Dongli Zhang

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
