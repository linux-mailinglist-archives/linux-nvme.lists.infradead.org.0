Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937A01351CE
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Jan 2020 04:17:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZNeI4yFLzHDPjqSodCJZV+h69tDNkPNQYcki54yIyY=; b=K28kanJdq3ZT2F
	3f2XFlI/fVYBaRJBkArMchBg6f5/4C+SVRpn+7gZC3kaAeA1bFr9jjpxOqH19pU0Z9lJrP6xlZOwO
	OWAQJ6zQP88Ueggv1PDr5O/5/US/Vdg38XVfvJ31tLEHYOpgFww2Eq95nxCcev2UL63+hv4Z/ndio
	Hhmw8OFiSxeeJ4PTlo2X2KPEBAmVLTpPDC256hjsCeLQWJxhOTn5pRFv8EOeNyjpst9Ol6lPjXn75
	2G3FZCfv15Ba93UIqIEuZExTqwpy6hQquMmZNEAuaEddrtnlDoGV5cB02hheaN08lfML85xXHELqy
	ueiGN/vMWWTvihQumYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipOKT-0003V2-Oz; Thu, 09 Jan 2020 03:17:49 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipOKK-0003Ue-Q6
 for linux-nvme@lists.infradead.org; Thu, 09 Jan 2020 03:17:42 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0093EEEv173941;
 Thu, 9 Jan 2020 03:17:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=Jo9edpEQxGwzgwyzRZr+KZOJoBWgtN6p7FtGDc/jbN4=;
 b=pjJs1sSSa9Ce0moV9hDWmR3ZvoAQV4/cEngv9Q+IPeS1U+aNIhFYliBJ6ndFHzqdTN92
 gbyEFimFUGIiCAPUWYE15JO/bPpwuMRcByRf4Cjo+ztm3xFw2LliFXr412tNHSRXsqir
 V5TpSxdQa2J+QfILxFTBHyQjZKgiF1nN4Ei/SlK+ntEfojDB5M+PtzUpzVD3GUPNHvop
 NunJVyVXP8OSM88txMizFbDkms8uFAPSz+CTCrhH/VaFu78taHENNNkGBeGICihbim8m
 +IihhG0WcSmu786as+Jo/UlVNoYJzgUxdMbsHh+6hw2O1D/meJK5Lg0cmV05O8EcJH+Z Xg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2xaj4u846f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Jan 2020 03:17:37 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0093EOxs064048;
 Thu, 9 Jan 2020 03:17:36 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2xdsa391em-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Jan 2020 03:17:36 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0093HZsN018807;
 Thu, 9 Jan 2020 03:17:35 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 08 Jan 2020 19:17:35 -0800
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 10/15] nvmet: Rename nvmet_rw_len to nvmet_rw_data_len
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200106133736.123038-1-maxg@mellanox.com>
 <20200106133736.123038-12-maxg@mellanox.com>
Date: Wed, 08 Jan 2020 22:17:32 -0500
In-Reply-To: <20200106133736.123038-12-maxg@mellanox.com> (Max Gurtovoy's
 message of "Mon, 6 Jan 2020 15:37:31 +0200")
Message-ID: <yq11rs9z5bn.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9494
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001090029
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9494
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001090029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_191740_983722_5F53AA6E 
X-CRM114-Status: GOOD (  10.59  )
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

> The function doesn't add the metadata length (only data length is
> calculated). This is preparation for adding metadata (T10-PI) support.

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
