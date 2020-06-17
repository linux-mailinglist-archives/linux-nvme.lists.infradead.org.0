Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CF71FC400
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jun 2020 04:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	References:Message-ID:From:Subject:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VumRmDwtVoGuPLpKcAYf5nK/2pe+cVZu4QsD4XTrsDw=; b=k1lG9LewaXPwF4
	HU+NmsHQ6DvWKIutKHgjTq1zTpDRolh+2Kn3fAmB5klyh6IbM5EqdkhhIi1T+K1d4OVr+5AsHngGF
	DXLHIbBJbi/tR3OHDRu+to2+YQengYCld0Sxa//tK5bJXWss3EJWLFmB+2OVfAg50zSRpFJ12thYZ
	rtQlZOoNhz7GS2cka04fLKCQeL1tdhAzwlAYo6lmXZhD5WlFp/Zbk66znnZ2kkUKkFcSTnmBrJ4Cl
	GI/iUjmpDVkHp5HyDF/rGVrxGPV75sSCKv1cQJj/50SsrzUbPeZn2RsXiEQ9dUrTZV6xtd1GhTCy+
	75RHSF+AQJSiZFTWfU4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlNVD-00035O-1Q; Wed, 17 Jun 2020 02:08:35 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlNV7-00034c-Ho
 for linux-nvme@lists.infradead.org; Wed, 17 Jun 2020 02:08:30 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05H28O8J103090;
 Wed, 17 Jun 2020 02:08:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : message-id : references : date : in-reply-to : mime-version :
 content-type; s=corp-2020-01-29;
 bh=9MYvB7GE2gB+OjRfQYxd6HQTFzUxvdU3mADejo7b7fs=;
 b=BJRIn5Vg9f3I2d0nzFdwICW6DuArL9lYm9VxoYHyhRD3NVYbDvrHWC29uwSO3Z1hPqq8
 ahztGilJPLyB8Jqja8JNVzOZNCqjLvw7jqwZFd1nGR34NdgPvRFUQnlf78ik5OxuZtNr
 2rrJw5hRFT++NtTUew2jtaNFAXuREvO8hgxq6aGwkqH/itxQ1uCrWH5oZ4aFj6Xr2Pdu
 mPROkf3RC71xHP3levsy6ICwm9iepO1ZxqYB26A/ukG3Lw/nZdq/vGJ2BEI/6rPITpr9
 Z+HXVVXTn53DU+Iu15LjrWfYlirsel5CVd2FD8CBZFV2xArs9VKnqNset4FLXWbdiKtt 9w== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 31q65yrma9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jun 2020 02:08:24 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05H1x5He047490;
 Wed, 17 Jun 2020 02:08:23 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 31q66meevx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jun 2020 02:08:23 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05H28M0a016862;
 Wed, 17 Jun 2020 02:08:22 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jun 2020 19:08:21 -0700
To: Keith Busch <keith.busch@wdc.com>
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1k106la11.fsf@ca-mkp.ca.oracle.com>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
Date: Tue, 16 Jun 2020 22:08:19 -0400
In-Reply-To: <20200615233424.13458-6-keith.busch@wdc.com> (Keith Busch's
 message of "Tue, 16 Jun 2020 08:34:24 +0900")
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0 phishscore=0
 mlxscore=0 bulkscore=0 malwarescore=0 mlxlogscore=999 suspectscore=1
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006170014
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 clxscore=1011 mlxlogscore=999 suspectscore=1 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_190829_675255_A475A18D 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <niklas.cassel@wdc.com>,
 Damien Le Moal <damien.lemoal@wdc.com>, Ajay Joshi <ajay.joshi@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Dmitry Fomichev <dmitry.fomichev@wdc.com>,
 Aravind Ramesh <aravind.ramesh@wdc.com>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Hans Holmberg <hans.holmberg@wdc.com>,
 Christoph Hellwig <hch@lst.de>,
 Matias =?utf-8?Q?Bj=C3=B8rling?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Keith,

> Add support for NVM Express Zoned Namespaces (ZNS) Command Set defined
> in NVM Express TP4053. Zoned namespaces are discovered based on their
> Command Set Identifier reported in the namespaces Namespace
> Identification Descriptor list. A successfully discovered Zoned
> Namespace will be registered with the block layer as a host managed
> zoned block device with Zone Append command support. A namespace that
> does not support append is not supported by the driver.

Looks really nice!

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
