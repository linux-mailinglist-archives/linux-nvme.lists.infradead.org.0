Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F61020A88
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qvwJHfBI8p8jfbfdS1SgJjJKK3OGD/E3vpklRRDjPQ=; b=LYgIsslVvOXQ69
	4WC0v/rQ8SM+22HzNsGAkyNeEVG46yo6NPKzjnOFiWJOO1BKtkzc1lC99ne3rG1JwC2arTsKdO9IH
	3JFf8GB/uaMpojIupKKZ4f8oEUzmljUqEEB+bx4R2s5QwbMK1HvyuVq9wpKhUS3p56ZSJ1PDM1v1v
	51bkbimpqzBHZYIxo+GQytRIak7+IalTjn86psidFiMAlENZlGxCR2mpbucehle+qL7pc19JEG3TI
	mmolfWaUNjeatKa9491NJtm6PBniygayjbk2TZwHf4FCD/fc1Zz3Ghn5InstF7nCENxnWA6lIsPGp
	w7OH3qcruh16pVHnuK+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHql-0007tW-2a; Thu, 16 May 2019 14:59:15 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHqg-0007tB-6L
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:59:11 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4GEwqA0164944;
 Thu, 16 May 2019 14:58:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=fqGtfO6id67rQy1OZ3kUwhnbYMRxo4E7KMPLVXBiHus=;
 b=B3J1oPkN1r/P2wEu81Esq9oRJbKsRPZCOC9et0Vc1ZKQzJCh9k6q0NDZPq9hc3bfMOp7
 1LICcPjSTaI3A4IJxrdo9NmHX9lQACI2B9xWGvRSVqSztGoCE6iOizeMlKVfOMrQogjF
 d3Wo98VMs/vs3oOW99t/3QtA8zSCBvG2t2k+uV6g4bRIg1NTurIcxEpX67ajhR63nGR1
 aZQih7DbZTmhpwI20SWJQqlMsyaVMlbuKFoWhH1WWgsFis7BNmwW/yrHEifKOOr08QYE
 XFe08ZWgyn7jLtU9XFAnPNuEq3e3V8MlkmpnLff8/o0C8YVlIJesseEmYHkh8AqzUezw cQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 2sdkwe46ye-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 May 2019 14:58:52 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4GEvnMY003381;
 Thu, 16 May 2019 14:58:47 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2sggdt7x79-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 16 May 2019 14:58:47 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4GEwjwQ017321;
 Thu, 16 May 2019 14:58:45 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 16 May 2019 07:58:45 -0700
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain>
Date: Thu, 16 May 2019 10:58:43 -0400
In-Reply-To: <20190516144452.GB23372@localhost.localdomain> (Keith Busch's
 message of "Thu, 16 May 2019 08:44:52 -0600")
Message-ID: <yq17eaqbg4c.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9258
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905160096
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9258
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905160096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_075910_354965_F71FBA80 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Hannes Reinecke <hare@suse.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Keith,

>> to keep in line with the other symlinks in /dev/disk/by-id/ The
>> controller symlinks don't really fall into this category, though; we
>> could create a 'nvme' subdirectory (much like MD does), and create
>> symlinks in there.
>
> Cool, I would also like to see persistent char dev names, but I wasn't
> sure where they'd go. If we can make our own 'nvme' subdirectory,
> that'd be great.

Should be fine. As long as /dev/disk stays intact.

It would be really nice to have a clear indication of
subsys/controller/namespace relationships. So much confusion as a result
of the current approach...

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
