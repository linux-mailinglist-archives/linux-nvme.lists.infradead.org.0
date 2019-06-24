Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAF751F20
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 01:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByRRA1U/TYDlMSpflSy2H/1k38RR7Vz9cnCiAAUcPM4=; b=tsMhWxaIju6XYd
	gX9sQkEa2JL1vBWbeEyvtdnEPjUZYI8cxUkaXRnr5pncOvjFmQno/wroGejHbtoIlP9S5YJmbdxKI
	szlKKsxruwMC83lFN4UOEU+cyqckx1spTrZLzd3GT7EMET/UN8sxae09UUPtvwOmD4jNuZoLKyyGm
	320MkD6mqDBVioNKJeertrDUVLBRst6UFtRW0Gb5p/uozyn3Fb3DrCx/MdWgdUGm+h5Dl6Qe8pyOb
	qXk5GKQmFeO4YJuM9162Y2a1pl5btvZAtLayYcoJULKfI4K6VDzG6+T7K3c69l79WUquEFeJLMFz3
	0HaLXZodOSej49/cvY9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYQV-0001d9-OR; Mon, 24 Jun 2019 23:31:07 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYQP-0001ca-Ls
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 23:31:03 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5ONSjdK048339;
 Mon, 24 Jun 2019 23:30:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=Fg8AuVU3KV01MxtcKRTupjogXqtNQe8wroUKpliyH/c=;
 b=BSWO0uIB+ukZ/3cjFPiAzD4KFQIOcf+eOekX5tv8sl6g+zH7bWzdJIPuksZHGgRpbqNi
 oJWkbzWibK2/LLa3XP8udXNDu2nHRlzlWDoLrnY2aPZryWB4ZsJ+mYyXkPa1r0cjwqDu
 A0wVcNi4GSoiWS8IXPoXUNj9viY/MxYxq3mFhH7qb6yLWCKZuaQMiCKGD1SJGn9HGvBG
 MDwFsSxHFdOtWqaWLaMLLOUu7TZ6pnqjRkbVh8trAfgMuypmUfRmblhnNn1fHdebrdKM
 iRAOKKx6p5MRAvmK3h4mAzo6HtIRqIoP4CQFUzw2S5WqASkNRTEiESjA0HDuuiXVE/OW xQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2t9brt1277-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 23:30:46 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5ONTwFe089270;
 Mon, 24 Jun 2019 23:30:45 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2t99f3hwum-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 23:30:45 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5ONUh2N016011;
 Mon, 24 Jun 2019 23:30:43 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Jun 2019 16:30:43 -0700
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH v3 2/3] nvmet: Export NVMe namespace attributes
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190617161222.253849-1-bvanassche@acm.org>
 <20190617161222.253849-3-bvanassche@acm.org>
 <yq1a7eeusa5.fsf@oracle.com>
 <68786de5-cdd8-c6d8-98a7-8a4310dac789@acm.org>
 <yq1blyrpupw.fsf@oracle.com>
 <7e51e415-16af-2fc5-42e9-ebd0e6f94c0e@acm.org>
Date: Mon, 24 Jun 2019 19:30:40 -0400
In-Reply-To: <7e51e415-16af-2fc5-42e9-ebd0e6f94c0e@acm.org> (Bart Van Assche's
 message of "Fri, 21 Jun 2019 08:19:04 -0700")
Message-ID: <yq136jyo927.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=994
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906240185
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906240185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_163101_816288_9B9AC6DE 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Hi Bart,

> As you must have noticed the patch at the start of this thread touches
> both the bdev and the file backends. So I'm not sure what your
> question is about?

I was contemplating what the observed I/O atomicity would be for the
initiator side when the target file backend is using buffered I/O.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
