Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765EA1FCD09
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jun 2020 14:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	References:Message-ID:From:Subject:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1j3hgEgTy+dgOkDEll1rLPZbvDKePKKSlnblaOWR2A=; b=kc1y9nQ1HtPEvt
	3ihTby9OP2pghZUGaihyEFIP6w/DLgdTxx6mPYDqgUcr/6hX9gFg50MDlTkBnFCnoDgUBXCo1b9sm
	mi90FBOTVnZS53kTse3nvfY70k7f492xWHFAx9p6DJcabJcyzax72xbwlrbkA+HmcPpWP0YitEGJU
	iqsy6Z9Rul14oxsrJ1kGZY29tiqcHenEFR0GyqooqMrbJ+WjApSL8oiX5TlirAnCWRDkYKOkPQQBb
	9UA0iHZXrkNCp6gJ2E4+tGTY60ILAdVyxkZRcfSAd1fz1vAnIW1r4pnQa1YxHshVlLJiLK3GkhDrT
	rTqEhQSx0NMzezLboDcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWpZ-0005Mi-MN; Wed, 17 Jun 2020 12:06:13 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWpR-0005Lv-Su
 for linux-nvme@lists.infradead.org; Wed, 17 Jun 2020 12:06:09 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05HBvR5V032179;
 Wed, 17 Jun 2020 12:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : message-id : references : date : in-reply-to : mime-version :
 content-type; s=corp-2020-01-29;
 bh=olGnmPODMTISYB7O5NdW1iJB91rNe+9YnXruLIPV6mM=;
 b=HGvInCliu7GXH43s3/EU/tg0m6miKIozPdwwMDaqhYUHU0MmR+hETsZKzNgNXPTLuCRd
 rymMo6974rJxsKa+v/B/AVHp6rC0frBdDKt9OBsrxuv5YVSsDteywIBUYlQxdei1ceKA
 8jt4LprgW/tXHdXHTVwtzVyURR4tKi3Usb7n5v/5OwxDuh2Mu9Vp/RHdClbAAIVEbLcE
 TCaCCC2yDKoYL1sBz2qeo63u35hqrVTjitcPhT/uNkjxYyF3vup2nEMAJbLd4/vhlX+Q
 ZfG80YvmxtNsUnHYDKKSUJ+NTZ9OudzbXarzzgmC6wdfCNwmYqt8uBZ+cMXXzclid6dD 6Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 31qg350qy3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jun 2020 12:03:44 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05HBvd9l093547;
 Wed, 17 Jun 2020 12:01:43 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 31q65xdnnt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jun 2020 12:01:43 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05HC1bmp013213;
 Wed, 17 Jun 2020 12:01:38 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 17 Jun 2020 05:01:37 -0700
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1r1uej7j6.fsf@ca-mkp.ca.oracle.com>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
 <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <20200617074328.GA13474@lst.de>
Date: Wed, 17 Jun 2020 08:01:31 -0400
In-Reply-To: <20200617074328.GA13474@lst.de> (Christoph Hellwig's message of
 "Wed, 17 Jun 2020 09:43:28 +0200")
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 phishscore=0 bulkscore=0 malwarescore=0 mlxscore=0 adultscore=0
 suspectscore=1 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 mlxscore=0
 clxscore=1011 malwarescore=0 impostorscore=0 adultscore=0
 cotscore=-2147483648 lowpriorityscore=0 mlxlogscore=999 spamscore=0
 suspectscore=1 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006170093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_050606_014646_3DCD60A0 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
 [156.151.31.85 listed in wl.mailspike.net]
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
 Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@wdc.com>,
 Dmitry Fomichev <dmitry.fomichev@wdc.com>,
 Aravind Ramesh <aravind.ramesh@wdc.com>,
 Javier =?utf-8?Q?Gonz=C3=A1lez?= <javier@javigon.com>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Hans Holmberg <hans.holmberg@wdc.com>,
 Matias =?utf-8?Q?Bj=C3=B8rling?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Because Append is the way to go and we've moved the Linux zoned block
> I/O stack to required it,

Just to add some historical context: The first discussions about how to
support block devices with a non-random write model in Linux happened
maybe a decade ago.

Drive vendors came to LSF/MM to solicit feedback on how Linux could
support impending SMR devices. We spent a long time going over various
approaches, including some that are similar to what is now being
entertained as alternative to Append. The conclusion back then was that
an Append-like model (tell-us-where-you-put-it) was the only reasonable
way to accommodate these devices in Linux given how our filesystems and
I/O stack worked.

Consequently, I don't think it is at all unreasonable for us to focus on
devices that implement that mode of operation in the kernel. This is
exactly the that we as a community asked the storage industry to
provide!

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
