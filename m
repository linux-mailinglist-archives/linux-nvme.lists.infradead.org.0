Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCE9133988
	for <lists+linux-nvme@lfdr.de>; Wed,  8 Jan 2020 04:15:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XWyw4hnSov9lp/O0PnYpYF4R4QPP6Jb7P3QkEflnXE=; b=axlBaLPGj8E0LJ
	t2qDXOmPIwuoBe2f2w7WKpzevjuCTSD/4GIkOw9hsrpgvQe56KmiR3xuZ1Ozh56wX+ve+tTlUaB+8
	mwvgkdnYd8E0yiRYUOB3+IM1i5ADtkchrwa/GB93hZ1edC30tQ5q7lNtXLWsg3Kqbosr8njUWN65x
	aE4MHU7NetswovAPlxU98oaSNiROLmucd021TWwq7Ojv38b3K6/gBjsCfHLC3IoMremS3aikzzJl5
	Aewr7cIVe982u4FOBbOvLvBbl+wFFK1a5A7Yir876xAmdNET9cvXzuGADCeybrrkhddzS1O0F++/8
	0FQ8Mqqmx1tHACD18EaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip1p2-0002Ng-C8; Wed, 08 Jan 2020 03:15:52 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip1ou-0002NK-4k
 for linux-nvme@lists.infradead.org; Wed, 08 Jan 2020 03:15:45 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0083E1FP187934;
 Wed, 8 Jan 2020 03:15:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=fWjv7W6k2+dbFZ/7a6f3esspeWDYpJX7nXT009RTOvI=;
 b=G53Qfp10vGM8/bgVs2w0ED7QJQc/yKQNPcSKtEXsNlpy8AG9Ax+eAgYg9vpQNixMwfKa
 MWHahQhTmqfq9MYF0lZwf5nLFvUglvGEmL/xzuTgTx09dE+DGOUo9ubZ5WGgom0IRfbs
 S/W0tjYn9zx8GnfTUsY3uU8Rr83YGVqlGd5fDBJSJVCk4lMSmja7lGMiTO83hb2bmbb5
 ad1DEEwJsnLyteEcX5UtOUUfT0I9GQoQdpqWu6AvEyHRy0rH3+rBODK8bt+WqomGDia2
 5bZ21rRy0VMb5Igc2OZd7Jzr/BaaPdGpPYnjcgAoET1YGvBVD4+fP9aK1Cgy26cmPjMC Ag== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2xakbqs72p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Jan 2020 03:15:39 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0083DYEn143964;
 Wed, 8 Jan 2020 03:15:39 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2xcjvek8j5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Jan 2020 03:15:39 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0083FbOr022903;
 Wed, 8 Jan 2020 03:15:37 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 07 Jan 2020 19:15:37 -0800
To: "Singh\, Balbir" <sblbir@amazon.com>
Subject: Re: [resend v1 1/5] block/genhd: Notify udev about capacity change
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-2-sblbir@amazon.com>
 <yq1ftgs2b6g.fsf@oracle.com>
 <d1635bae908b59fb4fd7de7c90ffbd5b73de7542.camel@amazon.com>
Date: Tue, 07 Jan 2020 22:15:34 -0500
In-Reply-To: <d1635bae908b59fb4fd7de7c90ffbd5b73de7542.camel@amazon.com>
 (Balbir Singh's message of "Tue, 7 Jan 2020 22:30:30 +0000")
Message-ID: <yq17e221vvt.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9493
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=774
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001080026
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9493
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=835 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001080026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_191544_266377_A4F3B5A0 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "mst@redhat.com" <mst@redhat.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "Sangaraju,
 Someswarudu" <ssomesh@amazon.com>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Balbir,

> I did this to avoid having to enforce that set_capacity() implied a
> notification. Largely to control the impact of the change by default.

What I thought. I'm OK with set_capacity_and_notify(), btw.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
